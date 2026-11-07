.class public abstract Landroid/app/SharedElementCallback;
.super Ljava/lang/Object;
.source "SharedElementCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;
    }
.end annotation


# static fields
.field private static final greylist-max-o BUNDLE_SNAPSHOT_BITMAP:Ljava/lang/String; = "sharedElement:snapshot:bitmap"

.field private static final blacklist BUNDLE_SNAPSHOT_COLOR_SPACE:Ljava/lang/String; = "sharedElement:snapshot:colorSpace"

.field private static final blacklist BUNDLE_SNAPSHOT_HARDWARE_BUFFER:Ljava/lang/String; = "sharedElement:snapshot:hardwareBuffer"

.field private static final greylist-max-o BUNDLE_SNAPSHOT_IMAGE_MATRIX:Ljava/lang/String; = "sharedElement:snapshot:imageMatrix"

.field private static final greylist-max-o BUNDLE_SNAPSHOT_IMAGE_SCALETYPE:Ljava/lang/String; = "sharedElement:snapshot:imageScaleType"

.field static final greylist-max-o NULL_CALLBACK:Landroid/app/SharedElementCallback;


# instance fields
.field private greylist-max-o mTempMatrix:Landroid/graphics/Matrix;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 56
    new-instance v0, Landroid/app/SharedElementCallback$1;

    invoke-direct {v0}, Landroid/app/SharedElementCallback$1;-><init>()V

    sput-object v0, Landroid/app/SharedElementCallback;->NULL_CALLBACK:Landroid/app/SharedElementCallback;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onCaptureSharedElementSnapshot(Landroid/view/View;Landroid/graphics/Matrix;Landroid/graphics/RectF;)Landroid/os/Parcelable;
    .registers 13
    .param p1, "sharedElement"    # Landroid/view/View;
    .param p2, "viewToGlobalMatrix"    # Landroid/graphics/Matrix;
    .param p3, "screenBounds"    # Landroid/graphics/RectF;

    .line 177
    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_76

    .line 178
    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    .line 179
    .local v0, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 180
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 181
    .local v2, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_76

    if-eqz v2, :cond_19

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v3

    if-nez v3, :cond_76

    .line 182
    :cond_19
    invoke-static {v1, v0}, Landroid/transition/TransitionUtils;->createDrawableBitmap(Landroid/graphics/drawable/Drawable;Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 183
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v3, :cond_76

    .line 184
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 185
    .local v4, "bundle":Landroid/os/Bundle;
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-eq v5, v6, :cond_33

    .line 186
    const-string/jumbo v5, "sharedElement:snapshot:bitmap"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_4d

    .line 188
    :cond_33
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v5

    .line 189
    .local v5, "hardwareBuffer":Landroid/hardware/HardwareBuffer;
    const-string/jumbo v6, "sharedElement:snapshot:hardwareBuffer"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 190
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v6

    .line 191
    .local v6, "cs":Landroid/graphics/ColorSpace;
    if-eqz v6, :cond_4d

    .line 192
    const-string/jumbo v7, "sharedElement:snapshot:colorSpace"

    invoke-virtual {v6}, Landroid/graphics/ColorSpace;->getId()I

    move-result v8

    invoke-virtual {v4, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 195
    .end local v5    # "hardwareBuffer":Landroid/hardware/HardwareBuffer;
    .end local v6    # "cs":Landroid/graphics/ColorSpace;
    :cond_4d
    :goto_4d
    nop

    .line 196
    invoke-virtual {v0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 195
    const-string/jumbo v6, "sharedElement:snapshot:imageScaleType"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    invoke-virtual {v0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v5

    sget-object v6, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-ne v5, v6, :cond_75

    .line 198
    invoke-virtual {v0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    .line 199
    .local v5, "matrix":Landroid/graphics/Matrix;
    const/16 v6, 0x9

    new-array v6, v6, [F

    .line 200
    .local v6, "values":[F
    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->getValues([F)V

    .line 201
    const-string/jumbo v7, "sharedElement:snapshot:imageMatrix"

    invoke-virtual {v4, v7, v6}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    .line 203
    .end local v5    # "matrix":Landroid/graphics/Matrix;
    .end local v6    # "values":[F
    :cond_75
    return-object v4

    .line 207
    .end local v0    # "imageView":Landroid/widget/ImageView;
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    .end local v2    # "bg":Landroid/graphics/drawable/Drawable;
    .end local v3    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "bundle":Landroid/os/Bundle;
    :cond_76
    iget-object v0, p0, Landroid/app/SharedElementCallback;->mTempMatrix:Landroid/graphics/Matrix;

    if-nez v0, :cond_82

    .line 208
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0, p2}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iput-object v0, p0, Landroid/app/SharedElementCallback;->mTempMatrix:Landroid/graphics/Matrix;

    goto :goto_87

    .line 210
    :cond_82
    iget-object v0, p0, Landroid/app/SharedElementCallback;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 212
    :goto_87
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 213
    .local v0, "parent":Landroid/view/ViewGroup;
    iget-object v1, p0, Landroid/app/SharedElementCallback;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-static {p1, v1, p3, v0}, Landroid/transition/TransitionUtils;->createViewBitmap(Landroid/view/View;Landroid/graphics/Matrix;Landroid/graphics/RectF;Landroid/view/ViewGroup;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public whitelist onCreateSnapshotView(Landroid/content/Context;Landroid/os/Parcelable;)Landroid/view/View;
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "snapshot"    # Landroid/os/Parcelable;

    .line 234
    const/4 v0, 0x0

    .line 235
    .local v0, "view":Landroid/view/View;
    instance-of v1, p2, Landroid/os/Bundle;

    if-eqz v1, :cond_79

    .line 236
    move-object v1, p2

    check-cast v1, Landroid/os/Bundle;

    .line 237
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "sharedElement:snapshot:hardwareBuffer"

    const-class v3, Landroid/hardware/HardwareBuffer;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/HardwareBuffer;

    .line 238
    .local v2, "buffer":Landroid/hardware/HardwareBuffer;
    const-string/jumbo v3, "sharedElement:snapshot:bitmap"

    const-class v4, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    .line 239
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    if-nez v2, :cond_24

    if-nez v3, :cond_24

    .line 240
    const/4 v4, 0x0

    return-object v4

    .line 242
    :cond_24
    if-nez v3, :cond_46

    .line 243
    const/4 v4, 0x0

    .line 244
    .local v4, "colorSpace":Landroid/graphics/ColorSpace;
    const-string/jumbo v5, "sharedElement:snapshot:colorSpace"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 245
    .local v5, "colorSpaceId":I
    if-ltz v5, :cond_42

    invoke-static {}, Landroid/graphics/ColorSpace$Named;->values()[Landroid/graphics/ColorSpace$Named;

    move-result-object v6

    array-length v6, v6

    if-ge v5, v6, :cond_42

    .line 246
    invoke-static {}, Landroid/graphics/ColorSpace$Named;->values()[Landroid/graphics/ColorSpace$Named;

    move-result-object v6

    aget-object v6, v6, v5

    invoke-static {v6}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v4

    .line 248
    :cond_42
    invoke-static {v2, v4}, Landroid/graphics/Bitmap;->wrapHardwareBuffer(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 250
    .end local v4    # "colorSpace":Landroid/graphics/ColorSpace;
    .end local v5    # "colorSpaceId":I
    :cond_46
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 251
    .local v4, "imageView":Landroid/widget/ImageView;
    move-object v0, v4

    .line 252
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 253
    nop

    .line 254
    const-string/jumbo v5, "sharedElement:snapshot:imageScaleType"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/widget/ImageView$ScaleType;->valueOf(Ljava/lang/String;)Landroid/widget/ImageView$ScaleType;

    move-result-object v5

    .line 253
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 255
    invoke-virtual {v4}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v5

    sget-object v6, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-ne v5, v6, :cond_93

    .line 256
    const-string/jumbo v5, "sharedElement:snapshot:imageMatrix"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v5

    .line 257
    .local v5, "values":[F
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 258
    .local v6, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v6, v5}, Landroid/graphics/Matrix;->setValues([F)V

    .line 259
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto :goto_93

    .line 261
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "buffer":Landroid/hardware/HardwareBuffer;
    .end local v3    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "imageView":Landroid/widget/ImageView;
    .end local v5    # "values":[F
    .end local v6    # "matrix":Landroid/graphics/Matrix;
    :cond_79
    instance-of v1, p2, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_93

    .line 262
    move-object v1, p2

    check-cast v1, Landroid/graphics/Bitmap;

    .line 263
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    move-object v0, v2

    .line 264
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 265
    .local v2, "resources":Landroid/content/res/Resources;
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_94

    .line 261
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "resources":Landroid/content/res/Resources;
    :cond_93
    :goto_93
    nop

    .line 267
    :goto_94
    return-object v0
.end method

.method public whitelist onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 154
    .local p1, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "sharedElements":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/view/View;>;"
    return-void
.end method

.method public whitelist onRejectSharedElements(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 143
    .local p1, "rejectedSharedElements":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    return-void
.end method

.method public whitelist onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 119
    .local p1, "sharedElementNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "sharedElements":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .local p3, "sharedElementSnapshots":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    return-void
.end method

.method public whitelist onSharedElementStart(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 88
    .local p1, "sharedElementNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "sharedElements":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .local p3, "sharedElementSnapshots":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    return-void
.end method

.method public whitelist onSharedElementsArrived(Ljava/util/List;Ljava/util/List;Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;)V
    .registers 4
    .param p3, "listener"    # Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;",
            ")V"
        }
    .end annotation

    .line 288
    .local p1, "sharedElementNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "sharedElements":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {p3}, Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;->onSharedElementsReady()V

    .line 289
    return-void
.end method

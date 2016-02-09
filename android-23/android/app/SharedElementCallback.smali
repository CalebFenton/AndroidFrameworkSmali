.class public abstract Landroid/app/SharedElementCallback;
.super Ljava/lang/Object;
.source "SharedElementCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;,
        Landroid/app/SharedElementCallback$1;
    }
.end annotation


# static fields
.field private static final BUNDLE_SNAPSHOT_BITMAP:Ljava/lang/String; = "sharedElement:snapshot:bitmap"

.field private static final BUNDLE_SNAPSHOT_IMAGE_MATRIX:Ljava/lang/String; = "sharedElement:snapshot:imageMatrix"

.field private static final BUNDLE_SNAPSHOT_IMAGE_SCALETYPE:Ljava/lang/String; = "sharedElement:snapshot:imageScaleType"

.field static final NULL_CALLBACK:Landroid/app/SharedElementCallback;


# instance fields
.field private mTempMatrix:Landroid/graphics/Matrix;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 50
    new-instance v0, Landroid/app/SharedElementCallback$1;

    #@2
    invoke-direct {v0}, Landroid/app/SharedElementCallback$1;-><init>()V

    #@5
    sput-object v0, Landroid/app/SharedElementCallback;->NULL_CALLBACK:Landroid/app/SharedElementCallback;

    #@7
    .line 44
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public onCaptureSharedElementSnapshot(Landroid/view/View;Landroid/graphics/Matrix;Landroid/graphics/RectF;)Landroid/os/Parcelable;
    .locals 9
    .param p1, "sharedElement"    # Landroid/view/View;
    .param p2, "viewToGlobalMatrix"    # Landroid/graphics/Matrix;
    .param p3, "screenBounds"    # Landroid/graphics/RectF;

    #@0
    .prologue
    .line 171
    instance-of v7, p1, Landroid/widget/ImageView;

    #@2
    if-eqz v7, :cond_2

    #@4
    move-object v4, p1

    #@5
    .line 172
    check-cast v4, Landroid/widget/ImageView;

    #@7
    .line 173
    .local v4, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    #@a
    move-result-object v3

    #@b
    .line 174
    .local v3, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    #@e
    move-result-object v0

    #@f
    .line 175
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_2

    #@11
    if-eqz v0, :cond_0

    #@13
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    #@16
    move-result v7

    #@17
    if-nez v7, :cond_2

    #@19
    .line 176
    :cond_0
    invoke-static {v3}, Landroid/transition/TransitionUtils;->createDrawableBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    #@1c
    move-result-object v1

    #@1d
    .line 177
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_2

    #@1f
    .line 178
    new-instance v2, Landroid/os/Bundle;

    #@21
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    #@24
    .line 179
    .local v2, "bundle":Landroid/os/Bundle;
    const-string/jumbo v7, "sharedElement:snapshot:bitmap"

    #@27
    invoke-virtual {v2, v7, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@2a
    .line 180
    const-string/jumbo v7, "sharedElement:snapshot:imageScaleType"

    #@2d
    .line 181
    invoke-virtual {v4}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    #@30
    move-result-object v8

    #@31
    invoke-virtual {v8}, Landroid/widget/ImageView$ScaleType;->toString()Ljava/lang/String;

    #@34
    move-result-object v8

    #@35
    .line 180
    invoke-virtual {v2, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@38
    .line 182
    invoke-virtual {v4}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    #@3b
    move-result-object v7

    #@3c
    sget-object v8, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    #@3e
    if-ne v7, v8, :cond_1

    #@40
    .line 183
    invoke-virtual {v4}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    #@43
    move-result-object v5

    #@44
    .line 184
    .local v5, "matrix":Landroid/graphics/Matrix;
    const/16 v7, 0x9

    #@46
    new-array v6, v7, [F

    #@48
    .line 185
    .local v6, "values":[F
    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->getValues([F)V

    #@4b
    .line 186
    const-string/jumbo v7, "sharedElement:snapshot:imageMatrix"

    #@4e
    invoke-virtual {v2, v7, v6}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    #@51
    .line 188
    .end local v5    # "matrix":Landroid/graphics/Matrix;
    .end local v6    # "values":[F
    :cond_1
    return-object v2

    #@52
    .line 192
    .end local v0    # "bg":Landroid/graphics/drawable/Drawable;
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v3    # "d":Landroid/graphics/drawable/Drawable;
    .end local v4    # "imageView":Landroid/widget/ImageView;
    :cond_2
    iget-object v7, p0, Landroid/app/SharedElementCallback;->mTempMatrix:Landroid/graphics/Matrix;

    #@54
    if-nez v7, :cond_3

    #@56
    .line 193
    new-instance v7, Landroid/graphics/Matrix;

    #@58
    invoke-direct {v7, p2}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    #@5b
    iput-object v7, p0, Landroid/app/SharedElementCallback;->mTempMatrix:Landroid/graphics/Matrix;

    #@5d
    .line 197
    :goto_0
    iget-object v7, p0, Landroid/app/SharedElementCallback;->mTempMatrix:Landroid/graphics/Matrix;

    #@5f
    invoke-static {p1, v7, p3}, Landroid/transition/TransitionUtils;->createViewBitmap(Landroid/view/View;Landroid/graphics/Matrix;Landroid/graphics/RectF;)Landroid/graphics/Bitmap;

    #@62
    move-result-object v7

    #@63
    return-object v7

    #@64
    .line 195
    :cond_3
    iget-object v7, p0, Landroid/app/SharedElementCallback;->mTempMatrix:Landroid/graphics/Matrix;

    #@66
    invoke-virtual {v7, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    #@69
    goto :goto_0
.end method

.method public onCreateSnapshotView(Landroid/content/Context;Landroid/os/Parcelable;)Landroid/view/View;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "snapshot"    # Landroid/os/Parcelable;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 218
    const/4 v6, 0x0

    #@2
    .line 219
    .local v6, "view":Landroid/view/View;
    instance-of v7, p2, Landroid/os/Bundle;

    #@4
    if-eqz v7, :cond_2

    #@6
    move-object v1, p2

    #@7
    .line 220
    check-cast v1, Landroid/os/Bundle;

    #@9
    .line 221
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v7, "sharedElement:snapshot:bitmap"

    #@c
    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Landroid/graphics/Bitmap;

    #@12
    .line 222
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    #@14
    .line 223
    return-object v8

    #@15
    .line 225
    :cond_0
    new-instance v2, Landroid/widget/ImageView;

    #@17
    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    #@1a
    .line 226
    .local v2, "imageView":Landroid/widget/ImageView;
    move-object v6, v2

    #@1b
    .line 227
    .local v6, "view":Landroid/view/View;
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    #@1e
    .line 229
    const-string/jumbo v7, "sharedElement:snapshot:imageScaleType"

    #@21
    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@24
    move-result-object v7

    #@25
    invoke-static {v7}, Landroid/widget/ImageView$ScaleType;->valueOf(Ljava/lang/String;)Landroid/widget/ImageView$ScaleType;

    #@28
    move-result-object v7

    #@29
    .line 228
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    #@2c
    .line 230
    invoke-virtual {v2}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    #@2f
    move-result-object v7

    #@30
    sget-object v8, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    #@32
    if-ne v7, v8, :cond_1

    #@34
    .line 231
    const-string/jumbo v7, "sharedElement:snapshot:imageMatrix"

    #@37
    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    #@3a
    move-result-object v5

    #@3b
    .line 232
    .local v5, "values":[F
    new-instance v3, Landroid/graphics/Matrix;

    #@3d
    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    #@40
    .line 233
    .local v3, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v3, v5}, Landroid/graphics/Matrix;->setValues([F)V

    #@43
    .line 234
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    #@46
    .line 242
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "imageView":Landroid/widget/ImageView;
    .end local v3    # "matrix":Landroid/graphics/Matrix;
    .end local v5    # "values":[F
    .end local v6    # "view":Landroid/view/View;
    :cond_1
    :goto_0
    return-object v6

    #@47
    .line 236
    .local v6, "view":Landroid/view/View;
    :cond_2
    instance-of v7, p2, Landroid/graphics/Bitmap;

    #@49
    if-eqz v7, :cond_1

    #@4b
    move-object v0, p2

    #@4c
    .line 237
    check-cast v0, Landroid/graphics/Bitmap;

    #@4e
    .line 238
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    new-instance v6, Landroid/view/View;

    #@50
    .end local v6    # "view":Landroid/view/View;
    invoke-direct {v6, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    #@53
    .line 239
    .local v6, "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@56
    move-result-object v4

    #@57
    .line 240
    .local v4, "resources":Landroid/content/res/Resources;
    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    #@59
    invoke-direct {v7, v4, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    #@5c
    invoke-virtual {v6, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    #@5f
    goto :goto_0
.end method

.method public onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 148
    .local p1, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "sharedElements":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/view/View;>;"
    return-void
.end method

.method public onRejectSharedElements(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 137
    .local p1, "rejectedSharedElements":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    return-void
.end method

.method public onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 113
    .local p1, "sharedElementNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "sharedElements":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .local p3, "sharedElementSnapshots":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    return-void
.end method

.method public onSharedElementStart(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 82
    .local p1, "sharedElementNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "sharedElements":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .local p3, "sharedElementSnapshots":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    return-void
.end method

.method public onSharedElementsArrived(Ljava/util/List;Ljava/util/List;Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;)V
    .locals 0
    .param p3, "listener"    # Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 263
    .local p1, "sharedElementNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "sharedElements":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {p3}, Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;->onSharedElementsReady()V

    #@3
    .line 262
    return-void
.end method

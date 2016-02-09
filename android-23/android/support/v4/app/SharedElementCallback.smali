.class public abstract Landroid/support/v4/app/SharedElementCallback;
.super Ljava/lang/Object;
.source "SharedElementCallback.java"


# static fields
.field private static final BUNDLE_SNAPSHOT_BITMAP:Ljava/lang/String; = "sharedElement:snapshot:bitmap"

.field private static final BUNDLE_SNAPSHOT_IMAGE_MATRIX:Ljava/lang/String; = "sharedElement:snapshot:imageMatrix"

.field private static final BUNDLE_SNAPSHOT_IMAGE_SCALETYPE:Ljava/lang/String; = "sharedElement:snapshot:imageScaleType"

.field private static MAX_IMAGE_SIZE:I


# instance fields
.field private mTempMatrix:Landroid/graphics/Matrix;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 45
    const/high16 v0, 0x100000

    #@2
    sput v0, Landroid/support/v4/app/SharedElementCallback;->MAX_IMAGE_SIZE:I

    #@4
    .line 43
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static createDrawableBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 14
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 215
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@3
    move-result v11

    #@4
    .line 216
    .local v11, "width":I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@7
    move-result v6

    #@8
    .line 217
    .local v6, "height":I
    if-lez v11, :cond_0

    #@a
    if-gtz v6, :cond_1

    #@c
    .line 218
    :cond_0
    const/4 v12, 0x0

    #@d
    return-object v12

    #@e
    .line 220
    :cond_1
    sget v12, Landroid/support/v4/app/SharedElementCallback;->MAX_IMAGE_SIZE:I

    #@10
    int-to-float v12, v12

    #@11
    mul-int v13, v11, v6

    #@13
    int-to-float v13, v13

    #@14
    div-float/2addr v12, v13

    #@15
    const/high16 v13, 0x3f800000    # 1.0f

    #@17
    invoke-static {v13, v12}, Ljava/lang/Math;->min(FF)F

    #@1a
    move-result v9

    #@1b
    .line 221
    .local v9, "scale":F
    instance-of v12, p0, Landroid/graphics/drawable/BitmapDrawable;

    #@1d
    if-eqz v12, :cond_2

    #@1f
    const/high16 v12, 0x3f800000    # 1.0f

    #@21
    cmpl-float v12, v9, v12

    #@23
    if-nez v12, :cond_2

    #@25
    .line 223
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    #@27
    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    #@2a
    move-result-object v12

    #@2b
    return-object v12

    #@2c
    .line 225
    .restart local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    int-to-float v12, v11

    #@2d
    mul-float/2addr v12, v9

    #@2e
    float-to-int v2, v12

    #@2f
    .line 226
    .local v2, "bitmapWidth":I
    int-to-float v12, v6

    #@30
    mul-float/2addr v12, v9

    #@31
    float-to-int v1, v12

    #@32
    .line 227
    .local v1, "bitmapHeight":I
    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    #@34
    invoke-static {v2, v1, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    #@37
    move-result-object v0

    #@38
    .line 228
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/Canvas;

    #@3a
    invoke-direct {v4, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    #@3d
    .line 229
    .local v4, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    #@40
    move-result-object v5

    #@41
    .line 230
    .local v5, "existingBounds":Landroid/graphics/Rect;
    iget v7, v5, Landroid/graphics/Rect;->left:I

    #@43
    .line 231
    .local v7, "left":I
    iget v10, v5, Landroid/graphics/Rect;->top:I

    #@45
    .line 232
    .local v10, "top":I
    iget v8, v5, Landroid/graphics/Rect;->right:I

    #@47
    .line 233
    .local v8, "right":I
    iget v3, v5, Landroid/graphics/Rect;->bottom:I

    #@49
    .line 234
    .local v3, "bottom":I
    const/4 v12, 0x0

    #@4a
    const/4 v13, 0x0

    #@4b
    invoke-virtual {p0, v12, v13, v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@4e
    .line 235
    invoke-virtual {p0, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@51
    .line 236
    invoke-virtual {p0, v7, v10, v8, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@54
    .line 237
    return-object v0
.end method


# virtual methods
.method public onCaptureSharedElementSnapshot(Landroid/view/View;Landroid/graphics/Matrix;Landroid/graphics/RectF;)Landroid/os/Parcelable;
    .locals 15
    .param p1, "sharedElement"    # Landroid/view/View;
    .param p2, "viewToGlobalMatrix"    # Landroid/graphics/Matrix;
    .param p3, "screenBounds"    # Landroid/graphics/RectF;

    #@0
    .prologue
    .line 169
    move-object/from16 v0, p1

    #@2
    instance-of v12, v0, Landroid/widget/ImageView;

    #@4
    if-eqz v12, :cond_1

    #@6
    move-object/from16 v8, p1

    #@8
    .line 170
    check-cast v8, Landroid/widget/ImageView;

    #@a
    .line 171
    .local v8, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v8}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    #@d
    move-result-object v7

    #@e
    .line 172
    .local v7, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v8}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    #@11
    move-result-object v1

    #@12
    .line 173
    .local v1, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v7, :cond_1

    #@14
    if-nez v1, :cond_1

    #@16
    .line 174
    invoke-static {v7}, Landroid/support/v4/app/SharedElementCallback;->createDrawableBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    #@19
    move-result-object v2

    #@1a
    .line 175
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_1

    #@1c
    .line 176
    new-instance v5, Landroid/os/Bundle;

    #@1e
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    #@21
    .line 177
    .local v5, "bundle":Landroid/os/Bundle;
    const-string/jumbo v12, "sharedElement:snapshot:bitmap"

    #@24
    invoke-virtual {v5, v12, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@27
    .line 178
    const-string/jumbo v12, "sharedElement:snapshot:imageScaleType"

    #@2a
    .line 179
    invoke-virtual {v8}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    #@2d
    move-result-object v13

    #@2e
    invoke-virtual {v13}, Landroid/widget/ImageView$ScaleType;->toString()Ljava/lang/String;

    #@31
    move-result-object v13

    #@32
    .line 178
    invoke-virtual {v5, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@35
    .line 180
    invoke-virtual {v8}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    #@38
    move-result-object v12

    #@39
    sget-object v13, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    #@3b
    if-ne v12, v13, :cond_0

    #@3d
    .line 181
    invoke-virtual {v8}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    #@40
    move-result-object v9

    #@41
    .line 182
    .local v9, "matrix":Landroid/graphics/Matrix;
    const/16 v12, 0x9

    #@43
    new-array v11, v12, [F

    #@45
    .line 183
    .local v11, "values":[F
    invoke-virtual {v9, v11}, Landroid/graphics/Matrix;->getValues([F)V

    #@48
    .line 184
    const-string/jumbo v12, "sharedElement:snapshot:imageMatrix"

    #@4b
    invoke-virtual {v5, v12, v11}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    #@4e
    .line 186
    .end local v9    # "matrix":Landroid/graphics/Matrix;
    .end local v11    # "values":[F
    :cond_0
    return-object v5

    #@4f
    .line 190
    .end local v1    # "bg":Landroid/graphics/drawable/Drawable;
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v5    # "bundle":Landroid/os/Bundle;
    .end local v7    # "d":Landroid/graphics/drawable/Drawable;
    .end local v8    # "imageView":Landroid/widget/ImageView;
    :cond_1
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->width()F

    #@52
    move-result v12

    #@53
    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    #@56
    move-result v4

    #@57
    .line 191
    .local v4, "bitmapWidth":I
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->height()F

    #@5a
    move-result v12

    #@5b
    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    #@5e
    move-result v3

    #@5f
    .line 192
    .local v3, "bitmapHeight":I
    const/4 v2, 0x0

    #@60
    .line 193
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    if-lez v4, :cond_3

    #@62
    if-lez v3, :cond_3

    #@64
    .line 194
    sget v12, Landroid/support/v4/app/SharedElementCallback;->MAX_IMAGE_SIZE:I

    #@66
    int-to-float v12, v12

    #@67
    mul-int v13, v4, v3

    #@69
    int-to-float v13, v13

    #@6a
    div-float/2addr v12, v13

    #@6b
    const/high16 v13, 0x3f800000    # 1.0f

    #@6d
    invoke-static {v13, v12}, Ljava/lang/Math;->min(FF)F

    #@70
    move-result v10

    #@71
    .line 195
    .local v10, "scale":F
    int-to-float v12, v4

    #@72
    mul-float/2addr v12, v10

    #@73
    float-to-int v4, v12

    #@74
    .line 196
    int-to-float v12, v3

    #@75
    mul-float/2addr v12, v10

    #@76
    float-to-int v3, v12

    #@77
    .line 197
    iget-object v12, p0, Landroid/support/v4/app/SharedElementCallback;->mTempMatrix:Landroid/graphics/Matrix;

    #@79
    if-nez v12, :cond_2

    #@7b
    .line 198
    new-instance v12, Landroid/graphics/Matrix;

    #@7d
    invoke-direct {v12}, Landroid/graphics/Matrix;-><init>()V

    #@80
    iput-object v12, p0, Landroid/support/v4/app/SharedElementCallback;->mTempMatrix:Landroid/graphics/Matrix;

    #@82
    .line 200
    :cond_2
    iget-object v12, p0, Landroid/support/v4/app/SharedElementCallback;->mTempMatrix:Landroid/graphics/Matrix;

    #@84
    move-object/from16 v0, p2

    #@86
    invoke-virtual {v12, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    #@89
    .line 201
    iget-object v12, p0, Landroid/support/v4/app/SharedElementCallback;->mTempMatrix:Landroid/graphics/Matrix;

    #@8b
    move-object/from16 v0, p3

    #@8d
    iget v13, v0, Landroid/graphics/RectF;->left:F

    #@8f
    neg-float v13, v13

    #@90
    move-object/from16 v0, p3

    #@92
    iget v14, v0, Landroid/graphics/RectF;->top:F

    #@94
    neg-float v14, v14

    #@95
    invoke-virtual {v12, v13, v14}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    #@98
    .line 202
    iget-object v12, p0, Landroid/support/v4/app/SharedElementCallback;->mTempMatrix:Landroid/graphics/Matrix;

    #@9a
    invoke-virtual {v12, v10, v10}, Landroid/graphics/Matrix;->postScale(FF)Z

    #@9d
    .line 203
    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    #@9f
    invoke-static {v4, v3, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    #@a2
    move-result-object v2

    #@a3
    .line 204
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/Canvas;

    #@a5
    invoke-direct {v6, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    #@a8
    .line 205
    .local v6, "canvas":Landroid/graphics/Canvas;
    iget-object v12, p0, Landroid/support/v4/app/SharedElementCallback;->mTempMatrix:Landroid/graphics/Matrix;

    #@aa
    invoke-virtual {v6, v12}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    #@ad
    .line 206
    move-object/from16 v0, p1

    #@af
    invoke-virtual {v0, v6}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    #@b2
    .line 208
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v6    # "canvas":Landroid/graphics/Canvas;
    .end local v10    # "scale":F
    :cond_3
    return-object v2
.end method

.method public onCreateSnapshotView(Landroid/content/Context;Landroid/os/Parcelable;)Landroid/view/View;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "snapshot"    # Landroid/os/Parcelable;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 258
    const/4 v5, 0x0

    #@2
    .line 259
    .local v5, "view":Landroid/widget/ImageView;
    instance-of v6, p2, Landroid/os/Bundle;

    #@4
    if-eqz v6, :cond_2

    #@6
    move-object v1, p2

    #@7
    .line 260
    check-cast v1, Landroid/os/Bundle;

    #@9
    .line 261
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v6, "sharedElement:snapshot:bitmap"

    #@c
    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Landroid/graphics/Bitmap;

    #@12
    .line 262
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    #@14
    .line 263
    return-object v7

    #@15
    .line 265
    :cond_0
    new-instance v2, Landroid/widget/ImageView;

    #@17
    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    #@1a
    .line 266
    .local v2, "imageView":Landroid/widget/ImageView;
    move-object v5, v2

    #@1b
    .line 267
    .local v5, "view":Landroid/widget/ImageView;
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    #@1e
    .line 269
    const-string/jumbo v6, "sharedElement:snapshot:imageScaleType"

    #@21
    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@24
    move-result-object v6

    #@25
    invoke-static {v6}, Landroid/widget/ImageView$ScaleType;->valueOf(Ljava/lang/String;)Landroid/widget/ImageView$ScaleType;

    #@28
    move-result-object v6

    #@29
    .line 268
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    #@2c
    .line 270
    invoke-virtual {v2}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    #@2f
    move-result-object v6

    #@30
    sget-object v7, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    #@32
    if-ne v6, v7, :cond_1

    #@34
    .line 271
    const-string/jumbo v6, "sharedElement:snapshot:imageMatrix"

    #@37
    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    #@3a
    move-result-object v4

    #@3b
    .line 272
    .local v4, "values":[F
    new-instance v3, Landroid/graphics/Matrix;

    #@3d
    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    #@40
    .line 273
    .local v3, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->setValues([F)V

    #@43
    .line 274
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    #@46
    .line 281
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "imageView":Landroid/widget/ImageView;
    .end local v3    # "matrix":Landroid/graphics/Matrix;
    .end local v4    # "values":[F
    .end local v5    # "view":Landroid/widget/ImageView;
    :cond_1
    :goto_0
    return-object v5

    #@47
    .line 276
    .local v5, "view":Landroid/widget/ImageView;
    :cond_2
    instance-of v6, p2, Landroid/graphics/Bitmap;

    #@49
    if-eqz v6, :cond_1

    #@4b
    move-object v0, p2

    #@4c
    .line 277
    check-cast v0, Landroid/graphics/Bitmap;

    #@4e
    .line 278
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/widget/ImageView;

    #@50
    .end local v5    # "view":Landroid/widget/ImageView;
    invoke-direct {v5, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    #@53
    .line 279
    .local v5, "view":Landroid/widget/ImageView;
    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    #@56
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
    .line 145
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
    .line 134
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
    .line 110
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
    .line 79
    .local p1, "sharedElementNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "sharedElements":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .local p3, "sharedElementSnapshots":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    return-void
.end method

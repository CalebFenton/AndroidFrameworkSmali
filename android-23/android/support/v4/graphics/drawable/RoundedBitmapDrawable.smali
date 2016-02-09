.class public abstract Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "RoundedBitmapDrawable.java"


# static fields
.field private static final DEFAULT_PAINT_FLAGS:I = 0x3


# instance fields
.field private mApplyGravity:Z

.field final mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapHeight:I

.field private final mBitmapShader:Landroid/graphics/BitmapShader;

.field private mBitmapWidth:I

.field private mCornerRadius:F

.field final mDstRect:Landroid/graphics/Rect;

.field private final mDstRectF:Landroid/graphics/RectF;

.field private mGravity:I

.field private mIsCircular:Z

.field private final mPaint:Landroid/graphics/Paint;

.field private final mShaderMatrix:Landroid/graphics/Matrix;

.field private mTargetDensity:I


# direct methods
.method constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 375
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    #@5
    .line 47
    const/16 v0, 0xa0

    #@7
    iput v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mTargetDensity:I

    #@9
    .line 48
    const/16 v0, 0x77

    #@b
    iput v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mGravity:I

    #@d
    .line 49
    new-instance v0, Landroid/graphics/Paint;

    #@f
    const/4 v1, 0x3

    #@10
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    #@13
    iput-object v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    #@15
    .line 51
    new-instance v0, Landroid/graphics/Matrix;

    #@17
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    #@1a
    iput-object v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    #@1c
    .line 54
    new-instance v0, Landroid/graphics/Rect;

    #@1e
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@21
    iput-object v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    #@23
    .line 55
    new-instance v0, Landroid/graphics/RectF;

    #@25
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    #@28
    iput-object v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mDstRectF:Landroid/graphics/RectF;

    #@2a
    .line 57
    const/4 v0, 0x1

    #@2b
    iput-boolean v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mApplyGravity:Z

    #@2d
    .line 376
    if-eqz p1, :cond_0

    #@2f
    .line 377
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@32
    move-result-object v0

    #@33
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    #@35
    iput v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mTargetDensity:I

    #@37
    .line 380
    :cond_0
    iput-object p2, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    #@39
    .line 381
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    #@3b
    if-eqz v0, :cond_1

    #@3d
    .line 382
    invoke-direct {p0}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->computeBitmapSize()V

    #@40
    .line 383
    new-instance v0, Landroid/graphics/BitmapShader;

    #@42
    iget-object v1, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    #@44
    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    #@46
    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    #@48
    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    #@4b
    iput-object v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mBitmapShader:Landroid/graphics/BitmapShader;

    #@4d
    .line 375
    :goto_0
    return-void

    #@4e
    .line 385
    :cond_1
    iput v3, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mBitmapHeight:I

    #@50
    iput v3, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mBitmapWidth:I

    #@52
    .line 386
    iput-object v2, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mBitmapShader:Landroid/graphics/BitmapShader;

    #@54
    goto :goto_0
.end method

.method private computeBitmapSize()V
    .locals 2

    #@0
    .prologue
    .line 79
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    #@2
    iget v1, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mTargetDensity:I

    #@4
    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->getScaledWidth(I)I

    #@7
    move-result v0

    #@8
    iput v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mBitmapWidth:I

    #@a
    .line 80
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    #@c
    iget v1, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mTargetDensity:I

    #@e
    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->getScaledHeight(I)I

    #@11
    move-result v0

    #@12
    iput v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mBitmapHeight:I

    #@14
    .line 78
    return-void
.end method

.method private static isGreaterThanZero(F)Z
    .locals 1
    .param p0, "toCompare"    # F

    #@0
    .prologue
    .line 391
    const v0, 0x3d4ccccd    # 0.05f

    #@3
    cmpl-float v0, p0, v0

    #@5
    if-lez v0, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method private updateCircularCornerRadius()V
    .locals 3

    #@0
    .prologue
    .line 308
    iget v1, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mBitmapHeight:I

    #@2
    iget v2, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mBitmapWidth:I

    #@4
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    #@7
    move-result v0

    #@8
    .line 309
    .local v0, "minCircularSize":I
    div-int/lit8 v1, v0, 0x2

    #@a
    int-to-float v1, v1

    #@b
    iput v1, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mCornerRadius:F

    #@d
    .line 307
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 255
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    #@3
    .line 256
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    #@5
    .line 257
    return-void

    #@6
    .line 260
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->updateDstRect()V

    #@9
    .line 261
    iget-object v1, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    #@b
    invoke-virtual {v1}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    #@e
    move-result-object v1

    #@f
    if-nez v1, :cond_1

    #@11
    .line 262
    iget-object v1, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    #@13
    iget-object v2, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    #@15
    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    #@18
    .line 254
    :goto_0
    return-void

    #@19
    .line 264
    :cond_1
    iget-object v1, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mDstRectF:Landroid/graphics/RectF;

    #@1b
    iget v2, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mCornerRadius:F

    #@1d
    iget v3, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mCornerRadius:F

    #@1f
    iget-object v4, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    #@21
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    #@24
    goto :goto_0
.end method

.method public getAlpha()I
    .locals 1

    #@0
    .prologue
    .line 278
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    #@2
    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public final getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    #@0
    .prologue
    .line 75
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    #@2
    return-object v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    #@0
    .prologue
    .line 288
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    #@2
    invoke-virtual {v0}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getCornerRadius()F
    .locals 1

    #@0
    .prologue
    .line 349
    iget v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mCornerRadius:F

    #@2
    return v0
.end method

.method public getGravity()I
    .locals 1

    #@0
    .prologue
    .line 135
    iget v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mGravity:I

    #@2
    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    #@0
    .prologue
    .line 359
    iget v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mBitmapHeight:I

    #@2
    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    #@0
    .prologue
    .line 354
    iget v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mBitmapWidth:I

    #@2
    return v0
.end method

.method public getOpacity()I
    .locals 4

    #@0
    .prologue
    const/4 v1, -0x3

    #@1
    .line 364
    iget v2, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mGravity:I

    #@3
    const/16 v3, 0x77

    #@5
    if-ne v2, v3, :cond_0

    #@7
    iget-boolean v2, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mIsCircular:Z

    #@9
    if-eqz v2, :cond_1

    #@b
    .line 365
    :cond_0
    return v1

    #@c
    .line 367
    :cond_1
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    #@e
    .line 368
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    #@10
    .line 369
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    #@13
    move-result v2

    #@14
    .line 368
    if-nez v2, :cond_2

    #@16
    .line 370
    iget-object v2, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    #@18
    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    #@1b
    move-result v2

    #@1c
    const/16 v3, 0xff

    #@1e
    if-ge v2, v3, :cond_3

    #@20
    .line 368
    :cond_2
    :goto_0
    return v1

    #@21
    .line 371
    :cond_3
    iget v2, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mCornerRadius:F

    #@23
    invoke-static {v2}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->isGreaterThanZero(F)Z

    #@26
    move-result v2

    #@27
    .line 368
    if-nez v2, :cond_2

    #@29
    .line 372
    const/4 v1, -0x1

    #@2a
    goto :goto_0
.end method

.method public final getPaint()Landroid/graphics/Paint;
    .locals 1

    #@0
    .prologue
    .line 68
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    #@2
    return-object v0
.end method

.method gravityCompatApply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "gravity"    # I
    .param p2, "bitmapWidth"    # I
    .param p3, "bitmapHeight"    # I
    .param p4, "bounds"    # Landroid/graphics/Rect;
    .param p5, "outRect"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 218
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public hasAntiAlias()Z
    .locals 1

    #@0
    .prologue
    .line 201
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    #@2
    invoke-virtual {v0}, Landroid/graphics/Paint;->isAntiAlias()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public hasMipMap()Z
    .locals 1

    #@0
    .prologue
    .line 177
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public isCircular()Z
    .locals 1

    #@0
    .prologue
    .line 316
    iget-boolean v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mIsCircular:Z

    #@2
    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 338
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    #@3
    .line 339
    iget-boolean v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mIsCircular:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 340
    invoke-direct {p0}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->updateCircularCornerRadius()V

    #@a
    .line 342
    :cond_0
    const/4 v0, 0x1

    #@b
    iput-boolean v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mApplyGravity:Z

    #@d
    .line 337
    return-void
.end method

.method public setAlpha(I)V
    .locals 2
    .param p1, "alpha"    # I

    #@0
    .prologue
    .line 270
    iget-object v1, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    #@2
    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    #@5
    move-result v0

    #@6
    .line 271
    .local v0, "oldAlpha":I
    if-eq p1, v0, :cond_0

    #@8
    .line 272
    iget-object v1, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    #@a
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    #@d
    .line 273
    invoke-virtual {p0}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->invalidateSelf()V

    #@10
    .line 269
    :cond_0
    return-void
.end method

.method public setAntiAlias(Z)V
    .locals 1
    .param p1, "aa"    # Z

    #@0
    .prologue
    .line 189
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    #@2
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    #@5
    .line 190
    invoke-virtual {p0}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->invalidateSelf()V

    #@8
    .line 188
    return-void
.end method

.method public setCircular(Z)V
    .locals 2
    .param p1, "circular"    # Z

    #@0
    .prologue
    .line 296
    iput-boolean p1, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mIsCircular:Z

    #@2
    .line 297
    const/4 v0, 0x1

    #@3
    iput-boolean v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mApplyGravity:Z

    #@5
    .line 298
    if-eqz p1, :cond_0

    #@7
    .line 299
    invoke-direct {p0}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->updateCircularCornerRadius()V

    #@a
    .line 300
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    #@c
    iget-object v1, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mBitmapShader:Landroid/graphics/BitmapShader;

    #@e
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    #@11
    .line 301
    invoke-virtual {p0}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->invalidateSelf()V

    #@14
    .line 295
    :goto_0
    return-void

    #@15
    .line 303
    :cond_0
    const/4 v0, 0x0

    #@16
    invoke-virtual {p0, v0}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->setCornerRadius(F)V

    #@19
    goto :goto_0
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    #@0
    .prologue
    .line 283
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    #@2
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    #@5
    .line 284
    invoke-virtual {p0}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->invalidateSelf()V

    #@8
    .line 282
    return-void
.end method

.method public setCornerRadius(F)V
    .locals 2
    .param p1, "cornerRadius"    # F

    #@0
    .prologue
    .line 323
    iget v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mCornerRadius:F

    #@2
    cmpl-float v0, v0, p1

    #@4
    if-nez v0, :cond_0

    #@6
    return-void

    #@7
    .line 325
    :cond_0
    const/4 v0, 0x0

    #@8
    iput-boolean v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mIsCircular:Z

    #@a
    .line 326
    invoke-static {p1}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->isGreaterThanZero(F)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 327
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    #@12
    iget-object v1, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mBitmapShader:Landroid/graphics/BitmapShader;

    #@14
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    #@17
    .line 332
    :goto_0
    iput p1, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mCornerRadius:F

    #@19
    .line 333
    invoke-virtual {p0}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->invalidateSelf()V

    #@1c
    .line 322
    return-void

    #@1d
    .line 329
    :cond_1
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    #@1f
    const/4 v1, 0x0

    #@20
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    #@23
    goto :goto_0
.end method

.method public setDither(Z)V
    .locals 1
    .param p1, "dither"    # Z

    #@0
    .prologue
    .line 212
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    #@2
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setDither(Z)V

    #@5
    .line 213
    invoke-virtual {p0}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->invalidateSelf()V

    #@8
    .line 211
    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 1
    .param p1, "filter"    # Z

    #@0
    .prologue
    .line 206
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    #@2
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    #@5
    .line 207
    invoke-virtual {p0}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->invalidateSelf()V

    #@8
    .line 205
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    #@0
    .prologue
    .line 146
    iget v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mGravity:I

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 147
    iput p1, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mGravity:I

    #@6
    .line 148
    const/4 v0, 0x1

    #@7
    iput-boolean v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mApplyGravity:Z

    #@9
    .line 149
    invoke-virtual {p0}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->invalidateSelf()V

    #@c
    .line 145
    :cond_0
    return-void
.end method

.method public setMipMap(Z)V
    .locals 1
    .param p1, "mipMap"    # Z

    #@0
    .prologue
    .line 165
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public setTargetDensity(I)V
    .locals 1
    .param p1, "density"    # I

    #@0
    .prologue
    .line 118
    iget v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mTargetDensity:I

    #@2
    if-eq v0, p1, :cond_2

    #@4
    .line 119
    if-nez p1, :cond_0

    #@6
    const/16 p1, 0xa0

    #@8
    .end local p1    # "density":I
    :cond_0
    iput p1, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mTargetDensity:I

    #@a
    .line 120
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 121
    invoke-direct {p0}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->computeBitmapSize()V

    #@11
    .line 123
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->invalidateSelf()V

    #@14
    .line 117
    :cond_2
    return-void
.end method

.method public setTargetDensity(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 94
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getDensity()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->setTargetDensity(I)V

    #@7
    .line 93
    return-void
.end method

.method public setTargetDensity(Landroid/util/DisplayMetrics;)V
    .locals 1
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;

    #@0
    .prologue
    .line 106
    iget v0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    #@2
    invoke-virtual {p0, v0}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->setTargetDensity(I)V

    #@5
    .line 105
    return-void
.end method

.method updateDstRect()V
    .locals 13

    #@0
    .prologue
    const/4 v12, 0x0

    #@1
    .line 222
    iget-boolean v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mApplyGravity:Z

    #@3
    if-eqz v0, :cond_1

    #@5
    .line 223
    iget-boolean v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mIsCircular:Z

    #@7
    if-eqz v0, :cond_2

    #@9
    .line 224
    iget v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mBitmapWidth:I

    #@b
    iget v1, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mBitmapHeight:I

    #@d
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    #@10
    move-result v2

    #@11
    .line 225
    .local v2, "minDimen":I
    iget v1, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mGravity:I

    #@13
    invoke-virtual {p0}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->getBounds()Landroid/graphics/Rect;

    #@16
    move-result-object v4

    #@17
    iget-object v5, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    #@19
    move-object v0, p0

    #@1a
    move v3, v2

    #@1b
    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->gravityCompatApply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    #@1e
    .line 229
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    #@20
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    #@23
    move-result v0

    #@24
    iget-object v1, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    #@26
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    #@29
    move-result v1

    #@2a
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    #@2d
    move-result v11

    #@2e
    .line 230
    .local v11, "minDrawDimen":I
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    #@30
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    #@33
    move-result v0

    #@34
    sub-int/2addr v0, v11

    #@35
    div-int/lit8 v0, v0, 0x2

    #@37
    invoke-static {v12, v0}, Ljava/lang/Math;->max(II)I

    #@3a
    move-result v9

    #@3b
    .line 231
    .local v9, "insetX":I
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    #@3d
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    #@40
    move-result v0

    #@41
    sub-int/2addr v0, v11

    #@42
    div-int/lit8 v0, v0, 0x2

    #@44
    invoke-static {v12, v0}, Ljava/lang/Math;->max(II)I

    #@47
    move-result v10

    #@48
    .line 232
    .local v10, "insetY":I
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    #@4a
    invoke-virtual {v0, v9, v10}, Landroid/graphics/Rect;->inset(II)V

    #@4d
    .line 233
    int-to-float v0, v11

    #@4e
    const/high16 v1, 0x3f000000    # 0.5f

    #@50
    mul-float/2addr v0, v1

    #@51
    iput v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mCornerRadius:F

    #@53
    .line 237
    .end local v2    # "minDimen":I
    .end local v9    # "insetX":I
    .end local v10    # "insetY":I
    .end local v11    # "minDrawDimen":I
    :goto_0
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mDstRectF:Landroid/graphics/RectF;

    #@55
    iget-object v1, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    #@57
    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    #@5a
    .line 239
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mBitmapShader:Landroid/graphics/BitmapShader;

    #@5c
    if-eqz v0, :cond_0

    #@5e
    .line 241
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    #@60
    iget-object v1, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mDstRectF:Landroid/graphics/RectF;

    #@62
    iget v1, v1, Landroid/graphics/RectF;->left:F

    #@64
    iget-object v3, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mDstRectF:Landroid/graphics/RectF;

    #@66
    iget v3, v3, Landroid/graphics/RectF;->top:F

    #@68
    invoke-virtual {v0, v1, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    #@6b
    .line 242
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    #@6d
    .line 243
    iget-object v1, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mDstRectF:Landroid/graphics/RectF;

    #@6f
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    #@72
    move-result v1

    #@73
    iget-object v3, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    #@75
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    #@78
    move-result v3

    #@79
    int-to-float v3, v3

    #@7a
    div-float/2addr v1, v3

    #@7b
    .line 244
    iget-object v3, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mDstRectF:Landroid/graphics/RectF;

    #@7d
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    #@80
    move-result v3

    #@81
    iget-object v4, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    #@83
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    #@86
    move-result v4

    #@87
    int-to-float v4, v4

    #@88
    div-float/2addr v3, v4

    #@89
    .line 242
    invoke-virtual {v0, v1, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    #@8c
    .line 245
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mBitmapShader:Landroid/graphics/BitmapShader;

    #@8e
    iget-object v1, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    #@90
    invoke-virtual {v0, v1}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    #@93
    .line 246
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    #@95
    iget-object v1, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mBitmapShader:Landroid/graphics/BitmapShader;

    #@97
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    #@9a
    .line 249
    :cond_0
    iput-boolean v12, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mApplyGravity:Z

    #@9c
    .line 221
    :cond_1
    return-void

    #@9d
    .line 235
    :cond_2
    iget v4, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mGravity:I

    #@9f
    iget v5, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mBitmapWidth:I

    #@a1
    iget v6, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mBitmapHeight:I

    #@a3
    invoke-virtual {p0}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->getBounds()Landroid/graphics/Rect;

    #@a6
    move-result-object v7

    #@a7
    iget-object v8, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    #@a9
    move-object v3, p0

    #@aa
    invoke-virtual/range {v3 .. v8}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->gravityCompatApply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    #@ad
    goto :goto_0
.end method

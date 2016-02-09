.class public Landroid/graphics/drawable/ShapeDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ShapeDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/ShapeDrawable$ShapeState;,
        Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;
    }
.end annotation


# instance fields
.field private mMutated:Z

.field private mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

.field private mTintFilter:Landroid/graphics/PorterDuffColorFilter;


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 79
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    #@3
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable$ShapeState;-><init>(Landroid/graphics/drawable/ShapeDrawable$ShapeState;)V

    #@6
    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/ShapeDrawable$ShapeState;Landroid/content/res/Resources;)V

    #@9
    .line 78
    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/ShapeDrawable$ShapeState;Landroid/content/res/Resources;)V
    .locals 0
    .param p1, "state"    # Landroid/graphics/drawable/ShapeDrawable$ShapeState;
    .param p2, "res"    # Landroid/content/res/Resources;

    #@0
    .prologue
    .line 584
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    #@3
    .line 585
    iput-object p1, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    #@5
    .line 587
    invoke-direct {p0, p2}, Landroid/graphics/drawable/ShapeDrawable;->updateLocalState(Landroid/content/res/Resources;)V

    #@8
    .line 584
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/ShapeDrawable$ShapeState;Landroid/content/res/Resources;Landroid/graphics/drawable/ShapeDrawable;)V
    .locals 0
    .param p1, "state"    # Landroid/graphics/drawable/ShapeDrawable$ShapeState;
    .param p2, "res"    # Landroid/content/res/Resources;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/ShapeDrawable$ShapeState;Landroid/content/res/Resources;)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/shapes/Shape;)V
    .locals 2
    .param p1, "s"    # Landroid/graphics/drawable/shapes/Shape;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 88
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    #@3
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable$ShapeState;-><init>(Landroid/graphics/drawable/ShapeDrawable$ShapeState;)V

    #@6
    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/ShapeDrawable$ShapeState;Landroid/content/res/Resources;)V

    #@9
    .line 90
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    #@b
    iput-object p1, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mShape:Landroid/graphics/drawable/shapes/Shape;

    #@d
    .line 87
    return-void
.end method

.method private static modulateAlpha(II)I
    .locals 2
    .param p0, "paintAlpha"    # I
    .param p1, "alpha"    # I

    #@0
    .prologue
    .line 210
    ushr-int/lit8 v1, p1, 0x7

    #@2
    add-int v0, p1, v1

    #@4
    .line 211
    .local v0, "scale":I
    mul-int v1, p0, v0

    #@6
    ushr-int/lit8 v1, v1, 0x8

    #@8
    return v1
.end method

.method private updateLocalState(Landroid/content/res/Resources;)V
    .locals 3
    .param p1, "res"    # Landroid/content/res/Resources;

    #@0
    .prologue
    .line 596
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    #@2
    iget-object v1, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    #@4
    iget-object v1, v1, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mTint:Landroid/content/res/ColorStateList;

    #@6
    iget-object v2, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    #@8
    iget-object v2, v2, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@a
    invoke-virtual {p0, v0, v1, v2}, Landroid/graphics/drawable/ShapeDrawable;->updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    #@10
    .line 595
    return-void
.end method

.method private updateShape()V
    .locals 6

    #@0
    .prologue
    .line 466
    iget-object v3, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    #@2
    iget-object v3, v3, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mShape:Landroid/graphics/drawable/shapes/Shape;

    #@4
    if-eqz v3, :cond_0

    #@6
    .line 467
    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->getBounds()Landroid/graphics/Rect;

    #@9
    move-result-object v1

    #@a
    .line 468
    .local v1, "r":Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    #@d
    move-result v2

    #@e
    .line 469
    .local v2, "w":I
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    #@11
    move-result v0

    #@12
    .line 471
    .local v0, "h":I
    iget-object v3, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    #@14
    iget-object v3, v3, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mShape:Landroid/graphics/drawable/shapes/Shape;

    #@16
    int-to-float v4, v2

    #@17
    int-to-float v5, v0

    #@18
    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/shapes/Shape;->resize(FF)V

    #@1b
    .line 472
    iget-object v3, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    #@1d
    iget-object v3, v3, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mShaderFactory:Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;

    #@1f
    if-eqz v3, :cond_0

    #@21
    .line 473
    iget-object v3, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    #@23
    iget-object v3, v3, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPaint:Landroid/graphics/Paint;

    #@25
    iget-object v4, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    #@27
    iget-object v4, v4, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mShaderFactory:Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;

    #@29
    invoke-virtual {v4, v2, v0}, Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;->resize(II)Landroid/graphics/Shader;

    #@2c
    move-result-object v4

    #@2d
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    #@30
    .line 476
    .end local v0    # "h":I
    .end local v1    # "r":Landroid/graphics/Rect;
    .end local v2    # "w":I
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->invalidateSelf()V

    #@33
    .line 465
    return-void
.end method

.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .locals 9
    .param p1, "a"    # Landroid/content/res/TypedArray;

    #@0
    .prologue
    const/4 v8, -0x1

    #@1
    .line 432
    iget-object v3, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    #@3
    .line 433
    .local v3, "state":Landroid/graphics/drawable/ShapeDrawable$ShapeState;
    iget-object v2, v3, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPaint:Landroid/graphics/Paint;

    #@5
    .line 436
    .local v2, "paint":Landroid/graphics/Paint;
    iget v6, v3, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mChangingConfigurations:I

    #@7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    #@a
    move-result v7

    #@b
    or-int/2addr v6, v7

    #@c
    iput v6, v3, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mChangingConfigurations:I

    #@e
    .line 439
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    #@11
    move-result-object v6

    #@12
    iput-object v6, v3, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mThemeAttrs:[I

    #@14
    .line 441
    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    #@17
    move-result v0

    #@18
    .line 442
    .local v0, "color":I
    const/4 v6, 0x4

    #@19
    invoke-virtual {p1, v6, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    #@1c
    move-result v0

    #@1d
    .line 443
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    #@20
    .line 445
    invoke-virtual {v2}, Landroid/graphics/Paint;->isDither()Z

    #@23
    move-result v1

    #@24
    .line 446
    .local v1, "dither":Z
    const/4 v6, 0x0

    #@25
    invoke-virtual {p1, v6, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@28
    move-result v1

    #@29
    .line 447
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setDither(Z)V

    #@2c
    .line 450
    iget v6, v3, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mIntrinsicWidth:I

    #@2e
    int-to-float v6, v6

    #@2f
    const/4 v7, 0x3

    #@30
    .line 449
    invoke-virtual {p1, v7, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@33
    move-result v6

    #@34
    float-to-int v6, v6

    #@35
    invoke-virtual {p0, v6}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicWidth(I)V

    #@38
    .line 452
    iget v6, v3, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mIntrinsicHeight:I

    #@3a
    int-to-float v6, v6

    #@3b
    const/4 v7, 0x2

    #@3c
    .line 451
    invoke-virtual {p1, v7, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@3f
    move-result v6

    #@40
    float-to-int v6, v6

    #@41
    invoke-virtual {p0, v6}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicHeight(I)V

    #@44
    .line 454
    const/4 v6, 0x5

    #@45
    invoke-virtual {p1, v6, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    #@48
    move-result v5

    #@49
    .line 455
    .local v5, "tintMode":I
    if-eq v5, v8, :cond_0

    #@4b
    .line 456
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    #@4d
    invoke-static {v5, v6}, Landroid/graphics/drawable/Drawable;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    #@50
    move-result-object v6

    #@51
    iput-object v6, v3, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@53
    .line 459
    :cond_0
    const/4 v6, 0x1

    #@54
    invoke-virtual {p1, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    #@57
    move-result-object v4

    #@58
    .line 460
    .local v4, "tint":Landroid/content/res/ColorStateList;
    if-eqz v4, :cond_1

    #@5a
    .line 461
    iput-object v4, v3, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mTint:Landroid/content/res/ColorStateList;

    #@5c
    .line 431
    :cond_1
    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 4
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    #@0
    .prologue
    .line 409
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    #@3
    .line 411
    iget-object v1, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    #@5
    .line 412
    .local v1, "state":Landroid/graphics/drawable/ShapeDrawable$ShapeState;
    if-nez v1, :cond_0

    #@7
    .line 413
    return-void

    #@8
    .line 416
    :cond_0
    iget-object v2, v1, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mThemeAttrs:[I

    #@a
    if-eqz v2, :cond_1

    #@c
    .line 417
    iget-object v2, v1, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mThemeAttrs:[I

    #@e
    sget-object v3, Lcom/android/internal/R$styleable;->ShapeDrawable:[I

    #@10
    invoke-virtual {p1, v2, v3}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    #@13
    move-result-object v0

    #@14
    .line 418
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Landroid/graphics/drawable/ShapeDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    #@17
    .line 419
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@1a
    .line 423
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_1
    iget-object v2, v1, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mTint:Landroid/content/res/ColorStateList;

    #@1c
    if-eqz v2, :cond_2

    #@1e
    iget-object v2, v1, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mTint:Landroid/content/res/ColorStateList;

    #@20
    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    #@23
    move-result v2

    #@24
    if-eqz v2, :cond_2

    #@26
    .line 424
    iget-object v2, v1, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mTint:Landroid/content/res/ColorStateList;

    #@28
    invoke-virtual {v2, p1}, Landroid/content/res/ColorStateList;->obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    #@2b
    move-result-object v2

    #@2c
    iput-object v2, v1, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mTint:Landroid/content/res/ColorStateList;

    #@2e
    .line 428
    :cond_2
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    #@31
    move-result-object v2

    #@32
    invoke-direct {p0, v2}, Landroid/graphics/drawable/ShapeDrawable;->updateLocalState(Landroid/content/res/Resources;)V

    #@35
    .line 408
    return-void
.end method

.method public clearMutated()V
    .locals 1

    #@0
    .prologue
    .line 520
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->clearMutated()V

    #@3
    .line 521
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mMutated:Z

    #@6
    .line 519
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 225
    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->getBounds()Landroid/graphics/Rect;

    #@4
    move-result-object v4

    #@5
    .line 226
    .local v4, "r":Landroid/graphics/Rect;
    iget-object v5, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    #@7
    .line 227
    .local v5, "state":Landroid/graphics/drawable/ShapeDrawable$ShapeState;
    iget-object v2, v5, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPaint:Landroid/graphics/Paint;

    #@9
    .line 229
    .local v2, "paint":Landroid/graphics/Paint;
    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    #@c
    move-result v3

    #@d
    .line 230
    .local v3, "prevAlpha":I
    iget v6, v5, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mAlpha:I

    #@f
    invoke-static {v3, v6}, Landroid/graphics/drawable/ShapeDrawable;->modulateAlpha(II)I

    #@12
    move-result v6

    #@13
    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    #@16
    .line 233
    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    #@19
    move-result v6

    #@1a
    if-nez v6, :cond_0

    #@1c
    invoke-virtual {v2}, Landroid/graphics/Paint;->getXfermode()Landroid/graphics/Xfermode;

    #@1f
    move-result-object v6

    #@20
    if-eqz v6, :cond_2

    #@22
    .line 235
    :cond_0
    :goto_0
    iget-object v6, p0, Landroid/graphics/drawable/ShapeDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    #@24
    if-eqz v6, :cond_3

    #@26
    invoke-virtual {v2}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    #@29
    move-result-object v6

    #@2a
    if-nez v6, :cond_3

    #@2c
    .line 236
    iget-object v6, p0, Landroid/graphics/drawable/ShapeDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    #@2e
    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    #@31
    .line 237
    const/4 v0, 0x1

    #@32
    .line 242
    .local v0, "clearColorFilter":Z
    :goto_1
    iget-object v6, v5, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mShape:Landroid/graphics/drawable/shapes/Shape;

    #@34
    if-eqz v6, :cond_4

    #@36
    .line 245
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    #@39
    move-result v1

    #@3a
    .line 246
    .local v1, "count":I
    iget v6, v4, Landroid/graphics/Rect;->left:I

    #@3c
    int-to-float v6, v6

    #@3d
    iget v7, v4, Landroid/graphics/Rect;->top:I

    #@3f
    int-to-float v7, v7

    #@40
    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    #@43
    .line 247
    iget-object v6, v5, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mShape:Landroid/graphics/drawable/shapes/Shape;

    #@45
    invoke-virtual {p0, v6, p1, v2}, Landroid/graphics/drawable/ShapeDrawable;->onDraw(Landroid/graphics/drawable/shapes/Shape;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    #@48
    .line 248
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    #@4b
    .line 253
    .end local v1    # "count":I
    :goto_2
    if-eqz v0, :cond_1

    #@4d
    .line 254
    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    #@50
    .line 259
    .end local v0    # "clearColorFilter":Z
    :cond_1
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    #@53
    .line 224
    return-void

    #@54
    .line 233
    :cond_2
    invoke-virtual {v2}, Landroid/graphics/Paint;->hasShadowLayer()Z

    #@57
    move-result v6

    #@58
    if-eqz v6, :cond_1

    #@5a
    goto :goto_0

    #@5b
    .line 239
    :cond_3
    const/4 v0, 0x0

    #@5c
    .restart local v0    # "clearColorFilter":Z
    goto :goto_1

    #@5d
    .line 250
    :cond_4
    invoke-virtual {p1, v4, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    #@60
    goto :goto_2
.end method

.method public getAlpha()I
    .locals 1

    #@0
    .prologue
    .line 283
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    #@2
    iget v0, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mAlpha:I

    #@4
    return v0
.end method

.method public getChangingConfigurations()I
    .locals 2

    #@0
    .prologue
    .line 264
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    #@3
    move-result v0

    #@4
    iget-object v1, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    #@6
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->getChangingConfigurations()I

    #@9
    move-result v1

    #@a
    or-int/2addr v0, v1

    #@b
    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    #@0
    .prologue
    .line 489
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    #@2
    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->getChangingConfigurations()I

    #@5
    move-result v1

    #@6
    iput v1, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mChangingConfigurations:I

    #@8
    .line 490
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    #@a
    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    #@0
    .prologue
    .line 196
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    #@2
    iget v0, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mIntrinsicHeight:I

    #@4
    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    #@0
    .prologue
    .line 191
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    #@2
    iget v0, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mIntrinsicWidth:I

    #@4
    return v0
.end method

.method public getOpacity()I
    .locals 3

    #@0
    .prologue
    .line 308
    iget-object v2, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    #@2
    iget-object v2, v2, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mShape:Landroid/graphics/drawable/shapes/Shape;

    #@4
    if-nez v2, :cond_1

    #@6
    .line 309
    iget-object v2, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    #@8
    iget-object v1, v2, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPaint:Landroid/graphics/Paint;

    #@a
    .line 310
    .local v1, "p":Landroid/graphics/Paint;
    invoke-virtual {v1}, Landroid/graphics/Paint;->getXfermode()Landroid/graphics/Xfermode;

    #@d
    move-result-object v2

    #@e
    if-nez v2, :cond_1

    #@10
    .line 311
    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    #@13
    move-result v0

    #@14
    .line 312
    .local v0, "alpha":I
    if-nez v0, :cond_0

    #@16
    .line 313
    const/4 v2, -0x2

    #@17
    return v2

    #@18
    .line 315
    :cond_0
    const/16 v2, 0xff

    #@1a
    if-ne v0, v2, :cond_1

    #@1c
    .line 316
    const/4 v2, -0x1

    #@1d
    return v2

    #@1e
    .line 321
    .end local v0    # "alpha":I
    .end local v1    # "p":Landroid/graphics/Paint;
    :cond_1
    const/4 v2, -0x3

    #@1f
    return v2
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 2
    .param p1, "outline"    # Landroid/graphics/Outline;

    #@0
    .prologue
    .line 481
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    #@2
    iget-object v0, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mShape:Landroid/graphics/drawable/shapes/Shape;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 482
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    #@8
    iget-object v0, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mShape:Landroid/graphics/drawable/shapes/Shape;

    #@a
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/shapes/Shape;->getOutline(Landroid/graphics/Outline;)V

    #@d
    .line 483
    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->getAlpha()I

    #@10
    move-result v0

    #@11
    int-to-float v0, v0

    #@12
    const/high16 v1, 0x437f0000    # 255.0f

    #@14
    div-float/2addr v0, v1

    #@15
    invoke-virtual {p1, v0}, Landroid/graphics/Outline;->setAlpha(F)V

    #@18
    .line 480
    :cond_0
    return-void
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1
    .param p1, "padding"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 201
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    #@2
    iget-object v0, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPadding:Landroid/graphics/Rect;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 202
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    #@8
    iget-object v0, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPadding:Landroid/graphics/Rect;

    #@a
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@d
    .line 203
    const/4 v0, 0x1

    #@e
    return v0

    #@f
    .line 205
    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    #@12
    move-result v0

    #@13
    return v0
.end method

.method public getPaint()Landroid/graphics/Paint;
    .locals 1

    #@0
    .prologue
    .line 130
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    #@2
    iget-object v0, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPaint:Landroid/graphics/Paint;

    #@4
    return-object v0
.end method

.method public getShaderFactory()Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;
    .locals 1

    #@0
    .prologue
    .line 123
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    #@2
    iget-object v0, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mShaderFactory:Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;

    #@4
    return-object v0
.end method

.method public getShape()Landroid/graphics/drawable/shapes/Shape;
    .locals 1

    #@0
    .prologue
    .line 97
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    #@2
    iget-object v0, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mShape:Landroid/graphics/drawable/shapes/Shape;

    #@4
    return-object v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 7
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 381
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    #@3
    .line 383
    sget-object v4, Lcom/android/internal/R$styleable;->ShapeDrawable:[I

    #@5
    invoke-static {p1, p4, p3, v4}, Landroid/graphics/drawable/ShapeDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@8
    move-result-object v0

    #@9
    .line 384
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Landroid/graphics/drawable/ShapeDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    #@c
    .line 385
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@f
    .line 388
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@12
    move-result v2

    #@13
    .line 389
    .local v2, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@16
    move-result v3

    #@17
    .local v3, "type":I
    const/4 v4, 0x1

    #@18
    if-eq v3, v4, :cond_2

    #@1a
    .line 390
    const/4 v4, 0x3

    #@1b
    if-ne v3, v4, :cond_1

    #@1d
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@20
    move-result v4

    #@21
    if-le v4, v2, :cond_2

    #@23
    .line 391
    :cond_1
    const/4 v4, 0x2

    #@24
    if-ne v3, v4, :cond_0

    #@26
    .line 395
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    .line 397
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {p0, v1, p1, p2, p3}, Landroid/graphics/drawable/ShapeDrawable;->inflateTag(Ljava/lang/String;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Z

    #@2d
    move-result v4

    #@2e
    if-nez v4, :cond_0

    #@30
    .line 398
    const-string/jumbo v4, "drawable"

    #@33
    new-instance v5, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    const-string/jumbo v6, "Unknown element: "

    #@3b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v5

    #@3f
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v5

    #@43
    .line 399
    const-string/jumbo v6, " for ShapeDrawable "

    #@46
    .line 398
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v5

    #@4a
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v5

    #@4e
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v5

    #@52
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@55
    goto :goto_0

    #@56
    .line 404
    .end local v1    # "name":Ljava/lang/String;
    :cond_2
    invoke-direct {p0, p1}, Landroid/graphics/drawable/ShapeDrawable;->updateLocalState(Landroid/content/res/Resources;)V

    #@59
    .line 380
    return-void
.end method

.method protected inflateTag(Ljava/lang/String;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Z
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "r"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p4, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 359
    const-string/jumbo v1, "padding"

    #@5
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 361
    sget-object v1, Lcom/android/internal/R$styleable;->ShapeDrawablePadding:[I

    #@d
    .line 360
    invoke-virtual {p2, p4, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@10
    move-result-object v0

    #@11
    .line 363
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@14
    move-result v1

    #@15
    .line 365
    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@18
    move-result v2

    #@19
    .line 368
    const/4 v3, 0x2

    #@1a
    .line 367
    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@1d
    move-result v3

    #@1e
    .line 370
    const/4 v4, 0x3

    #@1f
    .line 369
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@22
    move-result v4

    #@23
    .line 362
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/graphics/drawable/ShapeDrawable;->setPadding(IIII)V

    #@26
    .line 371
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@29
    .line 372
    return v6

    #@2a
    .line 375
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_0
    return v5
.end method

.method public isStateful()Z
    .locals 2

    #@0
    .prologue
    .line 348
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    #@2
    .line 349
    .local v0, "s":Landroid/graphics/drawable/ShapeDrawable$ShapeState;
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    #@5
    move-result v1

    #@6
    if-nez v1, :cond_0

    #@8
    iget-object v1, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mTint:Landroid/content/res/ColorStateList;

    #@a
    if-eqz v1, :cond_1

    #@c
    iget-object v1, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mTint:Landroid/content/res/ColorStateList;

    #@e
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->isStateful()Z

    #@11
    move-result v1

    #@12
    :goto_0
    return v1

    #@13
    :cond_0
    const/4 v1, 0x1

    #@14
    goto :goto_0

    #@15
    :cond_1
    const/4 v1, 0x0

    #@16
    goto :goto_0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 495
    iget-boolean v1, p0, Landroid/graphics/drawable/ShapeDrawable;->mMutated:Z

    #@4
    if-nez v1, :cond_0

    #@6
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@9
    move-result-object v1

    #@a
    if-ne v1, p0, :cond_0

    #@c
    .line 496
    iget-object v1, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    #@e
    iget-object v1, v1, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPaint:Landroid/graphics/Paint;

    #@10
    if-eqz v1, :cond_1

    #@12
    .line 497
    iget-object v1, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    #@14
    new-instance v2, Landroid/graphics/Paint;

    #@16
    iget-object v3, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    #@18
    iget-object v3, v3, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPaint:Landroid/graphics/Paint;

    #@1a
    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    #@1d
    iput-object v2, v1, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPaint:Landroid/graphics/Paint;

    #@1f
    .line 501
    :goto_0
    iget-object v1, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    #@21
    iget-object v1, v1, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPadding:Landroid/graphics/Rect;

    #@23
    if-eqz v1, :cond_2

    #@25
    .line 502
    iget-object v1, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    #@27
    new-instance v2, Landroid/graphics/Rect;

    #@29
    iget-object v3, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    #@2b
    iget-object v3, v3, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPadding:Landroid/graphics/Rect;

    #@2d
    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    #@30
    iput-object v2, v1, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPadding:Landroid/graphics/Rect;

    #@32
    .line 507
    :goto_1
    :try_start_0
    iget-object v1, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    #@34
    iget-object v2, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    #@36
    iget-object v2, v2, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mShape:Landroid/graphics/drawable/shapes/Shape;

    #@38
    invoke-virtual {v2}, Landroid/graphics/drawable/shapes/Shape;->clone()Landroid/graphics/drawable/shapes/Shape;

    #@3b
    move-result-object v2

    #@3c
    iput-object v2, v1, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mShape:Landroid/graphics/drawable/shapes/Shape;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@3e
    .line 511
    iput-boolean v5, p0, Landroid/graphics/drawable/ShapeDrawable;->mMutated:Z

    #@40
    .line 513
    :cond_0
    return-object p0

    #@41
    .line 499
    :cond_1
    iget-object v1, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    #@43
    new-instance v2, Landroid/graphics/Paint;

    #@45
    invoke-direct {v2, v5}, Landroid/graphics/Paint;-><init>(I)V

    #@48
    iput-object v2, v1, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPaint:Landroid/graphics/Paint;

    #@4a
    goto :goto_0

    #@4b
    .line 504
    :cond_2
    iget-object v1, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    #@4d
    new-instance v2, Landroid/graphics/Rect;

    #@4f
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    #@52
    iput-object v2, v1, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPadding:Landroid/graphics/Rect;

    #@54
    goto :goto_1

    #@55
    .line 508
    :catch_0
    move-exception v0

    #@56
    .line 509
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    return-object v4
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "bounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 332
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    #@3
    .line 333
    invoke-direct {p0}, Landroid/graphics/drawable/ShapeDrawable;->updateShape()V

    #@6
    .line 331
    return-void
.end method

.method protected onDraw(Landroid/graphics/drawable/shapes/Shape;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "shape"    # Landroid/graphics/drawable/shapes/Shape;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "paint"    # Landroid/graphics/Paint;

    #@0
    .prologue
    .line 220
    invoke-virtual {p1, p2, p3}, Landroid/graphics/drawable/shapes/Shape;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    #@3
    .line 219
    return-void
.end method

.method protected onStateChange([I)Z
    .locals 4
    .param p1, "stateSet"    # [I

    #@0
    .prologue
    .line 338
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    #@2
    .line 339
    .local v0, "state":Landroid/graphics/drawable/ShapeDrawable$ShapeState;
    iget-object v1, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mTint:Landroid/content/res/ColorStateList;

    #@4
    if-eqz v1, :cond_0

    #@6
    iget-object v1, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 340
    iget-object v1, p0, Landroid/graphics/drawable/ShapeDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    #@c
    iget-object v2, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mTint:Landroid/content/res/ColorStateList;

    #@e
    iget-object v3, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@10
    invoke-virtual {p0, v1, v2, v3}, Landroid/graphics/drawable/ShapeDrawable;->updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    #@13
    move-result-object v1

    #@14
    iput-object v1, p0, Landroid/graphics/drawable/ShapeDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    #@16
    .line 341
    const/4 v1, 0x1

    #@17
    return v1

    #@18
    .line 343
    :cond_0
    const/4 v1, 0x0

    #@19
    return v1
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    #@0
    .prologue
    .line 277
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    #@2
    iput p1, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mAlpha:I

    #@4
    .line 278
    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->invalidateSelf()V

    #@7
    .line 276
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    #@0
    .prologue
    .line 302
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    #@2
    iget-object v0, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPaint:Landroid/graphics/Paint;

    #@4
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    #@7
    .line 303
    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->invalidateSelf()V

    #@a
    .line 301
    return-void
.end method

.method public setDither(Z)V
    .locals 1
    .param p1, "dither"    # Z

    #@0
    .prologue
    .line 326
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    #@2
    iget-object v0, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPaint:Landroid/graphics/Paint;

    #@4
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setDither(Z)V

    #@7
    .line 327
    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->invalidateSelf()V

    #@a
    .line 325
    return-void
.end method

.method public setIntrinsicHeight(I)V
    .locals 1
    .param p1, "height"    # I

    #@0
    .prologue
    .line 185
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    #@2
    iput p1, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mIntrinsicHeight:I

    #@4
    .line 186
    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->invalidateSelf()V

    #@7
    .line 184
    return-void
.end method

.method public setIntrinsicWidth(I)V
    .locals 1
    .param p1, "width"    # I

    #@0
    .prologue
    .line 175
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    #@2
    iput p1, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mIntrinsicWidth:I

    #@4
    .line 176
    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->invalidateSelf()V

    #@7
    .line 174
    return-void
.end method

.method public setPadding(IIII)V
    .locals 2
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 142
    or-int v0, p1, p2

    #@3
    or-int/2addr v0, p3

    #@4
    or-int/2addr v0, p4

    #@5
    if-nez v0, :cond_0

    #@7
    .line 143
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    #@9
    iput-object v1, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPadding:Landroid/graphics/Rect;

    #@b
    .line 150
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->invalidateSelf()V

    #@e
    .line 141
    return-void

    #@f
    .line 145
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    #@11
    iget-object v0, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPadding:Landroid/graphics/Rect;

    #@13
    if-nez v0, :cond_1

    #@15
    .line 146
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    #@17
    new-instance v1, Landroid/graphics/Rect;

    #@19
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    #@1c
    iput-object v1, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPadding:Landroid/graphics/Rect;

    #@1e
    .line 148
    :cond_1
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    #@20
    iget-object v0, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPadding:Landroid/graphics/Rect;

    #@22
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    #@25
    goto :goto_0
.end method

.method public setPadding(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "padding"    # Landroid/graphics/Rect;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 158
    if-nez p1, :cond_0

    #@3
    .line 159
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    #@5
    iput-object v1, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPadding:Landroid/graphics/Rect;

    #@7
    .line 166
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->invalidateSelf()V

    #@a
    .line 157
    return-void

    #@b
    .line 161
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    #@d
    iget-object v0, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPadding:Landroid/graphics/Rect;

    #@f
    if-nez v0, :cond_1

    #@11
    .line 162
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    #@13
    new-instance v1, Landroid/graphics/Rect;

    #@15
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    #@18
    iput-object v1, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPadding:Landroid/graphics/Rect;

    #@1a
    .line 164
    :cond_1
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    #@1c
    iget-object v0, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPadding:Landroid/graphics/Rect;

    #@1e
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@21
    goto :goto_0
.end method

.method public setShaderFactory(Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;)V
    .locals 1
    .param p1, "fact"    # Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;

    #@0
    .prologue
    .line 115
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    #@2
    iput-object p1, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mShaderFactory:Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;

    #@4
    .line 114
    return-void
.end method

.method public setShape(Landroid/graphics/drawable/shapes/Shape;)V
    .locals 1
    .param p1, "s"    # Landroid/graphics/drawable/shapes/Shape;

    #@0
    .prologue
    .line 104
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    #@2
    iput-object p1, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mShape:Landroid/graphics/drawable/shapes/Shape;

    #@4
    .line 105
    invoke-direct {p0}, Landroid/graphics/drawable/ShapeDrawable;->updateShape()V

    #@7
    .line 103
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    #@0
    .prologue
    .line 288
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    #@2
    iput-object p1, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mTint:Landroid/content/res/ColorStateList;

    #@4
    .line 289
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    #@6
    iget-object v1, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    #@8
    iget-object v1, v1, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@a
    invoke-virtual {p0, v0, p1, v1}, Landroid/graphics/drawable/ShapeDrawable;->updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    #@10
    .line 290
    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->invalidateSelf()V

    #@13
    .line 287
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    #@0
    .prologue
    .line 295
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    #@2
    iput-object p1, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@4
    .line 296
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    #@6
    iget-object v1, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    #@8
    iget-object v1, v1, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mTint:Landroid/content/res/ColorStateList;

    #@a
    invoke-virtual {p0, v0, v1, p1}, Landroid/graphics/drawable/ShapeDrawable;->updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    #@10
    .line 297
    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->invalidateSelf()V

    #@13
    .line 294
    return-void
.end method

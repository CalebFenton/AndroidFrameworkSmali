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
.field private blacklist mBlendModeColorFilter:Landroid/graphics/BlendModeColorFilter;

.field private greylist-max-o mMutated:Z

.field private greylist-max-o mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;


# direct methods
.method public constructor whitelist <init>()V
    .registers 3

    .line 84
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    invoke-direct {v0}, Landroid/graphics/drawable/ShapeDrawable$ShapeState;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/ShapeDrawable$ShapeState;Landroid/content/res/Resources;)V

    .line 85
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/graphics/drawable/ShapeDrawable$ShapeState;Landroid/content/res/Resources;)V
    .registers 3
    .param p1, "state"    # Landroid/graphics/drawable/ShapeDrawable$ShapeState;
    .param p2, "res"    # Landroid/content/res/Resources;

    .line 617
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 618
    iput-object p1, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    .line 620
    invoke-direct {p0}, Landroid/graphics/drawable/ShapeDrawable;->updateLocalState()V

    .line 621
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/graphics/drawable/ShapeDrawable$ShapeState;Landroid/content/res/Resources;Landroid/graphics/drawable/ShapeDrawable-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/ShapeDrawable$ShapeState;Landroid/content/res/Resources;)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/graphics/drawable/shapes/Shape;)V
    .registers 4
    .param p1, "s"    # Landroid/graphics/drawable/shapes/Shape;

    .line 93
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    invoke-direct {v0}, Landroid/graphics/drawable/ShapeDrawable$ShapeState;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/ShapeDrawable$ShapeState;Landroid/content/res/Resources;)V

    .line 95
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iput-object p1, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mShape:Landroid/graphics/drawable/shapes/Shape;

    .line 96
    return-void
.end method

.method private static greylist-max-o modulateAlpha(II)I
    .registers 4
    .param p0, "paintAlpha"    # I
    .param p1, "alpha"    # I

    .line 215
    ushr-int/lit8 v0, p1, 0x7

    add-int/2addr v0, p1

    .line 216
    .local v0, "scale":I
    mul-int v1, p0, v0

    ushr-int/lit8 v1, v1, 0x8

    return v1
.end method

.method private greylist-max-o updateLocalState()V
    .registers 4

    .line 629
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mBlendModeColorFilter:Landroid/graphics/BlendModeColorFilter;

    iget-object v1, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget-object v1, v1, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mTint:Landroid/content/res/ColorStateList;

    iget-object v2, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget-object v2, v2, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mBlendMode:Landroid/graphics/BlendMode;

    invoke-virtual {p0, v0, v1, v2}, Landroid/graphics/drawable/ShapeDrawable;->updateBlendModeFilter(Landroid/graphics/BlendModeColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/BlendMode;)Landroid/graphics/BlendModeColorFilter;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mBlendModeColorFilter:Landroid/graphics/BlendModeColorFilter;

    .line 631
    return-void
.end method

.method private greylist-max-o updateShape()V
    .registers 7

    .line 489
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget-object v0, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mShape:Landroid/graphics/drawable/shapes/Shape;

    if-eqz v0, :cond_30

    .line 490
    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 491
    .local v0, "r":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 492
    .local v1, "w":I
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 494
    .local v2, "h":I
    iget-object v3, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget-object v3, v3, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mShape:Landroid/graphics/drawable/shapes/Shape;

    int-to-float v4, v1

    int-to-float v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/shapes/Shape;->resize(FF)V

    .line 495
    iget-object v3, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget-object v3, v3, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mShaderFactory:Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;

    if-eqz v3, :cond_30

    .line 496
    iget-object v3, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget-object v3, v3, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget-object v4, v4, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mShaderFactory:Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;

    invoke-virtual {v4, v1, v2}, Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;->resize(II)Landroid/graphics/Shader;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 499
    .end local v0    # "r":Landroid/graphics/Rect;
    .end local v1    # "w":I
    .end local v2    # "h":I
    :cond_30
    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->invalidateSelf()V

    .line 500
    return-void
.end method

.method private greylist-max-o updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .registers 8
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .line 455
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    .line 456
    .local v0, "state":Landroid/graphics/drawable/ShapeDrawable$ShapeState;
    iget-object v1, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPaint:Landroid/graphics/Paint;

    .line 459
    .local v1, "paint":Landroid/graphics/Paint;
    iget v2, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v3

    or-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mChangingConfigurations:I

    .line 462
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v2

    iput-object v2, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mThemeAttrs:[I

    .line 464
    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    .line 465
    .local v2, "color":I
    const/4 v3, 0x4

    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 466
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 468
    invoke-virtual {v1}, Landroid/graphics/Paint;->isDither()Z

    move-result v3

    .line 469
    .local v3, "dither":Z
    const/4 v4, 0x0

    invoke-virtual {p1, v4, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 470
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 472
    iget v4, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mIntrinsicWidth:I

    int-to-float v4, v4

    const/4 v5, 0x3

    invoke-virtual {p1, v5, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    float-to-int v4, v4

    iput v4, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mIntrinsicWidth:I

    .line 474
    iget v4, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mIntrinsicHeight:I

    int-to-float v4, v4

    const/4 v5, 0x2

    invoke-virtual {p1, v5, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    float-to-int v4, v4

    iput v4, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mIntrinsicHeight:I

    .line 477
    const/4 v4, 0x5

    const/4 v5, -0x1

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 478
    .local v4, "tintMode":I
    if-eq v4, v5, :cond_51

    .line 479
    sget-object v5, Landroid/graphics/BlendMode;->SRC_IN:Landroid/graphics/BlendMode;

    invoke-static {v4, v5}, Landroid/graphics/drawable/Drawable;->parseBlendMode(ILandroid/graphics/BlendMode;)Landroid/graphics/BlendMode;

    move-result-object v5

    iput-object v5, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mBlendMode:Landroid/graphics/BlendMode;

    .line 482
    :cond_51
    const/4 v5, 0x1

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    .line 483
    .local v5, "tint":Landroid/content/res/ColorStateList;
    if-eqz v5, :cond_5a

    .line 484
    iput-object v5, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mTint:Landroid/content/res/ColorStateList;

    .line 486
    :cond_5a
    return-void
.end method


# virtual methods
.method public whitelist applyTheme(Landroid/content/res/Resources$Theme;)V
    .registers 5
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    .line 432
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 434
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    .line 435
    .local v0, "state":Landroid/graphics/drawable/ShapeDrawable$ShapeState;
    if-nez v0, :cond_8

    .line 436
    return-void

    .line 439
    :cond_8
    iget-object v1, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mThemeAttrs:[I

    if-eqz v1, :cond_1a

    .line 440
    iget-object v1, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mThemeAttrs:[I

    sget-object v2, Lcom/android/internal/R$styleable;->ShapeDrawable:[I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 441
    .local v1, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v1}, Landroid/graphics/drawable/ShapeDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 442
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 446
    .end local v1    # "a":Landroid/content/res/TypedArray;
    :cond_1a
    iget-object v1, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_2e

    iget-object v1, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 447
    iget-object v1, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, p1}, Landroid/content/res/ColorStateList;->obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mTint:Landroid/content/res/ColorStateList;

    .line 451
    :cond_2e
    invoke-direct {p0}, Landroid/graphics/drawable/ShapeDrawable;->updateLocalState()V

    .line 452
    return-void
.end method

.method public greylist-max-o clearMutated()V
    .registers 2

    .line 530
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->clearMutated()V

    .line 531
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mMutated:Z

    .line 532
    return-void
.end method

.method public whitelist draw(Landroid/graphics/Canvas;)V
    .registers 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 230
    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 231
    .local v0, "r":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    .line 232
    .local v1, "state":Landroid/graphics/drawable/ShapeDrawable$ShapeState;
    iget-object v2, v1, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPaint:Landroid/graphics/Paint;

    .line 234
    .local v2, "paint":Landroid/graphics/Paint;
    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v3

    .line 235
    .local v3, "prevAlpha":I
    iget v4, v1, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mAlpha:I

    invoke-static {v3, v4}, Landroid/graphics/drawable/ShapeDrawable;->modulateAlpha(II)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 238
    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v4

    if-nez v4, :cond_27

    invoke-virtual {v2}, Landroid/graphics/Paint;->getXfermode()Landroid/graphics/Xfermode;

    move-result-object v4

    if-nez v4, :cond_27

    invoke-virtual {v2}, Landroid/graphics/Paint;->hasShadowLayer()Z

    move-result v4

    if-eqz v4, :cond_5c

    .line 240
    :cond_27
    iget-object v4, p0, Landroid/graphics/drawable/ShapeDrawable;->mBlendModeColorFilter:Landroid/graphics/BlendModeColorFilter;

    if-eqz v4, :cond_38

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v4

    if-nez v4, :cond_38

    .line 241
    iget-object v4, p0, Landroid/graphics/drawable/ShapeDrawable;->mBlendModeColorFilter:Landroid/graphics/BlendModeColorFilter;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 242
    const/4 v4, 0x1

    .local v4, "clearColorFilter":Z
    goto :goto_39

    .line 244
    .end local v4    # "clearColorFilter":Z
    :cond_38
    const/4 v4, 0x0

    .line 247
    .restart local v4    # "clearColorFilter":Z
    :goto_39
    iget-object v5, v1, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mShape:Landroid/graphics/drawable/shapes/Shape;

    if-eqz v5, :cond_53

    .line 250
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v5

    .line 251
    .local v5, "count":I
    iget v6, v0, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    iget v7, v0, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 252
    iget-object v6, v1, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mShape:Landroid/graphics/drawable/shapes/Shape;

    invoke-virtual {p0, v6, p1, v2}, Landroid/graphics/drawable/ShapeDrawable;->onDraw(Landroid/graphics/drawable/shapes/Shape;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 253
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 254
    .end local v5    # "count":I
    goto :goto_56

    .line 255
    :cond_53
    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 258
    :goto_56
    if-eqz v4, :cond_5c

    .line 259
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 264
    .end local v4    # "clearColorFilter":Z
    :cond_5c
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 265
    return-void
.end method

.method public whitelist getAlpha()I
    .registers 2

    .line 288
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget v0, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mAlpha:I

    return v0
.end method

.method public whitelist getChangingConfigurations()I
    .registers 3

    .line 269
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public whitelist getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 3

    .line 512
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mChangingConfigurations:I

    .line 513
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    return-object v0
.end method

.method public whitelist getIntrinsicHeight()I
    .registers 2

    .line 201
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget v0, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mIntrinsicHeight:I

    return v0
.end method

.method public whitelist getIntrinsicWidth()I
    .registers 2

    .line 196
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget v0, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mIntrinsicWidth:I

    return v0
.end method

.method public whitelist getOpacity()I
    .registers 4

    .line 325
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget-object v0, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mShape:Landroid/graphics/drawable/shapes/Shape;

    if-nez v0, :cond_1e

    .line 326
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget-object v0, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPaint:Landroid/graphics/Paint;

    .line 327
    .local v0, "p":Landroid/graphics/Paint;
    invoke-virtual {v0}, Landroid/graphics/Paint;->getXfermode()Landroid/graphics/Xfermode;

    move-result-object v1

    if-nez v1, :cond_1e

    .line 328
    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    .line 329
    .local v1, "alpha":I
    if-nez v1, :cond_18

    .line 330
    const/4 v2, -0x2

    return v2

    .line 332
    :cond_18
    const/16 v2, 0xff

    if-ne v1, v2, :cond_1e

    .line 333
    const/4 v2, -0x1

    return v2

    .line 338
    .end local v0    # "p":Landroid/graphics/Paint;
    .end local v1    # "alpha":I
    :cond_1e
    const/4 v0, -0x3

    return v0
.end method

.method public whitelist getOutline(Landroid/graphics/Outline;)V
    .registers 4
    .param p1, "outline"    # Landroid/graphics/Outline;

    .line 504
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget-object v0, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mShape:Landroid/graphics/drawable/shapes/Shape;

    if-eqz v0, :cond_18

    .line 505
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget-object v0, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mShape:Landroid/graphics/drawable/shapes/Shape;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/shapes/Shape;->getOutline(Landroid/graphics/Outline;)V

    .line 506
    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->getAlpha()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/graphics/Outline;->setAlpha(F)V

    .line 508
    :cond_18
    return-void
.end method

.method public whitelist getPadding(Landroid/graphics/Rect;)Z
    .registers 3
    .param p1, "padding"    # Landroid/graphics/Rect;

    .line 206
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget-object v0, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPadding:Landroid/graphics/Rect;

    if-eqz v0, :cond_f

    .line 207
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget-object v0, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 208
    const/4 v0, 0x1

    return v0

    .line 210
    :cond_f
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public whitelist getPaint()Landroid/graphics/Paint;
    .registers 2

    .line 135
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget-object v0, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public whitelist getShaderFactory()Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;
    .registers 2

    .line 128
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget-object v0, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mShaderFactory:Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;

    return-object v0
.end method

.method public whitelist getShape()Landroid/graphics/drawable/shapes/Shape;
    .registers 2

    .line 102
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget-object v0, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mShape:Landroid/graphics/drawable/shapes/Shape;

    return-object v0
.end method

.method public whitelist hasFocusStateSpecified()Z
    .registers 2

    .line 372
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget-object v0, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget-object v0, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->hasFocusStateSpecified()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public whitelist inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 11
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

    .line 404
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 406
    sget-object v0, Lcom/android/internal/R$styleable;->ShapeDrawable:[I

    invoke-static {p1, p4, p3, v0}, Landroid/graphics/drawable/ShapeDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 407
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Landroid/graphics/drawable/ShapeDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 408
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 411
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 412
    .local v1, "outerDepth":I
    :goto_13
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v3, v2

    .local v3, "type":I
    const/4 v4, 0x1

    if-eq v2, v4, :cond_55

    const/4 v2, 0x3

    if-ne v3, v2, :cond_24

    .line 413
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-le v2, v1, :cond_55

    .line 414
    :cond_24
    const/4 v2, 0x2

    if-eq v3, v2, :cond_28

    .line 415
    goto :goto_13

    .line 418
    :cond_28
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 420
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {p0, v2, p1, p2, p3}, Landroid/graphics/drawable/ShapeDrawable;->inflateTag(Ljava/lang/String;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Z

    move-result v4

    if-nez v4, :cond_54

    .line 421
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for ShapeDrawable "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "drawable"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    .end local v2    # "name":Ljava/lang/String;
    :cond_54
    goto :goto_13

    .line 427
    :cond_55
    invoke-direct {p0}, Landroid/graphics/drawable/ShapeDrawable;->updateLocalState()V

    .line 428
    return-void
.end method

.method protected whitelist inflateTag(Ljava/lang/String;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Z
    .registers 12
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "r"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p4, "attrs"    # Landroid/util/AttributeSet;

    .line 382
    const-string/jumbo v0, "padding"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2b

    .line 383
    sget-object v0, Lcom/android/internal/R$styleable;->ShapeDrawablePadding:[I

    invoke-virtual {p2, p4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 385
    .local v0, "a":Landroid/content/res/TypedArray;
    nop

    .line 386
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    .line 388
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    .line 390
    const/4 v5, 0x2

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    .line 392
    const/4 v6, 0x3

    invoke-virtual {v0, v6, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    .line 385
    invoke-virtual {p0, v2, v4, v5, v1}, Landroid/graphics/drawable/ShapeDrawable;->setPadding(IIII)V

    .line 394
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 395
    return v3

    .line 398
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_2b
    return v1
.end method

.method public whitelist isStateful()Z
    .registers 3

    .line 366
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    .line 367
    .local v0, "s":Landroid/graphics/drawable/ShapeDrawable$ShapeState;
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-nez v1, :cond_17

    iget-object v1, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_15

    iget-object v1, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_17

    :cond_15
    const/4 v1, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v1, 0x1

    :goto_18
    return v1
.end method

.method public whitelist mutate()Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 518
    iget-boolean v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mMutated:Z

    if-nez v0, :cond_19

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_19

    .line 519
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget-object v1, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable$ShapeState;-><init>(Landroid/graphics/drawable/ShapeDrawable$ShapeState;)V

    iput-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    .line 520
    invoke-direct {p0}, Landroid/graphics/drawable/ShapeDrawable;->updateLocalState()V

    .line 521
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mMutated:Z

    .line 523
    :cond_19
    return-object p0
.end method

.method protected whitelist onBoundsChange(Landroid/graphics/Rect;)V
    .registers 2
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 349
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 350
    invoke-direct {p0}, Landroid/graphics/drawable/ShapeDrawable;->updateShape()V

    .line 351
    return-void
.end method

.method protected whitelist onDraw(Landroid/graphics/drawable/shapes/Shape;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 4
    .param p1, "shape"    # Landroid/graphics/drawable/shapes/Shape;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "paint"    # Landroid/graphics/Paint;

    .line 225
    invoke-virtual {p1, p2, p3}, Landroid/graphics/drawable/shapes/Shape;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 226
    return-void
.end method

.method protected whitelist onStateChange([I)Z
    .registers 6
    .param p1, "stateSet"    # [I

    .line 355
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    .line 356
    .local v0, "state":Landroid/graphics/drawable/ShapeDrawable$ShapeState;
    iget-object v1, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_18

    iget-object v1, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mBlendMode:Landroid/graphics/BlendMode;

    if-eqz v1, :cond_18

    .line 357
    iget-object v1, p0, Landroid/graphics/drawable/ShapeDrawable;->mBlendModeColorFilter:Landroid/graphics/BlendModeColorFilter;

    iget-object v2, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mTint:Landroid/content/res/ColorStateList;

    iget-object v3, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mBlendMode:Landroid/graphics/BlendMode;

    invoke-virtual {p0, v1, v2, v3}, Landroid/graphics/drawable/ShapeDrawable;->updateBlendModeFilter(Landroid/graphics/BlendModeColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/BlendMode;)Landroid/graphics/BlendModeColorFilter;

    move-result-object v1

    iput-object v1, p0, Landroid/graphics/drawable/ShapeDrawable;->mBlendModeColorFilter:Landroid/graphics/BlendModeColorFilter;

    .line 359
    const/4 v1, 0x1

    return v1

    .line 361
    :cond_18
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist setAlpha(I)V
    .registers 3
    .param p1, "alpha"    # I

    .line 282
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iput p1, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mAlpha:I

    .line 283
    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->invalidateSelf()V

    .line 284
    return-void
.end method

.method public whitelist setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 309
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget-object v0, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 310
    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->invalidateSelf()V

    .line 311
    return-void
.end method

.method public whitelist setDither(Z)V
    .registers 3
    .param p1, "dither"    # Z

    .line 343
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget-object v0, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 344
    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->invalidateSelf()V

    .line 345
    return-void
.end method

.method public whitelist setIntrinsicHeight(I)V
    .registers 3
    .param p1, "height"    # I

    .line 190
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iput p1, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mIntrinsicHeight:I

    .line 191
    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->invalidateSelf()V

    .line 192
    return-void
.end method

.method public whitelist setIntrinsicWidth(I)V
    .registers 3
    .param p1, "width"    # I

    .line 180
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iput p1, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mIntrinsicWidth:I

    .line 181
    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->invalidateSelf()V

    .line 182
    return-void
.end method

.method public whitelist setPadding(IIII)V
    .registers 7
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 147
    or-int v0, p1, p2

    or-int/2addr v0, p3

    or-int/2addr v0, p4

    if-nez v0, :cond_c

    .line 148
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPadding:Landroid/graphics/Rect;

    goto :goto_22

    .line 150
    :cond_c
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget-object v0, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPadding:Landroid/graphics/Rect;

    if-nez v0, :cond_1b

    .line 151
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPadding:Landroid/graphics/Rect;

    .line 153
    :cond_1b
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget-object v0, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 155
    :goto_22
    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->invalidateSelf()V

    .line 156
    return-void
.end method

.method public whitelist setPadding(Landroid/graphics/Rect;)V
    .registers 4
    .param p1, "padding"    # Landroid/graphics/Rect;

    .line 163
    if-nez p1, :cond_8

    .line 164
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPadding:Landroid/graphics/Rect;

    goto :goto_1e

    .line 166
    :cond_8
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget-object v0, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPadding:Landroid/graphics/Rect;

    if-nez v0, :cond_17

    .line 167
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPadding:Landroid/graphics/Rect;

    .line 169
    :cond_17
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget-object v0, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 171
    :goto_1e
    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->invalidateSelf()V

    .line 172
    return-void
.end method

.method public whitelist setShaderFactory(Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;)V
    .registers 3
    .param p1, "fact"    # Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;

    .line 120
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iput-object p1, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mShaderFactory:Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;

    .line 121
    return-void
.end method

.method public whitelist setShape(Landroid/graphics/drawable/shapes/Shape;)V
    .registers 3
    .param p1, "s"    # Landroid/graphics/drawable/shapes/Shape;

    .line 109
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iput-object p1, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mShape:Landroid/graphics/drawable/shapes/Shape;

    .line 110
    invoke-direct {p0}, Landroid/graphics/drawable/ShapeDrawable;->updateShape()V

    .line 111
    return-void
.end method

.method public whitelist setTintBlendMode(Landroid/graphics/BlendMode;)V
    .registers 4
    .param p1, "blendMode"    # Landroid/graphics/BlendMode;

    .line 301
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iput-object p1, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mBlendMode:Landroid/graphics/BlendMode;

    .line 302
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mBlendModeColorFilter:Landroid/graphics/BlendModeColorFilter;

    iget-object v1, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget-object v1, v1, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0, v1, p1}, Landroid/graphics/drawable/ShapeDrawable;->updateBlendModeFilter(Landroid/graphics/BlendModeColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/BlendMode;)Landroid/graphics/BlendModeColorFilter;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mBlendModeColorFilter:Landroid/graphics/BlendModeColorFilter;

    .line 304
    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->invalidateSelf()V

    .line 305
    return-void
.end method

.method public whitelist setTintList(Landroid/content/res/ColorStateList;)V
    .registers 4
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .line 293
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iput-object p1, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mTint:Landroid/content/res/ColorStateList;

    .line 294
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mBlendModeColorFilter:Landroid/graphics/BlendModeColorFilter;

    iget-object v1, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget-object v1, v1, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mBlendMode:Landroid/graphics/BlendMode;

    invoke-virtual {p0, v0, p1, v1}, Landroid/graphics/drawable/ShapeDrawable;->updateBlendModeFilter(Landroid/graphics/BlendModeColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/BlendMode;)Landroid/graphics/BlendModeColorFilter;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mBlendModeColorFilter:Landroid/graphics/BlendModeColorFilter;

    .line 296
    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->invalidateSelf()V

    .line 297
    return-void
.end method

.method public blacklist setXfermode(Landroid/graphics/Xfermode;)V
    .registers 3
    .param p1, "mode"    # Landroid/graphics/Xfermode;

    .line 319
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget-object v0, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 320
    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->invalidateSelf()V

    .line 321
    return-void
.end method

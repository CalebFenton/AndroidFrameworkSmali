.class final Landroid/graphics/drawable/ShapeDrawable$ShapeState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "ShapeDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/ShapeDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ShapeState"
.end annotation


# instance fields
.field greylist-max-o mAlpha:I

.field blacklist mBlendMode:Landroid/graphics/BlendMode;

.field greylist-max-o mChangingConfigurations:I

.field greylist-max-o mIntrinsicHeight:I

.field greylist-max-o mIntrinsicWidth:I

.field greylist-max-o mPadding:Landroid/graphics/Rect;

.field final greylist-max-o mPaint:Landroid/graphics/Paint;

.field greylist-max-o mShaderFactory:Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;

.field greylist-max-o mShape:Landroid/graphics/drawable/shapes/Shape;

.field greylist-max-o mThemeAttrs:[I

.field greylist-max-o mTint:Landroid/content/res/ColorStateList;


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 3

    .line 554
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 544
    sget-object v0, Landroid/graphics/drawable/Drawable;->DEFAULT_BLEND_MODE:Landroid/graphics/BlendMode;

    iput-object v0, p0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mBlendMode:Landroid/graphics/BlendMode;

    .line 548
    const/16 v0, 0xff

    iput v0, p0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mAlpha:I

    .line 555
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPaint:Landroid/graphics/Paint;

    .line 556
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/graphics/drawable/ShapeDrawable$ShapeState;)V
    .registers 4
    .param p1, "orig"    # Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    .line 564
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 544
    sget-object v0, Landroid/graphics/drawable/Drawable;->DEFAULT_BLEND_MODE:Landroid/graphics/BlendMode;

    iput-object v0, p0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mBlendMode:Landroid/graphics/BlendMode;

    .line 548
    const/16 v0, 0xff

    iput v0, p0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mAlpha:I

    .line 565
    iget v0, p1, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mChangingConfigurations:I

    iput v0, p0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mChangingConfigurations:I

    .line 566
    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p1, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPaint:Landroid/graphics/Paint;

    .line 567
    iget-object v0, p1, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mThemeAttrs:[I

    iput-object v0, p0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mThemeAttrs:[I

    .line 568
    iget-object v0, p1, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mShape:Landroid/graphics/drawable/shapes/Shape;

    if-eqz v0, :cond_2e

    .line 570
    :try_start_20
    iget-object v0, p1, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mShape:Landroid/graphics/drawable/shapes/Shape;

    invoke-virtual {v0}, Landroid/graphics/drawable/shapes/Shape;->clone()Landroid/graphics/drawable/shapes/Shape;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mShape:Landroid/graphics/drawable/shapes/Shape;
    :try_end_28
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_20 .. :try_end_28} :catch_29

    .line 574
    goto :goto_2e

    .line 571
    :catch_29
    move-exception v0

    .line 573
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    iget-object v1, p1, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mShape:Landroid/graphics/drawable/shapes/Shape;

    iput-object v1, p0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mShape:Landroid/graphics/drawable/shapes/Shape;

    .line 576
    .end local v0    # "e":Ljava/lang/CloneNotSupportedException;
    :cond_2e
    :goto_2e
    iget-object v0, p1, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mTint:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mTint:Landroid/content/res/ColorStateList;

    .line 577
    iget-object v0, p1, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mBlendMode:Landroid/graphics/BlendMode;

    iput-object v0, p0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mBlendMode:Landroid/graphics/BlendMode;

    .line 578
    iget-object v0, p1, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPadding:Landroid/graphics/Rect;

    if-eqz v0, :cond_43

    .line 579
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPadding:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPadding:Landroid/graphics/Rect;

    .line 581
    :cond_43
    iget v0, p1, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mIntrinsicWidth:I

    iput v0, p0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mIntrinsicWidth:I

    .line 582
    iget v0, p1, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mIntrinsicHeight:I

    iput v0, p0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mIntrinsicHeight:I

    .line 583
    iget v0, p1, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mAlpha:I

    iput v0, p0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mAlpha:I

    .line 587
    iget-object v0, p1, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mShaderFactory:Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;

    iput-object v0, p0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mShaderFactory:Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;

    .line 588
    return-void
.end method


# virtual methods
.method public whitelist canApplyTheme()Z
    .registers 2

    .line 592
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mThemeAttrs:[I

    if-nez v0, :cond_13

    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mTint:Landroid/content/res/ColorStateList;

    .line 593
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    .line 592
    :goto_14
    return v0
.end method

.method public whitelist getChangingConfigurations()I
    .registers 3

    .line 608
    iget v0, p0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mChangingConfigurations:I

    .line 609
    iget-object v1, p0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_d

    iget-object v1, p0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getChangingConfigurations()I

    move-result v1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    or-int/2addr v0, v1

    .line 608
    return v0
.end method

.method public whitelist newDrawable()Landroid/graphics/drawable/Drawable;
    .registers 4

    .line 598
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    invoke-direct {v1, p0}, Landroid/graphics/drawable/ShapeDrawable$ShapeState;-><init>(Landroid/graphics/drawable/ShapeDrawable$ShapeState;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/ShapeDrawable$ShapeState;Landroid/content/res/Resources;Landroid/graphics/drawable/ShapeDrawable-IA;)V

    return-object v0
.end method

.method public whitelist newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .registers 5
    .param p1, "res"    # Landroid/content/res/Resources;

    .line 603
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    invoke-direct {v1, p0}, Landroid/graphics/drawable/ShapeDrawable$ShapeState;-><init>(Landroid/graphics/drawable/ShapeDrawable$ShapeState;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/ShapeDrawable$ShapeState;Landroid/content/res/Resources;Landroid/graphics/drawable/ShapeDrawable-IA;)V

    return-object v0
.end method

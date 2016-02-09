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
.field mAlpha:I

.field mChangingConfigurations:I

.field mIntrinsicHeight:I

.field mIntrinsicWidth:I

.field mPadding:Landroid/graphics/Rect;

.field mPaint:Landroid/graphics/Paint;

.field mShaderFactory:Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;

.field mShape:Landroid/graphics/drawable/shapes/Shape;

.field mThemeAttrs:[I

.field mTint:Landroid/content/res/ColorStateList;

.field mTintMode:Landroid/graphics/PorterDuff$Mode;


# direct methods
.method constructor <init>(Landroid/graphics/drawable/ShapeDrawable$ShapeState;)V
    .locals 2
    .param p1, "orig"    # Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 540
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    #@4
    .line 532
    iput-object v0, p0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mTint:Landroid/content/res/ColorStateList;

    #@6
    .line 533
    sget-object v0, Landroid/graphics/drawable/ShapeDrawable;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    #@8
    iput-object v0, p0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@a
    .line 537
    const/16 v0, 0xff

    #@c
    iput v0, p0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mAlpha:I

    #@e
    .line 541
    if-eqz p1, :cond_0

    #@10
    .line 542
    iget-object v0, p1, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mThemeAttrs:[I

    #@12
    iput-object v0, p0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mThemeAttrs:[I

    #@14
    .line 543
    iget-object v0, p1, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPaint:Landroid/graphics/Paint;

    #@16
    iput-object v0, p0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPaint:Landroid/graphics/Paint;

    #@18
    .line 544
    iget-object v0, p1, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mShape:Landroid/graphics/drawable/shapes/Shape;

    #@1a
    iput-object v0, p0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mShape:Landroid/graphics/drawable/shapes/Shape;

    #@1c
    .line 545
    iget-object v0, p1, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mTint:Landroid/content/res/ColorStateList;

    #@1e
    iput-object v0, p0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mTint:Landroid/content/res/ColorStateList;

    #@20
    .line 546
    iget-object v0, p1, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@22
    iput-object v0, p0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@24
    .line 547
    iget-object v0, p1, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPadding:Landroid/graphics/Rect;

    #@26
    iput-object v0, p0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPadding:Landroid/graphics/Rect;

    #@28
    .line 548
    iget v0, p1, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mIntrinsicWidth:I

    #@2a
    iput v0, p0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mIntrinsicWidth:I

    #@2c
    .line 549
    iget v0, p1, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mIntrinsicHeight:I

    #@2e
    iput v0, p0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mIntrinsicHeight:I

    #@30
    .line 550
    iget v0, p1, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mAlpha:I

    #@32
    iput v0, p0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mAlpha:I

    #@34
    .line 551
    iget-object v0, p1, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mShaderFactory:Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;

    #@36
    iput-object v0, p0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mShaderFactory:Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;

    #@38
    .line 540
    :goto_0
    return-void

    #@39
    .line 553
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    #@3b
    const/4 v1, 0x1

    #@3c
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    #@3f
    iput-object v0, p0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPaint:Landroid/graphics/Paint;

    #@41
    goto :goto_0
.end method


# virtual methods
.method public canApplyTheme()Z
    .locals 1

    #@0
    .prologue
    .line 559
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mThemeAttrs:[I

    #@2
    if-nez v0, :cond_0

    #@4
    .line 560
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mTint:Landroid/content/res/ColorStateList;

    #@6
    if-eqz v0, :cond_1

    #@8
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mTint:Landroid/content/res/ColorStateList;

    #@a
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    #@d
    move-result v0

    #@e
    .line 559
    :goto_0
    return v0

    #@f
    :cond_0
    const/4 v0, 0x1

    #@10
    goto :goto_0

    #@11
    .line 560
    :cond_1
    const/4 v0, 0x0

    #@12
    goto :goto_0
.end method

.method public getChangingConfigurations()I
    .locals 2

    #@0
    .prologue
    .line 575
    iget v1, p0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mChangingConfigurations:I

    #@2
    .line 576
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mTint:Landroid/content/res/ColorStateList;

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mTint:Landroid/content/res/ColorStateList;

    #@8
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getChangingConfigurations()I

    #@b
    move-result v0

    #@c
    .line 575
    :goto_0
    or-int/2addr v0, v1

    #@d
    return v0

    #@e
    .line 576
    :cond_0
    const/4 v0, 0x0

    #@f
    goto :goto_0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 565
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    #@3
    invoke-direct {v0, p0, v1, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/ShapeDrawable$ShapeState;Landroid/content/res/Resources;Landroid/graphics/drawable/ShapeDrawable;)V

    #@6
    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;

    #@0
    .prologue
    .line 570
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, p1, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/ShapeDrawable$ShapeState;Landroid/content/res/Resources;Landroid/graphics/drawable/ShapeDrawable;)V

    #@6
    return-object v0
.end method

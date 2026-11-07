.class final Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "ColorStateListDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/ColorStateListDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ColorStateListDrawableState"
.end annotation


# instance fields
.field blacklist mAlpha:I

.field blacklist mBlendMode:Landroid/graphics/BlendMode;

.field blacklist mChangingConfigurations:I

.field blacklist mColor:Landroid/content/res/ColorStateList;

.field blacklist mTint:Landroid/content/res/ColorStateList;


# direct methods
.method constructor blacklist <init>()V
    .registers 2

    .line 255
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 249
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mColor:Landroid/content/res/ColorStateList;

    .line 250
    iput-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mTint:Landroid/content/res/ColorStateList;

    .line 251
    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mAlpha:I

    .line 252
    sget-object v0, Landroid/graphics/drawable/Drawable;->DEFAULT_BLEND_MODE:Landroid/graphics/BlendMode;

    iput-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mBlendMode:Landroid/graphics/BlendMode;

    .line 253
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mChangingConfigurations:I

    .line 256
    return-void
.end method

.method constructor blacklist <init>(Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;)V
    .registers 3
    .param p1, "state"    # Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;

    .line 258
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 249
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mColor:Landroid/content/res/ColorStateList;

    .line 250
    iput-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mTint:Landroid/content/res/ColorStateList;

    .line 251
    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mAlpha:I

    .line 252
    sget-object v0, Landroid/graphics/drawable/Drawable;->DEFAULT_BLEND_MODE:Landroid/graphics/BlendMode;

    iput-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mBlendMode:Landroid/graphics/BlendMode;

    .line 253
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mChangingConfigurations:I

    .line 259
    iget-object v0, p1, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mColor:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mColor:Landroid/content/res/ColorStateList;

    .line 260
    iget-object v0, p1, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mTint:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mTint:Landroid/content/res/ColorStateList;

    .line 261
    iget v0, p1, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mAlpha:I

    iput v0, p0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mAlpha:I

    .line 262
    iget-object v0, p1, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mBlendMode:Landroid/graphics/BlendMode;

    iput-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mBlendMode:Landroid/graphics/BlendMode;

    .line 263
    iget v0, p1, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mChangingConfigurations:I

    iput v0, p0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mChangingConfigurations:I

    .line 264
    return-void
.end method


# virtual methods
.method public whitelist canApplyTheme()Z
    .registers 2

    .line 290
    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    move-result v0

    if-nez v0, :cond_18

    :cond_c
    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mTint:Landroid/content/res/ColorStateList;

    .line 291
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    .line 290
    :goto_1b
    return v0
.end method

.method public whitelist getChangingConfigurations()I
    .registers 4

    .line 273
    iget v0, p0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mChangingConfigurations:I

    .line 274
    iget-object v1, p0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mColor:Landroid/content/res/ColorStateList;

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    iget-object v1, p0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getChangingConfigurations()I

    move-result v1

    goto :goto_f

    :cond_e
    move v1, v2

    :goto_f
    or-int/2addr v0, v1

    .line 275
    iget-object v1, p0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getChangingConfigurations()I

    move-result v2

    :cond_1a
    or-int/2addr v0, v2

    .line 273
    return v0
.end method

.method public blacklist hasFocusStateSpecified()Z
    .registers 2

    .line 284
    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->hasFocusStateSpecified()Z

    move-result v0

    if-nez v0, :cond_18

    :cond_c
    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mTint:Landroid/content/res/ColorStateList;

    .line 285
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->hasFocusStateSpecified()Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    .line 284
    :goto_1b
    return v0
.end method

.method public blacklist isStateful()Z
    .registers 2

    .line 279
    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_18

    :cond_c
    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mTint:Landroid/content/res/ColorStateList;

    .line 280
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    .line 279
    :goto_1b
    return v0
.end method

.method public whitelist newDrawable()Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 268
    new-instance v0, Landroid/graphics/drawable/ColorStateListDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/graphics/drawable/ColorStateListDrawable;-><init>(Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;Landroid/graphics/drawable/ColorStateListDrawable-IA;)V

    return-object v0
.end method

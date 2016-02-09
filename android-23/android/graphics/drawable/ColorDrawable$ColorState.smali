.class final Landroid/graphics/drawable/ColorDrawable$ColorState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "ColorDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/ColorDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ColorState"
.end annotation


# instance fields
.field mBaseColor:I

.field mChangingConfigurations:I

.field mThemeAttrs:[I

.field mTint:Landroid/content/res/ColorStateList;

.field mTintMode:Landroid/graphics/PorterDuff$Mode;

.field mUseColor:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 299
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    #@3
    .line 296
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mTint:Landroid/content/res/ColorStateList;

    #@6
    .line 297
    sget-object v0, Landroid/graphics/drawable/ColorDrawable;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    #@8
    iput-object v0, p0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@a
    .line 299
    return-void
.end method

.method constructor <init>(Landroid/graphics/drawable/ColorDrawable$ColorState;)V
    .locals 1
    .param p1, "state"    # Landroid/graphics/drawable/ColorDrawable$ColorState;

    #@0
    .prologue
    .line 303
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    #@3
    .line 296
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mTint:Landroid/content/res/ColorStateList;

    #@6
    .line 297
    sget-object v0, Landroid/graphics/drawable/ColorDrawable;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    #@8
    iput-object v0, p0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@a
    .line 304
    iget-object v0, p1, Landroid/graphics/drawable/ColorDrawable$ColorState;->mThemeAttrs:[I

    #@c
    iput-object v0, p0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mThemeAttrs:[I

    #@e
    .line 305
    iget v0, p1, Landroid/graphics/drawable/ColorDrawable$ColorState;->mBaseColor:I

    #@10
    iput v0, p0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mBaseColor:I

    #@12
    .line 306
    iget v0, p1, Landroid/graphics/drawable/ColorDrawable$ColorState;->mUseColor:I

    #@14
    iput v0, p0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mUseColor:I

    #@16
    .line 307
    iget v0, p1, Landroid/graphics/drawable/ColorDrawable$ColorState;->mChangingConfigurations:I

    #@18
    iput v0, p0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mChangingConfigurations:I

    #@1a
    .line 308
    iget-object v0, p1, Landroid/graphics/drawable/ColorDrawable$ColorState;->mTint:Landroid/content/res/ColorStateList;

    #@1c
    iput-object v0, p0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mTint:Landroid/content/res/ColorStateList;

    #@1e
    .line 309
    iget-object v0, p1, Landroid/graphics/drawable/ColorDrawable$ColorState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@20
    iput-object v0, p0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@22
    .line 303
    return-void
.end method


# virtual methods
.method public canApplyTheme()Z
    .locals 1

    #@0
    .prologue
    .line 314
    iget-object v0, p0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mThemeAttrs:[I

    #@2
    if-nez v0, :cond_0

    #@4
    .line 315
    iget-object v0, p0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mTint:Landroid/content/res/ColorStateList;

    #@6
    if-eqz v0, :cond_1

    #@8
    iget-object v0, p0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mTint:Landroid/content/res/ColorStateList;

    #@a
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    #@d
    move-result v0

    #@e
    .line 314
    :goto_0
    return v0

    #@f
    :cond_0
    const/4 v0, 0x1

    #@10
    goto :goto_0

    #@11
    .line 315
    :cond_1
    const/4 v0, 0x0

    #@12
    goto :goto_0
.end method

.method public getChangingConfigurations()I
    .locals 2

    #@0
    .prologue
    .line 330
    iget v1, p0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mChangingConfigurations:I

    #@2
    .line 331
    iget-object v0, p0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mTint:Landroid/content/res/ColorStateList;

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-object v0, p0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mTint:Landroid/content/res/ColorStateList;

    #@8
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getChangingConfigurations()I

    #@b
    move-result v0

    #@c
    .line 330
    :goto_0
    or-int/2addr v0, v1

    #@d
    return v0

    #@e
    .line 331
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
    .line 320
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    #@3
    invoke-direct {v0, p0, v1, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(Landroid/graphics/drawable/ColorDrawable$ColorState;Landroid/content/res/Resources;Landroid/graphics/drawable/ColorDrawable;)V

    #@6
    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;

    #@0
    .prologue
    .line 325
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, p1, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(Landroid/graphics/drawable/ColorDrawable$ColorState;Landroid/content/res/Resources;Landroid/graphics/drawable/ColorDrawable;)V

    #@6
    return-object v0
.end method

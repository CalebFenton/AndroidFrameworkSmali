.class Landroid/graphics/drawable/RippleDrawable$RippleState;
.super Landroid/graphics/drawable/LayerDrawable$LayerState;
.source "RippleDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/RippleDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RippleState"
.end annotation


# instance fields
.field mColor:Landroid/content/res/ColorStateList;

.field mMaxRadius:I

.field mTouchThemeAttrs:[I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/graphics/drawable/RippleDrawable;Landroid/content/res/Resources;)V
    .locals 2
    .param p1, "orig"    # Landroid/graphics/drawable/LayerDrawable$LayerState;
    .param p2, "owner"    # Landroid/graphics/drawable/RippleDrawable;
    .param p3, "res"    # Landroid/content/res/Resources;

    #@0
    .prologue
    .line 981
    invoke-direct {p0, p1, p2, p3}, Landroid/graphics/drawable/LayerDrawable$LayerState;-><init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/graphics/drawable/LayerDrawable;Landroid/content/res/Resources;)V

    #@3
    .line 977
    const v1, -0xff01

    #@6
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    #@9
    move-result-object v1

    #@a
    iput-object v1, p0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mColor:Landroid/content/res/ColorStateList;

    #@c
    .line 978
    const/4 v1, -0x1

    #@d
    iput v1, p0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mMaxRadius:I

    #@f
    .line 983
    if-eqz p1, :cond_0

    #@11
    instance-of v1, p1, Landroid/graphics/drawable/RippleDrawable$RippleState;

    #@13
    if-eqz v1, :cond_0

    #@15
    move-object v0, p1

    #@16
    .line 984
    check-cast v0, Landroid/graphics/drawable/RippleDrawable$RippleState;

    #@18
    .line 985
    .local v0, "origs":Landroid/graphics/drawable/RippleDrawable$RippleState;
    iget-object v1, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mTouchThemeAttrs:[I

    #@1a
    iput-object v1, p0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mTouchThemeAttrs:[I

    #@1c
    .line 986
    iget-object v1, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mColor:Landroid/content/res/ColorStateList;

    #@1e
    iput-object v1, p0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mColor:Landroid/content/res/ColorStateList;

    #@20
    .line 987
    iget v1, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mMaxRadius:I

    #@22
    iput v1, p0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mMaxRadius:I

    #@24
    .line 980
    .end local v0    # "origs":Landroid/graphics/drawable/RippleDrawable$RippleState;
    :cond_0
    return-void
.end method


# virtual methods
.method public canApplyTheme()Z
    .locals 1

    #@0
    .prologue
    .line 993
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mTouchThemeAttrs:[I

    #@2
    if-nez v0, :cond_1

    #@4
    .line 994
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mColor:Landroid/content/res/ColorStateList;

    #@6
    if-eqz v0, :cond_0

    #@8
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mColor:Landroid/content/res/ColorStateList;

    #@a
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    #@d
    move-result v0

    #@e
    .line 993
    if-nez v0, :cond_1

    #@10
    .line 995
    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/LayerDrawable$LayerState;->canApplyTheme()Z

    #@13
    move-result v0

    #@14
    .line 993
    :goto_0
    return v0

    #@15
    :cond_1
    const/4 v0, 0x1

    #@16
    goto :goto_0
.end method

.method public getChangingConfigurations()I
    .locals 2

    #@0
    .prologue
    .line 1010
    invoke-super {p0}, Landroid/graphics/drawable/LayerDrawable$LayerState;->getChangingConfigurations()I

    #@3
    move-result v1

    #@4
    .line 1011
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mColor:Landroid/content/res/ColorStateList;

    #@6
    if-eqz v0, :cond_0

    #@8
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mColor:Landroid/content/res/ColorStateList;

    #@a
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getChangingConfigurations()I

    #@d
    move-result v0

    #@e
    .line 1010
    :goto_0
    or-int/2addr v0, v1

    #@f
    return v0

    #@10
    .line 1011
    :cond_0
    const/4 v0, 0x0

    #@11
    goto :goto_0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1000
    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    #@3
    invoke-direct {v0, p0, v1, v1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/graphics/drawable/RippleDrawable$RippleState;Landroid/content/res/Resources;Landroid/graphics/drawable/RippleDrawable;)V

    #@6
    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;

    #@0
    .prologue
    .line 1005
    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, p1, v1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/graphics/drawable/RippleDrawable$RippleState;Landroid/content/res/Resources;Landroid/graphics/drawable/RippleDrawable;)V

    #@6
    return-object v0
.end method

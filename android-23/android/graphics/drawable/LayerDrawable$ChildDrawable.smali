.class Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
.super Ljava/lang/Object;
.source "LayerDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/LayerDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ChildDrawable"
.end annotation


# instance fields
.field public mDrawable:Landroid/graphics/drawable/Drawable;

.field public mGravity:I

.field public mHeight:I

.field public mId:I

.field public mInsetB:I

.field public mInsetE:I

.field public mInsetL:I

.field public mInsetR:I

.field public mInsetS:I

.field public mInsetT:I

.field public mThemeAttrs:[I

.field public mWidth:I


# direct methods
.method constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/high16 v0, -0x80000000

    #@2
    const/4 v1, -0x1

    #@3
    .line 1711
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 1704
    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetS:I

    #@8
    .line 1705
    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetE:I

    #@a
    .line 1706
    iput v1, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mWidth:I

    #@c
    .line 1707
    iput v1, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mHeight:I

    #@e
    .line 1708
    const/4 v0, 0x0

    #@f
    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mGravity:I

    #@11
    .line 1709
    iput v1, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    #@13
    .line 1711
    return-void
.end method

.method constructor <init>(Landroid/graphics/drawable/LayerDrawable$ChildDrawable;Landroid/graphics/drawable/LayerDrawable;Landroid/content/res/Resources;)V
    .locals 5
    .param p1, "orig"    # Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    .param p2, "owner"    # Landroid/graphics/drawable/LayerDrawable;
    .param p3, "res"    # Landroid/content/res/Resources;

    #@0
    .prologue
    const/high16 v3, -0x80000000

    #@2
    const/4 v4, -0x1

    #@3
    .line 1715
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 1704
    iput v3, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetS:I

    #@8
    .line 1705
    iput v3, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetE:I

    #@a
    .line 1706
    iput v4, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mWidth:I

    #@c
    .line 1707
    iput v4, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mHeight:I

    #@e
    .line 1708
    const/4 v3, 0x0

    #@f
    iput v3, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mGravity:I

    #@11
    .line 1709
    iput v4, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    #@13
    .line 1716
    iget-object v2, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@15
    .line 1718
    .local v2, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_1

    #@17
    .line 1719
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    #@1a
    move-result-object v1

    #@1b
    .line 1720
    .local v1, "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz p3, :cond_0

    #@1d
    .line 1721
    invoke-virtual {v1, p3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    #@20
    move-result-object v0

    #@21
    .line 1725
    .local v0, "clone":Landroid/graphics/drawable/Drawable;
    :goto_0
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@24
    .line 1726
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getLayoutDirection()I

    #@27
    move-result v3

    #@28
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    #@2b
    .line 1727
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    #@2e
    move-result-object v3

    #@2f
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    #@32
    .line 1728
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getLevel()I

    #@35
    move-result v3

    #@36
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    #@39
    .line 1733
    .end local v0    # "clone":Landroid/graphics/drawable/Drawable;
    .end local v1    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    :goto_1
    iput-object v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@3b
    .line 1734
    iget-object v3, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mThemeAttrs:[I

    #@3d
    iput-object v3, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mThemeAttrs:[I

    #@3f
    .line 1735
    iget v3, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetL:I

    #@41
    iput v3, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetL:I

    #@43
    .line 1736
    iget v3, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetT:I

    #@45
    iput v3, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetT:I

    #@47
    .line 1737
    iget v3, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetR:I

    #@49
    iput v3, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetR:I

    #@4b
    .line 1738
    iget v3, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetB:I

    #@4d
    iput v3, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetB:I

    #@4f
    .line 1739
    iget v3, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetS:I

    #@51
    iput v3, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetS:I

    #@53
    .line 1740
    iget v3, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetE:I

    #@55
    iput v3, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetE:I

    #@57
    .line 1741
    iget v3, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mWidth:I

    #@59
    iput v3, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mWidth:I

    #@5b
    .line 1742
    iget v3, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mHeight:I

    #@5d
    iput v3, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mHeight:I

    #@5f
    .line 1743
    iget v3, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mGravity:I

    #@61
    iput v3, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mGravity:I

    #@63
    .line 1744
    iget v3, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    #@65
    iput v3, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    #@67
    .line 1715
    return-void

    #@68
    .line 1723
    .restart local v1    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    #@6b
    move-result-object v0

    #@6c
    .restart local v0    # "clone":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    #@6d
    .line 1730
    .end local v0    # "clone":Landroid/graphics/drawable/Drawable;
    .end local v1    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_1
    const/4 v0, 0x0

    #@6e
    .local v0, "clone":Landroid/graphics/drawable/Drawable;
    goto :goto_1
.end method


# virtual methods
.method public canApplyTheme()Z
    .locals 1

    #@0
    .prologue
    .line 1748
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mThemeAttrs:[I

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1749
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@6
    if-eqz v0, :cond_1

    #@8
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@a
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    #@d
    move-result v0

    #@e
    .line 1748
    :goto_0
    return v0

    #@f
    :cond_0
    const/4 v0, 0x1

    #@10
    goto :goto_0

    #@11
    .line 1749
    :cond_1
    const/4 v0, 0x0

    #@12
    goto :goto_0
.end method

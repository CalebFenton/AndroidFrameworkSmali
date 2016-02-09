.class Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;
.super Ljava/lang/Object;
.source "ActionBarView.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuPresenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExpandedActionViewMenuPresenter"
.end annotation


# instance fields
.field mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

.field mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field final synthetic this$0:Lcom/android/internal/widget/ActionBarView;


# direct methods
.method private constructor <init>(Lcom/android/internal/widget/ActionBarView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/widget/ActionBarView;

    #@0
    .prologue
    .line 1591
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/widget/ActionBarView;Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/widget/ActionBarView;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;-><init>(Lcom/android/internal/widget/ActionBarView;)V

    #@3
    return-void
.end method


# virtual methods
.method public collapseItemActionView(Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 4
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 1684
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    #@4
    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    #@6
    instance-of v0, v0, Landroid/view/CollapsibleActionView;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 1685
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    #@c
    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    #@e
    check-cast v0, Landroid/view/CollapsibleActionView;

    #@10
    invoke-interface {v0}, Landroid/view/CollapsibleActionView;->onActionViewCollapsed()V

    #@13
    .line 1688
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    #@15
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    #@17
    iget-object v1, v1, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    #@19
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    #@1c
    .line 1689
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    #@1e
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarView;->-get11(Lcom/android/internal/widget/ActionBarView;)Landroid/view/ViewGroup;

    #@21
    move-result-object v0

    #@22
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    #@24
    invoke-static {v1}, Lcom/android/internal/widget/ActionBarView;->-get2(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ActionBarView$HomeView;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    #@2b
    .line 1690
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    #@2d
    iput-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    #@2f
    .line 1691
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    #@31
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarView;->-get1(Lcom/android/internal/widget/ActionBarView;)I

    #@34
    move-result v0

    #@35
    and-int/lit8 v0, v0, 0x2

    #@37
    if-eqz v0, :cond_1

    #@39
    .line 1692
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    #@3b
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarView;->-get4(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ActionBarView$HomeView;

    #@3e
    move-result-object v0

    #@3f
    invoke-virtual {v0, v2}, Lcom/android/internal/widget/ActionBarView$HomeView;->setVisibility(I)V

    #@42
    .line 1694
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    #@44
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarView;->-get1(Lcom/android/internal/widget/ActionBarView;)I

    #@47
    move-result v0

    #@48
    and-int/lit8 v0, v0, 0x8

    #@4a
    if-eqz v0, :cond_2

    #@4c
    .line 1695
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    #@4e
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarView;->-get10(Lcom/android/internal/widget/ActionBarView;)Landroid/widget/LinearLayout;

    #@51
    move-result-object v0

    #@52
    if-nez v0, :cond_6

    #@54
    .line 1696
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    #@56
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarView;->-wrap0(Lcom/android/internal/widget/ActionBarView;)V

    #@59
    .line 1701
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    #@5b
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarView;->-get9(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ScrollingTabContainerView;

    #@5e
    move-result-object v0

    #@5f
    if-eqz v0, :cond_3

    #@61
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    #@63
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarView;->-get9(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ScrollingTabContainerView;

    #@66
    move-result-object v0

    #@67
    invoke-virtual {v0, v2}, Lcom/android/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    #@6a
    .line 1702
    :cond_3
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    #@6c
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarView;->-get8(Lcom/android/internal/widget/ActionBarView;)Landroid/widget/Spinner;

    #@6f
    move-result-object v0

    #@70
    if-eqz v0, :cond_4

    #@72
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    #@74
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarView;->-get8(Lcom/android/internal/widget/ActionBarView;)Landroid/widget/Spinner;

    #@77
    move-result-object v0

    #@78
    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setVisibility(I)V

    #@7b
    .line 1703
    :cond_4
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    #@7d
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarView;->-get0(Lcom/android/internal/widget/ActionBarView;)Landroid/view/View;

    #@80
    move-result-object v0

    #@81
    if-eqz v0, :cond_5

    #@83
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    #@85
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarView;->-get0(Lcom/android/internal/widget/ActionBarView;)Landroid/view/View;

    #@88
    move-result-object v0

    #@89
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    #@8c
    .line 1705
    :cond_5
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    #@8e
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarView;->-get2(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ActionBarView$HomeView;

    #@91
    move-result-object v0

    #@92
    invoke-virtual {v0, v3}, Lcom/android/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    #@95
    .line 1706
    iput-object v3, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    #@97
    .line 1707
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    #@99
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    #@9b
    invoke-static {v1}, Lcom/android/internal/widget/ActionBarView;->-get12(Lcom/android/internal/widget/ActionBarView;)Z

    #@9e
    move-result v1

    #@9f
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarView;->setHomeButtonEnabled(Z)V

    #@a2
    .line 1708
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    #@a4
    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->requestLayout()V

    #@a7
    .line 1709
    invoke-virtual {p2, v2}, Lcom/android/internal/view/menu/MenuItemImpl;->setActionViewExpanded(Z)V

    #@aa
    .line 1711
    const/4 v0, 0x1

    #@ab
    return v0

    #@ac
    .line 1698
    :cond_6
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    #@ae
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarView;->-get10(Lcom/android/internal/widget/ActionBarView;)Landroid/widget/LinearLayout;

    #@b1
    move-result-object v0

    #@b2
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    #@b5
    goto :goto_0
.end method

.method public expandItemActionView(Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 6
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    const/16 v3, 0x8

    #@4
    .line 1654
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    #@6
    invoke-virtual {p2}, Lcom/android/internal/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    #@9
    move-result-object v1

    #@a
    iput-object v1, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    #@c
    .line 1655
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    #@e
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarView;->-get2(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ActionBarView$HomeView;

    #@11
    move-result-object v0

    #@12
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    #@14
    invoke-static {v1}, Lcom/android/internal/widget/ActionBarView;->-get5(Lcom/android/internal/widget/ActionBarView;)Landroid/graphics/drawable/Drawable;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    #@1b
    move-result-object v1

    #@1c
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    #@1e
    invoke-virtual {v2}, Lcom/android/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    #@29
    .line 1656
    iput-object p2, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    #@2b
    .line 1657
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    #@2d
    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    #@2f
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@32
    move-result-object v0

    #@33
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    #@35
    if-eq v0, v1, :cond_0

    #@37
    .line 1658
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    #@39
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    #@3b
    iget-object v1, v1, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    #@3d
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    #@40
    .line 1660
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    #@42
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarView;->-get2(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ActionBarView$HomeView;

    #@45
    move-result-object v0

    #@46
    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView$HomeView;->getParent()Landroid/view/ViewParent;

    #@49
    move-result-object v0

    #@4a
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    #@4c
    invoke-static {v1}, Lcom/android/internal/widget/ActionBarView;->-get11(Lcom/android/internal/widget/ActionBarView;)Landroid/view/ViewGroup;

    #@4f
    move-result-object v1

    #@50
    if-eq v0, v1, :cond_1

    #@52
    .line 1661
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    #@54
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarView;->-get11(Lcom/android/internal/widget/ActionBarView;)Landroid/view/ViewGroup;

    #@57
    move-result-object v0

    #@58
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    #@5a
    invoke-static {v1}, Lcom/android/internal/widget/ActionBarView;->-get2(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ActionBarView$HomeView;

    #@5d
    move-result-object v1

    #@5e
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    #@61
    .line 1663
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    #@63
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarView;->-get4(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ActionBarView$HomeView;

    #@66
    move-result-object v0

    #@67
    invoke-virtual {v0, v3}, Lcom/android/internal/widget/ActionBarView$HomeView;->setVisibility(I)V

    #@6a
    .line 1664
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    #@6c
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarView;->-get10(Lcom/android/internal/widget/ActionBarView;)Landroid/widget/LinearLayout;

    #@6f
    move-result-object v0

    #@70
    if-eqz v0, :cond_2

    #@72
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    #@74
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarView;->-get10(Lcom/android/internal/widget/ActionBarView;)Landroid/widget/LinearLayout;

    #@77
    move-result-object v0

    #@78
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    #@7b
    .line 1665
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    #@7d
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarView;->-get9(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ScrollingTabContainerView;

    #@80
    move-result-object v0

    #@81
    if-eqz v0, :cond_3

    #@83
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    #@85
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarView;->-get9(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ScrollingTabContainerView;

    #@88
    move-result-object v0

    #@89
    invoke-virtual {v0, v3}, Lcom/android/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    #@8c
    .line 1666
    :cond_3
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    #@8e
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarView;->-get8(Lcom/android/internal/widget/ActionBarView;)Landroid/widget/Spinner;

    #@91
    move-result-object v0

    #@92
    if-eqz v0, :cond_4

    #@94
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    #@96
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarView;->-get8(Lcom/android/internal/widget/ActionBarView;)Landroid/widget/Spinner;

    #@99
    move-result-object v0

    #@9a
    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setVisibility(I)V

    #@9d
    .line 1667
    :cond_4
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    #@9f
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarView;->-get0(Lcom/android/internal/widget/ActionBarView;)Landroid/view/View;

    #@a2
    move-result-object v0

    #@a3
    if-eqz v0, :cond_5

    #@a5
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    #@a7
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarView;->-get0(Lcom/android/internal/widget/ActionBarView;)Landroid/view/View;

    #@aa
    move-result-object v0

    #@ab
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    #@ae
    .line 1668
    :cond_5
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    #@b0
    invoke-static {v0, v4, v4}, Lcom/android/internal/widget/ActionBarView;->-wrap1(Lcom/android/internal/widget/ActionBarView;ZZ)V

    #@b3
    .line 1669
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    #@b5
    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->requestLayout()V

    #@b8
    .line 1670
    invoke-virtual {p2, v5}, Lcom/android/internal/view/menu/MenuItemImpl;->setActionViewExpanded(Z)V

    #@bb
    .line 1672
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    #@bd
    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    #@bf
    instance-of v0, v0, Landroid/view/CollapsibleActionView;

    #@c1
    if-eqz v0, :cond_6

    #@c3
    .line 1673
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    #@c5
    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    #@c7
    check-cast v0, Landroid/view/CollapsibleActionView;

    #@c9
    invoke-interface {v0}, Landroid/view/CollapsibleActionView;->onActionViewExpanded()V

    #@cc
    .line 1676
    :cond_6
    return v5
.end method

.method public flagActionItems()Z
    .locals 1

    #@0
    .prologue
    .line 1648
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getId()I
    .locals 1

    #@0
    .prologue
    .line 1716
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;
    .locals 1
    .param p1, "root"    # Landroid/view/ViewGroup;

    #@0
    .prologue
    .line 1606
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    #@0
    .prologue
    .line 1598
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1599
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@a
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    #@c
    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->collapseItemActionView(Lcom/android/internal/view/menu/MenuItemImpl;)Z

    #@f
    .line 1601
    :cond_0
    iput-object p2, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@11
    .line 1596
    return-void
.end method

.method public onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V
    .locals 0
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    #@0
    .prologue
    .line 1643
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Parcelable;

    #@0
    .prologue
    .line 1725
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    #@0
    .prologue
    .line 1721
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z
    .locals 1
    .param p1, "subMenu"    # Lcom/android/internal/view/menu/SubMenuBuilder;

    #@0
    .prologue
    .line 1639
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V
    .locals 0
    .param p1, "cb"    # Lcom/android/internal/view/menu/MenuPresenter$Callback;

    #@0
    .prologue
    .line 1634
    return-void
.end method

.method public updateMenuView(Z)V
    .locals 6
    .param p1, "cleared"    # Z

    #@0
    .prologue
    .line 1612
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    #@2
    if-eqz v4, :cond_1

    #@4
    .line 1613
    const/4 v1, 0x0

    #@5
    .line 1615
    .local v1, "found":Z
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@7
    if-eqz v4, :cond_0

    #@9
    .line 1616
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@b
    invoke-virtual {v4}, Lcom/android/internal/view/menu/MenuBuilder;->size()I

    #@e
    move-result v0

    #@f
    .line 1617
    .local v0, "count":I
    const/4 v2, 0x0

    #@10
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    #@12
    .line 1618
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@14
    invoke-virtual {v4, v2}, Lcom/android/internal/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    #@17
    move-result-object v3

    #@18
    .line 1619
    .local v3, "item":Landroid/view/MenuItem;
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    #@1a
    if-ne v3, v4, :cond_2

    #@1c
    .line 1620
    const/4 v1, 0x1

    #@1d
    .line 1626
    .end local v0    # "count":I
    .end local v2    # "i":I
    .end local v3    # "item":Landroid/view/MenuItem;
    :cond_0
    if-nez v1, :cond_1

    #@1f
    .line 1628
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@21
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    #@23
    invoke-virtual {p0, v4, v5}, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->collapseItemActionView(Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuItemImpl;)Z

    #@26
    .line 1610
    .end local v1    # "found":Z
    :cond_1
    return-void

    #@27
    .line 1617
    .restart local v0    # "count":I
    .restart local v1    # "found":Z
    .restart local v2    # "i":I
    .restart local v3    # "item":Landroid/view/MenuItem;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    #@29
    goto :goto_0
.end method

.class Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;
.super Ljava/lang/Object;
.source "Toolbar.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuPresenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Toolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExpandedActionViewMenuPresenter"
.end annotation


# instance fields
.field mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

.field mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field final synthetic this$0:Landroid/widget/Toolbar;


# direct methods
.method private constructor <init>(Landroid/widget/Toolbar;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/Toolbar;

    #@0
    .prologue
    .line 1932
    iput-object p1, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/widget/Toolbar;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/Toolbar;Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/Toolbar;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;-><init>(Landroid/widget/Toolbar;)V

    #@3
    return-void
.end method


# virtual methods
.method public collapseItemActionView(Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 3
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 2023
    iget-object v0, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/widget/Toolbar;

    #@3
    iget-object v0, v0, Landroid/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    #@5
    instance-of v0, v0, Landroid/view/CollapsibleActionView;

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 2024
    iget-object v0, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/widget/Toolbar;

    #@b
    iget-object v0, v0, Landroid/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    #@d
    check-cast v0, Landroid/view/CollapsibleActionView;

    #@f
    invoke-interface {v0}, Landroid/view/CollapsibleActionView;->onActionViewCollapsed()V

    #@12
    .line 2027
    :cond_0
    iget-object v0, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/widget/Toolbar;

    #@14
    iget-object v1, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/widget/Toolbar;

    #@16
    iget-object v1, v1, Landroid/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    #@18
    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->removeView(Landroid/view/View;)V

    #@1b
    .line 2028
    iget-object v0, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/widget/Toolbar;

    #@1d
    iget-object v1, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/widget/Toolbar;

    #@1f
    invoke-static {v1}, Landroid/widget/Toolbar;->-get1(Landroid/widget/Toolbar;)Landroid/widget/ImageButton;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->removeView(Landroid/view/View;)V

    #@26
    .line 2029
    iget-object v0, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/widget/Toolbar;

    #@28
    iput-object v2, v0, Landroid/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    #@2a
    .line 2031
    iget-object v0, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/widget/Toolbar;

    #@2c
    invoke-virtual {v0}, Landroid/widget/Toolbar;->addChildrenForExpandedActionView()V

    #@2f
    .line 2032
    iput-object v2, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    #@31
    .line 2033
    iget-object v0, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/widget/Toolbar;

    #@33
    invoke-virtual {v0}, Landroid/widget/Toolbar;->requestLayout()V

    #@36
    .line 2034
    const/4 v0, 0x0

    #@37
    invoke-virtual {p2, v0}, Lcom/android/internal/view/menu/MenuItemImpl;->setActionViewExpanded(Z)V

    #@3a
    .line 2036
    const/4 v0, 0x1

    #@3b
    return v0
.end method

.method public expandItemActionView(Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 4
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 1994
    iget-object v1, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/widget/Toolbar;

    #@3
    invoke-static {v1}, Landroid/widget/Toolbar;->-wrap0(Landroid/widget/Toolbar;)V

    #@6
    .line 1995
    iget-object v1, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/widget/Toolbar;

    #@8
    invoke-static {v1}, Landroid/widget/Toolbar;->-get1(Landroid/widget/Toolbar;)Landroid/widget/ImageButton;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    #@f
    move-result-object v1

    #@10
    iget-object v2, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/widget/Toolbar;

    #@12
    if-eq v1, v2, :cond_0

    #@14
    .line 1996
    iget-object v1, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/widget/Toolbar;

    #@16
    iget-object v2, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/widget/Toolbar;

    #@18
    invoke-static {v2}, Landroid/widget/Toolbar;->-get1(Landroid/widget/Toolbar;)Landroid/widget/ImageButton;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v1, v2}, Landroid/widget/Toolbar;->addView(Landroid/view/View;)V

    #@1f
    .line 1998
    :cond_0
    iget-object v1, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/widget/Toolbar;

    #@21
    invoke-virtual {p2}, Lcom/android/internal/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    #@24
    move-result-object v2

    #@25
    iput-object v2, v1, Landroid/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    #@27
    .line 1999
    iput-object p2, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    #@29
    .line 2000
    iget-object v1, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/widget/Toolbar;

    #@2b
    iget-object v1, v1, Landroid/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    #@2d
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@30
    move-result-object v1

    #@31
    iget-object v2, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/widget/Toolbar;

    #@33
    if-eq v1, v2, :cond_1

    #@35
    .line 2001
    iget-object v1, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/widget/Toolbar;

    #@37
    invoke-virtual {v1}, Landroid/widget/Toolbar;->generateDefaultLayoutParams()Landroid/widget/Toolbar$LayoutParams;

    #@3a
    move-result-object v0

    #@3b
    .line 2002
    .local v0, "lp":Landroid/widget/Toolbar$LayoutParams;
    iget-object v1, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/widget/Toolbar;

    #@3d
    invoke-static {v1}, Landroid/widget/Toolbar;->-get0(Landroid/widget/Toolbar;)I

    #@40
    move-result v1

    #@41
    and-int/lit8 v1, v1, 0x70

    #@43
    const v2, 0x800003

    #@46
    or-int/2addr v1, v2

    #@47
    iput v1, v0, Landroid/widget/Toolbar$LayoutParams;->gravity:I

    #@49
    .line 2003
    const/4 v1, 0x2

    #@4a
    iput v1, v0, Landroid/widget/Toolbar$LayoutParams;->mViewType:I

    #@4c
    .line 2004
    iget-object v1, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/widget/Toolbar;

    #@4e
    iget-object v1, v1, Landroid/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    #@50
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@53
    .line 2005
    iget-object v1, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/widget/Toolbar;

    #@55
    iget-object v2, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/widget/Toolbar;

    #@57
    iget-object v2, v2, Landroid/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    #@59
    invoke-virtual {v1, v2}, Landroid/widget/Toolbar;->addView(Landroid/view/View;)V

    #@5c
    .line 2008
    .end local v0    # "lp":Landroid/widget/Toolbar$LayoutParams;
    :cond_1
    iget-object v1, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/widget/Toolbar;

    #@5e
    invoke-virtual {v1}, Landroid/widget/Toolbar;->removeChildrenForExpandedActionView()V

    #@61
    .line 2009
    iget-object v1, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/widget/Toolbar;

    #@63
    invoke-virtual {v1}, Landroid/widget/Toolbar;->requestLayout()V

    #@66
    .line 2010
    invoke-virtual {p2, v3}, Lcom/android/internal/view/menu/MenuItemImpl;->setActionViewExpanded(Z)V

    #@69
    .line 2012
    iget-object v1, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/widget/Toolbar;

    #@6b
    iget-object v1, v1, Landroid/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    #@6d
    instance-of v1, v1, Landroid/view/CollapsibleActionView;

    #@6f
    if-eqz v1, :cond_2

    #@71
    .line 2013
    iget-object v1, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/widget/Toolbar;

    #@73
    iget-object v1, v1, Landroid/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    #@75
    check-cast v1, Landroid/view/CollapsibleActionView;

    #@77
    invoke-interface {v1}, Landroid/view/CollapsibleActionView;->onActionViewExpanded()V

    #@7a
    .line 2016
    :cond_2
    return v3
.end method

.method public flagActionItems()Z
    .locals 1

    #@0
    .prologue
    .line 1989
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getId()I
    .locals 1

    #@0
    .prologue
    .line 2041
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;
    .locals 1
    .param p1, "root"    # Landroid/view/ViewGroup;

    #@0
    .prologue
    .line 1947
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
    .line 1939
    iget-object v0, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1940
    iget-object v0, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@a
    iget-object v1, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    #@c
    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->collapseItemActionView(Lcom/android/internal/view/menu/MenuItemImpl;)Z

    #@f
    .line 1942
    :cond_0
    iput-object p2, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@11
    .line 1937
    return-void
.end method

.method public onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V
    .locals 0
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    #@0
    .prologue
    .line 1984
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Parcelable;

    #@0
    .prologue
    .line 2050
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    #@0
    .prologue
    .line 2046
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z
    .locals 1
    .param p1, "subMenu"    # Lcom/android/internal/view/menu/SubMenuBuilder;

    #@0
    .prologue
    .line 1980
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V
    .locals 0
    .param p1, "cb"    # Lcom/android/internal/view/menu/MenuPresenter$Callback;

    #@0
    .prologue
    .line 1975
    return-void
.end method

.method public updateMenuView(Z)V
    .locals 6
    .param p1, "cleared"    # Z

    #@0
    .prologue
    .line 1953
    iget-object v4, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    #@2
    if-eqz v4, :cond_1

    #@4
    .line 1954
    const/4 v1, 0x0

    #@5
    .line 1956
    .local v1, "found":Z
    iget-object v4, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@7
    if-eqz v4, :cond_0

    #@9
    .line 1957
    iget-object v4, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@b
    invoke-virtual {v4}, Lcom/android/internal/view/menu/MenuBuilder;->size()I

    #@e
    move-result v0

    #@f
    .line 1958
    .local v0, "count":I
    const/4 v2, 0x0

    #@10
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    #@12
    .line 1959
    iget-object v4, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@14
    invoke-virtual {v4, v2}, Lcom/android/internal/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    #@17
    move-result-object v3

    #@18
    .line 1960
    .local v3, "item":Landroid/view/MenuItem;
    iget-object v4, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    #@1a
    if-ne v3, v4, :cond_2

    #@1c
    .line 1961
    const/4 v1, 0x1

    #@1d
    .line 1967
    .end local v0    # "count":I
    .end local v2    # "i":I
    .end local v3    # "item":Landroid/view/MenuItem;
    :cond_0
    if-nez v1, :cond_1

    #@1f
    .line 1969
    iget-object v4, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@21
    iget-object v5, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    #@23
    invoke-virtual {p0, v4, v5}, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->collapseItemActionView(Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuItemImpl;)Z

    #@26
    .line 1951
    .end local v1    # "found":Z
    :cond_1
    return-void

    #@27
    .line 1958
    .restart local v0    # "count":I
    .restart local v1    # "found":Z
    .restart local v2    # "i":I
    .restart local v3    # "item":Landroid/view/MenuItem;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    #@29
    goto :goto_0
.end method

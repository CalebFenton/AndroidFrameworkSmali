.class final Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
.super Ljava/lang/Object;
.source "PhoneWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/PhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PanelFeatureState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;
    }
.end annotation


# instance fields
.field background:I

.field createdPanelView:Landroid/view/View;

.field decorView:Lcom/android/internal/policy/PhoneWindow$DecorView;

.field featureId:I

.field frozenActionViewState:Landroid/os/Bundle;

.field frozenMenuState:Landroid/os/Bundle;

.field fullBackground:I

.field gravity:I

.field iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

.field isCompact:Z

.field isHandled:Z

.field isInExpandedMode:Z

.field isOpen:Z

.field isPrepared:Z

.field listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

.field listPresenterTheme:I

.field menu:Lcom/android/internal/view/menu/MenuBuilder;

.field public qwertyMode:Z

.field refreshDecorView:Z

.field refreshMenuContent:Z

.field shownPanelView:Landroid/view/View;

.field wasLastExpanded:Z

.field wasLastOpen:Z

.field windowAnimations:I

.field x:I

.field y:I


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "featureId"    # I

    #@0
    .prologue
    .line 4714
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 4715
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    #@5
    .line 4717
    const/4 v0, 0x0

    #@6
    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshDecorView:Z

    #@8
    .line 4714
    return-void
.end method


# virtual methods
.method applyFrozenState()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 4850
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    #@3
    if-eqz v0, :cond_0

    #@5
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->frozenMenuState:Landroid/os/Bundle;

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 4851
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    #@b
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->frozenMenuState:Landroid/os/Bundle;

    #@d
    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->restorePresenterStates(Landroid/os/Bundle;)V

    #@10
    .line 4852
    iput-object v2, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->frozenMenuState:Landroid/os/Bundle;

    #@12
    .line 4849
    :cond_0
    return-void
.end method

.method public clearMenuPresenters()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 4739
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 4740
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    #@7
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    #@9
    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    #@c
    .line 4741
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    #@e
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    #@10
    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    #@13
    .line 4743
    :cond_0
    iput-object v2, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    #@15
    .line 4744
    iput-object v2, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    #@17
    .line 4738
    return-void
.end method

.method getIconMenuView(Landroid/content/Context;Lcom/android/internal/view/menu/MenuPresenter$Callback;)Lcom/android/internal/view/menu/MenuView;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cb"    # Lcom/android/internal/view/menu/MenuPresenter$Callback;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 4802
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    #@3
    if-nez v1, :cond_0

    #@5
    return-object v2

    #@6
    .line 4804
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    #@8
    if-nez v1, :cond_1

    #@a
    .line 4805
    new-instance v1, Lcom/android/internal/view/menu/IconMenuPresenter;

    #@c
    invoke-direct {v1, p1}, Lcom/android/internal/view/menu/IconMenuPresenter;-><init>(Landroid/content/Context;)V

    #@f
    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    #@11
    .line 4806
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    #@13
    invoke-virtual {v1, p2}, Lcom/android/internal/view/menu/IconMenuPresenter;->setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    #@16
    .line 4807
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    #@18
    const v2, 0x1020049

    #@1b
    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/IconMenuPresenter;->setId(I)V

    #@1e
    .line 4808
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    #@20
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    #@22
    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    #@25
    .line 4811
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    #@27
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@29
    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/IconMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    #@2c
    move-result-object v0

    #@2d
    .line 4813
    .local v0, "result":Lcom/android/internal/view/menu/MenuView;
    return-object v0
.end method

.method getListMenuView(Landroid/content/Context;Lcom/android/internal/view/menu/MenuPresenter$Callback;)Lcom/android/internal/view/menu/MenuView;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cb"    # Lcom/android/internal/view/menu/MenuPresenter$Callback;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 4778
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    #@3
    if-nez v1, :cond_0

    #@5
    return-object v2

    #@6
    .line 4780
    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isCompact:Z

    #@8
    if-nez v1, :cond_1

    #@a
    .line 4781
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->getIconMenuView(Landroid/content/Context;Lcom/android/internal/view/menu/MenuPresenter$Callback;)Lcom/android/internal/view/menu/MenuView;

    #@d
    .line 4784
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    #@f
    if-nez v1, :cond_2

    #@11
    .line 4785
    new-instance v1, Lcom/android/internal/view/menu/ListMenuPresenter;

    #@13
    .line 4786
    iget v2, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->listPresenterTheme:I

    #@15
    const v3, 0x1090076

    #@18
    .line 4785
    invoke-direct {v1, v3, v2}, Lcom/android/internal/view/menu/ListMenuPresenter;-><init>(II)V

    #@1b
    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    #@1d
    .line 4787
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    #@1f
    invoke-virtual {v1, p2}, Lcom/android/internal/view/menu/ListMenuPresenter;->setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    #@22
    .line 4788
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    #@24
    const v2, 0x102004a

    #@27
    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/ListMenuPresenter;->setId(I)V

    #@2a
    .line 4789
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    #@2c
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    #@2e
    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    #@31
    .line 4792
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    #@33
    if-eqz v1, :cond_3

    #@35
    .line 4793
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    #@37
    .line 4794
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    #@39
    invoke-virtual {v2}, Lcom/android/internal/view/menu/IconMenuPresenter;->getNumActualItemsShown()I

    #@3c
    move-result v2

    #@3d
    .line 4793
    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/ListMenuPresenter;->setItemIndexOffset(I)V

    #@40
    .line 4796
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    #@42
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@44
    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/ListMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    #@47
    move-result-object v0

    #@48
    .line 4798
    .local v0, "result":Lcom/android/internal/view/menu/MenuView;
    return-object v0
.end method

.method public hasPanelItems()Z
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 4725
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    #@4
    if-nez v0, :cond_0

    #@6
    return v2

    #@7
    .line 4726
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    #@9
    if-eqz v0, :cond_1

    #@b
    return v1

    #@c
    .line 4728
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isCompact:Z

    #@e
    if-nez v0, :cond_2

    #@10
    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    #@12
    if-eqz v0, :cond_4

    #@14
    .line 4729
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    #@16
    invoke-virtual {v0}, Lcom/android/internal/view/menu/ListMenuPresenter;->getAdapter()Landroid/widget/ListAdapter;

    #@19
    move-result-object v0

    #@1a
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    #@1d
    move-result v0

    #@1e
    if-lez v0, :cond_3

    #@20
    move v0, v1

    #@21
    :goto_0
    return v0

    #@22
    :cond_3
    move v0, v2

    #@23
    goto :goto_0

    #@24
    .line 4731
    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    #@26
    check-cast v0, Landroid/view/ViewGroup;

    #@28
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    #@2b
    move-result v0

    #@2c
    if-lez v0, :cond_5

    #@2e
    :goto_1
    return v1

    #@2f
    :cond_5
    move v1, v2

    #@30
    goto :goto_1
.end method

.method public isInListMode()Z
    .locals 1

    #@0
    .prologue
    .line 4721
    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    #@2
    if-nez v0, :cond_0

    #@4
    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isCompact:Z

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    const/4 v0, 0x1

    #@8
    goto :goto_0
.end method

.method onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    move-object v0, p1

    #@2
    .line 4831
    check-cast v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;

    #@4
    .line 4832
    .local v0, "savedState":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;
    iget v1, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;->featureId:I

    #@6
    iput v1, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    #@8
    .line 4833
    iget-boolean v1, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;->isOpen:Z

    #@a
    iput-boolean v1, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->wasLastOpen:Z

    #@c
    .line 4834
    iget-boolean v1, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;->isInExpandedMode:Z

    #@e
    iput-boolean v1, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->wasLastExpanded:Z

    #@10
    .line 4835
    iget-object v1, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;->menuState:Landroid/os/Bundle;

    #@12
    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->frozenMenuState:Landroid/os/Bundle;

    #@14
    .line 4844
    iput-object v2, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    #@16
    .line 4845
    iput-object v2, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    #@18
    .line 4846
    iput-object v2, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@1a
    .line 4830
    return-void
.end method

.method onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 4817
    new-instance v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;

    #@3
    invoke-direct {v0, v1}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;-><init>(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;)V

    #@6
    .line 4818
    .local v0, "savedState":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;
    iget v1, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    #@8
    iput v1, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;->featureId:I

    #@a
    .line 4819
    iget-boolean v1, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    #@c
    iput-boolean v1, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;->isOpen:Z

    #@e
    .line 4820
    iget-boolean v1, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    #@10
    iput-boolean v1, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;->isInExpandedMode:Z

    #@12
    .line 4822
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    #@14
    if-eqz v1, :cond_0

    #@16
    .line 4823
    new-instance v1, Landroid/os/Bundle;

    #@18
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    #@1b
    iput-object v1, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;->menuState:Landroid/os/Bundle;

    #@1d
    .line 4824
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    #@1f
    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;->menuState:Landroid/os/Bundle;

    #@21
    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/MenuBuilder;->savePresenterStates(Landroid/os/Bundle;)V

    #@24
    .line 4827
    :cond_0
    return-object v0
.end method

.method setMenu(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 2
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    #@0
    .prologue
    .line 4764
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    #@2
    if-ne p1, v0, :cond_0

    #@4
    return-void

    #@5
    .line 4766
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    #@7
    if-eqz v0, :cond_1

    #@9
    .line 4767
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    #@b
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    #@d
    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    #@10
    .line 4768
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    #@12
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    #@14
    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    #@17
    .line 4770
    :cond_1
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    #@19
    .line 4771
    if-eqz p1, :cond_3

    #@1b
    .line 4772
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    #@1d
    if-eqz v0, :cond_2

    #@1f
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    #@21
    invoke-virtual {p1, v0}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    #@24
    .line 4773
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    #@26
    if-eqz v0, :cond_3

    #@28
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    #@2a
    invoke-virtual {p1, v0}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    #@2d
    .line 4763
    :cond_3
    return-void
.end method

.method setStyle(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 4748
    sget-object v1, Lcom/android/internal/R$styleable;->Theme:[I

    #@3
    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    #@6
    move-result-object v0

    #@7
    .line 4750
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v1, 0x2e

    #@9
    .line 4749
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@c
    move-result v1

    #@d
    iput v1, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->background:I

    #@f
    .line 4752
    const/16 v1, 0x2f

    #@11
    .line 4751
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@14
    move-result v1

    #@15
    iput v1, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->fullBackground:I

    #@17
    .line 4754
    const/16 v1, 0x5d

    #@19
    .line 4753
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@1c
    move-result v1

    #@1d
    iput v1, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->windowAnimations:I

    #@1f
    .line 4756
    const/16 v1, 0x121

    #@21
    .line 4755
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@24
    move-result v1

    #@25
    iput-boolean v1, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isCompact:Z

    #@27
    .line 4758
    const/16 v1, 0x123

    #@29
    .line 4759
    const v2, 0x1030477

    #@2c
    .line 4757
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@2f
    move-result v1

    #@30
    iput v1, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->listPresenterTheme:I

    #@32
    .line 4760
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@35
    .line 4747
    return-void
.end method

.class Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;
.super Lcom/android/internal/view/menu/MenuPopupHelper;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionButtonSubmenu"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;Lcom/android/internal/view/menu/SubMenuBuilder;Landroid/view/View;)V
    .locals 7
    .param p1, "this$0"    # Landroid/widget/ActionMenuPresenter;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "subMenu"    # Lcom/android/internal/view/menu/SubMenuBuilder;
    .param p4, "anchorView"    # Landroid/view/View;

    #@0
    .prologue
    .line 951
    iput-object p1, p0, Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;->this$0:Landroid/widget/ActionMenuPresenter;

    #@2
    .line 952
    const/4 v4, 0x0

    #@3
    .line 953
    const v5, 0x1010444

    #@6
    move-object v0, p0

    #@7
    move-object v1, p2

    #@8
    move-object v2, p3

    #@9
    move-object v3, p4

    #@a
    .line 952
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;ZI)V

    #@d
    .line 955
    invoke-virtual {p3}, Lcom/android/internal/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    #@10
    move-result-object v6

    #@11
    check-cast v6, Lcom/android/internal/view/menu/MenuItemImpl;

    #@13
    .line 956
    .local v6, "item":Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v6}, Lcom/android/internal/view/menu/MenuItemImpl;->isActionButton()Z

    #@16
    move-result v0

    #@17
    if-nez v0, :cond_0

    #@19
    .line 958
    invoke-static {p1}, Landroid/widget/ActionMenuPresenter;->-get4(Landroid/widget/ActionMenuPresenter;)Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    #@1c
    move-result-object v0

    #@1d
    if-nez v0, :cond_1

    #@1f
    invoke-static {p1}, Landroid/widget/ActionMenuPresenter;->-get3(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuView;

    #@22
    move-result-object v0

    #@23
    check-cast v0, Landroid/view/View;

    #@25
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/MenuPopupHelper;->setAnchorView(Landroid/view/View;)V

    #@28
    .line 961
    :cond_0
    iget-object v0, p1, Landroid/widget/ActionMenuPresenter;->mPopupPresenterCallback:Landroid/widget/ActionMenuPresenter$PopupPresenterCallback;

    #@2a
    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/MenuPopupHelper;->setPresenterCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    #@2d
    .line 951
    return-void

    #@2e
    .line 958
    :cond_1
    invoke-static {p1}, Landroid/widget/ActionMenuPresenter;->-get4(Landroid/widget/ActionMenuPresenter;)Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    #@31
    move-result-object v0

    #@32
    goto :goto_0
.end method


# virtual methods
.method protected onDismiss()V
    .locals 2

    #@0
    .prologue
    .line 966
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;->this$0:Landroid/widget/ActionMenuPresenter;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-static {v0, v1}, Landroid/widget/ActionMenuPresenter;->-set0(Landroid/widget/ActionMenuPresenter;Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;)Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;

    #@6
    .line 967
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;->this$0:Landroid/widget/ActionMenuPresenter;

    #@8
    const/4 v1, 0x0

    #@9
    iput v1, v0, Landroid/widget/ActionMenuPresenter;->mOpenSubMenuId:I

    #@b
    .line 969
    invoke-super {p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->onDismiss()V

    #@e
    .line 965
    return-void
.end method

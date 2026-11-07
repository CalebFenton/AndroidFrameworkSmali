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
.field final synthetic blacklist this$0:Landroid/widget/ActionMenuPresenter;


# direct methods
.method public constructor blacklist <init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;Lcom/android/internal/view/menu/SubMenuBuilder;Landroid/view/View;)V
    .registers 11
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "subMenu"    # Lcom/android/internal/view/menu/SubMenuBuilder;
    .param p4, "anchorView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 958
    iput-object p1, p0, Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;->this$0:Landroid/widget/ActionMenuPresenter;

    .line 959
    const/4 v4, 0x0

    const v5, 0x1010444

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    .end local p2    # "context":Landroid/content/Context;
    .end local p3    # "subMenu":Lcom/android/internal/view/menu/SubMenuBuilder;
    .end local p4    # "anchorView":Landroid/view/View;
    .local v1, "context":Landroid/content/Context;
    .local v2, "subMenu":Lcom/android/internal/view/menu/SubMenuBuilder;
    .local v3, "anchorView":Landroid/view/View;
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;ZI)V

    .line 962
    invoke-virtual {v2}, Lcom/android/internal/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object p2

    check-cast p2, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 963
    .local p2, "item":Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {p2}, Lcom/android/internal/view/menu/MenuItemImpl;->isActionButton()Z

    move-result p3

    if-nez p3, :cond_2d

    .line 965
    invoke-static {p1}, Landroid/widget/ActionMenuPresenter;->-$$Nest$fgetmOverflowButton(Landroid/widget/ActionMenuPresenter;)Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    move-result-object p3

    if-nez p3, :cond_26

    # getter for: Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;
    invoke-static {p1}, Landroid/widget/ActionMenuPresenter;->access$500(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuView;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    goto :goto_2a

    :cond_26
    invoke-static {p1}, Landroid/widget/ActionMenuPresenter;->-$$Nest$fgetmOverflowButton(Landroid/widget/ActionMenuPresenter;)Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    move-result-object p3

    :goto_2a
    invoke-virtual {p0, p3}, Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;->setAnchorView(Landroid/view/View;)V

    .line 968
    :cond_2d
    iget-object p1, p1, Landroid/widget/ActionMenuPresenter;->mPopupPresenterCallback:Landroid/widget/ActionMenuPresenter$PopupPresenterCallback;

    invoke-virtual {p0, p1}, Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;->setPresenterCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 969
    return-void
.end method


# virtual methods
.method protected greylist-max-o onDismiss()V
    .registers 3

    .line 973
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;->this$0:Landroid/widget/ActionMenuPresenter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/widget/ActionMenuPresenter;->-$$Nest$fputmActionButtonPopup(Landroid/widget/ActionMenuPresenter;Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;)V

    .line 974
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;->this$0:Landroid/widget/ActionMenuPresenter;

    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/ActionMenuPresenter;->mOpenSubMenuId:I

    .line 976
    invoke-super {p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->onDismiss()V

    .line 977
    return-void
.end method

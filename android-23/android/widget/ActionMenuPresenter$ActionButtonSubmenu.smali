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
.field private mSubMenu:Lcom/android/internal/view/menu/SubMenuBuilder;

.field final synthetic this$0:Landroid/widget/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;Lcom/android/internal/view/menu/SubMenuBuilder;)V
    .locals 11
    .param p1, "this$0"    # Landroid/widget/ActionMenuPresenter;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "subMenu"    # Lcom/android/internal/view/menu/SubMenuBuilder;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 931
    iput-object p1, p0, Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;->this$0:Landroid/widget/ActionMenuPresenter;

    #@3
    .line 932
    const/4 v4, 0x0

    #@4
    .line 933
    const v5, 0x1010444

    #@7
    move-object v0, p0

    #@8
    move-object v1, p2

    #@9
    move-object v2, p3

    #@a
    .line 932
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;ZI)V

    #@d
    .line 934
    iput-object p3, p0, Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;->mSubMenu:Lcom/android/internal/view/menu/SubMenuBuilder;

    #@f
    .line 936
    invoke-virtual {p3}, Lcom/android/internal/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    #@12
    move-result-object v9

    #@13
    check-cast v9, Lcom/android/internal/view/menu/MenuItemImpl;

    #@15
    .line 937
    .local v9, "item":Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v9}, Lcom/android/internal/view/menu/MenuItemImpl;->isActionButton()Z

    #@18
    move-result v0

    #@19
    if-nez v0, :cond_0

    #@1b
    .line 939
    invoke-static {p1}, Landroid/widget/ActionMenuPresenter;->-get4(Landroid/widget/ActionMenuPresenter;)Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    #@1e
    move-result-object v0

    #@1f
    if-nez v0, :cond_2

    #@21
    invoke-static {p1}, Landroid/widget/ActionMenuPresenter;->-get3(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuView;

    #@24
    move-result-object v0

    #@25
    check-cast v0, Landroid/view/View;

    #@27
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;->setAnchorView(Landroid/view/View;)V

    #@2a
    .line 942
    :cond_0
    iget-object v0, p1, Landroid/widget/ActionMenuPresenter;->mPopupPresenterCallback:Landroid/widget/ActionMenuPresenter$PopupPresenterCallback;

    #@2c
    invoke-virtual {p0, v0}, Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;->setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    #@2f
    .line 944
    const/4 v10, 0x0

    #@30
    .line 945
    .local v10, "preserveIconSpacing":Z
    invoke-virtual {p3}, Lcom/android/internal/view/menu/SubMenuBuilder;->size()I

    #@33
    move-result v7

    #@34
    .line 946
    .local v7, "count":I
    const/4 v8, 0x0

    #@35
    .local v8, "i":I
    :goto_1
    if-ge v8, v7, :cond_1

    #@37
    .line 947
    invoke-virtual {p3, v8}, Lcom/android/internal/view/menu/SubMenuBuilder;->getItem(I)Landroid/view/MenuItem;

    #@3a
    move-result-object v6

    #@3b
    .line 948
    .local v6, "childItem":Landroid/view/MenuItem;
    invoke-interface {v6}, Landroid/view/MenuItem;->isVisible()Z

    #@3e
    move-result v0

    #@3f
    if-eqz v0, :cond_3

    #@41
    invoke-interface {v6}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    #@44
    move-result-object v0

    #@45
    if-eqz v0, :cond_3

    #@47
    .line 949
    const/4 v10, 0x1

    #@48
    .line 953
    .end local v6    # "childItem":Landroid/view/MenuItem;
    :cond_1
    invoke-virtual {p0, v10}, Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;->setForceShowIcon(Z)V

    #@4b
    .line 931
    return-void

    #@4c
    .line 939
    .end local v7    # "count":I
    .end local v8    # "i":I
    .end local v10    # "preserveIconSpacing":Z
    :cond_2
    invoke-static {p1}, Landroid/widget/ActionMenuPresenter;->-get4(Landroid/widget/ActionMenuPresenter;)Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    #@4f
    move-result-object v0

    #@50
    goto :goto_0

    #@51
    .line 946
    .restart local v6    # "childItem":Landroid/view/MenuItem;
    .restart local v7    # "count":I
    .restart local v8    # "i":I
    .restart local v10    # "preserveIconSpacing":Z
    :cond_3
    add-int/lit8 v8, v8, 0x1

    #@53
    goto :goto_1
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    #@0
    .prologue
    .line 958
    invoke-super {p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->onDismiss()V

    #@3
    .line 959
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;->this$0:Landroid/widget/ActionMenuPresenter;

    #@5
    const/4 v1, 0x0

    #@6
    invoke-static {v0, v1}, Landroid/widget/ActionMenuPresenter;->-set0(Landroid/widget/ActionMenuPresenter;Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;)Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;

    #@9
    .line 960
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;->this$0:Landroid/widget/ActionMenuPresenter;

    #@b
    const/4 v1, 0x0

    #@c
    iput v1, v0, Landroid/widget/ActionMenuPresenter;->mOpenSubMenuId:I

    #@e
    .line 957
    return-void
.end method

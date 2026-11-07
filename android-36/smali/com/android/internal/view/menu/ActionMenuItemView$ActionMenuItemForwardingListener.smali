.class Lcom/android/internal/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;
.super Landroid/widget/ForwardingListener;
.source "ActionMenuItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/menu/ActionMenuItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionMenuItemForwardingListener"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/view/menu/ActionMenuItemView;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/view/menu/ActionMenuItemView;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 314
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->this$0:Lcom/android/internal/view/menu/ActionMenuItemView;

    .line 315
    invoke-direct {p0, p1}, Landroid/widget/ForwardingListener;-><init>(Landroid/view/View;)V

    .line 316
    return-void
.end method


# virtual methods
.method public greylist-max-o getPopup()Lcom/android/internal/view/menu/ShowableListMenu;
    .registers 2

    .line 320
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->this$0:Lcom/android/internal/view/menu/ActionMenuItemView;

    invoke-static {v0}, Lcom/android/internal/view/menu/ActionMenuItemView;->-$$Nest$fgetmPopupCallback(Lcom/android/internal/view/menu/ActionMenuItemView;)Lcom/android/internal/view/menu/ActionMenuItemView$PopupCallback;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 321
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->this$0:Lcom/android/internal/view/menu/ActionMenuItemView;

    invoke-static {v0}, Lcom/android/internal/view/menu/ActionMenuItemView;->-$$Nest$fgetmPopupCallback(Lcom/android/internal/view/menu/ActionMenuItemView;)Lcom/android/internal/view/menu/ActionMenuItemView$PopupCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuItemView$PopupCallback;->getPopup()Lcom/android/internal/view/menu/ShowableListMenu;

    move-result-object v0

    return-object v0

    .line 323
    :cond_13
    const/4 v0, 0x0

    return-object v0
.end method

.method protected greylist-max-o onForwardingStarted()Z
    .registers 4

    .line 329
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->this$0:Lcom/android/internal/view/menu/ActionMenuItemView;

    invoke-static {v0}, Lcom/android/internal/view/menu/ActionMenuItemView;->-$$Nest$fgetmItemInvoker(Lcom/android/internal/view/menu/ActionMenuItemView;)Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->this$0:Lcom/android/internal/view/menu/ActionMenuItemView;

    invoke-static {v0}, Lcom/android/internal/view/menu/ActionMenuItemView;->-$$Nest$fgetmItemInvoker(Lcom/android/internal/view/menu/ActionMenuItemView;)Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->this$0:Lcom/android/internal/view/menu/ActionMenuItemView;

    invoke-static {v2}, Lcom/android/internal/view/menu/ActionMenuItemView;->-$$Nest$fgetmItemData(Lcom/android/internal/view/menu/ActionMenuItemView;)Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;->invokeItem(Lcom/android/internal/view/menu/MenuItemImpl;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 330
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->getPopup()Lcom/android/internal/view/menu/ShowableListMenu;

    move-result-object v0

    .line 331
    .local v0, "popup":Lcom/android/internal/view/menu/ShowableListMenu;
    if-eqz v0, :cond_28

    invoke-interface {v0}, Lcom/android/internal/view/menu/ShowableListMenu;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_28

    const/4 v1, 0x1

    :cond_28
    return v1

    .line 333
    .end local v0    # "popup":Lcom/android/internal/view/menu/ShowableListMenu;
    :cond_29
    return v1
.end method

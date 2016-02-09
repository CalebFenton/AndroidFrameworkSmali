.class Lcom/android/internal/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;
.super Landroid/widget/ListPopupWindow$ForwardingListener;
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
.field final synthetic this$0:Lcom/android/internal/view/menu/ActionMenuItemView;


# direct methods
.method public constructor <init>(Lcom/android/internal/view/menu/ActionMenuItemView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/view/menu/ActionMenuItemView;

    #@0
    .prologue
    .line 318
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->this$0:Lcom/android/internal/view/menu/ActionMenuItemView;

    #@2
    .line 319
    invoke-direct {p0, p1}, Landroid/widget/ListPopupWindow$ForwardingListener;-><init>(Landroid/view/View;)V

    #@5
    .line 318
    return-void
.end method


# virtual methods
.method public getPopup()Landroid/widget/ListPopupWindow;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 324
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->this$0:Lcom/android/internal/view/menu/ActionMenuItemView;

    #@3
    invoke-static {v0}, Lcom/android/internal/view/menu/ActionMenuItemView;->-get2(Lcom/android/internal/view/menu/ActionMenuItemView;)Lcom/android/internal/view/menu/ActionMenuItemView$PopupCallback;

    #@6
    move-result-object v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 325
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->this$0:Lcom/android/internal/view/menu/ActionMenuItemView;

    #@b
    invoke-static {v0}, Lcom/android/internal/view/menu/ActionMenuItemView;->-get2(Lcom/android/internal/view/menu/ActionMenuItemView;)Lcom/android/internal/view/menu/ActionMenuItemView$PopupCallback;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuItemView$PopupCallback;->getPopup()Landroid/widget/ListPopupWindow;

    #@12
    move-result-object v0

    #@13
    return-object v0

    #@14
    .line 327
    :cond_0
    return-object v1
.end method

.method protected onForwardingStarted()Z
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 333
    iget-object v2, p0, Lcom/android/internal/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->this$0:Lcom/android/internal/view/menu/ActionMenuItemView;

    #@3
    invoke-static {v2}, Lcom/android/internal/view/menu/ActionMenuItemView;->-get1(Lcom/android/internal/view/menu/ActionMenuItemView;)Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;

    #@6
    move-result-object v2

    #@7
    if-eqz v2, :cond_1

    #@9
    iget-object v2, p0, Lcom/android/internal/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->this$0:Lcom/android/internal/view/menu/ActionMenuItemView;

    #@b
    invoke-static {v2}, Lcom/android/internal/view/menu/ActionMenuItemView;->-get1(Lcom/android/internal/view/menu/ActionMenuItemView;)Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;

    #@e
    move-result-object v2

    #@f
    iget-object v3, p0, Lcom/android/internal/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->this$0:Lcom/android/internal/view/menu/ActionMenuItemView;

    #@11
    invoke-static {v3}, Lcom/android/internal/view/menu/ActionMenuItemView;->-get0(Lcom/android/internal/view/menu/ActionMenuItemView;)Lcom/android/internal/view/menu/MenuItemImpl;

    #@14
    move-result-object v3

    #@15
    invoke-interface {v2, v3}, Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;->invokeItem(Lcom/android/internal/view/menu/MenuItemImpl;)Z

    #@18
    move-result v2

    #@19
    if-eqz v2, :cond_1

    #@1b
    .line 334
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->getPopup()Landroid/widget/ListPopupWindow;

    #@1e
    move-result-object v0

    #@1f
    .line 335
    .local v0, "popup":Landroid/widget/ListPopupWindow;
    if-eqz v0, :cond_0

    #@21
    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    #@24
    move-result v1

    #@25
    :cond_0
    return v1

    #@26
    .line 337
    .end local v0    # "popup":Landroid/widget/ListPopupWindow;
    :cond_1
    return v1
.end method

.method protected onForwardingStopped()Z
    .locals 2

    #@0
    .prologue
    .line 342
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->getPopup()Landroid/widget/ListPopupWindow;

    #@3
    move-result-object v0

    #@4
    .line 343
    .local v0, "popup":Landroid/widget/ListPopupWindow;
    if-eqz v0, :cond_0

    #@6
    .line 344
    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    #@9
    .line 345
    const/4 v1, 0x1

    #@a
    return v1

    #@b
    .line 347
    :cond_0
    const/4 v1, 0x0

    #@c
    return v1
.end method

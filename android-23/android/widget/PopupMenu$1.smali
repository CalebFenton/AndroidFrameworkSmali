.class Landroid/widget/PopupMenu$1;
.super Landroid/widget/ListPopupWindow$ForwardingListener;
.source "PopupMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/PopupMenu;->getDragToOpenListener()Landroid/view/View$OnTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/PopupMenu;


# direct methods
.method constructor <init>(Landroid/widget/PopupMenu;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/PopupMenu;
    .param p2, "$anonymous0"    # Landroid/view/View;

    #@0
    .prologue
    .line 159
    iput-object p1, p0, Landroid/widget/PopupMenu$1;->this$0:Landroid/widget/PopupMenu;

    #@2
    invoke-direct {p0, p2}, Landroid/widget/ListPopupWindow$ForwardingListener;-><init>(Landroid/view/View;)V

    #@5
    return-void
.end method


# virtual methods
.method public getPopup()Landroid/widget/ListPopupWindow;
    .locals 1

    #@0
    .prologue
    .line 175
    iget-object v0, p0, Landroid/widget/PopupMenu$1;->this$0:Landroid/widget/PopupMenu;

    #@2
    invoke-static {v0}, Landroid/widget/PopupMenu;->-get0(Landroid/widget/PopupMenu;)Lcom/android/internal/view/menu/MenuPopupHelper;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuPopupHelper;->getPopup()Landroid/widget/ListPopupWindow;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method protected onForwardingStarted()Z
    .locals 1

    #@0
    .prologue
    .line 162
    iget-object v0, p0, Landroid/widget/PopupMenu$1;->this$0:Landroid/widget/PopupMenu;

    #@2
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    #@5
    .line 163
    const/4 v0, 0x1

    #@6
    return v0
.end method

.method protected onForwardingStopped()Z
    .locals 1

    #@0
    .prologue
    .line 168
    iget-object v0, p0, Landroid/widget/PopupMenu$1;->this$0:Landroid/widget/PopupMenu;

    #@2
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    #@5
    .line 169
    const/4 v0, 0x1

    #@6
    return v0
.end method

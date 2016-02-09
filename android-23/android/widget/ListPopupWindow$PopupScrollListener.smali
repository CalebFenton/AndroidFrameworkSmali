.class Landroid/widget/ListPopupWindow$PopupScrollListener;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupScrollListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ListPopupWindow;


# direct methods
.method private constructor <init>(Landroid/widget/ListPopupWindow;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/ListPopupWindow;

    #@0
    .prologue
    .line 1829
    iput-object p1, p0, Landroid/widget/ListPopupWindow$PopupScrollListener;->this$0:Landroid/widget/ListPopupWindow;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/ListPopupWindow;Landroid/widget/ListPopupWindow$PopupScrollListener;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/ListPopupWindow;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/widget/ListPopupWindow$PopupScrollListener;-><init>(Landroid/widget/ListPopupWindow;)V

    #@3
    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    #@0
    .prologue
    .line 1831
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    #@0
    .prologue
    .line 1836
    const/4 v0, 0x1

    #@1
    if-ne p2, v0, :cond_0

    #@3
    .line 1837
    iget-object v0, p0, Landroid/widget/ListPopupWindow$PopupScrollListener;->this$0:Landroid/widget/ListPopupWindow;

    #@5
    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isInputMethodNotNeeded()Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_1

    #@b
    .line 1835
    :cond_0
    :goto_0
    return-void

    #@c
    .line 1837
    :cond_1
    iget-object v0, p0, Landroid/widget/ListPopupWindow$PopupScrollListener;->this$0:Landroid/widget/ListPopupWindow;

    #@e
    invoke-static {v0}, Landroid/widget/ListPopupWindow;->-get2(Landroid/widget/ListPopupWindow;)Landroid/widget/PopupWindow;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    #@15
    move-result-object v0

    #@16
    if-eqz v0, :cond_0

    #@18
    .line 1838
    iget-object v0, p0, Landroid/widget/ListPopupWindow$PopupScrollListener;->this$0:Landroid/widget/ListPopupWindow;

    #@1a
    invoke-static {v0}, Landroid/widget/ListPopupWindow;->-get1(Landroid/widget/ListPopupWindow;)Landroid/os/Handler;

    #@1d
    move-result-object v0

    #@1e
    iget-object v1, p0, Landroid/widget/ListPopupWindow$PopupScrollListener;->this$0:Landroid/widget/ListPopupWindow;

    #@20
    invoke-static {v1}, Landroid/widget/ListPopupWindow;->-get3(Landroid/widget/ListPopupWindow;)Landroid/widget/ListPopupWindow$ResizePopupRunnable;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@27
    .line 1839
    iget-object v0, p0, Landroid/widget/ListPopupWindow$PopupScrollListener;->this$0:Landroid/widget/ListPopupWindow;

    #@29
    invoke-static {v0}, Landroid/widget/ListPopupWindow;->-get3(Landroid/widget/ListPopupWindow;)Landroid/widget/ListPopupWindow$ResizePopupRunnable;

    #@2c
    move-result-object v0

    #@2d
    invoke-virtual {v0}, Landroid/widget/ListPopupWindow$ResizePopupRunnable;->run()V

    #@30
    goto :goto_0
.end method

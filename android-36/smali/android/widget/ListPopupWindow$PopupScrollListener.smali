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
.field final synthetic blacklist this$0:Landroid/widget/ListPopupWindow;


# direct methods
.method private constructor blacklist <init>(Landroid/widget/ListPopupWindow;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1366
    iput-object p1, p0, Landroid/widget/ListPopupWindow$PopupScrollListener;->this$0:Landroid/widget/ListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/ListPopupWindow;Landroid/widget/ListPopupWindow-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/ListPopupWindow$PopupScrollListener;-><init>(Landroid/widget/ListPopupWindow;)V

    return-void
.end method


# virtual methods
.method public whitelist onScroll(Landroid/widget/AbsListView;III)V
    .registers 5
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .line 1370
    return-void
.end method

.method public whitelist onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 5
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .line 1373
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2d

    iget-object v0, p0, Landroid/widget/ListPopupWindow$PopupScrollListener;->this$0:Landroid/widget/ListPopupWindow;

    .line 1374
    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isInputMethodNotNeeded()Z

    move-result v0

    if-nez v0, :cond_2d

    iget-object v0, p0, Landroid/widget/ListPopupWindow$PopupScrollListener;->this$0:Landroid/widget/ListPopupWindow;

    iget-object v0, v0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 1375
    iget-object v0, p0, Landroid/widget/ListPopupWindow$PopupScrollListener;->this$0:Landroid/widget/ListPopupWindow;

    invoke-static {v0}, Landroid/widget/ListPopupWindow;->-$$Nest$fgetmHandler(Landroid/widget/ListPopupWindow;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/ListPopupWindow$PopupScrollListener;->this$0:Landroid/widget/ListPopupWindow;

    invoke-static {v1}, Landroid/widget/ListPopupWindow;->-$$Nest$fgetmResizePopupRunnable(Landroid/widget/ListPopupWindow;)Landroid/widget/ListPopupWindow$ResizePopupRunnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1376
    iget-object v0, p0, Landroid/widget/ListPopupWindow$PopupScrollListener;->this$0:Landroid/widget/ListPopupWindow;

    invoke-static {v0}, Landroid/widget/ListPopupWindow;->-$$Nest$fgetmResizePopupRunnable(Landroid/widget/ListPopupWindow;)Landroid/widget/ListPopupWindow$ResizePopupRunnable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow$ResizePopupRunnable;->run()V

    .line 1378
    :cond_2d
    return-void
.end method

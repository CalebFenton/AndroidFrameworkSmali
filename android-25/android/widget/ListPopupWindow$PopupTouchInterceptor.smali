.class Landroid/widget/ListPopupWindow$PopupTouchInterceptor;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupTouchInterceptor"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ListPopupWindow;


# direct methods
.method private constructor <init>(Landroid/widget/ListPopupWindow;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/ListPopupWindow;

    #@0
    .prologue
    .line 1276
    iput-object p1, p0, Landroid/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Landroid/widget/ListPopupWindow;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/ListPopupWindow;Landroid/widget/ListPopupWindow$PopupTouchInterceptor;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/ListPopupWindow;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/widget/ListPopupWindow$PopupTouchInterceptor;-><init>(Landroid/widget/ListPopupWindow;)V

    #@3
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1278
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    #@4
    move-result v0

    #@5
    .line 1279
    .local v0, "action":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    #@8
    move-result v3

    #@9
    float-to-int v1, v3

    #@a
    .line 1280
    .local v1, "x":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    #@d
    move-result v3

    #@e
    float-to-int v2, v3

    #@f
    .line 1282
    .local v2, "y":I
    if-nez v0, :cond_1

    #@11
    .line 1283
    iget-object v3, p0, Landroid/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Landroid/widget/ListPopupWindow;

    #@13
    iget-object v3, v3, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    #@15
    if-eqz v3, :cond_1

    #@17
    iget-object v3, p0, Landroid/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Landroid/widget/ListPopupWindow;

    #@19
    iget-object v3, v3, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    #@1b
    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    #@1e
    move-result v3

    #@1f
    .line 1282
    if-eqz v3, :cond_1

    #@21
    .line 1284
    if-ltz v1, :cond_1

    #@23
    iget-object v3, p0, Landroid/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Landroid/widget/ListPopupWindow;

    #@25
    iget-object v3, v3, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    #@27
    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getWidth()I

    #@2a
    move-result v3

    #@2b
    if-ge v1, v3, :cond_1

    #@2d
    if-ltz v2, :cond_1

    #@2f
    iget-object v3, p0, Landroid/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Landroid/widget/ListPopupWindow;

    #@31
    iget-object v3, v3, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    #@33
    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getHeight()I

    #@36
    move-result v3

    #@37
    if-ge v2, v3, :cond_1

    #@39
    .line 1285
    iget-object v3, p0, Landroid/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Landroid/widget/ListPopupWindow;

    #@3b
    invoke-static {v3}, Landroid/widget/ListPopupWindow;->-get1(Landroid/widget/ListPopupWindow;)Landroid/os/Handler;

    #@3e
    move-result-object v3

    #@3f
    iget-object v4, p0, Landroid/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Landroid/widget/ListPopupWindow;

    #@41
    invoke-static {v4}, Landroid/widget/ListPopupWindow;->-get2(Landroid/widget/ListPopupWindow;)Landroid/widget/ListPopupWindow$ResizePopupRunnable;

    #@44
    move-result-object v4

    #@45
    const-wide/16 v6, 0xfa

    #@47
    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    #@4a
    .line 1289
    :cond_0
    :goto_0
    return v5

    #@4b
    .line 1286
    :cond_1
    const/4 v3, 0x1

    #@4c
    if-ne v0, v3, :cond_0

    #@4e
    .line 1287
    iget-object v3, p0, Landroid/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Landroid/widget/ListPopupWindow;

    #@50
    invoke-static {v3}, Landroid/widget/ListPopupWindow;->-get1(Landroid/widget/ListPopupWindow;)Landroid/os/Handler;

    #@53
    move-result-object v3

    #@54
    iget-object v4, p0, Landroid/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Landroid/widget/ListPopupWindow;

    #@56
    invoke-static {v4}, Landroid/widget/ListPopupWindow;->-get2(Landroid/widget/ListPopupWindow;)Landroid/widget/ListPopupWindow$ResizePopupRunnable;

    #@59
    move-result-object v4

    #@5a
    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@5d
    goto :goto_0
.end method

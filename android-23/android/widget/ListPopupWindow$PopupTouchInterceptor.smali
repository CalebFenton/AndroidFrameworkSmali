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
    .line 1812
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
    .line 1814
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    #@4
    move-result v0

    #@5
    .line 1815
    .local v0, "action":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    #@8
    move-result v3

    #@9
    float-to-int v1, v3

    #@a
    .line 1816
    .local v1, "x":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    #@d
    move-result v3

    #@e
    float-to-int v2, v3

    #@f
    .line 1818
    .local v2, "y":I
    if-nez v0, :cond_1

    #@11
    .line 1819
    iget-object v3, p0, Landroid/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Landroid/widget/ListPopupWindow;

    #@13
    invoke-static {v3}, Landroid/widget/ListPopupWindow;->-get2(Landroid/widget/ListPopupWindow;)Landroid/widget/PopupWindow;

    #@16
    move-result-object v3

    #@17
    if-eqz v3, :cond_1

    #@19
    iget-object v3, p0, Landroid/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Landroid/widget/ListPopupWindow;

    #@1b
    invoke-static {v3}, Landroid/widget/ListPopupWindow;->-get2(Landroid/widget/ListPopupWindow;)Landroid/widget/PopupWindow;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    #@22
    move-result v3

    #@23
    .line 1818
    if-eqz v3, :cond_1

    #@25
    .line 1820
    if-ltz v1, :cond_1

    #@27
    iget-object v3, p0, Landroid/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Landroid/widget/ListPopupWindow;

    #@29
    invoke-static {v3}, Landroid/widget/ListPopupWindow;->-get2(Landroid/widget/ListPopupWindow;)Landroid/widget/PopupWindow;

    #@2c
    move-result-object v3

    #@2d
    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getWidth()I

    #@30
    move-result v3

    #@31
    if-ge v1, v3, :cond_1

    #@33
    if-ltz v2, :cond_1

    #@35
    iget-object v3, p0, Landroid/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Landroid/widget/ListPopupWindow;

    #@37
    invoke-static {v3}, Landroid/widget/ListPopupWindow;->-get2(Landroid/widget/ListPopupWindow;)Landroid/widget/PopupWindow;

    #@3a
    move-result-object v3

    #@3b
    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getHeight()I

    #@3e
    move-result v3

    #@3f
    if-ge v2, v3, :cond_1

    #@41
    .line 1821
    iget-object v3, p0, Landroid/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Landroid/widget/ListPopupWindow;

    #@43
    invoke-static {v3}, Landroid/widget/ListPopupWindow;->-get1(Landroid/widget/ListPopupWindow;)Landroid/os/Handler;

    #@46
    move-result-object v3

    #@47
    iget-object v4, p0, Landroid/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Landroid/widget/ListPopupWindow;

    #@49
    invoke-static {v4}, Landroid/widget/ListPopupWindow;->-get3(Landroid/widget/ListPopupWindow;)Landroid/widget/ListPopupWindow$ResizePopupRunnable;

    #@4c
    move-result-object v4

    #@4d
    const-wide/16 v6, 0xfa

    #@4f
    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    #@52
    .line 1825
    :cond_0
    :goto_0
    return v5

    #@53
    .line 1822
    :cond_1
    const/4 v3, 0x1

    #@54
    if-ne v0, v3, :cond_0

    #@56
    .line 1823
    iget-object v3, p0, Landroid/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Landroid/widget/ListPopupWindow;

    #@58
    invoke-static {v3}, Landroid/widget/ListPopupWindow;->-get1(Landroid/widget/ListPopupWindow;)Landroid/os/Handler;

    #@5b
    move-result-object v3

    #@5c
    iget-object v4, p0, Landroid/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Landroid/widget/ListPopupWindow;

    #@5e
    invoke-static {v4}, Landroid/widget/ListPopupWindow;->-get3(Landroid/widget/ListPopupWindow;)Landroid/widget/ListPopupWindow$ResizePopupRunnable;

    #@61
    move-result-object v4

    #@62
    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@65
    goto :goto_0
.end method

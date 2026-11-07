.class public Landroid/webkit/WebView$PrivateAccess;
.super Ljava/lang/Object;
.source "WebView.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PrivateAccess"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/webkit/WebView;


# direct methods
.method public constructor whitelist <init>(Landroid/webkit/WebView;)V
    .registers 2
    .param p1, "this$0"    # Landroid/webkit/WebView;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2462
    iput-object p1, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist awakenScrollBars(I)V
    .registers 3
    .param p1, "duration"    # I

    .line 2531
    iget-object v0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    # invokes: Landroid/webkit/WebView;->awakenScrollBars(I)Z
    invoke-static {v0, p1}, Landroid/webkit/WebView;->access$1400(Landroid/webkit/WebView;I)Z

    .line 2532
    return-void
.end method

.method public whitelist awakenScrollBars(IZ)V
    .registers 4
    .param p1, "duration"    # I
    .param p2, "invalidate"    # Z

    .line 2535
    iget-object v0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    # invokes: Landroid/webkit/WebView;->awakenScrollBars(IZ)Z
    invoke-static {v0, p1, p2}, Landroid/webkit/WebView;->access$1500(Landroid/webkit/WebView;IZ)Z

    .line 2536
    return-void
.end method

.method public whitelist getHorizontalScrollFactor()F
    .registers 2

    .line 2543
    iget-object v0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    # invokes: Landroid/webkit/WebView;->getHorizontalScrollFactor()F
    invoke-static {v0}, Landroid/webkit/WebView;->access$1700(Landroid/webkit/WebView;)F

    move-result v0

    return v0
.end method

.method public whitelist getHorizontalScrollbarHeight()I
    .registers 2

    .line 2555
    iget-object v0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    # invokes: Landroid/webkit/WebView;->getHorizontalScrollbarHeight()I
    invoke-static {v0}, Landroid/webkit/WebView;->access$1900(Landroid/webkit/WebView;)I

    move-result v0

    return v0
.end method

.method public whitelist getVerticalScrollFactor()F
    .registers 2

    .line 2539
    iget-object v0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    # invokes: Landroid/webkit/WebView;->getVerticalScrollFactor()F
    invoke-static {v0}, Landroid/webkit/WebView;->access$1600(Landroid/webkit/WebView;)F

    move-result v0

    return v0
.end method

.method public whitelist onScrollChanged(IIII)V
    .registers 6
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .line 2551
    iget-object v0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    .line 2552
    return-void
.end method

.method public whitelist overScrollBy(IIIIIIIIZ)V
    .registers 20
    .param p1, "deltaX"    # I
    .param p2, "deltaY"    # I
    .param p3, "scrollX"    # I
    .param p4, "scrollY"    # I
    .param p5, "scrollRangeX"    # I
    .param p6, "scrollRangeY"    # I
    .param p7, "maxOverScrollX"    # I
    .param p8, "maxOverScrollY"    # I
    .param p9, "isTouchEvent"    # Z

    .line 2526
    iget-object v0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    # invokes: Landroid/webkit/WebView;->overScrollBy(IIIIIIIIZ)Z
    invoke-static/range {v0 .. v9}, Landroid/webkit/WebView;->access$1300(Landroid/webkit/WebView;IIIIIIIIZ)Z

    .line 2528
    return-void
.end method

.method public whitelist setMeasuredDimension(II)V
    .registers 4
    .param p1, "measuredWidth"    # I
    .param p2, "measuredHeight"    # I

    .line 2547
    iget-object v0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    # invokes: Landroid/webkit/WebView;->setMeasuredDimension(II)V
    invoke-static {v0, p1, p2}, Landroid/webkit/WebView;->access$1800(Landroid/webkit/WebView;II)V

    .line 2548
    return-void
.end method

.method public whitelist setScrollXRaw(I)V
    .registers 3
    .param p1, "scrollX"    # I

    .line 2566
    iget-object v0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    # setter for: Landroid/webkit/WebView;->mScrollX:I
    invoke-static {v0, p1}, Landroid/webkit/WebView;->access$2102(Landroid/webkit/WebView;I)I

    .line 2567
    return-void
.end method

.method public whitelist setScrollYRaw(I)V
    .registers 3
    .param p1, "scrollY"    # I

    .line 2571
    iget-object v0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    # setter for: Landroid/webkit/WebView;->mScrollY:I
    invoke-static {v0, p1}, Landroid/webkit/WebView;->access$2202(Landroid/webkit/WebView;I)I

    .line 2572
    return-void
.end method

.method public whitelist super_computeScroll()V
    .registers 2

    .line 2473
    iget-object v0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    # invokes: Landroid/widget/AbsoluteLayout;->computeScroll()V
    invoke-static {v0}, Landroid/webkit/WebView;->access$201(Landroid/webkit/WebView;)V

    .line 2474
    return-void
.end method

.method public whitelist super_dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 2493
    iget-object v0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    # invokes: Landroid/widget/AbsoluteLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    invoke-static {v0, p1}, Landroid/webkit/WebView;->access$701(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist super_getScrollBarStyle()I
    .registers 2

    .line 2465
    iget-object v0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    # invokes: Landroid/widget/AbsoluteLayout;->getScrollBarStyle()I
    invoke-static {v0}, Landroid/webkit/WebView;->access$001(Landroid/webkit/WebView;)I

    move-result v0

    return v0
.end method

.method public whitelist super_onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 3
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .line 2517
    iget-object v0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    # invokes: Landroid/widget/AbsoluteLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    invoke-static {v0, p1}, Landroid/webkit/WebView;->access$1201(Landroid/webkit/WebView;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method

.method public whitelist super_onDrawVerticalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V
    .registers 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "scrollBar"    # Landroid/graphics/drawable/Drawable;
    .param p3, "l"    # I
    .param p4, "t"    # I
    .param p5, "r"    # I
    .param p6, "b"    # I

    .line 2560
    iget-object v0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .end local p1    # "canvas":Landroid/graphics/Canvas;
    .end local p2    # "scrollBar":Landroid/graphics/drawable/Drawable;
    .end local p3    # "l":I
    .end local p4    # "t":I
    .end local p5    # "r":I
    .end local p6    # "b":I
    .local v1, "canvas":Landroid/graphics/Canvas;
    .local v2, "scrollBar":Landroid/graphics/drawable/Drawable;
    .local v3, "l":I
    .local v4, "t":I
    .local v5, "r":I
    .local v6, "b":I
    # invokes: Landroid/widget/AbsoluteLayout;->onDrawVerticalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V
    invoke-static/range {v0 .. v6}, Landroid/webkit/WebView;->access$2001(Landroid/webkit/WebView;Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    .line 2561
    return-void
.end method

.method public whitelist super_onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 2497
    iget-object v0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    # invokes: Landroid/widget/AbsoluteLayout;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    invoke-static {v0, p1}, Landroid/webkit/WebView;->access$801(Landroid/webkit/WebView;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist super_onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 2477
    iget-object v0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    # invokes: Landroid/widget/AbsoluteLayout;->onHoverEvent(Landroid/view/MotionEvent;)Z
    invoke-static {v0, p1}, Landroid/webkit/WebView;->access$301(Landroid/webkit/WebView;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist super_performAccessibilityAction(ILandroid/os/Bundle;)Z
    .registers 4
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .line 2481
    iget-object v0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    # invokes: Landroid/widget/AbsoluteLayout;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    invoke-static {v0, p1, p2}, Landroid/webkit/WebView;->access$401(Landroid/webkit/WebView;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public whitelist super_performLongClick()Z
    .registers 2

    .line 2485
    iget-object v0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    # invokes: Landroid/widget/AbsoluteLayout;->performLongClick()Z
    invoke-static {v0}, Landroid/webkit/WebView;->access$501(Landroid/webkit/WebView;)Z

    move-result v0

    return v0
.end method

.method public whitelist super_requestFocus(ILandroid/graphics/Rect;)Z
    .registers 4
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 2501
    iget-object v0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    # invokes: Landroid/widget/AbsoluteLayout;->requestFocus(ILandroid/graphics/Rect;)Z
    invoke-static {v0, p1, p2}, Landroid/webkit/WebView;->access$901(Landroid/webkit/WebView;ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public whitelist super_scrollTo(II)V
    .registers 4
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I

    .line 2469
    iget-object v0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    # invokes: Landroid/widget/AbsoluteLayout;->scrollTo(II)V
    invoke-static {v0, p1, p2}, Landroid/webkit/WebView;->access$101(Landroid/webkit/WebView;II)V

    .line 2470
    return-void
.end method

.method public whitelist super_setFrame(IIII)Z
    .registers 6
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 2489
    iget-object v0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    # invokes: Landroid/widget/AbsoluteLayout;->setFrame(IIII)Z
    invoke-static {v0, p1, p2, p3, p4}, Landroid/webkit/WebView;->access$601(Landroid/webkit/WebView;IIII)Z

    move-result v0

    return v0
.end method

.method public whitelist super_setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3
    .param p1, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 2505
    iget-object v0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    # invokes: Landroid/widget/AbsoluteLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    invoke-static {v0, p1}, Landroid/webkit/WebView;->access$1001(Landroid/webkit/WebView;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2506
    return-void
.end method

.method public whitelist super_startActivityForResult(Landroid/content/Intent;I)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .line 2509
    iget-object v0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    # invokes: Landroid/widget/AbsoluteLayout;->startActivityForResult(Landroid/content/Intent;I)V
    invoke-static {v0, p1, p2}, Landroid/webkit/WebView;->access$1101(Landroid/webkit/WebView;Landroid/content/Intent;I)V

    .line 2510
    return-void
.end method

.class public Landroid/webkit/WebView$PrivateAccess;
.super Ljava/lang/Object;
.source "WebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PrivateAccess"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/webkit/WebView;

    #@0
    .prologue
    .line 2110
    iput-object p1, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public awakenScrollBars(I)V
    .locals 1
    .param p1, "duration"    # I

    #@0
    .prologue
    .line 2167
    iget-object v0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    #@2
    invoke-static {v0, p1}, Landroid/webkit/WebView;->-wrap1(Landroid/webkit/WebView;I)Z

    #@5
    .line 2166
    return-void
.end method

.method public awakenScrollBars(IZ)V
    .locals 1
    .param p1, "duration"    # I
    .param p2, "invalidate"    # Z

    #@0
    .prologue
    .line 2171
    iget-object v0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    #@2
    invoke-static {v0, p1, p2}, Landroid/webkit/WebView;->-wrap0(Landroid/webkit/WebView;IZ)Z

    #@5
    .line 2170
    return-void
.end method

.method public getHorizontalScrollFactor()F
    .locals 1

    #@0
    .prologue
    .line 2179
    iget-object v0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    #@2
    invoke-static {v0}, Landroid/webkit/WebView;->-wrap10(Landroid/webkit/WebView;)F

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getHorizontalScrollbarHeight()I
    .locals 1

    #@0
    .prologue
    .line 2191
    iget-object v0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    #@2
    invoke-static {v0}, Landroid/webkit/WebView;->-wrap12(Landroid/webkit/WebView;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getVerticalScrollFactor()F
    .locals 1

    #@0
    .prologue
    .line 2175
    iget-object v0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    #@2
    invoke-static {v0}, Landroid/webkit/WebView;->-wrap11(Landroid/webkit/WebView;)F

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public onScrollChanged(IIII)V
    .locals 1
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    #@0
    .prologue
    .line 2187
    iget-object v0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    #@2
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    #@5
    .line 2186
    return-void
.end method

.method public overScrollBy(IIIIIIIIZ)V
    .locals 10
    .param p1, "deltaX"    # I
    .param p2, "deltaY"    # I
    .param p3, "scrollX"    # I
    .param p4, "scrollY"    # I
    .param p5, "scrollRangeX"    # I
    .param p6, "scrollRangeY"    # I
    .param p7, "maxOverScrollX"    # I
    .param p8, "maxOverScrollY"    # I
    .param p9, "isTouchEvent"    # Z

    #@0
    .prologue
    .line 2162
    iget-object v0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    #@2
    move v1, p1

    #@3
    move v2, p2

    #@4
    move v3, p3

    #@5
    move v4, p4

    #@6
    move v5, p5

    #@7
    move/from16 v6, p6

    #@9
    move/from16 v7, p7

    #@b
    move/from16 v8, p8

    #@d
    move/from16 v9, p9

    #@f
    invoke-static/range {v0 .. v9}, Landroid/webkit/WebView;->-wrap5(Landroid/webkit/WebView;IIIIIIIIZ)Z

    #@12
    .line 2161
    return-void
.end method

.method public setMeasuredDimension(II)V
    .locals 1
    .param p1, "measuredWidth"    # I
    .param p2, "measuredHeight"    # I

    #@0
    .prologue
    .line 2183
    iget-object v0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    #@2
    invoke-static {v0, p1, p2}, Landroid/webkit/WebView;->-wrap18(Landroid/webkit/WebView;II)V

    #@5
    .line 2182
    return-void
.end method

.method public setScrollXRaw(I)V
    .locals 1
    .param p1, "scrollX"    # I

    #@0
    .prologue
    .line 2202
    iget-object v0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    #@2
    invoke-static {v0, p1}, Landroid/webkit/WebView;->-set0(Landroid/webkit/WebView;I)I

    #@5
    .line 2201
    return-void
.end method

.method public setScrollYRaw(I)V
    .locals 1
    .param p1, "scrollY"    # I

    #@0
    .prologue
    .line 2207
    iget-object v0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    #@2
    invoke-static {v0, p1}, Landroid/webkit/WebView;->-set1(Landroid/webkit/WebView;I)I

    #@5
    .line 2206
    return-void
.end method

.method public super_computeScroll()V
    .locals 1

    #@0
    .prologue
    .line 2121
    iget-object v0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    #@2
    invoke-static {v0}, Landroid/webkit/WebView;->-wrap14(Landroid/webkit/WebView;)V

    #@5
    .line 2120
    return-void
.end method

.method public super_dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 2141
    iget-object v0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    #@2
    invoke-static {v0, p1}, Landroid/webkit/WebView;->-wrap2(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public super_getScrollBarStyle()I
    .locals 1

    #@0
    .prologue
    .line 2113
    iget-object v0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    #@2
    invoke-static {v0}, Landroid/webkit/WebView;->-wrap13(Landroid/webkit/WebView;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public super_onDrawVerticalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "scrollBar"    # Landroid/graphics/drawable/Drawable;
    .param p3, "l"    # I
    .param p4, "t"    # I
    .param p5, "r"    # I
    .param p6, "b"    # I

    #@0
    .prologue
    .line 2196
    iget-object v0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move v3, p3

    #@5
    move v4, p4

    #@6
    move v5, p5

    #@7
    move v6, p6

    #@8
    invoke-static/range {v0 .. v6}, Landroid/webkit/WebView;->-wrap15(Landroid/webkit/WebView;Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    #@b
    .line 2195
    return-void
.end method

.method public super_onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 2145
    iget-object v0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    #@2
    invoke-static {v0, p1}, Landroid/webkit/WebView;->-wrap3(Landroid/webkit/WebView;Landroid/view/MotionEvent;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public super_onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 2125
    iget-object v0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    #@2
    invoke-static {v0, p1}, Landroid/webkit/WebView;->-wrap4(Landroid/webkit/WebView;Landroid/view/MotionEvent;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public super_performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 2129
    iget-object v0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    #@2
    invoke-static {v0, p1, p2}, Landroid/webkit/WebView;->-wrap6(Landroid/webkit/WebView;ILandroid/os/Bundle;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public super_performLongClick()Z
    .locals 1

    #@0
    .prologue
    .line 2133
    iget-object v0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    #@2
    invoke-static {v0}, Landroid/webkit/WebView;->-wrap7(Landroid/webkit/WebView;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public super_requestFocus(ILandroid/graphics/Rect;)Z
    .locals 1
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 2149
    iget-object v0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    #@2
    invoke-static {v0, p1, p2}, Landroid/webkit/WebView;->-wrap8(Landroid/webkit/WebView;ILandroid/graphics/Rect;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public super_scrollTo(II)V
    .locals 1
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I

    #@0
    .prologue
    .line 2117
    iget-object v0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    #@2
    invoke-static {v0, p1, p2}, Landroid/webkit/WebView;->-wrap16(Landroid/webkit/WebView;II)V

    #@5
    .line 2116
    return-void
.end method

.method public super_setFrame(IIII)Z
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    #@0
    .prologue
    .line 2137
    iget-object v0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    #@2
    invoke-static {v0, p1, p2, p3, p4}, Landroid/webkit/WebView;->-wrap9(Landroid/webkit/WebView;IIII)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public super_setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "params"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    .line 2153
    iget-object v0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    #@2
    invoke-static {v0, p1}, Landroid/webkit/WebView;->-wrap17(Landroid/webkit/WebView;Landroid/view/ViewGroup$LayoutParams;)V

    #@5
    .line 2152
    return-void
.end method

.class public Landroid/text/method/ScrollingMovementMethod;
.super Landroid/text/method/BaseMovementMethod;
.source "ScrollingMovementMethod.java"

# interfaces
.implements Landroid/text/method/MovementMethod;


# static fields
.field private static sInstance:Landroid/text/method/ScrollingMovementMethod;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 27
    invoke-direct {p0}, Landroid/text/method/BaseMovementMethod;-><init>()V

    #@3
    return-void
.end method

.method public static getInstance()Landroid/text/method/MovementMethod;
    .locals 1

    #@0
    .prologue
    .line 113
    sget-object v0, Landroid/text/method/ScrollingMovementMethod;->sInstance:Landroid/text/method/ScrollingMovementMethod;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 114
    new-instance v0, Landroid/text/method/ScrollingMovementMethod;

    #@6
    invoke-direct {v0}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    #@9
    sput-object v0, Landroid/text/method/ScrollingMovementMethod;->sInstance:Landroid/text/method/ScrollingMovementMethod;

    #@b
    .line 116
    :cond_0
    sget-object v0, Landroid/text/method/ScrollingMovementMethod;->sInstance:Landroid/text/method/ScrollingMovementMethod;

    #@d
    return-object v0
.end method


# virtual methods
.method protected bottom(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 1
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    #@0
    .prologue
    .line 65
    invoke-virtual {p0, p1, p2}, Landroid/text/method/ScrollingMovementMethod;->scrollBottom(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method protected down(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 1
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    #@0
    .prologue
    .line 45
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, p1, p2, v0}, Landroid/text/method/ScrollingMovementMethod;->scrollDown(Landroid/widget/TextView;Landroid/text/Spannable;I)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method protected end(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 1
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    #@0
    .prologue
    .line 85
    invoke-virtual {p0, p1, p2}, Landroid/text/method/ScrollingMovementMethod;->bottom(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method protected home(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 1
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    #@0
    .prologue
    .line 80
    invoke-virtual {p0, p1, p2}, Landroid/text/method/ScrollingMovementMethod;->top(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method protected left(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 1
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    #@0
    .prologue
    .line 30
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, p1, p2, v0}, Landroid/text/method/ScrollingMovementMethod;->scrollLeft(Landroid/widget/TextView;Landroid/text/Spannable;I)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method protected lineEnd(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 1
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    #@0
    .prologue
    .line 75
    invoke-virtual {p0, p1, p2}, Landroid/text/method/ScrollingMovementMethod;->scrollLineEnd(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method protected lineStart(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 1
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    #@0
    .prologue
    .line 70
    invoke-virtual {p0, p1, p2}, Landroid/text/method/ScrollingMovementMethod;->scrollLineStart(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public onTakeFocus(Landroid/widget/TextView;Landroid/text/Spannable;I)V
    .locals 6
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "text"    # Landroid/text/Spannable;
    .param p3, "dir"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 95
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    #@4
    move-result-object v0

    #@5
    .line 97
    .local v0, "layout":Landroid/text/Layout;
    if-eqz v0, :cond_0

    #@7
    and-int/lit8 v3, p3, 0x2

    #@9
    if-eqz v3, :cond_0

    #@b
    .line 98
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    #@e
    move-result v3

    #@f
    .line 99
    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineTop(I)I

    #@12
    move-result v4

    #@13
    .line 98
    invoke-virtual {p1, v3, v4}, Landroid/widget/TextView;->scrollTo(II)V

    #@16
    .line 101
    :cond_0
    if-eqz v0, :cond_1

    #@18
    and-int/lit8 v3, p3, 0x1

    #@1a
    if-eqz v3, :cond_1

    #@1c
    .line 102
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingTop()I

    #@1f
    move-result v3

    #@20
    .line 103
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingBottom()I

    #@23
    move-result v4

    #@24
    .line 102
    add-int v2, v3, v4

    #@26
    .line 104
    .local v2, "padding":I
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    #@29
    move-result v3

    #@2a
    add-int/lit8 v1, v3, -0x1

    #@2c
    .line 106
    .local v1, "line":I
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    #@2f
    move-result v3

    #@30
    .line 107
    add-int/lit8 v4, v1, 0x1

    #@32
    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineTop(I)I

    #@35
    move-result v4

    #@36
    .line 108
    invoke-virtual {p1}, Landroid/widget/TextView;->getHeight()I

    #@39
    move-result v5

    #@3a
    sub-int/2addr v5, v2

    #@3b
    .line 107
    sub-int/2addr v4, v5

    #@3c
    .line 106
    invoke-virtual {p1, v3, v4}, Landroid/widget/TextView;->scrollTo(II)V

    #@3f
    .line 94
    .end local v1    # "line":I
    .end local v2    # "padding":I
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;
    .param p3, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 90
    invoke-static {p1, p2, p3}, Landroid/text/method/Touch;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method protected pageDown(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 1
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    #@0
    .prologue
    .line 55
    invoke-virtual {p0, p1, p2}, Landroid/text/method/ScrollingMovementMethod;->scrollPageDown(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method protected pageUp(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 1
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    #@0
    .prologue
    .line 50
    invoke-virtual {p0, p1, p2}, Landroid/text/method/ScrollingMovementMethod;->scrollPageUp(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method protected right(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 1
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    #@0
    .prologue
    .line 35
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, p1, p2, v0}, Landroid/text/method/ScrollingMovementMethod;->scrollRight(Landroid/widget/TextView;Landroid/text/Spannable;I)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method protected top(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 1
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    #@0
    .prologue
    .line 60
    invoke-virtual {p0, p1, p2}, Landroid/text/method/ScrollingMovementMethod;->scrollTop(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method protected up(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 1
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    #@0
    .prologue
    .line 40
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, p1, p2, v0}, Landroid/text/method/ScrollingMovementMethod;->scrollUp(Landroid/widget/TextView;Landroid/text/Spannable;I)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

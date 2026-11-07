.class public Landroid/text/method/ScrollingMovementMethod;
.super Landroid/text/method/BaseMovementMethod;
.source "ScrollingMovementMethod.java"

# interfaces
.implements Landroid/text/method/MovementMethod;


# static fields
.field private static greylist-max-o sInstance:Landroid/text/method/ScrollingMovementMethod;


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Landroid/text/method/BaseMovementMethod;-><init>()V

    return-void
.end method

.method public static whitelist getInstance()Landroid/text/method/MovementMethod;
    .registers 1

    .line 115
    sget-object v0, Landroid/text/method/ScrollingMovementMethod;->sInstance:Landroid/text/method/ScrollingMovementMethod;

    if-nez v0, :cond_b

    .line 116
    new-instance v0, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v0}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    sput-object v0, Landroid/text/method/ScrollingMovementMethod;->sInstance:Landroid/text/method/ScrollingMovementMethod;

    .line 118
    :cond_b
    sget-object v0, Landroid/text/method/ScrollingMovementMethod;->sInstance:Landroid/text/method/ScrollingMovementMethod;

    return-object v0
.end method


# virtual methods
.method protected whitelist bottom(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 4
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .line 67
    invoke-virtual {p0, p1, p2}, Landroid/text/method/ScrollingMovementMethod;->scrollBottom(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0
.end method

.method protected whitelist down(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 4
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .line 47
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/text/method/ScrollingMovementMethod;->scrollDown(Landroid/widget/TextView;Landroid/text/Spannable;I)Z

    move-result v0

    return v0
.end method

.method protected whitelist end(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 4
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .line 87
    invoke-virtual {p0, p1, p2}, Landroid/text/method/ScrollingMovementMethod;->bottom(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0
.end method

.method protected whitelist home(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 4
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .line 82
    invoke-virtual {p0, p1, p2}, Landroid/text/method/ScrollingMovementMethod;->top(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0
.end method

.method protected whitelist left(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 4
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .line 32
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/text/method/ScrollingMovementMethod;->scrollLeft(Landroid/widget/TextView;Landroid/text/Spannable;I)Z

    move-result v0

    return v0
.end method

.method protected whitelist lineEnd(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 4
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .line 77
    invoke-virtual {p0, p1, p2}, Landroid/text/method/ScrollingMovementMethod;->scrollLineEnd(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0
.end method

.method protected whitelist lineStart(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 4
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .line 72
    invoke-virtual {p0, p1, p2}, Landroid/text/method/ScrollingMovementMethod;->scrollLineStart(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0
.end method

.method public whitelist onTakeFocus(Landroid/widget/TextView;Landroid/text/Spannable;I)V
    .registers 10
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "text"    # Landroid/text/Spannable;
    .param p3, "dir"    # I

    .line 97
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 99
    .local v0, "layout":Landroid/text/Layout;
    if-eqz v0, :cond_16

    and-int/lit8 v1, p3, 0x2

    if-eqz v1, :cond_16

    .line 100
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v1

    .line 101
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    .line 100
    invoke-virtual {p1, v1, v2}, Landroid/widget/TextView;->scrollTo(II)V

    .line 103
    :cond_16
    if-eqz v0, :cond_3e

    and-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_3e

    .line 104
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v1

    .line 105
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    .line 106
    .local v1, "padding":I
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 108
    .local v2, "line":I
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v3

    add-int/lit8 v4, v2, 0x1

    .line 109
    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v4

    .line 110
    invoke-virtual {p1}, Landroid/widget/TextView;->getHeight()I

    move-result v5

    sub-int/2addr v5, v1

    sub-int/2addr v4, v5

    .line 108
    invoke-virtual {p1, v3, v4}, Landroid/widget/TextView;->scrollTo(II)V

    .line 112
    .end local v1    # "padding":I
    .end local v2    # "line":I
    :cond_3e
    return-void
.end method

.method public whitelist onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;
    .param p3, "event"    # Landroid/view/MotionEvent;

    .line 92
    invoke-static {p1, p2, p3}, Landroid/text/method/Touch;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected whitelist pageDown(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 4
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .line 57
    invoke-virtual {p0, p1, p2}, Landroid/text/method/ScrollingMovementMethod;->scrollPageDown(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0
.end method

.method protected whitelist pageUp(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 4
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .line 52
    invoke-virtual {p0, p1, p2}, Landroid/text/method/ScrollingMovementMethod;->scrollPageUp(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0
.end method

.method protected whitelist right(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 4
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .line 37
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/text/method/ScrollingMovementMethod;->scrollRight(Landroid/widget/TextView;Landroid/text/Spannable;I)Z

    move-result v0

    return v0
.end method

.method protected whitelist top(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 4
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .line 62
    invoke-virtual {p0, p1, p2}, Landroid/text/method/ScrollingMovementMethod;->scrollTop(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0
.end method

.method protected whitelist up(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 4
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .line 42
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/text/method/ScrollingMovementMethod;->scrollUp(Landroid/widget/TextView;Landroid/text/Spannable;I)Z

    move-result v0

    return v0
.end method

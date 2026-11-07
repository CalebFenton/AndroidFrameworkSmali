.class public Landroid/widget/ZoomButton;
.super Landroid/widget/ImageButton;
.source "ZoomButton.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private greylist-max-o mIsInLongpress:Z

.field private final greylist-max-o mRunnable:Ljava/lang/Runnable;

.field private greylist-max-o mZoomSpeed:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmIsInLongpress(Landroid/widget/ZoomButton;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/widget/ZoomButton;->mIsInLongpress:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmZoomSpeed(Landroid/widget/ZoomButton;)J
    .registers 3

    iget-wide v0, p0, Landroid/widget/ZoomButton;->mZoomSpeed:J

    return-wide v0
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ZoomButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ZoomButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/ZoomButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 63
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 66
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 41
    new-instance v0, Landroid/widget/ZoomButton$1;

    invoke-direct {v0, p0}, Landroid/widget/ZoomButton$1;-><init>(Landroid/widget/ZoomButton;)V

    iput-object v0, p0, Landroid/widget/ZoomButton;->mRunnable:Ljava/lang/Runnable;

    .line 50
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Landroid/widget/ZoomButton;->mZoomSpeed:J

    .line 67
    invoke-virtual {p0, p0}, Landroid/widget/ZoomButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 68
    return-void
.end method


# virtual methods
.method public whitelist dispatchUnhandledMove(Landroid/view/View;I)Z
    .registers 4
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .line 117
    invoke-virtual {p0}, Landroid/widget/ZoomButton;->clearFocus()V

    .line 118
    invoke-super {p0, p1, p2}, Landroid/widget/ImageButton;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .line 123
    const-class v0, Landroid/widget/ZoomButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ZoomButton;->mIsInLongpress:Z

    .line 99
    invoke-super {p0, p1, p2}, Landroid/widget/ImageButton;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist onLongClick(Landroid/view/View;)Z
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ZoomButton;->mIsInLongpress:Z

    .line 92
    iget-object v1, p0, Landroid/widget/ZoomButton;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/widget/ZoomButton;->post(Ljava/lang/Runnable;)Z

    .line 93
    return v0
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 72
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_e

    .line 73
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    .line 74
    :cond_e
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ZoomButton;->mIsInLongpress:Z

    .line 76
    :cond_11
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist setEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 104
    if-nez p1, :cond_6

    .line 110
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ZoomButton;->setPressed(Z)V

    .line 112
    :cond_6
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 113
    return-void
.end method

.method public whitelist setZoomSpeed(J)V
    .registers 3
    .param p1, "speed"    # J

    .line 86
    iput-wide p1, p0, Landroid/widget/ZoomButton;->mZoomSpeed:J

    .line 87
    return-void
.end method

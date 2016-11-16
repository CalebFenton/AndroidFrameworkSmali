.class public Landroid/widget/ZoomButton;
.super Landroid/widget/ImageButton;
.source "ZoomButton.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ZoomButton$1;
    }
.end annotation


# instance fields
.field private mIsInLongpress:Z

.field private final mRunnable:Ljava/lang/Runnable;

.field private mZoomSpeed:J


# direct methods
.method static synthetic -get0(Landroid/widget/ZoomButton;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/widget/ZoomButton;->mIsInLongpress:Z

    #@2
    return v0
.end method

.method static synthetic -get1(Landroid/widget/ZoomButton;)J
    .locals 2

    #@0
    iget-wide v0, p0, Landroid/widget/ZoomButton;->mZoomSpeed:J

    #@2
    return-wide v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 41
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/widget/ZoomButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 45
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ZoomButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@4
    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 49
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/ZoomButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    #@0
    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@3
    .line 28
    new-instance v0, Landroid/widget/ZoomButton$1;

    #@5
    invoke-direct {v0, p0}, Landroid/widget/ZoomButton$1;-><init>(Landroid/widget/ZoomButton;)V

    #@8
    iput-object v0, p0, Landroid/widget/ZoomButton;->mRunnable:Ljava/lang/Runnable;

    #@a
    .line 37
    const-wide/16 v0, 0x3e8

    #@c
    iput-wide v0, p0, Landroid/widget/ZoomButton;->mZoomSpeed:J

    #@e
    .line 54
    invoke-virtual {p0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    #@11
    .line 52
    return-void
.end method


# virtual methods
.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 1
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    #@0
    .prologue
    .line 97
    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    #@3
    .line 98
    invoke-super {p0, p1, p2}, Landroid/widget/ImageButton;->dispatchUnhandledMove(Landroid/view/View;I)Z

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 103
    const-class v0, Landroid/widget/ZoomButton;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 78
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Landroid/widget/ZoomButton;->mIsInLongpress:Z

    #@3
    .line 79
    invoke-super {p0, p1, p2}, Landroid/widget/ImageButton;->onKeyUp(ILandroid/view/KeyEvent;)Z

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 71
    iput-boolean v1, p0, Landroid/widget/ZoomButton;->mIsInLongpress:Z

    #@3
    .line 72
    iget-object v0, p0, Landroid/widget/ZoomButton;->mRunnable:Ljava/lang/Runnable;

    #@5
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    #@8
    .line 73
    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 59
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x3

    #@5
    if-eq v0, v1, :cond_0

    #@7
    .line 60
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    #@a
    move-result v0

    #@b
    const/4 v1, 0x1

    #@c
    if-ne v0, v1, :cond_1

    #@e
    .line 61
    :cond_0
    const/4 v0, 0x0

    #@f
    iput-boolean v0, p0, Landroid/widget/ZoomButton;->mIsInLongpress:Z

    #@11
    .line 63
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    #@14
    move-result v0

    #@15
    return v0
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 84
    if-nez p1, :cond_0

    #@2
    .line 90
    const/4 v0, 0x0

    #@3
    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    #@6
    .line 92
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    #@9
    .line 83
    return-void
.end method

.method public setZoomSpeed(J)V
    .locals 1
    .param p1, "speed"    # J

    #@0
    .prologue
    .line 67
    iput-wide p1, p0, Landroid/widget/ZoomButton;->mZoomSpeed:J

    #@2
    .line 66
    return-void
.end method

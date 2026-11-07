.class public final Landroid/inputmethodservice/navigationbar/NavigationBarFrame;
.super Landroid/widget/FrameLayout;
.source "NavigationBarFrame.java"


# instance fields
.field private blacklist mDeadZone:Landroid/inputmethodservice/navigationbar/DeadZone;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 37
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;->mDeadZone:Landroid/inputmethodservice/navigationbar/DeadZone;

    .line 38
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;->mDeadZone:Landroid/inputmethodservice/navigationbar/DeadZone;

    .line 42
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;->mDeadZone:Landroid/inputmethodservice/navigationbar/DeadZone;

    .line 47
    return-void
.end method


# virtual methods
.method public whitelist dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 55
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_12

    .line 56
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;->mDeadZone:Landroid/inputmethodservice/navigationbar/DeadZone;

    if-eqz v0, :cond_12

    .line 57
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;->mDeadZone:Landroid/inputmethodservice/navigationbar/DeadZone;

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/navigationbar/DeadZone;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 60
    :cond_12
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public blacklist setDeadZone(Landroid/inputmethodservice/navigationbar/DeadZone;)V
    .registers 2
    .param p1, "deadZone"    # Landroid/inputmethodservice/navigationbar/DeadZone;

    .line 50
    iput-object p1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;->mDeadZone:Landroid/inputmethodservice/navigationbar/DeadZone;

    .line 51
    return-void
.end method

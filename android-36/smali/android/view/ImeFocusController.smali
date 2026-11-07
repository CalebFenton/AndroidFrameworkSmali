.class public final Landroid/view/ImeFocusController;
.super Ljava/lang/Object;
.source "ImeFocusController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ImeFocusController$InputMethodManagerDelegate;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "ImeFocusController"


# instance fields
.field private blacklist mDelegate:Landroid/view/ImeFocusController$InputMethodManagerDelegate;

.field private blacklist mHasImeFocus:Z

.field private final blacklist mViewRootImpl:Landroid/view/ViewRootImpl;


# direct methods
.method constructor blacklist <init>(Landroid/view/ViewRootImpl;)V
    .registers 3
    .param p1, "viewRootImpl"    # Landroid/view/ViewRootImpl;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ImeFocusController;->mHasImeFocus:Z

    .line 45
    iput-object p1, p0, Landroid/view/ImeFocusController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    .line 46
    return-void
.end method

.method private blacklist getImmDelegate()Landroid/view/ImeFocusController$InputMethodManagerDelegate;
    .registers 3

    .line 50
    iget-object v0, p0, Landroid/view/ImeFocusController;->mDelegate:Landroid/view/ImeFocusController$InputMethodManagerDelegate;

    if-nez v0, :cond_16

    .line 51
    iget-object v0, p0, Landroid/view/ImeFocusController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 52
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getDelegate()Landroid/view/inputmethod/InputMethodManager$DelegateImpl;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ImeFocusController;->mDelegate:Landroid/view/ImeFocusController$InputMethodManagerDelegate;

    .line 54
    :cond_16
    iget-object v0, p0, Landroid/view/ImeFocusController;->mDelegate:Landroid/view/ImeFocusController$InputMethodManagerDelegate;

    return-object v0
.end method

.method private static blacklist isInLocalFocusMode(Landroid/view/WindowManager$LayoutParams;)Z
    .registers 3
    .param p0, "windowAttribute"    # Landroid/view/WindowManager$LayoutParams;

    .line 145
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method


# virtual methods
.method blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 9
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 197
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 198
    .local v0, "token":J
    const-wide v2, 0x10800000001L

    iget-boolean v4, p0, Landroid/view/ImeFocusController;->mHasImeFocus:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 199
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 200
    return-void
.end method

.method blacklist hasImeFocus()Z
    .registers 2

    .line 193
    iget-boolean v0, p0, Landroid/view/ImeFocusController;->mHasImeFocus:Z

    return v0
.end method

.method blacklist onMovedToDisplay()V
    .registers 2

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ImeFocusController;->mDelegate:Landroid/view/ImeFocusController$InputMethodManagerDelegate;

    .line 65
    return-void
.end method

.method blacklist onPostWindowFocus(Landroid/view/View;ZLandroid/view/WindowManager$LayoutParams;)V
    .registers 6
    .param p1, "focusedView"    # Landroid/view/View;
    .param p2, "hasWindowFocus"    # Z
    .param p3, "windowAttribute"    # Landroid/view/WindowManager$LayoutParams;

    .line 101
    if-eqz p2, :cond_1d

    iget-boolean v0, p0, Landroid/view/ImeFocusController;->mHasImeFocus:Z

    if-eqz v0, :cond_1d

    invoke-static {p3}, Landroid/view/ImeFocusController;->isInLocalFocusMode(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_1d

    .line 104
    :cond_d
    if-eqz p1, :cond_11

    move-object v0, p1

    goto :goto_15

    :cond_11
    iget-object v0, p0, Landroid/view/ImeFocusController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 111
    .local v0, "viewForWindowFocus":Landroid/view/View;
    :goto_15
    invoke-direct {p0}, Landroid/view/ImeFocusController;->getImmDelegate()Landroid/view/ImeFocusController$InputMethodManagerDelegate;

    move-result-object v1

    invoke-interface {v1, v0, p3}, Landroid/view/ImeFocusController$InputMethodManagerDelegate;->onPostWindowGainedFocus(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    .line 112
    return-void

    .line 102
    .end local v0    # "viewForWindowFocus":Landroid/view/View;
    :cond_1d
    :goto_1d
    return-void
.end method

.method blacklist onPreWindowFocus(ZLandroid/view/WindowManager$LayoutParams;)V
    .registers 5
    .param p1, "hasWindowFocus"    # Z
    .param p2, "windowAttribute"    # Landroid/view/WindowManager$LayoutParams;

    .line 88
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-static {v0}, Landroid/view/WindowManager$LayoutParams;->mayUseInputMethod(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/ImeFocusController;->mHasImeFocus:Z

    .line 89
    if-eqz p1, :cond_1f

    iget-boolean v0, p0, Landroid/view/ImeFocusController;->mHasImeFocus:Z

    if-eqz v0, :cond_1f

    invoke-static {p2}, Landroid/view/ImeFocusController;->isInLocalFocusMode(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_1f

    .line 94
    :cond_15
    invoke-direct {p0}, Landroid/view/ImeFocusController;->getImmDelegate()Landroid/view/ImeFocusController$InputMethodManagerDelegate;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ImeFocusController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-interface {v0, v1}, Landroid/view/ImeFocusController$InputMethodManagerDelegate;->onPreWindowGainedFocus(Landroid/view/ViewRootImpl;)V

    goto :goto_2a

    .line 90
    :cond_1f
    :goto_1f
    if-nez p1, :cond_2a

    .line 91
    invoke-direct {p0}, Landroid/view/ImeFocusController;->getImmDelegate()Landroid/view/ImeFocusController$InputMethodManagerDelegate;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ImeFocusController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-interface {v0, v1}, Landroid/view/ImeFocusController$InputMethodManagerDelegate;->onWindowLostFocus(Landroid/view/ViewRootImpl;)V

    .line 96
    :cond_2a
    :goto_2a
    return-void
.end method

.method blacklist onProcessImeInputStage(Ljava/lang/Object;Landroid/view/InputEvent;Landroid/view/WindowManager$LayoutParams;Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;)I
    .registers 10
    .param p1, "token"    # Ljava/lang/Object;
    .param p2, "event"    # Landroid/view/InputEvent;
    .param p3, "windowAttribute"    # Landroid/view/WindowManager$LayoutParams;
    .param p4, "callback"    # Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;

    .line 151
    iget-boolean v0, p0, Landroid/view/ImeFocusController;->mHasImeFocus:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_50

    invoke-static {p3}, Landroid/view/ImeFocusController;->isInLocalFocusMode(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_50

    .line 154
    :cond_c
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v0

    if-eqz v0, :cond_38

    instance-of v0, p2, Landroid/view/KeyEvent;

    if-eqz v0, :cond_38

    move-object v0, p2

    check-cast v0, Landroid/view/KeyEvent;

    .line 155
    .local v0, "keyEvent":Landroid/view/KeyEvent;
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_38

    .line 156
    iget-object v2, p0, Landroid/view/ImeFocusController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getInsetsController()Landroid/view/InsetsController;

    move-result-object v2

    .line 157
    .local v2, "insetsController":Landroid/view/InsetsController;
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/InsetsController;->getAnimationType(I)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_37

    .line 159
    invoke-virtual {v2}, Landroid/view/InsetsController;->isPredictiveBackImeHideAnimInProgress()Z

    move-result v3

    if-eqz v3, :cond_38

    .line 162
    :cond_37
    return v1

    .line 165
    .end local v0    # "keyEvent":Landroid/view/KeyEvent;
    .end local v2    # "insetsController":Landroid/view/InsetsController;
    :cond_38
    iget-object v0, p0, Landroid/view/ImeFocusController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    const-class v2, Landroid/view/inputmethod/InputMethodManager;

    .line 166
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 167
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-nez v0, :cond_47

    .line 168
    return v1

    .line 170
    :cond_47
    iget-object v1, p0, Landroid/view/ImeFocusController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0, p2, p1, p4, v1}, Landroid/view/inputmethod/InputMethodManager;->dispatchInputEvent(Landroid/view/InputEvent;Ljava/lang/Object;Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;Landroid/os/Handler;)I

    move-result v1

    return v1

    .line 152
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_50
    :goto_50
    return v1
.end method

.method blacklist onScheduledCheckFocus()V
    .registers 3

    .line 119
    invoke-direct {p0}, Landroid/view/ImeFocusController;->getImmDelegate()Landroid/view/ImeFocusController$InputMethodManagerDelegate;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ImeFocusController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-interface {v0, v1}, Landroid/view/ImeFocusController$InputMethodManagerDelegate;->onScheduledCheckFocus(Landroid/view/ViewRootImpl;)V

    .line 120
    return-void
.end method

.method blacklist onTraversal(ZLandroid/view/WindowManager$LayoutParams;)V
    .registers 7
    .param p1, "hasWindowFocus"    # Z
    .param p2, "windowAttribute"    # Landroid/view/WindowManager$LayoutParams;

    .line 69
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-static {v0}, Landroid/view/WindowManager$LayoutParams;->mayUseInputMethod(I)Z

    move-result v0

    .line 71
    .local v0, "hasImeFocus":Z
    if-eqz p1, :cond_3b

    invoke-static {p2}, Landroid/view/ImeFocusController;->isInLocalFocusMode(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_3b

    .line 74
    :cond_f
    iget-boolean v1, p0, Landroid/view/ImeFocusController;->mHasImeFocus:Z

    if-ne v0, v1, :cond_14

    .line 75
    return-void

    .line 77
    :cond_14
    iput-boolean v0, p0, Landroid/view/ImeFocusController;->mHasImeFocus:Z

    .line 78
    iget-boolean v1, p0, Landroid/view/ImeFocusController;->mHasImeFocus:Z

    if-eqz v1, :cond_3a

    .line 79
    invoke-direct {p0}, Landroid/view/ImeFocusController;->getImmDelegate()Landroid/view/ImeFocusController$InputMethodManagerDelegate;

    move-result-object v1

    iget-object v2, p0, Landroid/view/ImeFocusController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-interface {v1, v2}, Landroid/view/ImeFocusController$InputMethodManagerDelegate;->onPreWindowGainedFocus(Landroid/view/ViewRootImpl;)V

    .line 80
    iget-object v1, p0, Landroid/view/ImeFocusController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    .line 81
    .local v1, "focusedView":Landroid/view/View;
    if-eqz v1, :cond_2f

    move-object v2, v1

    goto :goto_33

    :cond_2f
    iget-object v2, p0, Landroid/view/ImeFocusController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 82
    .local v2, "viewForWindowFocus":Landroid/view/View;
    :goto_33
    invoke-direct {p0}, Landroid/view/ImeFocusController;->getImmDelegate()Landroid/view/ImeFocusController$InputMethodManagerDelegate;

    move-result-object v3

    invoke-interface {v3, v2, p2}, Landroid/view/ImeFocusController$InputMethodManagerDelegate;->onPostWindowGainedFocus(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    .line 84
    .end local v1    # "focusedView":Landroid/view/View;
    .end local v2    # "viewForWindowFocus":Landroid/view/View;
    :cond_3a
    return-void

    .line 72
    :cond_3b
    :goto_3b
    return-void
.end method

.method blacklist onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 129
    invoke-direct {p0}, Landroid/view/ImeFocusController;->getImmDelegate()Landroid/view/ImeFocusController$InputMethodManagerDelegate;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ImeFocusController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-interface {v0, p1, v1}, Landroid/view/ImeFocusController$InputMethodManagerDelegate;->onViewDetachedFromWindow(Landroid/view/View;Landroid/view/ViewRootImpl;)V

    .line 131
    return-void
.end method

.method blacklist onViewFocusChanged(Landroid/view/View;Z)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .line 124
    invoke-direct {p0}, Landroid/view/ImeFocusController;->getImmDelegate()Landroid/view/ImeFocusController$InputMethodManagerDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/ImeFocusController$InputMethodManagerDelegate;->onViewFocusChanged(Landroid/view/View;Z)V

    .line 125
    return-void
.end method

.method blacklist onWindowDismissed()V
    .registers 3

    .line 135
    invoke-direct {p0}, Landroid/view/ImeFocusController;->getImmDelegate()Landroid/view/ImeFocusController$InputMethodManagerDelegate;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ImeFocusController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-interface {v0, v1}, Landroid/view/ImeFocusController$InputMethodManagerDelegate;->onWindowDismissed(Landroid/view/ViewRootImpl;)V

    .line 136
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ImeFocusController;->mHasImeFocus:Z

    .line 137
    return-void
.end method

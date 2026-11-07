.class public final Landroid/view/ImeInsetsSourceConsumer;
.super Landroid/view/InsetsSourceConsumer;
.source "ImeInsetsSourceConsumer.java"


# instance fields
.field private blacklist mHasPendingRequest:Z

.field private blacklist mIsRequestedVisibleAwaitingLeash:Z


# direct methods
.method public constructor blacklist <init>(ILandroid/view/InsetsState;Landroid/view/InsetsController;)V
    .registers 5
    .param p1, "id"    # I
    .param p2, "state"    # Landroid/view/InsetsState;
    .param p3, "controller"    # Landroid/view/InsetsController;

    .line 55
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v0

    invoke-direct {p0, p1, v0, p2, p3}, Landroid/view/InsetsSourceConsumer;-><init>(IILandroid/view/InsetsState;Landroid/view/InsetsController;)V

    .line 56
    return-void
.end method

.method private blacklist getImm()Landroid/view/inputmethod/InputMethodManager;
    .registers 2

    .line 290
    iget-object v0, p0, Landroid/view/ImeInsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v0}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    return-object v0
.end method

.method private blacklist hasLeash()Z
    .registers 3

    .line 254
    invoke-virtual {p0}, Landroid/view/ImeInsetsSourceConsumer;->getControl()Landroid/view/InsetsSourceControl;

    move-result-object v0

    .line 255
    .local v0, "control":Landroid/view/InsetsSourceControl;
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method private blacklist notifyHidden(Landroid/view/inputmethod/ImeTracker$Token;)V
    .registers 6
    .param p1, "statsToken"    # Landroid/view/inputmethod/ImeTracker$Token;

    .line 200
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 201
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    const/16 v1, 0x26

    invoke-interface {v0, p1, v1}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 204
    invoke-direct {p0}, Landroid/view/ImeInsetsSourceConsumer;->getImm()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ImeInsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v1}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/InsetsController$Host;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/view/inputmethod/InputMethodManager;->notifyImeHidden(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;)V

    .line 205
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ImeInsetsSourceConsumer;->mIsRequestedVisibleAwaitingLeash:Z

    .line 206
    const-wide/16 v1, 0x8

    const-string v3, "IC.hideRequestFromApi"

    invoke-static {v1, v2, v3, v0}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 208
    :cond_2a
    return-void
.end method


# virtual methods
.method public blacklist applyLocalVisibilityOverride()Z
    .registers 5

    .line 124
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 125
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ImeInsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    .line 127
    invoke-virtual {v1}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 125
    const-string v2, "ImeInsetsSourceConsumer#applyLocalVisibilityOverride"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    .line 129
    :cond_1a
    invoke-super {p0}, Landroid/view/InsetsSourceConsumer;->applyLocalVisibilityOverride()Z

    move-result v0

    return v0
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 9
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 271
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 272
    .local v0, "token":J
    const-wide v2, 0x10b00000001L

    invoke-super {p0, p1, v2, v3}, Landroid/view/InsetsSourceConsumer;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 273
    const-wide v2, 0x10800000003L

    iget-boolean v4, p0, Landroid/view/ImeInsetsSourceConsumer;->mIsRequestedVisibleAwaitingLeash:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 274
    const-wide v2, 0x10800000006L

    iget-boolean v4, p0, Landroid/view/ImeInsetsSourceConsumer;->mHasPendingRequest:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 275
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 276
    return-void
.end method

.method protected blacklist isRequestedVisibleAwaitingControl()Z
    .registers 2

    .line 247
    invoke-super {p0}, Landroid/view/InsetsSourceConsumer;->isRequestedVisibleAwaitingControl()Z

    move-result v0

    if-nez v0, :cond_d

    iget-boolean v0, p0, Landroid/view/ImeInsetsSourceConsumer;->mIsRequestedVisibleAwaitingLeash:Z

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public blacklist onAnimationStateChanged(Z)Z
    .registers 9
    .param p1, "running"    # Z

    .line 60
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 61
    invoke-super {p0, p1}, Landroid/view/InsetsSourceConsumer;->onAnimationStateChanged(Z)Z

    move-result v0

    return v0

    .line 63
    :cond_b
    if-nez p1, :cond_21

    .line 64
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ImeInsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    .line 66
    invoke-virtual {v1}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 64
    const-string v2, "ImeInsetsSourceConsumer#onAnimationFinished"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    .line 68
    :cond_21
    const/4 v0, 0x0

    .line 69
    .local v0, "insetsChanged":Z
    invoke-static {}, Landroid/view/inputmethod/Flags;->predictiveBackIme()Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_3a

    if-nez p1, :cond_3a

    invoke-virtual {p0}, Landroid/view/ImeInsetsSourceConsumer;->isShowRequested()Z

    move-result v1

    if-eqz v1, :cond_3a

    iget v1, p0, Landroid/view/ImeInsetsSourceConsumer;->mAnimationState:I

    if-ne v1, v2, :cond_3a

    .line 73
    invoke-virtual {p0}, Landroid/view/ImeInsetsSourceConsumer;->applyLocalVisibilityOverride()Z

    move-result v1

    or-int/2addr v0, v1

    .line 75
    :cond_3a
    invoke-super {p0, p1}, Landroid/view/InsetsSourceConsumer;->onAnimationStateChanged(Z)Z

    move-result v1

    or-int/2addr v0, v1

    .line 76
    if-eqz p1, :cond_54

    invoke-virtual {p0}, Landroid/view/ImeInsetsSourceConsumer;->isShowRequested()Z

    move-result v1

    if-nez v1, :cond_54

    iget-object v1, p0, Landroid/view/ImeInsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    .line 77
    invoke-virtual {v1}, Landroid/view/InsetsController;->isPredictiveBackImeHideAnimInProgress()Z

    move-result v1

    if-eqz v1, :cond_54

    .line 79
    invoke-virtual {p0}, Landroid/view/ImeInsetsSourceConsumer;->applyLocalVisibilityOverride()Z

    move-result v1

    or-int/2addr v0, v1

    .line 81
    :cond_54
    invoke-virtual {p0}, Landroid/view/ImeInsetsSourceConsumer;->isShowRequested()Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_7e

    .line 82
    iput-boolean v3, p0, Landroid/view/ImeInsetsSourceConsumer;->mIsRequestedVisibleAwaitingLeash:Z

    .line 83
    if-nez p1, :cond_7e

    iget-boolean v1, p0, Landroid/view/ImeInsetsSourceConsumer;->mHasPendingRequest:Z

    if-nez v1, :cond_7e

    .line 84
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v1

    iget-object v4, p0, Landroid/view/ImeInsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    .line 87
    invoke-virtual {v4}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/InsetsController$Host;->isHandlingPointerEvent()Z

    move-result v4

    .line 84
    const/4 v5, 0x5

    const/16 v6, 0x33

    invoke-interface {v1, v2, v5, v6, v4}, Landroid/view/inputmethod/ImeTracker;->onStart(IIIZ)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v1

    .line 88
    .local v1, "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    invoke-direct {p0, v1}, Landroid/view/ImeInsetsSourceConsumer;->notifyHidden(Landroid/view/inputmethod/ImeTracker$Token;)V

    .line 89
    invoke-virtual {p0}, Landroid/view/ImeInsetsSourceConsumer;->removeSurface()V

    .line 97
    .end local v1    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    :cond_7e
    iput-boolean v3, p0, Landroid/view/ImeInsetsSourceConsumer;->mHasPendingRequest:Z

    .line 98
    return v0
.end method

.method public blacklist onPerceptible(Z)V
    .registers 4
    .param p1, "perceptible"    # Z

    .line 260
    invoke-super {p0, p1}, Landroid/view/InsetsSourceConsumer;->onPerceptible(Z)V

    .line 261
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 262
    iget-object v0, p0, Landroid/view/ImeInsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v0}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/InsetsController$Host;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    .line 263
    .local v0, "window":Landroid/os/IBinder;
    if-eqz v0, :cond_1c

    .line 264
    invoke-direct {p0}, Landroid/view/ImeInsetsSourceConsumer;->getImm()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Landroid/view/inputmethod/InputMethodManager;->reportPerceptible(Landroid/os/IBinder;Z)V

    .line 267
    .end local v0    # "window":Landroid/os/IBinder;
    :cond_1c
    return-void
.end method

.method public blacklist onShowRequested()V
    .registers 3

    .line 283
    iget v0, p0, Landroid/view/ImeInsetsSourceConsumer;->mAnimationState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_d

    iget-object v0, p0, Landroid/view/ImeInsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    .line 284
    invoke-virtual {v0}, Landroid/view/InsetsController;->isPredictiveBackImeHideAnimInProgress()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 285
    :cond_d
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ImeInsetsSourceConsumer;->mHasPendingRequest:Z

    .line 287
    :cond_10
    return-void
.end method

.method public blacklist onWindowFocusGained(Z)V
    .registers 4
    .param p1, "hasViewFocus"    # Z

    .line 104
    invoke-super {p0, p1}, Landroid/view/InsetsSourceConsumer;->onWindowFocusGained(Z)V

    .line 105
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v0

    if-nez v0, :cond_26

    .line 106
    invoke-direct {p0}, Landroid/view/ImeInsetsSourceConsumer;->getImm()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->registerImeConsumer(Landroid/view/ImeInsetsSourceConsumer;)V

    .line 107
    iget-object v0, p0, Landroid/view/ImeInsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v0}, Landroid/view/InsetsController;->getRequestedVisibleTypes()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ImeInsetsSourceConsumer;->getType()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_26

    invoke-direct {p0}, Landroid/view/ImeInsetsSourceConsumer;->hasLeash()Z

    move-result v0

    if-nez v0, :cond_26

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ImeInsetsSourceConsumer;->mIsRequestedVisibleAwaitingLeash:Z

    .line 111
    :cond_26
    return-void
.end method

.method public blacklist onWindowFocusLost()V
    .registers 2

    .line 115
    invoke-super {p0}, Landroid/view/InsetsSourceConsumer;->onWindowFocusLost()V

    .line 116
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v0

    if-nez v0, :cond_13

    .line 117
    invoke-direct {p0}, Landroid/view/ImeInsetsSourceConsumer;->getImm()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->unregisterImeConsumer(Landroid/view/ImeInsetsSourceConsumer;)V

    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ImeInsetsSourceConsumer;->mIsRequestedVisibleAwaitingLeash:Z

    .line 120
    :cond_13
    return-void
.end method

.method public blacklist removeSurface()V
    .registers 3

    .line 212
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 213
    invoke-super {p0}, Landroid/view/InsetsSourceConsumer;->removeSurface()V

    goto :goto_1d

    .line 215
    :cond_a
    iget-object v0, p0, Landroid/view/ImeInsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v0}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/InsetsController$Host;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    .line 216
    .local v0, "window":Landroid/os/IBinder;
    if-eqz v0, :cond_1d

    .line 217
    invoke-direct {p0}, Landroid/view/ImeInsetsSourceConsumer;->getImm()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/inputmethod/InputMethodManager;->removeImeSurface(Landroid/os/IBinder;)V

    .line 220
    .end local v0    # "window":Landroid/os/IBinder;
    :cond_1d
    :goto_1d
    return-void
.end method

.method blacklist requestHide(ZLandroid/view/inputmethod/ImeTracker$Token;)V
    .registers 8
    .param p1, "fromIme"    # Z
    .param p2, "statsToken"    # Landroid/view/inputmethod/ImeTracker$Token;

    .line 173
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v0

    if-nez v0, :cond_31

    .line 174
    if-nez p1, :cond_2a

    .line 177
    invoke-direct {p0}, Landroid/view/ImeInsetsSourceConsumer;->hasLeash()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 178
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ImeInsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    .line 181
    invoke-virtual {v1}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/InsetsController$Host;->isHandlingPointerEvent()Z

    move-result v1

    .line 178
    const/4 v2, 0x2

    const/4 v3, 0x5

    const/16 v4, 0x34

    invoke-interface {v0, v2, v3, v4, v1}, Landroid/view/inputmethod/ImeTracker;->onStart(IIIZ)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v0

    goto :goto_26

    .line 182
    :cond_25
    move-object v0, p2

    :goto_26
    nop

    .line 185
    .local v0, "notifyStatsToken":Landroid/view/inputmethod/ImeTracker$Token;
    invoke-direct {p0, v0}, Landroid/view/ImeInsetsSourceConsumer;->notifyHidden(Landroid/view/inputmethod/ImeTracker$Token;)V

    .line 187
    .end local v0    # "notifyStatsToken":Landroid/view/inputmethod/ImeTracker$Token;
    :cond_2a
    iget v0, p0, Landroid/view/ImeInsetsSourceConsumer;->mAnimationState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_31

    .line 188
    iput-boolean v1, p0, Landroid/view/ImeInsetsSourceConsumer;->mHasPendingRequest:Z

    .line 191
    :cond_31
    return-void
.end method

.method public blacklist requestShow(ZLandroid/view/inputmethod/ImeTracker$Token;)I
    .registers 8
    .param p1, "fromIme"    # Z
    .param p2, "statsToken"    # Landroid/view/inputmethod/ImeTracker$Token;

    .line 139
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_65

    .line 140
    if-eqz p1, :cond_1d

    .line 141
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    iget-object v2, p0, Landroid/view/ImeInsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    .line 143
    invoke-virtual {v2}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    .line 141
    const-string v3, "ImeInsetsSourceConsumer#requestShow"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v2, v4}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    .line 145
    :cond_1d
    invoke-virtual {p0}, Landroid/view/ImeInsetsSourceConsumer;->onShowRequested()V

    .line 149
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    const/16 v2, 0x24

    invoke-interface {v0, p2, v2}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 152
    invoke-direct {p0}, Landroid/view/ImeInsetsSourceConsumer;->hasLeash()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_32

    .line 154
    iput-boolean v2, p0, Landroid/view/ImeInsetsSourceConsumer;->mIsRequestedVisibleAwaitingLeash:Z

    .line 160
    :cond_32
    if-nez p1, :cond_63

    iget-object v0, p0, Landroid/view/ImeInsetsSourceConsumer;->mState:Landroid/view/InsetsState;

    invoke-virtual {p0}, Landroid/view/ImeInsetsSourceConsumer;->getId()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ImeInsetsSourceConsumer;->getType()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/view/InsetsState;->isSourceOrDefaultVisible(II)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 161
    invoke-direct {p0}, Landroid/view/ImeInsetsSourceConsumer;->hasLeash()Z

    move-result v0

    if-eqz v0, :cond_4b

    goto :goto_63

    .line 165
    :cond_4b
    invoke-direct {p0}, Landroid/view/ImeInsetsSourceConsumer;->getImm()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v3, p0, Landroid/view/ImeInsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v3}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/InsetsController$Host;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3, p2}, Landroid/view/inputmethod/InputMethodManager;->requestImeShow(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 166
    move v1, v2

    goto :goto_62

    :cond_61
    nop

    .line 165
    :goto_62
    return v1

    .line 162
    :cond_63
    :goto_63
    const/4 v0, 0x0

    return v0

    .line 168
    :cond_65
    return v1
.end method

.method public blacklist setControl(Landroid/view/InsetsSourceControl;[I[I[I[I)Z
    .registers 11
    .param p1, "control"    # Landroid/view/InsetsSourceControl;
    .param p2, "showTypes"    # [I
    .param p3, "hideTypes"    # [I
    .param p4, "cancelTypes"    # [I
    .param p5, "transientTypes"    # [I

    .line 225
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 226
    invoke-super/range {p0 .. p5}, Landroid/view/InsetsSourceConsumer;->setControl(Landroid/view/InsetsSourceControl;[I[I[I[I)Z

    move-result v0

    move-object v1, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .end local p1    # "control":Landroid/view/InsetsSourceControl;
    .local v1, "transientTypes":[I
    .local p2, "control":Landroid/view/InsetsSourceControl;
    .local p3, "showTypes":[I
    .local p4, "hideTypes":[I
    .local p5, "cancelTypes":[I
    return v0

    .line 228
    .end local v1    # "transientTypes":[I
    .restart local p1    # "control":Landroid/view/InsetsSourceControl;
    .local p2, "showTypes":[I
    .local p3, "hideTypes":[I
    .local p4, "cancelTypes":[I
    .local p5, "transientTypes":[I
    :cond_11
    move-object v1, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .end local p1    # "control":Landroid/view/InsetsSourceControl;
    .restart local v1    # "transientTypes":[I
    .local p2, "control":Landroid/view/InsetsSourceControl;
    .local p3, "showTypes":[I
    .local p4, "hideTypes":[I
    .local p5, "cancelTypes":[I
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    iget-object v2, p1, Landroid/view/ImeInsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    .line 229
    invoke-virtual {v2}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    .line 228
    const-string v3, "ImeInsetsSourceConsumer#setControl"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v2, v4}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    .line 230
    move-object p1, p2

    move-object p2, p3

    move-object p3, p4

    move-object p4, p5

    move-object p5, v1

    .end local v1    # "transientTypes":[I
    .restart local p1    # "control":Landroid/view/InsetsSourceControl;
    .local p2, "showTypes":[I
    .local p3, "hideTypes":[I
    .local p4, "cancelTypes":[I
    .local p5, "transientTypes":[I
    invoke-super/range {p0 .. p5}, Landroid/view/InsetsSourceConsumer;->setControl(Landroid/view/InsetsSourceControl;[I[I[I[I)Z

    move-result v0

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .end local p1    # "control":Landroid/view/InsetsSourceControl;
    .restart local v1    # "transientTypes":[I
    .local p2, "control":Landroid/view/InsetsSourceControl;
    .local p3, "showTypes":[I
    .local p4, "hideTypes":[I
    .local p5, "cancelTypes":[I
    const/4 v2, 0x0

    if-nez v0, :cond_3d

    .line 231
    return v2

    .line 233
    :cond_3d
    if-nez p2, :cond_4f

    iget-boolean v0, p1, Landroid/view/ImeInsetsSourceConsumer;->mIsRequestedVisibleAwaitingLeash:Z

    if-nez v0, :cond_4f

    .line 234
    iget-object v0, p1, Landroid/view/ImeInsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {p0}, Landroid/view/ImeInsetsSourceConsumer;->getType()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/view/InsetsController;->setRequestedVisibleTypes(II)V

    .line 235
    invoke-virtual {p0}, Landroid/view/ImeInsetsSourceConsumer;->removeSurface()V

    .line 237
    :cond_4f
    const/4 v0, 0x1

    if-eqz p2, :cond_5a

    invoke-virtual {p2}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v3

    if-eqz v3, :cond_5a

    move v3, v0

    goto :goto_5b

    :cond_5a
    move v3, v2

    .line 238
    .local v3, "hasLeash":Z
    :goto_5b
    if-eqz v3, :cond_5f

    .line 239
    iput-boolean v2, p1, Landroid/view/ImeInsetsSourceConsumer;->mIsRequestedVisibleAwaitingLeash:Z

    .line 241
    :cond_5f
    return v0
.end method

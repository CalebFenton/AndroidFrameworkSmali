.class public final Landroid/accessibilityservice/TouchInteractionController;
.super Ljava/lang/Object;
.source "TouchInteractionController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accessibilityservice/TouchInteractionController$Callback;,
        Landroid/accessibilityservice/TouchInteractionController$State;
    }
.end annotation


# static fields
.field private static final blacklist MAX_POINTER_COUNT:I = 0x20

.field public static final whitelist STATE_CLEAR:I = 0x0

.field public static final whitelist STATE_DELEGATING:I = 0x4

.field public static final whitelist STATE_DRAGGING:I = 0x3

.field public static final whitelist STATE_TOUCH_EXPLORING:I = 0x2

.field public static final whitelist STATE_TOUCH_INTERACTING:I = 0x1


# instance fields
.field private blacklist mCallbacks:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/accessibilityservice/TouchInteractionController$Callback;",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDisplayId:I

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mQueuedMotionEvents:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mService:Landroid/accessibilityservice/AccessibilityService;

.field private blacklist mServiceDetectsGestures:Z

.field private blacklist mState:I

.field private blacklist mStateChangeRequested:Z


# direct methods
.method constructor blacklist <init>(Landroid/accessibilityservice/AccessibilityService;Ljava/lang/Object;I)V
    .registers 5
    .param p1, "service"    # Landroid/accessibilityservice/AccessibilityService;
    .param p2, "lock"    # Ljava/lang/Object;
    .param p3, "displayId"    # I

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mQueuedMotionEvents:Ljava/util/Queue;

    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mStateChangeRequested:Z

    .line 117
    iput v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mState:I

    .line 121
    iput p3, p0, Landroid/accessibilityservice/TouchInteractionController;->mDisplayId:I

    .line 122
    iput-object p2, p0, Landroid/accessibilityservice/TouchInteractionController;->mLock:Ljava/lang/Object;

    .line 123
    iput-object p1, p0, Landroid/accessibilityservice/TouchInteractionController;->mService:Landroid/accessibilityservice/AccessibilityService;

    .line 124
    return-void
.end method

.method static synthetic blacklist lambda$onStateChanged$1(Landroid/accessibilityservice/TouchInteractionController$Callback;I)V
    .registers 2
    .param p0, "callback"    # Landroid/accessibilityservice/TouchInteractionController$Callback;
    .param p1, "state"    # I

    .line 224
    invoke-interface {p0, p1}, Landroid/accessibilityservice/TouchInteractionController$Callback;->onStateChanged(I)V

    return-void
.end method

.method static synthetic blacklist lambda$sendEventToAllListeners$0(Landroid/accessibilityservice/TouchInteractionController$Callback;Landroid/view/MotionEvent;)V
    .registers 2
    .param p0, "callback"    # Landroid/accessibilityservice/TouchInteractionController$Callback;
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 200
    invoke-interface {p0, p1}, Landroid/accessibilityservice/TouchInteractionController$Callback;->onMotionEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private blacklist sendEventToAllListeners(Landroid/view/MotionEvent;)V
    .registers 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 191
    iget-object v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 194
    :try_start_3
    new-instance v1, Landroid/util/ArrayMap;

    iget-object v2, p0, Landroid/accessibilityservice/TouchInteractionController;->mCallbacks:Landroid/util/ArrayMap;

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 195
    .local v1, "entries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/accessibilityservice/TouchInteractionController$Callback;Ljava/util/concurrent/Executor;>;"
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_30

    .line 196
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .local v2, "count":I
    :goto_10
    if-ge v0, v2, :cond_2f

    .line 197
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accessibilityservice/TouchInteractionController$Callback;

    .line 198
    .local v3, "callback":Landroid/accessibilityservice/TouchInteractionController$Callback;
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/Executor;

    .line 199
    .local v4, "executor":Ljava/util/concurrent/Executor;
    if-eqz v4, :cond_29

    .line 200
    new-instance v5, Landroid/accessibilityservice/TouchInteractionController$$ExternalSyntheticLambda1;

    invoke-direct {v5, v3, p1}, Landroid/accessibilityservice/TouchInteractionController$$ExternalSyntheticLambda1;-><init>(Landroid/accessibilityservice/TouchInteractionController$Callback;Landroid/view/MotionEvent;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2c

    .line 203
    :cond_29
    invoke-interface {v3, p1}, Landroid/accessibilityservice/TouchInteractionController$Callback;->onMotionEvent(Landroid/view/MotionEvent;)V

    .line 196
    .end local v3    # "callback":Landroid/accessibilityservice/TouchInteractionController$Callback;
    .end local v4    # "executor":Ljava/util/concurrent/Executor;
    :goto_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 206
    .end local v0    # "i":I
    .end local v2    # "count":I
    :cond_2f
    return-void

    .line 195
    .end local v1    # "entries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/accessibilityservice/TouchInteractionController$Callback;Ljava/util/concurrent/Executor;>;"
    :catchall_30
    move-exception v1

    :try_start_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw v1
.end method

.method private blacklist setServiceDetectsGestures(Z)V
    .registers 5
    .param p1, "mode"    # Z

    .line 249
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    iget-object v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mService:Landroid/accessibilityservice/AccessibilityService;

    .line 250
    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityService;->getConnectionId()I

    move-result v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 251
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_1e

    .line 253
    :try_start_f
    iget v1, p0, Landroid/accessibilityservice/TouchInteractionController;->mDisplayId:I

    invoke-interface {v0, v1, p1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->setServiceDetectsGesturesEnabled(IZ)V

    .line 254
    iput-boolean p1, p0, Landroid/accessibilityservice/TouchInteractionController;->mServiceDetectsGestures:Z
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_16} :catch_17

    .line 257
    goto :goto_1e

    .line 255
    :catch_17
    move-exception v1

    .line 256
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 259
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_1e
    :goto_1e
    return-void
.end method

.method public static whitelist stateToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "state"    # I

    .line 414
    packed-switch p0, :pswitch_data_26

    .line 426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 424
    :pswitch_17
    const-string v0, "STATE_DELEGATING"

    return-object v0

    .line 422
    :pswitch_1a
    const-string v0, "STATE_DRAGGING"

    return-object v0

    .line 420
    :pswitch_1d
    const-string v0, "STATE_TOUCH_EXPLORING"

    return-object v0

    .line 418
    :pswitch_20
    const-string v0, "STATE_TOUCH_INTERACTING"

    return-object v0

    .line 416
    :pswitch_23
    const-string v0, "STATE_CLEAR"

    return-object v0

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
    .end packed-switch
.end method

.method private blacklist validateTransitionRequest()V
    .registers 4

    .line 378
    iget-boolean v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mServiceDetectsGestures:Z

    if-eqz v0, :cond_36

    iget-object v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-eqz v0, :cond_36

    .line 382
    iget v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_17

    iget v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_17

    .line 386
    return-void

    .line 383
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State transition requests are not allowed in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/accessibilityservice/TouchInteractionController;->mState:I

    .line 384
    invoke-static {v2}, Landroid/accessibilityservice/TouchInteractionController;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 379
    :cond_36
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "State transitions are not allowed without first adding a callback."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist getDisplayId()I
    .registers 2

    .line 395
    iget v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mDisplayId:I

    return v0
.end method

.method public whitelist getMaxPointerCount()I
    .registers 2

    .line 390
    const/16 v0, 0x20

    return v0
.end method

.method public whitelist getState()I
    .registers 3

    .line 406
    iget-object v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 407
    :try_start_3
    iget v1, p0, Landroid/accessibilityservice/TouchInteractionController;->mState:I

    monitor-exit v0

    return v1

    .line 408
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method blacklist onMotionEvent(Landroid/view/MotionEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 182
    iget-boolean v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mStateChangeRequested:Z

    if-eqz v0, :cond_a

    .line 183
    iget-object v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mQueuedMotionEvents:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 185
    :cond_a
    invoke-direct {p0, p1}, Landroid/accessibilityservice/TouchInteractionController;->sendEventToAllListeners(Landroid/view/MotionEvent;)V

    .line 187
    :goto_d
    return-void
.end method

.method blacklist onStateChanged(I)V
    .registers 8
    .param p1, "state"    # I

    .line 213
    iput p1, p0, Landroid/accessibilityservice/TouchInteractionController;->mState:I

    .line 215
    iget-object v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 218
    :try_start_5
    new-instance v1, Landroid/util/ArrayMap;

    iget-object v2, p0, Landroid/accessibilityservice/TouchInteractionController;->mCallbacks:Landroid/util/ArrayMap;

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 219
    .local v1, "entries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/accessibilityservice/TouchInteractionController$Callback;Ljava/util/concurrent/Executor;>;"
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_49

    .line 220
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .local v2, "count":I
    :goto_12
    if-ge v0, v2, :cond_31

    .line 221
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accessibilityservice/TouchInteractionController$Callback;

    .line 222
    .local v3, "callback":Landroid/accessibilityservice/TouchInteractionController$Callback;
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/Executor;

    .line 223
    .local v4, "executor":Ljava/util/concurrent/Executor;
    if-eqz v4, :cond_2b

    .line 224
    new-instance v5, Landroid/accessibilityservice/TouchInteractionController$$ExternalSyntheticLambda0;

    invoke-direct {v5, v3, p1}, Landroid/accessibilityservice/TouchInteractionController$$ExternalSyntheticLambda0;-><init>(Landroid/accessibilityservice/TouchInteractionController$Callback;I)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2e

    .line 227
    :cond_2b
    invoke-interface {v3, p1}, Landroid/accessibilityservice/TouchInteractionController$Callback;->onStateChanged(I)V

    .line 220
    .end local v3    # "callback":Landroid/accessibilityservice/TouchInteractionController$Callback;
    .end local v4    # "executor":Ljava/util/concurrent/Executor;
    :goto_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 230
    .end local v0    # "i":I
    .end local v2    # "count":I
    :cond_31
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mStateChangeRequested:Z

    .line 231
    :goto_34
    iget-object v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mQueuedMotionEvents:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-lez v0, :cond_48

    .line 232
    iget-object v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mQueuedMotionEvents:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MotionEvent;

    invoke-direct {p0, v0}, Landroid/accessibilityservice/TouchInteractionController;->sendEventToAllListeners(Landroid/view/MotionEvent;)V

    goto :goto_34

    .line 234
    :cond_48
    return-void

    .line 219
    .end local v1    # "entries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/accessibilityservice/TouchInteractionController$Callback;Ljava/util/concurrent/Executor;>;"
    :catchall_49
    move-exception v1

    :try_start_4a
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    throw v1
.end method

.method public whitelist performClick()V
    .registers 4

    .line 344
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    iget-object v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mService:Landroid/accessibilityservice/AccessibilityService;

    .line 345
    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityService;->getConnectionId()I

    move-result v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 346
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_1c

    .line 348
    :try_start_f
    iget v1, p0, Landroid/accessibilityservice/TouchInteractionController;->mDisplayId:I

    invoke-interface {v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->onDoubleTap(I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_14} :catch_15

    .line 351
    goto :goto_1c

    .line 349
    :catch_15
    move-exception v1

    .line 350
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 353
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_1c
    :goto_1c
    return-void
.end method

.method public whitelist performLongClickAndStartDrag()V
    .registers 4

    .line 366
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    iget-object v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mService:Landroid/accessibilityservice/AccessibilityService;

    .line 367
    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityService;->getConnectionId()I

    move-result v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 368
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_1c

    .line 370
    :try_start_f
    iget v1, p0, Landroid/accessibilityservice/TouchInteractionController;->mDisplayId:I

    invoke-interface {v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->onDoubleTapAndHold(I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_14} :catch_15

    .line 373
    goto :goto_1c

    .line 371
    :catch_15
    move-exception v1

    .line 372
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 375
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_1c
    :goto_1c
    return-void
.end method

.method public whitelist registerCallback(Ljava/util/concurrent/Executor;Landroid/accessibilityservice/TouchInteractionController$Callback;)V
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/accessibilityservice/TouchInteractionController$Callback;

    .line 135
    iget-object v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 136
    :try_start_3
    iget-object v1, p0, Landroid/accessibilityservice/TouchInteractionController;->mCallbacks:Landroid/util/ArrayMap;

    if-nez v1, :cond_e

    .line 137
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/accessibilityservice/TouchInteractionController;->mCallbacks:Landroid/util/ArrayMap;

    .line 139
    :cond_e
    iget-object v1, p0, Landroid/accessibilityservice/TouchInteractionController;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v1, p0, Landroid/accessibilityservice/TouchInteractionController;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1f

    .line 141
    invoke-direct {p0, v2}, Landroid/accessibilityservice/TouchInteractionController;->setServiceDetectsGestures(Z)V

    .line 143
    :cond_1f
    monitor-exit v0

    .line 144
    return-void

    .line 143
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v1
.end method

.method public whitelist requestDelegating()V
    .registers 4

    .line 319
    invoke-direct {p0}, Landroid/accessibilityservice/TouchInteractionController;->validateTransitionRequest()V

    .line 321
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    iget-object v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mService:Landroid/accessibilityservice/AccessibilityService;

    .line 322
    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityService;->getConnectionId()I

    move-result v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 323
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_23

    .line 325
    :try_start_12
    iget v1, p0, Landroid/accessibilityservice/TouchInteractionController;->mDisplayId:I

    invoke-interface {v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->requestDelegating(I)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_17} :catch_1c

    .line 328
    nop

    .line 329
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/accessibilityservice/TouchInteractionController;->mStateChangeRequested:Z

    goto :goto_23

    .line 326
    :catch_1c
    move-exception v1

    .line 327
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 331
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_23
    :goto_23
    return-void
.end method

.method public whitelist requestDragging(I)V
    .registers 5
    .param p1, "pointerId"    # I

    .line 294
    invoke-direct {p0}, Landroid/accessibilityservice/TouchInteractionController;->validateTransitionRequest()V

    .line 295
    if-ltz p1, :cond_2a

    const/16 v0, 0x20

    if-gt p1, v0, :cond_2a

    .line 299
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    iget-object v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mService:Landroid/accessibilityservice/AccessibilityService;

    .line 300
    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityService;->getConnectionId()I

    move-result v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 301
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_29

    .line 303
    :try_start_18
    iget v1, p0, Landroid/accessibilityservice/TouchInteractionController;->mDisplayId:I

    invoke-interface {v0, v1, p1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->requestDragging(II)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1d} :catch_22

    .line 306
    nop

    .line 307
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/accessibilityservice/TouchInteractionController;->mStateChangeRequested:Z

    goto :goto_29

    .line 304
    :catch_22
    move-exception v1

    .line 305
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 309
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_29
    :goto_29
    return-void

    .line 296
    .end local v0    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    :cond_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid pointer id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist requestTouchExploration()V
    .registers 4

    .line 268
    invoke-direct {p0}, Landroid/accessibilityservice/TouchInteractionController;->validateTransitionRequest()V

    .line 270
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    iget-object v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mService:Landroid/accessibilityservice/AccessibilityService;

    .line 271
    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityService;->getConnectionId()I

    move-result v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 272
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_23

    .line 274
    :try_start_12
    iget v1, p0, Landroid/accessibilityservice/TouchInteractionController;->mDisplayId:I

    invoke-interface {v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->requestTouchExploration(I)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_17} :catch_1c

    .line 277
    nop

    .line 278
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/accessibilityservice/TouchInteractionController;->mStateChangeRequested:Z

    goto :goto_23

    .line 275
    :catch_1c
    move-exception v1

    .line 276
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 280
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_23
    :goto_23
    return-void
.end method

.method public whitelist unregisterAllCallbacks()V
    .registers 3

    .line 169
    iget-object v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mCallbacks:Landroid/util/ArrayMap;

    if-eqz v0, :cond_15

    .line 170
    iget-object v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 171
    :try_start_7
    iget-object v1, p0, Landroid/accessibilityservice/TouchInteractionController;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 172
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/accessibilityservice/TouchInteractionController;->setServiceDetectsGestures(Z)V

    .line 173
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    .line 175
    :cond_15
    :goto_15
    return-void
.end method

.method public whitelist unregisterCallback(Landroid/accessibilityservice/TouchInteractionController$Callback;)Z
    .registers 6
    .param p1, "callback"    # Landroid/accessibilityservice/TouchInteractionController$Callback;

    .line 153
    iget-object v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mCallbacks:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 154
    return v1

    .line 156
    :cond_6
    iget-object v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 157
    :try_start_9
    iget-object v2, p0, Landroid/accessibilityservice/TouchInteractionController;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_13

    const/4 v2, 0x1

    goto :goto_14

    :cond_13
    move v2, v1

    .line 158
    .local v2, "result":Z
    :goto_14
    if-eqz v2, :cond_21

    iget-object v3, p0, Landroid/accessibilityservice/TouchInteractionController;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-nez v3, :cond_21

    .line 159
    invoke-direct {p0, v1}, Landroid/accessibilityservice/TouchInteractionController;->setServiceDetectsGestures(Z)V

    .line 161
    :cond_21
    monitor-exit v0

    return v2

    .line 162
    .end local v2    # "result":Z
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_9 .. :try_end_25} :catchall_23

    throw v1
.end method

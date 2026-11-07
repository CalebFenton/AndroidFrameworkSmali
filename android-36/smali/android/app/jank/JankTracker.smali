.class public Landroid/app/jank/JankTracker;
.super Ljava/lang/Object;
.source "JankTracker.java"


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist DEBUG_KEY:Ljava/lang/String; = "JANKTRACKER"

.field private static final blacklist REGISTRATION_DELAY_MS:I = 0x3e8


# instance fields
.field private blacklist mActivityName:Ljava/lang/String;

.field private blacklist mAppUid:I

.field private blacklist mDecorView:Landroid/view/View;

.field private blacklist mHandler:Landroid/os/Handler;

.field private blacklist mHandlerThread:Landroid/os/HandlerThread;

.field private final blacklist mJankDataListener:Landroid/view/SurfaceControl$OnJankDataListener;

.field private blacklist mJankDataListenerRegistration:Landroid/view/SurfaceControl$OnJankDataListenerRegistration;

.field private blacklist mJankDataProcessor:Landroid/app/jank/JankDataProcessor;

.field private blacklist mListenersRegistered:Z

.field private final blacklist mOnWindowAttachListener:Landroid/view/ViewTreeObserver$OnWindowAttachListener;

.field private blacklist mStateTracker:Landroid/app/jank/StateTracker;

.field private blacklist mSurfaceControl:Landroid/view/AttachedSurfaceControl;

.field private blacklist mTrackingEnabled:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmActivityName(Landroid/app/jank/JankTracker;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/app/jank/JankTracker;->mActivityName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAppUid(Landroid/app/jank/JankTracker;)I
    .registers 1

    iget p0, p0, Landroid/app/jank/JankTracker;->mAppUid:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDecorView(Landroid/app/jank/JankTracker;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Landroid/app/jank/JankTracker;->mDecorView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmJankDataProcessor(Landroid/app/jank/JankTracker;)Landroid/app/jank/JankDataProcessor;
    .registers 1

    iget-object p0, p0, Landroid/app/jank/JankTracker;->mJankDataProcessor:Landroid/app/jank/JankDataProcessor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnWindowAttachListener(Landroid/app/jank/JankTracker;)Landroid/view/ViewTreeObserver$OnWindowAttachListener;
    .registers 1

    iget-object p0, p0, Landroid/app/jank/JankTracker;->mOnWindowAttachListener:Landroid/view/ViewTreeObserver$OnWindowAttachListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetHandler(Landroid/app/jank/JankTracker;)Landroid/os/Handler;
    .registers 1

    invoke-direct {p0}, Landroid/app/jank/JankTracker;->getHandler()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$minitializeJankTrackingComponents(Landroid/app/jank/JankTracker;)V
    .registers 1

    invoke-direct {p0}, Landroid/app/jank/JankTracker;->initializeJankTrackingComponents()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mregisterJankDataListener(Landroid/app/jank/JankTracker;)V
    .registers 1

    invoke-direct {p0}, Landroid/app/jank/JankTracker;->registerJankDataListener()V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/Choreographer;Landroid/view/View;)V
    .registers 5
    .param p1, "choreographer"    # Landroid/view/Choreographer;
    .param p2, "decorView"    # Landroid/view/View;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AppJankTracker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/app/jank/JankTracker;->mHandlerThread:Landroid/os/HandlerThread;

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/jank/JankTracker;->mHandler:Landroid/os/Handler;

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/jank/JankTracker;->mTrackingEnabled:Z

    .line 82
    iput-boolean v0, p0, Landroid/app/jank/JankTracker;->mListenersRegistered:Z

    .line 84
    new-instance v0, Landroid/app/jank/JankTracker$1;

    invoke-direct {v0, p0}, Landroid/app/jank/JankTracker$1;-><init>(Landroid/app/jank/JankTracker;)V

    iput-object v0, p0, Landroid/app/jank/JankTracker;->mJankDataListener:Landroid/view/SurfaceControl$OnJankDataListener;

    .line 95
    new-instance v0, Landroid/app/jank/JankTracker$2;

    invoke-direct {v0, p0}, Landroid/app/jank/JankTracker$2;-><init>(Landroid/app/jank/JankTracker;)V

    iput-object v0, p0, Landroid/app/jank/JankTracker;->mOnWindowAttachListener:Landroid/view/ViewTreeObserver$OnWindowAttachListener;

    .line 121
    new-instance v0, Landroid/app/jank/StateTracker;

    invoke-direct {v0, p1}, Landroid/app/jank/StateTracker;-><init>(Landroid/view/Choreographer;)V

    iput-object v0, p0, Landroid/app/jank/JankTracker;->mStateTracker:Landroid/app/jank/StateTracker;

    .line 122
    new-instance v0, Landroid/app/jank/JankDataProcessor;

    iget-object v1, p0, Landroid/app/jank/JankTracker;->mStateTracker:Landroid/app/jank/StateTracker;

    invoke-direct {v0, v1}, Landroid/app/jank/JankDataProcessor;-><init>(Landroid/app/jank/StateTracker;)V

    iput-object v0, p0, Landroid/app/jank/JankTracker;->mJankDataProcessor:Landroid/app/jank/JankDataProcessor;

    .line 123
    iput-object p2, p0, Landroid/app/jank/JankTracker;->mDecorView:Landroid/view/View;

    .line 124
    iget-object v0, p0, Landroid/app/jank/JankTracker;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 125
    invoke-direct {p0}, Landroid/app/jank/JankTracker;->registerWindowListeners()V

    .line 126
    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/View;)V
    .registers 4
    .param p1, "decorView"    # Landroid/view/View;

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AppJankTracker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/app/jank/JankTracker;->mHandlerThread:Landroid/os/HandlerThread;

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/jank/JankTracker;->mHandler:Landroid/os/Handler;

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/jank/JankTracker;->mTrackingEnabled:Z

    .line 82
    iput-boolean v0, p0, Landroid/app/jank/JankTracker;->mListenersRegistered:Z

    .line 84
    new-instance v0, Landroid/app/jank/JankTracker$1;

    invoke-direct {v0, p0}, Landroid/app/jank/JankTracker$1;-><init>(Landroid/app/jank/JankTracker;)V

    iput-object v0, p0, Landroid/app/jank/JankTracker;->mJankDataListener:Landroid/view/SurfaceControl$OnJankDataListener;

    .line 95
    new-instance v0, Landroid/app/jank/JankTracker$2;

    invoke-direct {v0, p0}, Landroid/app/jank/JankTracker$2;-><init>(Landroid/app/jank/JankTracker;)V

    iput-object v0, p0, Landroid/app/jank/JankTracker;->mOnWindowAttachListener:Landroid/view/ViewTreeObserver$OnWindowAttachListener;

    .line 136
    iput-object p1, p0, Landroid/app/jank/JankTracker;->mDecorView:Landroid/view/View;

    .line 137
    iget-object v0, p0, Landroid/app/jank/JankTracker;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 138
    invoke-direct {p0}, Landroid/app/jank/JankTracker;->registerWindowListeners()V

    .line 139
    return-void
.end method

.method private blacklist addActivityToStateTracking()V
    .registers 4

    .line 354
    iget-object v0, p0, Landroid/app/jank/JankTracker;->mStateTracker:Landroid/app/jank/StateTracker;

    if-nez v0, :cond_5

    return-void

    .line 356
    :cond_5
    iget-object v0, p0, Landroid/app/jank/JankTracker;->mStateTracker:Landroid/app/jank/StateTracker;

    iget-object v1, p0, Landroid/app/jank/JankTracker;->mActivityName:Ljava/lang/String;

    const-string/jumbo v2, "unspecified"

    invoke-virtual {v0, v2, v1, v2}, Landroid/app/jank/StateTracker;->putState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    return-void
.end method

.method private blacklist getHandler()Landroid/os/Handler;
    .registers 3

    .line 347
    iget-object v0, p0, Landroid/app/jank/JankTracker;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_11

    .line 348
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Landroid/app/jank/JankTracker;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/app/jank/JankTracker;->mHandler:Landroid/os/Handler;

    .line 350
    :cond_11
    iget-object v0, p0, Landroid/app/jank/JankTracker;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private blacklist initializeJankTrackingComponents()V
    .registers 4

    .line 368
    iget-object v0, p0, Landroid/app/jank/JankTracker;->mDecorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 369
    .local v0, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_32

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getChoreographer()Landroid/view/Choreographer;

    move-result-object v1

    if-nez v1, :cond_f

    goto :goto_32

    .line 373
    :cond_f
    iget-object v1, p0, Landroid/app/jank/JankTracker;->mStateTracker:Landroid/app/jank/StateTracker;

    if-nez v1, :cond_1e

    .line 374
    new-instance v1, Landroid/app/jank/StateTracker;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getChoreographer()Landroid/view/Choreographer;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/jank/StateTracker;-><init>(Landroid/view/Choreographer;)V

    iput-object v1, p0, Landroid/app/jank/JankTracker;->mStateTracker:Landroid/app/jank/StateTracker;

    .line 377
    :cond_1e
    iget-object v1, p0, Landroid/app/jank/JankTracker;->mJankDataProcessor:Landroid/app/jank/JankDataProcessor;

    if-nez v1, :cond_2b

    .line 378
    new-instance v1, Landroid/app/jank/JankDataProcessor;

    iget-object v2, p0, Landroid/app/jank/JankTracker;->mStateTracker:Landroid/app/jank/StateTracker;

    invoke-direct {v1, v2}, Landroid/app/jank/JankDataProcessor;-><init>(Landroid/app/jank/StateTracker;)V

    iput-object v1, p0, Landroid/app/jank/JankTracker;->mJankDataProcessor:Landroid/app/jank/JankDataProcessor;

    .line 381
    :cond_2b
    invoke-direct {p0}, Landroid/app/jank/JankTracker;->addActivityToStateTracking()V

    .line 382
    invoke-direct {p0}, Landroid/app/jank/JankTracker;->registerForJankData()V

    .line 383
    return-void

    .line 370
    :cond_32
    :goto_32
    return-void
.end method

.method private blacklist registerForJankData()V
    .registers 5

    .line 283
    iget-object v0, p0, Landroid/app/jank/JankTracker;->mDecorView:Landroid/view/View;

    if-nez v0, :cond_5

    return-void

    .line 285
    :cond_5
    iget-object v0, p0, Landroid/app/jank/JankTracker;->mDecorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootSurfaceControl()Landroid/view/AttachedSurfaceControl;

    move-result-object v0

    iput-object v0, p0, Landroid/app/jank/JankTracker;->mSurfaceControl:Landroid/view/AttachedSurfaceControl;

    .line 287
    iget-object v0, p0, Landroid/app/jank/JankTracker;->mSurfaceControl:Landroid/view/AttachedSurfaceControl;

    if-eqz v0, :cond_25

    iget-boolean v0, p0, Landroid/app/jank/JankTracker;->mListenersRegistered:Z

    if-eqz v0, :cond_16

    goto :goto_25

    .line 292
    :cond_16
    invoke-direct {p0}, Landroid/app/jank/JankTracker;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/app/jank/JankTracker$4;

    invoke-direct {v1, p0}, Landroid/app/jank/JankTracker$4;-><init>(Landroid/app/jank/JankTracker;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 298
    return-void

    .line 287
    :cond_25
    :goto_25
    return-void
.end method

.method private blacklist registerJankDataListener()V
    .registers 4

    .line 324
    iget-object v0, p0, Landroid/app/jank/JankTracker;->mSurfaceControl:Landroid/view/AttachedSurfaceControl;

    if-nez v0, :cond_5

    .line 328
    return-void

    .line 331
    :cond_5
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/Flags;->jankApi()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 332
    iget-object v0, p0, Landroid/app/jank/JankTracker;->mSurfaceControl:Landroid/view/AttachedSurfaceControl;

    iget-object v1, p0, Landroid/app/jank/JankTracker;->mHandlerThread:Landroid/os/HandlerThread;

    .line 333
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Landroid/app/jank/JankTracker;->mJankDataListener:Landroid/view/SurfaceControl$OnJankDataListener;

    .line 332
    invoke-interface {v0, v1, v2}, Landroid/view/AttachedSurfaceControl;->registerOnJankDataListener(Ljava/util/concurrent/Executor;Landroid/view/SurfaceControl$OnJankDataListener;)Landroid/view/SurfaceControl$OnJankDataListenerRegistration;

    move-result-object v0

    iput-object v0, p0, Landroid/app/jank/JankTracker;->mJankDataListenerRegistration:Landroid/view/SurfaceControl$OnJankDataListenerRegistration;

    .line 335
    iget-object v0, p0, Landroid/app/jank/JankTracker;->mJankDataListenerRegistration:Landroid/view/SurfaceControl$OnJankDataListenerRegistration;

    sget-object v1, Landroid/view/SurfaceControl$OnJankDataListenerRegistration;->NONE:Landroid/view/SurfaceControl$OnJankDataListenerRegistration;

    if-ne v0, v1, :cond_22

    .line 340
    return-void

    .line 342
    :cond_22
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/jank/JankTracker;->mListenersRegistered:Z

    .line 344
    :cond_25
    return-void
.end method

.method private blacklist registerWindowListeners()V
    .registers 3

    .line 319
    iget-object v0, p0, Landroid/app/jank/JankTracker;->mDecorView:Landroid/view/View;

    if-nez v0, :cond_5

    return-void

    .line 320
    :cond_5
    iget-object v0, p0, Landroid/app/jank/JankTracker;->mDecorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/app/jank/JankTracker;->mOnWindowAttachListener:Landroid/view/ViewTreeObserver$OnWindowAttachListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnWindowAttachListener(Landroid/view/ViewTreeObserver$OnWindowAttachListener;)V

    .line 321
    return-void
.end method

.method private blacklist removeActivityFromStateTracking()V
    .registers 4

    .line 361
    iget-object v0, p0, Landroid/app/jank/JankTracker;->mStateTracker:Landroid/app/jank/StateTracker;

    if-nez v0, :cond_5

    return-void

    .line 363
    :cond_5
    iget-object v0, p0, Landroid/app/jank/JankTracker;->mStateTracker:Landroid/app/jank/StateTracker;

    iget-object v1, p0, Landroid/app/jank/JankTracker;->mActivityName:Ljava/lang/String;

    const-string/jumbo v2, "unspecified"

    invoke-virtual {v0, v2, v1, v2}, Landroid/app/jank/StateTracker;->removeState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    return-void
.end method

.method private blacklist unregisterForJankData()V
    .registers 2

    .line 273
    iget-object v0, p0, Landroid/app/jank/JankTracker;->mJankDataListenerRegistration:Landroid/view/SurfaceControl$OnJankDataListenerRegistration;

    if-nez v0, :cond_5

    return-void

    .line 275
    :cond_5
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/Flags;->jankApi()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 276
    iget-object v0, p0, Landroid/app/jank/JankTracker;->mJankDataListenerRegistration:Landroid/view/SurfaceControl$OnJankDataListenerRegistration;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$OnJankDataListenerRegistration;->release()V

    .line 278
    :cond_10
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/jank/JankTracker;->mJankDataListenerRegistration:Landroid/view/SurfaceControl$OnJankDataListenerRegistration;

    .line 279
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/jank/JankTracker;->mListenersRegistered:Z

    .line 280
    return-void
.end method


# virtual methods
.method public blacklist addUiState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "widgetCategory"    # Ljava/lang/String;
    .param p2, "widgetId"    # Ljava/lang/String;
    .param p3, "widgetState"    # Ljava/lang/String;

    .line 180
    invoke-virtual {p0}, Landroid/app/jank/JankTracker;->shouldTrack()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 182
    :cond_7
    iget-object v0, p0, Landroid/app/jank/JankTracker;->mStateTracker:Landroid/app/jank/StateTracker;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/jank/StateTracker;->putState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method public blacklist disableAppJankTracking()V
    .registers 2

    .line 229
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/jank/JankTracker;->mTrackingEnabled:Z

    .line 230
    invoke-direct {p0}, Landroid/app/jank/JankTracker;->removeActivityFromStateTracking()V

    .line 231
    invoke-direct {p0}, Landroid/app/jank/JankTracker;->unregisterForJankData()V

    .line 232
    return-void
.end method

.method public blacklist enableAppJankTracking()V
    .registers 2

    .line 220
    invoke-direct {p0}, Landroid/app/jank/JankTracker;->addActivityToStateTracking()V

    .line 221
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/jank/JankTracker;->mTrackingEnabled:Z

    .line 222
    invoke-direct {p0}, Landroid/app/jank/JankTracker;->registerForJankData()V

    .line 223
    return-void
.end method

.method public blacklist forceListenerRegistration()V
    .registers 2

    .line 266
    invoke-direct {p0}, Landroid/app/jank/JankTracker;->addActivityToStateTracking()V

    .line 267
    iget-object v0, p0, Landroid/app/jank/JankTracker;->mDecorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootSurfaceControl()Landroid/view/AttachedSurfaceControl;

    move-result-object v0

    iput-object v0, p0, Landroid/app/jank/JankTracker;->mSurfaceControl:Landroid/view/AttachedSurfaceControl;

    .line 268
    invoke-direct {p0}, Landroid/app/jank/JankTracker;->registerJankDataListener()V

    .line 269
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/jank/JankTracker;->mListenersRegistered:Z

    .line 270
    return-void
.end method

.method public blacklist getAllUiStates(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/app/jank/StateTracker$StateData;",
            ">;)V"
        }
    .end annotation

    .line 243
    .local p1, "stateDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/jank/StateTracker$StateData;>;"
    iget-object v0, p0, Landroid/app/jank/JankTracker;->mStateTracker:Landroid/app/jank/StateTracker;

    if-nez v0, :cond_5

    return-void

    .line 244
    :cond_5
    iget-object v0, p0, Landroid/app/jank/JankTracker;->mStateTracker:Landroid/app/jank/StateTracker;

    invoke-virtual {v0, p1}, Landroid/app/jank/StateTracker;->retrieveAllStates(Ljava/util/ArrayList;)V

    .line 245
    return-void
.end method

.method public blacklist getPendingJankStats()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/app/jank/JankDataProcessor$PendingJankStat;",
            ">;"
        }
    .end annotation

    .line 254
    iget-object v0, p0, Landroid/app/jank/JankTracker;->mJankDataProcessor:Landroid/app/jank/JankDataProcessor;

    if-nez v0, :cond_a

    .line 255
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0

    .line 257
    :cond_a
    iget-object v0, p0, Landroid/app/jank/JankTracker;->mJankDataProcessor:Landroid/app/jank/JankDataProcessor;

    invoke-virtual {v0}, Landroid/app/jank/JankDataProcessor;->getPendingJankStats()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public blacklist mergeAppJankStats(Landroid/app/jank/AppJankStats;)V
    .registers 4
    .param p1, "appJankStats"    # Landroid/app/jank/AppJankStats;

    .line 146
    invoke-virtual {p1}, Landroid/app/jank/AppJankStats;->getUid()I

    move-result v0

    iget v1, p0, Landroid/app/jank/JankTracker;->mAppUid:I

    if-eq v0, v1, :cond_9

    .line 151
    return-void

    .line 153
    :cond_9
    invoke-direct {p0}, Landroid/app/jank/JankTracker;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/app/jank/JankTracker$3;

    invoke-direct {v1, p0, p1}, Landroid/app/jank/JankTracker$3;-><init>(Landroid/app/jank/JankTracker;Landroid/app/jank/AppJankStats;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 162
    return-void
.end method

.method public blacklist removeUiState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "widgetCategory"    # Ljava/lang/String;
    .param p2, "widgetId"    # Ljava/lang/String;
    .param p3, "widgetState"    # Ljava/lang/String;

    .line 194
    invoke-virtual {p0}, Landroid/app/jank/JankTracker;->shouldTrack()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 196
    :cond_7
    iget-object v0, p0, Landroid/app/jank/JankTracker;->mStateTracker:Landroid/app/jank/StateTracker;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/jank/StateTracker;->removeState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    return-void
.end method

.method public blacklist setActivityName(Ljava/lang/String;)V
    .registers 2
    .param p1, "activityName"    # Ljava/lang/String;

    .line 165
    iput-object p1, p0, Landroid/app/jank/JankTracker;->mActivityName:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public blacklist setAppUid(I)V
    .registers 2
    .param p1, "uid"    # I

    .line 169
    iput p1, p0, Landroid/app/jank/JankTracker;->mAppUid:I

    .line 170
    return-void
.end method

.method public blacklist shouldTrack()Z
    .registers 2

    .line 309
    iget-boolean v0, p0, Landroid/app/jank/JankTracker;->mTrackingEnabled:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Landroid/app/jank/JankTracker;->mListenersRegistered:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public blacklist updateUiState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "widgetCategory"    # Ljava/lang/String;
    .param p2, "widgetId"    # Ljava/lang/String;
    .param p3, "currentState"    # Ljava/lang/String;
    .param p4, "nextState"    # Ljava/lang/String;

    .line 209
    invoke-virtual {p0}, Landroid/app/jank/JankTracker;->shouldTrack()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 211
    :cond_7
    iget-object v0, p0, Landroid/app/jank/JankTracker;->mStateTracker:Landroid/app/jank/StateTracker;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/jank/StateTracker;->updateState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    return-void
.end method

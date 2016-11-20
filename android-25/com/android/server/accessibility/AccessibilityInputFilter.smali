.class Lcom/android/server/accessibility/AccessibilityInputFilter;
.super Landroid/view/InputFilter;
.source "AccessibilityInputFilter.java"

# interfaces
.implements Lcom/android/server/accessibility/EventStreamTransformation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/AccessibilityInputFilter$1;,
        Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;,
        Lcom/android/server/accessibility/AccessibilityInputFilter$KeyboardEventStreamState;,
        Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;,
        Lcom/android/server/accessibility/AccessibilityInputFilter$MouseEventStreamState;,
        Lcom/android/server/accessibility/AccessibilityInputFilter$TouchScreenEventStreamState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final FEATURES_AFFECTING_MOTION_EVENTS:I = 0x1b

.field static final FLAG_FEATURE_AUTOCLICK:I = 0x8

.field static final FLAG_FEATURE_CONTROL_SCREEN_MAGNIFIER:I = 0x20

.field static final FLAG_FEATURE_FILTER_KEY_EVENTS:I = 0x4

.field static final FLAG_FEATURE_INJECT_MOTION_EVENTS:I = 0x10

.field static final FLAG_FEATURE_SCREEN_MAGNIFIER:I = 0x1

.field static final FLAG_FEATURE_TOUCH_EXPLORATION:I = 0x2

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

.field private mAutoclickController:Lcom/android/server/accessibility/AutoclickController;

.field private final mChoreographer:Landroid/view/Choreographer;

.field private final mContext:Landroid/content/Context;

.field private mEnabledFeatures:I

.field private mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

.field private mEventQueue:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

.field private mInstalled:Z

.field private mKeyboardInterceptor:Lcom/android/server/accessibility/KeyboardInterceptor;

.field private mKeyboardStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

.field private mMagnificationGestureHandler:Lcom/android/server/accessibility/MagnificationGestureHandler;

.field private mMotionEventInjector:Lcom/android/server/accessibility/MotionEventInjector;

.field private mMouseStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

.field private final mPm:Landroid/os/PowerManager;

.field private final mProcessBatchedEventsRunnable:Ljava/lang/Runnable;

.field private mTouchExplorer:Lcom/android/server/accessibility/TouchExplorer;

.field private mTouchScreenStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

.field private mUserId:I


# direct methods
.method static synthetic -get0(Lcom/android/server/accessibility/AccessibilityInputFilter;)Landroid/view/Choreographer;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mChoreographer:Landroid/view/Choreographer;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/accessibility/AccessibilityInputFilter;)Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventQueue:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/accessibility/AccessibilityInputFilter;J)V
    .locals 1
    .param p1, "frameNanos"    # J

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->processBatchedEvents(J)V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/accessibility/AccessibilityInputFilter;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->scheduleProcessBatchedEvents()V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 41
    const-class v0, Lcom/android/server/accessibility/AccessibilityInputFilter;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/android/server/accessibility/AccessibilityInputFilter;->TAG:Ljava/lang/String;

    #@8
    .line 39
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/accessibility/AccessibilityManagerService;

    #@0
    .prologue
    .line 145
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Landroid/view/InputFilter;-><init>(Landroid/os/Looper;)V

    #@7
    .line 93
    new-instance v0, Lcom/android/server/accessibility/AccessibilityInputFilter$1;

    #@9
    invoke-direct {v0, p0}, Lcom/android/server/accessibility/AccessibilityInputFilter$1;-><init>(Lcom/android/server/accessibility/AccessibilityInputFilter;)V

    #@c
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mProcessBatchedEventsRunnable:Ljava/lang/Runnable;

    #@e
    .line 146
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mContext:Landroid/content/Context;

    #@10
    .line 147
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@12
    .line 148
    const-string/jumbo v0, "power"

    #@15
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Landroid/os/PowerManager;

    #@1b
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mPm:Landroid/os/PowerManager;

    #@1d
    .line 149
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    #@20
    move-result-object v0

    #@21
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mChoreographer:Landroid/view/Choreographer;

    #@23
    .line 144
    return-void
.end method

.method private addFirstEventHandler(Lcom/android/server/accessibility/EventStreamTransformation;)V
    .locals 1
    .param p1, "handler"    # Lcom/android/server/accessibility/EventStreamTransformation;

    #@0
    .prologue
    .line 423
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 424
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    #@6
    invoke-interface {p1, v0}, Lcom/android/server/accessibility/EventStreamTransformation;->setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V

    #@9
    .line 428
    :goto_0
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    #@b
    .line 422
    return-void

    #@c
    .line 426
    :cond_0
    invoke-interface {p1, p0}, Lcom/android/server/accessibility/EventStreamTransformation;->setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V

    #@f
    goto :goto_0
.end method

.method private batchMotionEvent(Landroid/view/MotionEvent;I)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    #@0
    .prologue
    .line 281
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventQueue:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 282
    invoke-static {p1, p2}, Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;->obtain(Landroid/view/MotionEvent;I)Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    #@7
    move-result-object v1

    #@8
    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventQueue:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    #@a
    .line 283
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->scheduleProcessBatchedEvents()V

    #@d
    .line 284
    return-void

    #@e
    .line 286
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventQueue:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    #@10
    iget-object v1, v1, Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;->event:Landroid/view/MotionEvent;

    #@12
    invoke-virtual {v1, p1}, Landroid/view/MotionEvent;->addBatch(Landroid/view/MotionEvent;)Z

    #@15
    move-result v1

    #@16
    if-eqz v1, :cond_1

    #@18
    .line 287
    return-void

    #@19
    .line 289
    :cond_1
    invoke-static {p1, p2}, Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;->obtain(Landroid/view/MotionEvent;I)Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    #@1c
    move-result-object v0

    #@1d
    .line 290
    .local v0, "holder":Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventQueue:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    #@1f
    iput-object v1, v0, Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;->next:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    #@21
    .line 291
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventQueue:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    #@23
    iput-object v0, v1, Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;->previous:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    #@25
    .line 292
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventQueue:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    #@27
    .line 277
    return-void
.end method

.method private disableFeatures()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 434
    const-wide v0, 0x7fffffffffffffffL

    #@6
    invoke-direct {p0, v0, v1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->processBatchedEvents(J)V

    #@9
    .line 435
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMotionEventInjector:Lcom/android/server/accessibility/MotionEventInjector;

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 436
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@f
    invoke-virtual {v0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->setMotionEventInjector(Lcom/android/server/accessibility/MotionEventInjector;)V

    #@12
    .line 437
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMotionEventInjector:Lcom/android/server/accessibility/MotionEventInjector;

    #@14
    invoke-virtual {v0}, Lcom/android/server/accessibility/MotionEventInjector;->onDestroy()V

    #@17
    .line 438
    iput-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMotionEventInjector:Lcom/android/server/accessibility/MotionEventInjector;

    #@19
    .line 440
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAutoclickController:Lcom/android/server/accessibility/AutoclickController;

    #@1b
    if-eqz v0, :cond_1

    #@1d
    .line 441
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAutoclickController:Lcom/android/server/accessibility/AutoclickController;

    #@1f
    invoke-virtual {v0}, Lcom/android/server/accessibility/AutoclickController;->onDestroy()V

    #@22
    .line 442
    iput-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAutoclickController:Lcom/android/server/accessibility/AutoclickController;

    #@24
    .line 444
    :cond_1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Lcom/android/server/accessibility/TouchExplorer;

    #@26
    if-eqz v0, :cond_2

    #@28
    .line 445
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Lcom/android/server/accessibility/TouchExplorer;

    #@2a
    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer;->onDestroy()V

    #@2d
    .line 446
    iput-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Lcom/android/server/accessibility/TouchExplorer;

    #@2f
    .line 448
    :cond_2
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMagnificationGestureHandler:Lcom/android/server/accessibility/MagnificationGestureHandler;

    #@31
    if-eqz v0, :cond_3

    #@33
    .line 449
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMagnificationGestureHandler:Lcom/android/server/accessibility/MagnificationGestureHandler;

    #@35
    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler;->onDestroy()V

    #@38
    .line 450
    iput-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMagnificationGestureHandler:Lcom/android/server/accessibility/MagnificationGestureHandler;

    #@3a
    .line 452
    :cond_3
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mKeyboardInterceptor:Lcom/android/server/accessibility/KeyboardInterceptor;

    #@3c
    if-eqz v0, :cond_4

    #@3e
    .line 453
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mKeyboardInterceptor:Lcom/android/server/accessibility/KeyboardInterceptor;

    #@40
    invoke-virtual {v0}, Lcom/android/server/accessibility/KeyboardInterceptor;->onDestroy()V

    #@43
    .line 454
    iput-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mKeyboardInterceptor:Lcom/android/server/accessibility/KeyboardInterceptor;

    #@45
    .line 457
    :cond_4
    iput-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    #@47
    .line 458
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->resetStreamState()V

    #@4a
    .line 431
    return-void
.end method

.method private enableFeatures()V
    .locals 4

    #@0
    .prologue
    .line 383
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->resetStreamState()V

    #@3
    .line 385
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    #@5
    and-int/lit8 v1, v1, 0x8

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 386
    new-instance v1, Lcom/android/server/accessibility/AutoclickController;

    #@b
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mContext:Landroid/content/Context;

    #@d
    iget v3, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mUserId:I

    #@f
    invoke-direct {v1, v2, v3}, Lcom/android/server/accessibility/AutoclickController;-><init>(Landroid/content/Context;I)V

    #@12
    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAutoclickController:Lcom/android/server/accessibility/AutoclickController;

    #@14
    .line 387
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAutoclickController:Lcom/android/server/accessibility/AutoclickController;

    #@16
    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->addFirstEventHandler(Lcom/android/server/accessibility/EventStreamTransformation;)V

    #@19
    .line 390
    :cond_0
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    #@1b
    and-int/lit8 v1, v1, 0x2

    #@1d
    if-eqz v1, :cond_1

    #@1f
    .line 391
    new-instance v1, Lcom/android/server/accessibility/TouchExplorer;

    #@21
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mContext:Landroid/content/Context;

    #@23
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@25
    invoke-direct {v1, v2, v3}, Lcom/android/server/accessibility/TouchExplorer;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;)V

    #@28
    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Lcom/android/server/accessibility/TouchExplorer;

    #@2a
    .line 392
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Lcom/android/server/accessibility/TouchExplorer;

    #@2c
    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->addFirstEventHandler(Lcom/android/server/accessibility/EventStreamTransformation;)V

    #@2f
    .line 395
    :cond_1
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    #@31
    and-int/lit8 v1, v1, 0x20

    #@33
    if-nez v1, :cond_2

    #@35
    .line 396
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    #@37
    and-int/lit8 v1, v1, 0x1

    #@39
    if-eqz v1, :cond_3

    #@3b
    .line 397
    :cond_2
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    #@3d
    and-int/lit8 v1, v1, 0x1

    #@3f
    if-eqz v1, :cond_6

    #@41
    const/4 v0, 0x1

    #@42
    .line 399
    .local v0, "detectControlGestures":Z
    :goto_0
    new-instance v1, Lcom/android/server/accessibility/MagnificationGestureHandler;

    #@44
    .line 400
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mContext:Landroid/content/Context;

    #@46
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@48
    .line 399
    invoke-direct {v1, v2, v3, v0}, Lcom/android/server/accessibility/MagnificationGestureHandler;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;Z)V

    #@4b
    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMagnificationGestureHandler:Lcom/android/server/accessibility/MagnificationGestureHandler;

    #@4d
    .line 401
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMagnificationGestureHandler:Lcom/android/server/accessibility/MagnificationGestureHandler;

    #@4f
    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->addFirstEventHandler(Lcom/android/server/accessibility/EventStreamTransformation;)V

    #@52
    .line 404
    .end local v0    # "detectControlGestures":Z
    :cond_3
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    #@54
    and-int/lit8 v1, v1, 0x10

    #@56
    if-eqz v1, :cond_4

    #@58
    .line 405
    new-instance v1, Lcom/android/server/accessibility/MotionEventInjector;

    #@5a
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mContext:Landroid/content/Context;

    #@5c
    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    #@5f
    move-result-object v2

    #@60
    invoke-direct {v1, v2}, Lcom/android/server/accessibility/MotionEventInjector;-><init>(Landroid/os/Looper;)V

    #@63
    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMotionEventInjector:Lcom/android/server/accessibility/MotionEventInjector;

    #@65
    .line 406
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMotionEventInjector:Lcom/android/server/accessibility/MotionEventInjector;

    #@67
    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->addFirstEventHandler(Lcom/android/server/accessibility/EventStreamTransformation;)V

    #@6a
    .line 407
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@6c
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMotionEventInjector:Lcom/android/server/accessibility/MotionEventInjector;

    #@6e
    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->setMotionEventInjector(Lcom/android/server/accessibility/MotionEventInjector;)V

    #@71
    .line 410
    :cond_4
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    #@73
    and-int/lit8 v1, v1, 0x4

    #@75
    if-eqz v1, :cond_5

    #@77
    .line 411
    new-instance v1, Lcom/android/server/accessibility/KeyboardInterceptor;

    #@79
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@7b
    invoke-direct {v1, v2}, Lcom/android/server/accessibility/KeyboardInterceptor;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    #@7e
    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mKeyboardInterceptor:Lcom/android/server/accessibility/KeyboardInterceptor;

    #@80
    .line 412
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mKeyboardInterceptor:Lcom/android/server/accessibility/KeyboardInterceptor;

    #@82
    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->addFirstEventHandler(Lcom/android/server/accessibility/EventStreamTransformation;)V

    #@85
    .line 382
    :cond_5
    return-void

    #@86
    .line 397
    :cond_6
    const/4 v0, 0x0

    #@87
    .restart local v0    # "detectControlGestures":Z
    goto :goto_0
.end method

.method private getEventStreamState(Landroid/view/InputEvent;)Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;
    .locals 2
    .param p1, "event"    # Landroid/view/InputEvent;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 228
    instance-of v0, p1, Landroid/view/MotionEvent;

    #@3
    if-eqz v0, :cond_3

    #@5
    .line 229
    const/16 v0, 0x1002

    #@7
    invoke-virtual {p1, v0}, Landroid/view/InputEvent;->isFromSource(I)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 230
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchScreenStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    #@f
    if-nez v0, :cond_0

    #@11
    .line 231
    new-instance v0, Lcom/android/server/accessibility/AccessibilityInputFilter$TouchScreenEventStreamState;

    #@13
    invoke-direct {v0}, Lcom/android/server/accessibility/AccessibilityInputFilter$TouchScreenEventStreamState;-><init>()V

    #@16
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchScreenStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    #@18
    .line 233
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchScreenStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    #@1a
    return-object v0

    #@1b
    .line 235
    :cond_1
    const/16 v0, 0x2002

    #@1d
    invoke-virtual {p1, v0}, Landroid/view/InputEvent;->isFromSource(I)Z

    #@20
    move-result v0

    #@21
    if-eqz v0, :cond_5

    #@23
    .line 236
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMouseStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    #@25
    if-nez v0, :cond_2

    #@27
    .line 237
    new-instance v0, Lcom/android/server/accessibility/AccessibilityInputFilter$MouseEventStreamState;

    #@29
    invoke-direct {v0}, Lcom/android/server/accessibility/AccessibilityInputFilter$MouseEventStreamState;-><init>()V

    #@2c
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMouseStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    #@2e
    .line 239
    :cond_2
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMouseStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    #@30
    return-object v0

    #@31
    .line 241
    :cond_3
    instance-of v0, p1, Landroid/view/KeyEvent;

    #@33
    if-eqz v0, :cond_5

    #@35
    .line 242
    const/16 v0, 0x101

    #@37
    invoke-virtual {p1, v0}, Landroid/view/InputEvent;->isFromSource(I)Z

    #@3a
    move-result v0

    #@3b
    if-eqz v0, :cond_5

    #@3d
    .line 243
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mKeyboardStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    #@3f
    if-nez v0, :cond_4

    #@41
    .line 244
    new-instance v0, Lcom/android/server/accessibility/AccessibilityInputFilter$KeyboardEventStreamState;

    #@43
    invoke-direct {v0}, Lcom/android/server/accessibility/AccessibilityInputFilter$KeyboardEventStreamState;-><init>()V

    #@46
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mKeyboardStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    #@48
    .line 246
    :cond_4
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mKeyboardStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    #@4a
    return-object v0

    #@4b
    .line 249
    :cond_5
    return-object v1
.end method

.method private handleMotionEvent(Landroid/view/MotionEvent;I)V
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    #@0
    .prologue
    .line 326
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 327
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mPm:Landroid/os/PowerManager;

    #@6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    #@9
    move-result-wide v2

    #@a
    const/4 v4, 0x0

    #@b
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/PowerManager;->userActivity(JZ)V

    #@e
    .line 328
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    #@11
    move-result-object v0

    #@12
    .line 329
    .local v0, "transformedEvent":Landroid/view/MotionEvent;
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    #@14
    invoke-interface {v1, v0, p1, p2}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    #@17
    .line 330
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    #@1a
    .line 320
    .end local v0    # "transformedEvent":Landroid/view/MotionEvent;
    :cond_0
    return-void
.end method

.method private processBatchedEvents(J)V
    .locals 5
    .param p1, "frameNanos"    # J

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 296
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventQueue:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    #@3
    .line 297
    .local v0, "current":Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;
    if-nez v0, :cond_0

    #@5
    .line 298
    return-void

    #@6
    .line 300
    :cond_0
    :goto_0
    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;->next:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    #@8
    if-eqz v2, :cond_2

    #@a
    .line 301
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;->next:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    #@c
    goto :goto_0

    #@d
    .line 313
    :cond_1
    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;->event:Landroid/view/MotionEvent;

    #@f
    iget v3, v0, Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;->policyFlags:I

    #@11
    invoke-direct {p0, v2, v3}, Lcom/android/server/accessibility/AccessibilityInputFilter;->handleMotionEvent(Landroid/view/MotionEvent;I)V

    #@14
    .line 314
    move-object v1, v0

    #@15
    .line 315
    .local v1, "prior":Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;->previous:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    #@17
    .line 316
    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;->recycle()V

    #@1a
    .line 304
    .end local v1    # "prior":Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;
    :cond_2
    if-nez v0, :cond_3

    #@1c
    .line 305
    iput-object v4, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventQueue:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    #@1e
    .line 295
    :goto_1
    return-void

    #@1f
    .line 308
    :cond_3
    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;->event:Landroid/view/MotionEvent;

    #@21
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getEventTimeNano()J

    #@24
    move-result-wide v2

    #@25
    cmp-long v2, v2, p1

    #@27
    if-ltz v2, :cond_1

    #@29
    .line 310
    iput-object v4, v0, Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;->next:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    #@2b
    goto :goto_1
.end method

.method private processKeyEvent(Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;Landroid/view/KeyEvent;I)V
    .locals 1
    .param p1, "state"    # Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    #@0
    .prologue
    .line 266
    invoke-virtual {p1, p2}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->shouldProcessKeyEvent(Landroid/view/KeyEvent;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 267
    return-void

    #@7
    .line 269
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    #@9
    invoke-interface {v0, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onKeyEvent(Landroid/view/KeyEvent;I)V

    #@c
    .line 265
    return-void
.end method

.method private processMotionEvent(Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;Landroid/view/MotionEvent;I)V
    .locals 2
    .param p1, "state"    # Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;
    .param p2, "event"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    #@0
    .prologue
    .line 253
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->shouldProcessScroll()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    #@9
    move-result v0

    #@a
    const/16 v1, 0x8

    #@c
    if-ne v0, v1, :cond_0

    #@e
    .line 254
    invoke-super {p0, p2, p3}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    #@11
    .line 255
    return-void

    #@12
    .line 258
    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->shouldProcessMotionEvent(Landroid/view/MotionEvent;)Z

    #@15
    move-result v0

    #@16
    if-nez v0, :cond_1

    #@18
    .line 259
    return-void

    #@19
    .line 262
    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/AccessibilityInputFilter;->batchMotionEvent(Landroid/view/MotionEvent;I)V

    #@1c
    .line 252
    return-void
.end method

.method private scheduleProcessBatchedEvents()V
    .locals 4

    #@0
    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mChoreographer:Landroid/view/Choreographer;

    #@2
    .line 274
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mProcessBatchedEventsRunnable:Ljava/lang/Runnable;

    #@4
    .line 273
    const/4 v2, 0x0

    #@5
    .line 274
    const/4 v3, 0x0

    #@6
    .line 273
    invoke-virtual {v0, v2, v1, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    #@9
    .line 272
    return-void
.end method


# virtual methods
.method public clearEvents(I)V
    .locals 0
    .param p1, "inputSource"    # I

    #@0
    .prologue
    .line 358
    return-void
.end method

.method notifyAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    #@0
    .prologue
    .line 377
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 378
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    #@6
    invoke-interface {v0, p1}, Lcom/android/server/accessibility/EventStreamTransformation;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    #@9
    .line 376
    :cond_0
    return-void
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    #@0
    .prologue
    .line 346
    return-void
.end method

.method public onDestroy()V
    .locals 0

    #@0
    .prologue
    .line 474
    return-void
.end method

.method public onInputEvent(Landroid/view/InputEvent;I)V
    .locals 5
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "policyFlags"    # I

    #@0
    .prologue
    .line 180
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    #@2
    if-nez v4, :cond_0

    #@4
    .line 181
    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    #@7
    .line 182
    return-void

    #@8
    .line 185
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->getEventStreamState(Landroid/view/InputEvent;)Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    #@b
    move-result-object v3

    #@c
    .line 186
    .local v3, "state":Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;
    if-nez v3, :cond_1

    #@e
    .line 187
    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    #@11
    .line 188
    return-void

    #@12
    .line 191
    :cond_1
    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    #@15
    move-result v0

    #@16
    .line 192
    .local v0, "eventSource":I
    const/high16 v4, 0x40000000    # 2.0f

    #@18
    and-int/2addr v4, p2

    #@19
    if-nez v4, :cond_2

    #@1b
    .line 193
    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->reset()V

    #@1e
    .line 194
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    #@20
    invoke-interface {v4, v0}, Lcom/android/server/accessibility/EventStreamTransformation;->clearEvents(I)V

    #@23
    .line 195
    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    #@26
    .line 196
    return-void

    #@27
    .line 199
    :cond_2
    invoke-virtual {p1}, Landroid/view/InputEvent;->getDeviceId()I

    #@2a
    move-result v4

    #@2b
    invoke-virtual {v3, v4}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->updateDeviceId(I)Z

    #@2e
    move-result v4

    #@2f
    if-eqz v4, :cond_3

    #@31
    .line 200
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    #@33
    invoke-interface {v4, v0}, Lcom/android/server/accessibility/EventStreamTransformation;->clearEvents(I)V

    #@36
    .line 203
    :cond_3
    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->deviceIdValid()Z

    #@39
    move-result v4

    #@3a
    if-nez v4, :cond_4

    #@3c
    .line 204
    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    #@3f
    .line 205
    return-void

    #@40
    .line 208
    :cond_4
    instance-of v4, p1, Landroid/view/MotionEvent;

    #@42
    if-eqz v4, :cond_7

    #@44
    .line 209
    iget v4, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    #@46
    and-int/lit8 v4, v4, 0x1b

    #@48
    if-eqz v4, :cond_5

    #@4a
    move-object v2, p1

    #@4b
    .line 210
    check-cast v2, Landroid/view/MotionEvent;

    #@4d
    .line 211
    .local v2, "motionEvent":Landroid/view/MotionEvent;
    invoke-direct {p0, v3, v2, p2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->processMotionEvent(Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;Landroid/view/MotionEvent;I)V

    #@50
    .line 212
    return-void

    #@51
    .line 214
    .end local v2    # "motionEvent":Landroid/view/MotionEvent;
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    #@54
    .line 174
    :cond_6
    :goto_0
    return-void

    #@55
    .line 216
    :cond_7
    instance-of v4, p1, Landroid/view/KeyEvent;

    #@57
    if-eqz v4, :cond_6

    #@59
    move-object v1, p1

    #@5a
    .line 217
    check-cast v1, Landroid/view/KeyEvent;

    #@5c
    .line 218
    .local v1, "keyEvent":Landroid/view/KeyEvent;
    invoke-direct {p0, v3, v1, p2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->processKeyEvent(Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;Landroid/view/KeyEvent;I)V

    #@5f
    goto :goto_0
.end method

.method public onInstalled()V
    .locals 1

    #@0
    .prologue
    .line 157
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mInstalled:Z

    #@3
    .line 158
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->disableFeatures()V

    #@6
    .line 159
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->enableFeatures()V

    #@9
    .line 160
    invoke-super {p0}, Landroid/view/InputFilter;->onInstalled()V

    #@c
    .line 153
    return-void
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;I)V
    .locals 0
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    #@0
    .prologue
    .line 342
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->sendInputEvent(Landroid/view/InputEvent;I)V

    #@3
    .line 341
    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 0
    .param p1, "transformedEvent"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    #@0
    .prologue
    .line 337
    invoke-virtual {p0, p1, p3}, Lcom/android/server/accessibility/AccessibilityInputFilter;->sendInputEvent(Landroid/view/InputEvent;I)V

    #@3
    .line 336
    return-void
.end method

.method public onUninstalled()V
    .locals 1

    #@0
    .prologue
    .line 168
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mInstalled:Z

    #@3
    .line 169
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->disableFeatures()V

    #@6
    .line 170
    invoke-super {p0}, Landroid/view/InputFilter;->onUninstalled()V

    #@9
    .line 164
    return-void
.end method

.method resetStreamState()V
    .locals 1

    #@0
    .prologue
    .line 462
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchScreenStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 463
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchScreenStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    #@6
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->reset()V

    #@9
    .line 465
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMouseStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 466
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMouseStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    #@f
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->reset()V

    #@12
    .line 468
    :cond_1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mKeyboardStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    #@14
    if-eqz v0, :cond_2

    #@16
    .line 469
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mKeyboardStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    #@18
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->reset()V

    #@1b
    .line 461
    :cond_2
    return-void
.end method

.method public setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V
    .locals 0
    .param p1, "sink"    # Lcom/android/server/accessibility/EventStreamTransformation;

    #@0
    .prologue
    .line 353
    return-void
.end method

.method setUserAndEnabledFeatures(II)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "enabledFeatures"    # I

    #@0
    .prologue
    .line 363
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    #@2
    if-ne v0, p2, :cond_0

    #@4
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mUserId:I

    #@6
    if-ne v0, p1, :cond_0

    #@8
    .line 364
    return-void

    #@9
    .line 366
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mInstalled:Z

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 367
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->disableFeatures()V

    #@10
    .line 369
    :cond_1
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mUserId:I

    #@12
    .line 370
    iput p2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    #@14
    .line 371
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mInstalled:Z

    #@16
    if-eqz v0, :cond_2

    #@18
    .line 372
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->enableFeatures()V

    #@1b
    .line 362
    :cond_2
    return-void
.end method

.class final Lcom/android/server/accessibility/AutoclickController$ClickScheduler;
.super Ljava/lang/Object;
.source "AutoclickController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AutoclickController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ClickScheduler"
.end annotation


# static fields
.field private static final MOVEMENT_SLOPE:D = 20.0


# instance fields
.field private mActive:Z

.field private mAnchorCoords:Landroid/view/MotionEvent$PointerCoords;

.field private mDelay:I

.field private mEventPolicyFlags:I

.field private mHandler:Landroid/os/Handler;

.field private mLastMotionEvent:Landroid/view/MotionEvent;

.field private mMetaState:I

.field private mScheduledClickTime:J

.field private mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

.field private mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

.field final synthetic this$0:Lcom/android/server/accessibility/AutoclickController;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/AutoclickController;Landroid/os/Handler;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/accessibility/AutoclickController;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "delay"    # I

    #@0
    .prologue
    .line 280
    iput-object p1, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/AutoclickController;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 281
    iput-object p2, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mHandler:Landroid/os/Handler;

    #@7
    .line 283
    const/4 v0, 0x0

    #@8
    iput-object v0, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    #@a
    .line 284
    invoke-direct {p0}, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->resetInternalState()V

    #@d
    .line 285
    iput p3, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mDelay:I

    #@f
    .line 286
    new-instance v0, Landroid/view/MotionEvent$PointerCoords;

    #@11
    invoke-direct {v0}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    #@14
    iput-object v0, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mAnchorCoords:Landroid/view/MotionEvent$PointerCoords;

    #@16
    .line 280
    return-void
.end method

.method private cacheLastEvent(Landroid/view/MotionEvent;IZ)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I
    .param p3, "useAsAnchor"    # Z

    #@0
    .prologue
    .line 380
    iget-object v1, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 381
    iget-object v1, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    #@6
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    #@9
    .line 383
    :cond_0
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    #@c
    move-result-object v1

    #@d
    iput-object v1, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    #@f
    .line 384
    iput p2, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mEventPolicyFlags:I

    #@11
    .line 386
    if-eqz p3, :cond_1

    #@13
    .line 387
    iget-object v1, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    #@15
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionIndex()I

    #@18
    move-result v0

    #@19
    .line 388
    .local v0, "pointerIndex":I
    iget-object v1, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    #@1b
    iget-object v2, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mAnchorCoords:Landroid/view/MotionEvent$PointerCoords;

    #@1d
    invoke-virtual {v1, v0, v2}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    #@20
    .line 379
    .end local v0    # "pointerIndex":I
    :cond_1
    return-void
.end method

.method private detectMovement(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 407
    iget-object v6, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    #@3
    if-nez v6, :cond_0

    #@5
    .line 408
    return v5

    #@6
    .line 410
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    #@9
    move-result v4

    #@a
    .line 411
    .local v4, "pointerIndex":I
    iget-object v6, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mAnchorCoords:Landroid/view/MotionEvent$PointerCoords;

    #@c
    iget v6, v6, Landroid/view/MotionEvent$PointerCoords;->x:F

    #@e
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    #@11
    move-result v7

    #@12
    sub-float v2, v6, v7

    #@14
    .line 412
    .local v2, "deltaX":F
    iget-object v6, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mAnchorCoords:Landroid/view/MotionEvent$PointerCoords;

    #@16
    iget v6, v6, Landroid/view/MotionEvent$PointerCoords;->y:F

    #@18
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    #@1b
    move-result v7

    #@1c
    sub-float v3, v6, v7

    #@1e
    .line 413
    .local v3, "deltaY":F
    float-to-double v6, v2

    #@1f
    float-to-double v8, v3

    #@20
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    #@23
    move-result-wide v0

    #@24
    .line 414
    .local v0, "delta":D
    const-wide/high16 v6, 0x4034000000000000L    # 20.0

    #@26
    cmpl-double v6, v0, v6

    #@28
    if-lez v6, :cond_1

    #@2a
    const/4 v5, 0x1

    #@2b
    :cond_1
    return v5
.end method

.method private rescheduleClick(I)V
    .locals 6
    .param p1, "delay"    # I

    #@0
    .prologue
    .line 353
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@3
    move-result-wide v2

    #@4
    int-to-long v4, p1

    #@5
    add-long v0, v2, v4

    #@7
    .line 357
    .local v0, "clickTime":J
    iget-boolean v2, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mActive:Z

    #@9
    if-eqz v2, :cond_0

    #@b
    iget-wide v2, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mScheduledClickTime:J

    #@d
    cmp-long v2, v0, v2

    #@f
    if-lez v2, :cond_0

    #@11
    .line 358
    iput-wide v0, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mScheduledClickTime:J

    #@13
    .line 359
    return-void

    #@14
    .line 362
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mActive:Z

    #@16
    if-eqz v2, :cond_1

    #@18
    .line 363
    iget-object v2, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mHandler:Landroid/os/Handler;

    #@1a
    invoke-virtual {v2, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@1d
    .line 366
    :cond_1
    const/4 v2, 0x1

    #@1e
    iput-boolean v2, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mActive:Z

    #@20
    .line 367
    iput-wide v0, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mScheduledClickTime:J

    #@22
    .line 369
    iget-object v2, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mHandler:Landroid/os/Handler;

    #@24
    int-to-long v4, p1

    #@25
    invoke-virtual {v2, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    #@28
    .line 352
    return-void
.end method

.method private resetInternalState()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 393
    const/4 v0, 0x0

    #@2
    iput-boolean v0, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mActive:Z

    #@4
    .line 394
    iget-object v0, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 395
    iget-object v0, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    #@a
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    #@d
    .line 396
    iput-object v1, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    #@f
    .line 398
    :cond_0
    const-wide/16 v0, -0x1

    #@11
    iput-wide v0, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mScheduledClickTime:J

    #@13
    .line 392
    return-void
.end method

.method private sendClick()V
    .locals 21

    #@0
    .prologue
    .line 421
    move-object/from16 v0, p0

    #@2
    iget-object v4, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    #@4
    if-eqz v4, :cond_0

    #@6
    move-object/from16 v0, p0

    #@8
    iget-object v4, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/AutoclickController;

    #@a
    invoke-static {v4}, Lcom/android/server/accessibility/AutoclickController;->-get0(Lcom/android/server/accessibility/AutoclickController;)Lcom/android/server/accessibility/EventStreamTransformation;

    #@d
    move-result-object v4

    #@e
    if-nez v4, :cond_1

    #@10
    .line 422
    :cond_0
    return-void

    #@11
    .line 425
    :cond_1
    move-object/from16 v0, p0

    #@13
    iget-object v4, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    #@15
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getActionIndex()I

    #@18
    move-result v19

    #@19
    .line 427
    .local v19, "pointerIndex":I
    move-object/from16 v0, p0

    #@1b
    iget-object v4, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    #@1d
    if-nez v4, :cond_2

    #@1f
    .line 428
    const/4 v4, 0x1

    #@20
    new-array v4, v4, [Landroid/view/MotionEvent$PointerProperties;

    #@22
    move-object/from16 v0, p0

    #@24
    iput-object v4, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    #@26
    .line 429
    move-object/from16 v0, p0

    #@28
    iget-object v4, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    #@2a
    new-instance v5, Landroid/view/MotionEvent$PointerProperties;

    #@2c
    invoke-direct {v5}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    #@2f
    const/4 v6, 0x0

    #@30
    aput-object v5, v4, v6

    #@32
    .line 432
    :cond_2
    move-object/from16 v0, p0

    #@34
    iget-object v4, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    #@36
    move-object/from16 v0, p0

    #@38
    iget-object v5, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    #@3a
    const/4 v6, 0x0

    #@3b
    aget-object v5, v5, v6

    #@3d
    move/from16 v0, v19

    #@3f
    invoke-virtual {v4, v0, v5}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    #@42
    .line 434
    move-object/from16 v0, p0

    #@44
    iget-object v4, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    #@46
    if-nez v4, :cond_3

    #@48
    .line 435
    const/4 v4, 0x1

    #@49
    new-array v4, v4, [Landroid/view/MotionEvent$PointerCoords;

    #@4b
    move-object/from16 v0, p0

    #@4d
    iput-object v4, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    #@4f
    .line 436
    move-object/from16 v0, p0

    #@51
    iget-object v4, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    #@53
    new-instance v5, Landroid/view/MotionEvent$PointerCoords;

    #@55
    invoke-direct {v5}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    #@58
    const/4 v6, 0x0

    #@59
    aput-object v5, v4, v6

    #@5b
    .line 438
    :cond_3
    move-object/from16 v0, p0

    #@5d
    iget-object v4, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    #@5f
    move-object/from16 v0, p0

    #@61
    iget-object v5, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    #@63
    const/4 v6, 0x0

    #@64
    aget-object v5, v5, v6

    #@66
    move/from16 v0, v19

    #@68
    invoke-virtual {v4, v0, v5}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    #@6b
    .line 440
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@6e
    move-result-wide v2

    #@6f
    .line 443
    .local v2, "now":J
    move-object/from16 v0, p0

    #@71
    iget-object v8, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    #@73
    move-object/from16 v0, p0

    #@75
    iget-object v9, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    #@77
    move-object/from16 v0, p0

    #@79
    iget v10, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mMetaState:I

    #@7b
    .line 444
    move-object/from16 v0, p0

    #@7d
    iget-object v4, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    #@7f
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getDeviceId()I

    #@82
    move-result v14

    #@83
    .line 445
    move-object/from16 v0, p0

    #@85
    iget-object v4, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    #@87
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getSource()I

    #@8a
    move-result v16

    #@8b
    move-object/from16 v0, p0

    #@8d
    iget-object v4, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    #@8f
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getFlags()I

    #@92
    move-result v17

    #@93
    .line 442
    const/4 v6, 0x0

    #@94
    const/4 v7, 0x1

    #@95
    .line 444
    const/4 v11, 0x1

    #@96
    const/high16 v12, 0x3f800000    # 1.0f

    #@98
    const/high16 v13, 0x3f800000    # 1.0f

    #@9a
    const/4 v15, 0x0

    #@9b
    move-wide v4, v2

    #@9c
    .line 442
    invoke-static/range {v2 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    #@9f
    move-result-object v18

    #@a0
    .line 448
    .local v18, "downEvent":Landroid/view/MotionEvent;
    invoke-static/range {v18 .. v18}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    #@a3
    move-result-object v20

    #@a4
    .line 449
    .local v20, "upEvent":Landroid/view/MotionEvent;
    const/4 v4, 0x1

    #@a5
    move-object/from16 v0, v20

    #@a7
    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->setAction(I)V

    #@aa
    .line 451
    move-object/from16 v0, p0

    #@ac
    iget-object v4, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/AutoclickController;

    #@ae
    invoke-static {v4}, Lcom/android/server/accessibility/AutoclickController;->-get0(Lcom/android/server/accessibility/AutoclickController;)Lcom/android/server/accessibility/EventStreamTransformation;

    #@b1
    move-result-object v4

    #@b2
    move-object/from16 v0, p0

    #@b4
    iget v5, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mEventPolicyFlags:I

    #@b6
    move-object/from16 v0, v18

    #@b8
    move-object/from16 v1, v18

    #@ba
    invoke-interface {v4, v0, v1, v5}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    #@bd
    .line 452
    invoke-virtual/range {v18 .. v18}, Landroid/view/MotionEvent;->recycle()V

    #@c0
    .line 454
    move-object/from16 v0, p0

    #@c2
    iget-object v4, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/AutoclickController;

    #@c4
    invoke-static {v4}, Lcom/android/server/accessibility/AutoclickController;->-get0(Lcom/android/server/accessibility/AutoclickController;)Lcom/android/server/accessibility/EventStreamTransformation;

    #@c7
    move-result-object v4

    #@c8
    move-object/from16 v0, p0

    #@ca
    iget v5, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mEventPolicyFlags:I

    #@cc
    move-object/from16 v0, v20

    #@ce
    move-object/from16 v1, v20

    #@d0
    invoke-interface {v4, v0, v1, v5}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    #@d3
    .line 455
    invoke-virtual/range {v20 .. v20}, Landroid/view/MotionEvent;->recycle()V

    #@d6
    .line 420
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    #@0
    .prologue
    .line 324
    iget-boolean v0, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mActive:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 325
    return-void

    #@5
    .line 327
    :cond_0
    invoke-direct {p0}, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->resetInternalState()V

    #@8
    .line 328
    iget-object v0, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mHandler:Landroid/os/Handler;

    #@a
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@d
    .line 323
    return-void
.end method

.method public run()V
    .locals 6

    #@0
    .prologue
    .line 291
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@3
    move-result-wide v0

    #@4
    .line 293
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mScheduledClickTime:J

    #@6
    cmp-long v2, v0, v2

    #@8
    if-gez v2, :cond_0

    #@a
    .line 294
    iget-object v2, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mHandler:Landroid/os/Handler;

    #@c
    iget-wide v4, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mScheduledClickTime:J

    #@e
    sub-long/2addr v4, v0

    #@f
    invoke-virtual {v2, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    #@12
    .line 295
    return-void

    #@13
    .line 298
    :cond_0
    invoke-direct {p0}, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->sendClick()V

    #@16
    .line 299
    invoke-direct {p0}, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->resetInternalState()V

    #@19
    .line 290
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 460
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 461
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "ClickScheduler: { active="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    iget-boolean v2, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mActive:Z

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@11
    .line 462
    const-string/jumbo v1, ", delay="

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    iget v2, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mDelay:I

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d
    .line 463
    const-string/jumbo v1, ", scheduledClickTime="

    #@20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    iget-wide v2, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mScheduledClickTime:J

    #@26
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@29
    .line 464
    const-string/jumbo v1, ", anchor={x:"

    #@2c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    iget-object v2, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mAnchorCoords:Landroid/view/MotionEvent$PointerCoords;

    #@32
    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    #@34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@37
    .line 465
    const-string/jumbo v1, ", y:"

    #@3a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v1

    #@3e
    iget-object v2, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mAnchorCoords:Landroid/view/MotionEvent$PointerCoords;

    #@40
    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    #@42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@45
    move-result-object v1

    #@46
    const-string/jumbo v2, "}"

    #@49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    .line 466
    const-string/jumbo v1, ", metastate="

    #@4f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v1

    #@53
    iget v2, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mMetaState:I

    #@55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@58
    .line 467
    const-string/jumbo v1, ", policyFlags="

    #@5b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v1

    #@5f
    iget v2, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mEventPolicyFlags:I

    #@61
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@64
    .line 468
    const-string/jumbo v1, ", lastMotionEvent="

    #@67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v1

    #@6b
    iget-object v2, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    #@6d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@70
    .line 469
    const-string/jumbo v1, " }"

    #@73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    .line 470
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@79
    move-result-object v1

    #@7a
    return-object v1
.end method

.method public update(Landroid/view/MotionEvent;I)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    #@0
    .prologue
    .line 312
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    #@3
    move-result v1

    #@4
    iput v1, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mMetaState:I

    #@6
    .line 314
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->detectMovement(Landroid/view/MotionEvent;)Z

    #@9
    move-result v0

    #@a
    .line 315
    .local v0, "moved":Z
    iget-object v1, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    #@c
    if-eqz v1, :cond_1

    #@e
    move v1, v0

    #@f
    :goto_0
    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->cacheLastEvent(Landroid/view/MotionEvent;IZ)V

    #@12
    .line 317
    if-eqz v0, :cond_0

    #@14
    .line 318
    iget v1, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mDelay:I

    #@16
    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->rescheduleClick(I)V

    #@19
    .line 311
    :cond_0
    return-void

    #@1a
    .line 315
    :cond_1
    const/4 v1, 0x1

    #@1b
    goto :goto_0
.end method

.method public updateDelay(I)V
    .locals 0
    .param p1, "delay"    # I

    #@0
    .prologue
    .line 344
    iput p1, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mDelay:I

    #@2
    .line 343
    return-void
.end method

.method public updateMetaState(I)V
    .locals 0
    .param p1, "state"    # I

    #@0
    .prologue
    .line 335
    iput p1, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mMetaState:I

    #@2
    .line 334
    return-void
.end method

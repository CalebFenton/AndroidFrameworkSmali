.class final Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;
.super Ljava/lang/Object;
.source "ScreenMagnifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/ScreenMagnifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DetectingStateHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler$1;
    }
.end annotation


# static fields
.field private static final ACTION_TAP_COUNT:I = 0x3

.field private static final MESSAGE_ON_ACTION_TAP_AND_HOLD:I = 0x1

.field private static final MESSAGE_TRANSITION_TO_DELEGATING_STATE:I = 0x2


# instance fields
.field private mDelayedEventQueue:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

.field private final mHandler:Landroid/os/Handler;

.field private mLastDownEvent:Landroid/view/MotionEvent;

.field private mLastTapUpEvent:Landroid/view/MotionEvent;

.field private mTapCount:I

.field final synthetic this$0:Lcom/android/server/accessibility/ScreenMagnifier;


# direct methods
.method static synthetic -get0(Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;)Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mDelayedEventQueue:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;Landroid/view/MotionEvent;I)V
    .locals 0
    .param p1, "down"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->onActionTapAndHold(Landroid/view/MotionEvent;I)V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->sendDelayedMotionEvents()V

    #@3
    return-void
.end method

.method private constructor <init>(Lcom/android/server/accessibility/ScreenMagnifier;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/accessibility/ScreenMagnifier;

    #@0
    .prologue
    .line 631
    iput-object p1, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 645
    new-instance v0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler$1;

    #@7
    invoke-direct {v0, p0}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler$1;-><init>(Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;)V

    #@a
    iput-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mHandler:Landroid/os/Handler;

    #@c
    .line 631
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/accessibility/ScreenMagnifier;Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/accessibility/ScreenMagnifier;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;-><init>(Lcom/android/server/accessibility/ScreenMagnifier;)V

    #@3
    return-void
.end method

.method private cacheDelayedMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    #@0
    .prologue
    .line 776
    invoke-static {p1, p2, p3}, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->obtain(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    #@3
    move-result-object v0

    #@4
    .line 778
    .local v0, "info":Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;
    iget-object v2, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mDelayedEventQueue:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    #@6
    if-nez v2, :cond_0

    #@8
    .line 779
    iput-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mDelayedEventQueue:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    #@a
    .line 775
    :goto_0
    return-void

    #@b
    .line 781
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mDelayedEventQueue:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    #@d
    .line 782
    .local v1, "tail":Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;
    :goto_1
    invoke-static {v1}, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->-get0(Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;)Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    #@10
    move-result-object v2

    #@11
    if-eqz v2, :cond_1

    #@13
    .line 783
    invoke-static {v1}, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->-get0(Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;)Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    #@16
    move-result-object v1

    #@17
    goto :goto_1

    #@18
    .line 785
    :cond_1
    invoke-static {v1, v0}, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->-set0(Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;)Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    #@1b
    goto :goto_0
.end method

.method private clearDelayedMotionEvents()V
    .locals 2

    #@0
    .prologue
    .line 821
    :goto_0
    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mDelayedEventQueue:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 822
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mDelayedEventQueue:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    #@6
    .line 823
    .local v0, "info":Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;
    invoke-static {v0}, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->-get0(Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;)Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    #@9
    move-result-object v1

    #@a
    iput-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mDelayedEventQueue:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    #@c
    .line 824
    invoke-virtual {v0}, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->recycle()V

    #@f
    goto :goto_0

    #@10
    .line 820
    .end local v0    # "info":Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;
    :cond_0
    return-void
.end method

.method private clearLastDownEvent()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 768
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mLastDownEvent:Landroid/view/MotionEvent;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 769
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mLastDownEvent:Landroid/view/MotionEvent;

    #@7
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    #@a
    .line 770
    iput-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mLastDownEvent:Landroid/view/MotionEvent;

    #@c
    .line 767
    :cond_0
    return-void
.end method

.method private clearLastTapUpEvent()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 761
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mLastTapUpEvent:Landroid/view/MotionEvent;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 762
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mLastTapUpEvent:Landroid/view/MotionEvent;

    #@7
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    #@a
    .line 763
    iput-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mLastTapUpEvent:Landroid/view/MotionEvent;

    #@c
    .line 760
    :cond_0
    return-void
.end method

.method private clearTapDetectionState()V
    .locals 1

    #@0
    .prologue
    .line 755
    const/4 v0, 0x0

    #@1
    iput v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mTapCount:I

    #@3
    .line 756
    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->clearLastTapUpEvent()V

    #@6
    .line 757
    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->clearLastDownEvent()V

    #@9
    .line 754
    return-void
.end method

.method private obtainEventWithOffsetTimeAndDownTime(Landroid/view/MotionEvent;J)Landroid/view/MotionEvent;
    .locals 20
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "offset"    # J

    #@0
    .prologue
    .line 804
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    #@3
    move-result v7

    #@4
    .line 805
    .local v7, "pointerCount":I
    move-object/from16 v0, p0

    #@6
    iget-object v6, v0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    #@8
    invoke-static {v6, v7}, Lcom/android/server/accessibility/ScreenMagnifier;->-wrap0(Lcom/android/server/accessibility/ScreenMagnifier;I)[Landroid/view/MotionEvent$PointerCoords;

    #@b
    move-result-object v9

    #@c
    .line 806
    .local v9, "coords":[Landroid/view/MotionEvent$PointerCoords;
    move-object/from16 v0, p0

    #@e
    iget-object v6, v0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    #@10
    invoke-static {v6, v7}, Lcom/android/server/accessibility/ScreenMagnifier;->-wrap1(Lcom/android/server/accessibility/ScreenMagnifier;I)[Landroid/view/MotionEvent$PointerProperties;

    #@13
    move-result-object v8

    #@14
    .line 807
    .local v8, "properties":[Landroid/view/MotionEvent$PointerProperties;
    const/16 v18, 0x0

    #@16
    .local v18, "i":I
    :goto_0
    move/from16 v0, v18

    #@18
    if-ge v0, v7, :cond_0

    #@1a
    .line 808
    aget-object v6, v9, v18

    #@1c
    move-object/from16 v0, p1

    #@1e
    move/from16 v1, v18

    #@20
    invoke-virtual {v0, v1, v6}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    #@23
    .line 809
    aget-object v6, v8, v18

    #@25
    move-object/from16 v0, p1

    #@27
    move/from16 v1, v18

    #@29
    invoke-virtual {v0, v1, v6}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    #@2c
    .line 807
    add-int/lit8 v18, v18, 0x1

    #@2e
    goto :goto_0

    #@2f
    .line 811
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    #@32
    move-result-wide v10

    #@33
    add-long v2, v10, p2

    #@35
    .line 812
    .local v2, "downTime":J
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    #@38
    move-result-wide v10

    #@39
    add-long v4, v10, p2

    #@3b
    .line 814
    .local v4, "eventTime":J
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    #@3e
    move-result v6

    #@3f
    .line 815
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    #@42
    move-result v10

    #@43
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    #@46
    move-result v11

    #@47
    .line 816
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    #@4a
    move-result v14

    #@4b
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    #@4e
    move-result v15

    #@4f
    .line 817
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    #@52
    move-result v16

    #@53
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    #@56
    move-result v17

    #@57
    .line 816
    const/high16 v12, 0x3f800000    # 1.0f

    #@59
    const/high16 v13, 0x3f800000    # 1.0f

    #@5b
    .line 813
    invoke-static/range {v2 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    #@5e
    move-result-object v6

    #@5f
    return-object v6
.end method

.method private onActionTap(Landroid/view/MotionEvent;I)V
    .locals 5
    .param p1, "up"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 838
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    #@3
    invoke-static {v0}, Lcom/android/server/accessibility/ScreenMagnifier;->-get3(Lcom/android/server/accessibility/ScreenMagnifier;)Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->isMagnifying()Z

    #@a
    move-result v0

    #@b
    if-nez v0, :cond_0

    #@d
    .line 839
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    #@f
    invoke-static {v0}, Lcom/android/server/accessibility/ScreenMagnifier;->-get3(Lcom/android/server/accessibility/ScreenMagnifier;)Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    #@12
    move-result-object v0

    #@13
    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    #@15
    invoke-static {v1}, Lcom/android/server/accessibility/ScreenMagnifier;->-wrap3(Lcom/android/server/accessibility/ScreenMagnifier;)F

    #@18
    move-result v1

    #@19
    .line 840
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@1c
    move-result v2

    #@1d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@20
    move-result v3

    #@21
    .line 839
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->setScaleAndMagnifiedRegionCenter(FFFZ)V

    #@24
    .line 834
    :goto_0
    return-void

    #@25
    .line 842
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    #@27
    invoke-static {v0}, Lcom/android/server/accessibility/ScreenMagnifier;->-get3(Lcom/android/server/accessibility/ScreenMagnifier;)Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    #@2a
    move-result-object v0

    #@2b
    invoke-virtual {v0, v4}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->reset(Z)V

    #@2e
    goto :goto_0
.end method

.method private onActionTapAndHold(Landroid/view/MotionEvent;I)V
    .locals 5
    .param p1, "down"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    #@0
    .prologue
    .line 850
    invoke-virtual {p0}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->clear()V

    #@3
    .line 851
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    #@5
    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    #@7
    invoke-static {v1}, Lcom/android/server/accessibility/ScreenMagnifier;->-get3(Lcom/android/server/accessibility/ScreenMagnifier;)Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v1}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->isMagnifying()Z

    #@e
    move-result v1

    #@f
    invoke-static {v0, v1}, Lcom/android/server/accessibility/ScreenMagnifier;->-set0(Lcom/android/server/accessibility/ScreenMagnifier;Z)Z

    #@12
    .line 852
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    #@14
    invoke-static {v0}, Lcom/android/server/accessibility/ScreenMagnifier;->-get3(Lcom/android/server/accessibility/ScreenMagnifier;)Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    #@17
    move-result-object v0

    #@18
    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    #@1a
    invoke-static {v1}, Lcom/android/server/accessibility/ScreenMagnifier;->-wrap3(Lcom/android/server/accessibility/ScreenMagnifier;)F

    #@1d
    move-result v1

    #@1e
    .line 853
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@21
    move-result v2

    #@22
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@25
    move-result v3

    #@26
    const/4 v4, 0x1

    #@27
    .line 852
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->setScaleAndMagnifiedRegionCenter(FFFZ)V

    #@2a
    .line 854
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    #@2c
    const/4 v1, 0x3

    #@2d
    invoke-static {v0, v1}, Lcom/android/server/accessibility/ScreenMagnifier;->-wrap9(Lcom/android/server/accessibility/ScreenMagnifier;I)V

    #@30
    .line 846
    return-void
.end method

.method private sendDelayedMotionEvents()V
    .locals 10

    #@0
    .prologue
    .line 790
    :goto_0
    iget-object v5, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mDelayedEventQueue:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    #@2
    if-eqz v5, :cond_0

    #@4
    .line 791
    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mDelayedEventQueue:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    #@6
    .line 792
    .local v1, "info":Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;
    invoke-static {v1}, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->-get0(Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;)Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    #@9
    move-result-object v5

    #@a
    iput-object v5, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mDelayedEventQueue:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    #@c
    .line 793
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@f
    move-result-wide v6

    #@10
    iget-wide v8, v1, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->mCachedTimeMillis:J

    #@12
    sub-long v2, v6, v8

    #@14
    .line 794
    .local v2, "offset":J
    iget-object v5, v1, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->mEvent:Landroid/view/MotionEvent;

    #@16
    invoke-direct {p0, v5, v2, v3}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->obtainEventWithOffsetTimeAndDownTime(Landroid/view/MotionEvent;J)Landroid/view/MotionEvent;

    #@19
    move-result-object v0

    #@1a
    .line 795
    .local v0, "event":Landroid/view/MotionEvent;
    iget-object v5, v1, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->mRawEvent:Landroid/view/MotionEvent;

    #@1c
    invoke-direct {p0, v5, v2, v3}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->obtainEventWithOffsetTimeAndDownTime(Landroid/view/MotionEvent;J)Landroid/view/MotionEvent;

    #@1f
    move-result-object v4

    #@20
    .line 796
    .local v4, "rawEvent":Landroid/view/MotionEvent;
    iget-object v5, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    #@22
    iget v6, v1, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->mPolicyFlags:I

    #@24
    invoke-virtual {v5, v0, v4, v6}, Lcom/android/server/accessibility/ScreenMagnifier;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    #@27
    .line 797
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    #@2a
    .line 798
    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    #@2d
    .line 799
    invoke-virtual {v1}, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->recycle()V

    #@30
    goto :goto_0

    #@31
    .line 789
    .end local v0    # "event":Landroid/view/MotionEvent;
    .end local v1    # "info":Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;
    .end local v2    # "offset":J
    .end local v4    # "rawEvent":Landroid/view/MotionEvent;
    :cond_0
    return-void
.end method

.method private transitionToDelegatingStateAndClear()V
    .locals 2

    #@0
    .prologue
    .line 829
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-static {v0, v1}, Lcom/android/server/accessibility/ScreenMagnifier;->-wrap9(Lcom/android/server/accessibility/ScreenMagnifier;I)V

    #@6
    .line 830
    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->sendDelayedMotionEvents()V

    #@9
    .line 831
    invoke-virtual {p0}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->clear()V

    #@c
    .line 828
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    #@0
    .prologue
    .line 748
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mHandler:Landroid/os/Handler;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    #@6
    .line 749
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mHandler:Landroid/os/Handler;

    #@8
    const/4 v1, 0x2

    #@9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    #@c
    .line 750
    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->clearTapDetectionState()V

    #@f
    .line 751
    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->clearDelayedMotionEvents()V

    #@12
    .line 747
    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    #@0
    .prologue
    const/4 v10, 0x3

    #@1
    const/4 v9, 0x1

    #@2
    const/4 v8, 0x2

    #@3
    const/4 v7, 0x0

    #@4
    .line 668
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->cacheDelayedMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    #@7
    .line 669
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@a
    move-result v0

    #@b
    .line 670
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    #@e
    .line 667
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    #@f
    .line 672
    :pswitch_1
    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mHandler:Landroid/os/Handler;

    #@11
    invoke-virtual {v4, v8}, Landroid/os/Handler;->removeMessages(I)V

    #@14
    .line 673
    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    #@16
    invoke-static {v4}, Lcom/android/server/accessibility/ScreenMagnifier;->-get4(Lcom/android/server/accessibility/ScreenMagnifier;)Landroid/graphics/Region;

    #@19
    move-result-object v4

    #@1a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@1d
    move-result v5

    #@1e
    float-to-int v5, v5

    #@1f
    .line 674
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@22
    move-result v6

    #@23
    float-to-int v6, v6

    #@24
    .line 673
    invoke-virtual {v4, v5, v6}, Landroid/graphics/Region;->contains(II)Z

    #@27
    move-result v4

    #@28
    if-nez v4, :cond_1

    #@2a
    .line 675
    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->transitionToDelegatingStateAndClear()V

    #@2d
    .line 676
    return-void

    #@2e
    .line 678
    :cond_1
    iget v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mTapCount:I

    #@30
    if-ne v4, v8, :cond_3

    #@32
    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mLastDownEvent:Landroid/view/MotionEvent;

    #@34
    if-eqz v4, :cond_3

    #@36
    .line 679
    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mLastDownEvent:Landroid/view/MotionEvent;

    #@38
    .line 680
    iget-object v5, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    #@3a
    invoke-static {v5}, Lcom/android/server/accessibility/ScreenMagnifier;->-get6(Lcom/android/server/accessibility/ScreenMagnifier;)I

    #@3d
    move-result v5

    #@3e
    iget-object v6, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    #@40
    invoke-static {v6}, Lcom/android/server/accessibility/ScreenMagnifier;->-get5(Lcom/android/server/accessibility/ScreenMagnifier;)I

    #@43
    move-result v6

    #@44
    .line 679
    invoke-static {v4, p1, v5, v6, v7}, Lcom/android/server/accessibility/GestureUtils;->isMultiTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;III)Z

    #@47
    move-result v4

    #@48
    .line 678
    if-eqz v4, :cond_3

    #@4a
    .line 681
    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mHandler:Landroid/os/Handler;

    #@4c
    invoke-virtual {v4, v9, p3, v7, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@4f
    move-result-object v1

    #@50
    .line 683
    .local v1, "message":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mHandler:Landroid/os/Handler;

    #@52
    .line 684
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    #@55
    move-result v5

    #@56
    int-to-long v6, v5

    #@57
    .line 683
    invoke-virtual {v4, v1, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@5a
    .line 690
    .end local v1    # "message":Landroid/os/Message;
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->clearLastDownEvent()V

    #@5d
    .line 691
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    #@60
    move-result-object v4

    #@61
    iput-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mLastDownEvent:Landroid/view/MotionEvent;

    #@63
    goto :goto_0

    #@64
    .line 685
    :cond_3
    iget v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mTapCount:I

    #@66
    if-ge v4, v10, :cond_2

    #@68
    .line 686
    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mHandler:Landroid/os/Handler;

    #@6a
    invoke-virtual {v4, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@6d
    move-result-object v1

    #@6e
    .line 688
    .restart local v1    # "message":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mHandler:Landroid/os/Handler;

    #@70
    iget-object v5, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    #@72
    invoke-static {v5}, Lcom/android/server/accessibility/ScreenMagnifier;->-get6(Lcom/android/server/accessibility/ScreenMagnifier;)I

    #@75
    move-result v5

    #@76
    int-to-long v6, v5

    #@77
    invoke-virtual {v4, v1, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@7a
    goto :goto_1

    #@7b
    .line 694
    .end local v1    # "message":Landroid/os/Message;
    :pswitch_2
    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    #@7d
    invoke-static {v4}, Lcom/android/server/accessibility/ScreenMagnifier;->-get3(Lcom/android/server/accessibility/ScreenMagnifier;)Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    #@80
    move-result-object v4

    #@81
    invoke-virtual {v4}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->isMagnifying()Z

    #@84
    move-result v4

    #@85
    if-eqz v4, :cond_4

    #@87
    .line 695
    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    #@89
    const/4 v5, 0x4

    #@8a
    invoke-static {v4, v5}, Lcom/android/server/accessibility/ScreenMagnifier;->-wrap9(Lcom/android/server/accessibility/ScreenMagnifier;I)V

    #@8d
    .line 696
    invoke-virtual {p0}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->clear()V

    #@90
    goto/16 :goto_0

    #@92
    .line 698
    :cond_4
    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->transitionToDelegatingStateAndClear()V

    #@95
    goto/16 :goto_0

    #@97
    .line 702
    :pswitch_3
    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mLastDownEvent:Landroid/view/MotionEvent;

    #@99
    if-eqz v4, :cond_0

    #@9b
    iget v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mTapCount:I

    #@9d
    if-ge v4, v8, :cond_0

    #@9f
    .line 703
    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mLastDownEvent:Landroid/view/MotionEvent;

    #@a1
    invoke-static {v4, p1, v7}, Lcom/android/server/accessibility/GestureUtils;->computeDistance(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)D

    #@a4
    move-result-wide v2

    #@a5
    .line 705
    .local v2, "distance":D
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    #@a8
    move-result-wide v4

    #@a9
    iget-object v6, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    #@ab
    invoke-static {v6}, Lcom/android/server/accessibility/ScreenMagnifier;->-get8(Lcom/android/server/accessibility/ScreenMagnifier;)I

    #@ae
    move-result v6

    #@af
    int-to-double v6, v6

    #@b0
    cmpl-double v4, v4, v6

    #@b2
    if-lez v4, :cond_0

    #@b4
    .line 706
    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->transitionToDelegatingStateAndClear()V

    #@b7
    goto/16 :goto_0

    #@b9
    .line 711
    .end local v2    # "distance":D
    :pswitch_4
    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mLastDownEvent:Landroid/view/MotionEvent;

    #@bb
    if-nez v4, :cond_5

    #@bd
    .line 712
    return-void

    #@be
    .line 714
    :cond_5
    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mHandler:Landroid/os/Handler;

    #@c0
    invoke-virtual {v4, v9}, Landroid/os/Handler;->removeMessages(I)V

    #@c3
    .line 715
    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    #@c5
    invoke-static {v4}, Lcom/android/server/accessibility/ScreenMagnifier;->-get4(Lcom/android/server/accessibility/ScreenMagnifier;)Landroid/graphics/Region;

    #@c8
    move-result-object v4

    #@c9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@cc
    move-result v5

    #@cd
    float-to-int v5, v5

    #@ce
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@d1
    move-result v6

    #@d2
    float-to-int v6, v6

    #@d3
    invoke-virtual {v4, v5, v6}, Landroid/graphics/Region;->contains(II)Z

    #@d6
    move-result v4

    #@d7
    if-nez v4, :cond_6

    #@d9
    .line 716
    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->transitionToDelegatingStateAndClear()V

    #@dc
    .line 717
    return-void

    #@dd
    .line 719
    :cond_6
    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mLastDownEvent:Landroid/view/MotionEvent;

    #@df
    iget-object v5, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    #@e1
    invoke-static {v5}, Lcom/android/server/accessibility/ScreenMagnifier;->-get9(Lcom/android/server/accessibility/ScreenMagnifier;)I

    #@e4
    move-result v5

    #@e5
    .line 720
    iget-object v6, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    #@e7
    invoke-static {v6}, Lcom/android/server/accessibility/ScreenMagnifier;->-get8(Lcom/android/server/accessibility/ScreenMagnifier;)I

    #@ea
    move-result v6

    #@eb
    .line 719
    invoke-static {v4, p1, v5, v6, v7}, Lcom/android/server/accessibility/GestureUtils;->isTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;III)Z

    #@ee
    move-result v4

    #@ef
    if-nez v4, :cond_7

    #@f1
    .line 721
    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->transitionToDelegatingStateAndClear()V

    #@f4
    .line 722
    return-void

    #@f5
    .line 724
    :cond_7
    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mLastTapUpEvent:Landroid/view/MotionEvent;

    #@f7
    if-eqz v4, :cond_8

    #@f9
    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mLastTapUpEvent:Landroid/view/MotionEvent;

    #@fb
    .line 725
    iget-object v5, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    #@fd
    invoke-static {v5}, Lcom/android/server/accessibility/ScreenMagnifier;->-get6(Lcom/android/server/accessibility/ScreenMagnifier;)I

    #@100
    move-result v5

    #@101
    iget-object v6, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    #@103
    invoke-static {v6}, Lcom/android/server/accessibility/ScreenMagnifier;->-get5(Lcom/android/server/accessibility/ScreenMagnifier;)I

    #@106
    move-result v6

    #@107
    .line 724
    invoke-static {v4, p1, v5, v6, v7}, Lcom/android/server/accessibility/GestureUtils;->isMultiTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;III)Z

    #@10a
    move-result v4

    #@10b
    if-eqz v4, :cond_9

    #@10d
    .line 729
    :cond_8
    iget v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mTapCount:I

    #@10f
    add-int/lit8 v4, v4, 0x1

    #@111
    iput v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mTapCount:I

    #@113
    .line 733
    iget v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mTapCount:I

    #@115
    if-ne v4, v10, :cond_a

    #@117
    .line 734
    invoke-virtual {p0}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->clear()V

    #@11a
    .line 735
    invoke-direct {p0, p1, p3}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->onActionTap(Landroid/view/MotionEvent;I)V

    #@11d
    .line 736
    return-void

    #@11e
    .line 726
    :cond_9
    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->transitionToDelegatingStateAndClear()V

    #@121
    .line 727
    return-void

    #@122
    .line 738
    :cond_a
    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->clearLastTapUpEvent()V

    #@125
    .line 739
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    #@128
    move-result-object v4

    #@129
    iput-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mLastTapUpEvent:Landroid/view/MotionEvent;

    #@12b
    goto/16 :goto_0

    #@12d
    .line 670
    nop

    #@12e
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

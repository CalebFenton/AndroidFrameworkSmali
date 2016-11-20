.class final Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;
.super Ljava/lang/Object;
.source "MagnificationGestureHandler.java"

# interfaces
.implements Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/MagnificationGestureHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DetectingStateHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler$1;
    }
.end annotation


# static fields
.field private static final ACTION_TAP_COUNT:I = 0x3

.field private static final MESSAGE_ON_ACTION_TAP_AND_HOLD:I = 0x1

.field private static final MESSAGE_TRANSITION_TO_DELEGATING_STATE:I = 0x2


# instance fields
.field private mDelayedEventQueue:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

.field private final mHandler:Landroid/os/Handler;

.field private mLastDownEvent:Landroid/view/MotionEvent;

.field private mLastTapUpEvent:Landroid/view/MotionEvent;

.field private final mMultiTapDistanceSlop:I

.field private final mMultiTapTimeSlop:I

.field private mTapCount:I

.field private final mTapDistanceSlop:I

.field private final mTapTimeSlop:I

.field final synthetic this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;


# direct methods
.method static synthetic -get0(Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;)Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mDelayedEventQueue:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;Landroid/view/MotionEvent;I)V
    .locals 0
    .param p1, "down"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->onActionTapAndHold(Landroid/view/MotionEvent;I)V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->sendDelayedMotionEvents()V

    #@3
    return-void
.end method

.method public constructor <init>(Lcom/android/server/accessibility/MagnificationGestureHandler;Landroid/content/Context;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/accessibility/MagnificationGestureHandler;
    .param p2, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 537
    iput-object p1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 521
    invoke-static {}, Landroid/view/ViewConfiguration;->getJumpTapTimeout()I

    #@8
    move-result v0

    #@9
    iput v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mTapTimeSlop:I

    #@b
    .line 545
    new-instance v0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler$1;

    #@d
    invoke-direct {v0, p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler$1;-><init>(Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;)V

    #@10
    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mHandler:Landroid/os/Handler;

    #@12
    .line 538
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    #@15
    move-result v0

    #@16
    .line 539
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@19
    move-result-object v1

    #@1a
    .line 540
    const v2, 0x10e0093

    #@1d
    .line 539
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    #@20
    move-result v1

    #@21
    .line 538
    add-int/2addr v0, v1

    #@22
    iput v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mMultiTapTimeSlop:I

    #@24
    .line 541
    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    #@27
    move-result-object v0

    #@28
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    #@2b
    move-result v0

    #@2c
    iput v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mTapDistanceSlop:I

    #@2e
    .line 542
    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    #@31
    move-result-object v0

    #@32
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    #@35
    move-result v0

    #@36
    iput v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mMultiTapDistanceSlop:I

    #@38
    .line 537
    return-void
.end method

.method private cacheDelayedMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    #@0
    .prologue
    .line 686
    invoke-static {p1, p2, p3}, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->obtain(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    #@3
    move-result-object v0

    #@4
    .line 688
    .local v0, "info":Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;
    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mDelayedEventQueue:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    #@6
    if-nez v2, :cond_0

    #@8
    .line 689
    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mDelayedEventQueue:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    #@a
    .line 685
    :goto_0
    return-void

    #@b
    .line 691
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mDelayedEventQueue:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    #@d
    .line 692
    .local v1, "tail":Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;
    :goto_1
    invoke-static {v1}, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->-get0(Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;)Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    #@10
    move-result-object v2

    #@11
    if-eqz v2, :cond_1

    #@13
    .line 693
    invoke-static {v1}, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->-get0(Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;)Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    #@16
    move-result-object v1

    #@17
    goto :goto_1

    #@18
    .line 695
    :cond_1
    invoke-static {v1, v0}, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->-set0(Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;)Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    #@1b
    goto :goto_0
.end method

.method private clearDelayedMotionEvents()V
    .locals 2

    #@0
    .prologue
    .line 710
    :goto_0
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mDelayedEventQueue:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 711
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mDelayedEventQueue:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    #@6
    .line 712
    .local v0, "info":Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;
    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->-get0(Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;)Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    #@9
    move-result-object v1

    #@a
    iput-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mDelayedEventQueue:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    #@c
    .line 713
    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->recycle()V

    #@f
    goto :goto_0

    #@10
    .line 709
    .end local v0    # "info":Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;
    :cond_0
    return-void
.end method

.method private clearLastDownEvent()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 678
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mLastDownEvent:Landroid/view/MotionEvent;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 679
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mLastDownEvent:Landroid/view/MotionEvent;

    #@7
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    #@a
    .line 680
    iput-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mLastDownEvent:Landroid/view/MotionEvent;

    #@c
    .line 677
    :cond_0
    return-void
.end method

.method private clearLastTapUpEvent()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 671
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mLastTapUpEvent:Landroid/view/MotionEvent;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 672
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mLastTapUpEvent:Landroid/view/MotionEvent;

    #@7
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    #@a
    .line 673
    iput-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mLastTapUpEvent:Landroid/view/MotionEvent;

    #@c
    .line 670
    :cond_0
    return-void
.end method

.method private clearTapDetectionState()V
    .locals 1

    #@0
    .prologue
    .line 665
    const/4 v0, 0x0

    #@1
    iput v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mTapCount:I

    #@3
    .line 666
    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->clearLastTapUpEvent()V

    #@6
    .line 667
    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->clearLastDownEvent()V

    #@9
    .line 664
    return-void
.end method

.method private onActionTap(Landroid/view/MotionEvent;I)V
    .locals 7
    .param p1, "up"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 728
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    #@3
    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler;->-get1(Lcom/android/server/accessibility/MagnificationGestureHandler;)Lcom/android/server/accessibility/MagnificationController;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationController;->isMagnifying()Z

    #@a
    move-result v0

    #@b
    if-nez v0, :cond_0

    #@d
    .line 729
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    #@f
    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler;->-get1(Lcom/android/server/accessibility/MagnificationGestureHandler;)Lcom/android/server/accessibility/MagnificationController;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationController;->getPersistedScale()F

    #@16
    move-result v6

    #@17
    .line 730
    .local v6, "targetScale":F
    const/high16 v0, 0x40000000    # 2.0f

    #@19
    const/high16 v2, 0x40a00000    # 5.0f

    #@1b
    invoke-static {v6, v0, v2}, Landroid/util/MathUtils;->constrain(FFF)F

    #@1e
    move-result v1

    #@1f
    .line 731
    .local v1, "scale":F
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    #@21
    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler;->-get1(Lcom/android/server/accessibility/MagnificationGestureHandler;)Lcom/android/server/accessibility/MagnificationController;

    #@24
    move-result-object v0

    #@25
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@28
    move-result v2

    #@29
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@2c
    move-result v3

    #@2d
    .line 732
    const/4 v5, 0x0

    #@2e
    .line 731
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/accessibility/MagnificationController;->setScaleAndCenter(FFFZI)Z

    #@31
    .line 723
    .end local v1    # "scale":F
    .end local v6    # "targetScale":F
    :goto_0
    return-void

    #@32
    .line 734
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    #@34
    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler;->-get1(Lcom/android/server/accessibility/MagnificationGestureHandler;)Lcom/android/server/accessibility/MagnificationController;

    #@37
    move-result-object v0

    #@38
    invoke-virtual {v0, v4}, Lcom/android/server/accessibility/MagnificationController;->reset(Z)Z

    #@3b
    goto :goto_0
.end method

.method private onActionTapAndHold(Landroid/view/MotionEvent;I)V
    .locals 7
    .param p1, "down"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    #@0
    .prologue
    .line 743
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->clear()V

    #@3
    .line 744
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    #@5
    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    #@7
    invoke-static {v2}, Lcom/android/server/accessibility/MagnificationGestureHandler;->-get1(Lcom/android/server/accessibility/MagnificationGestureHandler;)Lcom/android/server/accessibility/MagnificationController;

    #@a
    move-result-object v2

    #@b
    invoke-virtual {v2}, Lcom/android/server/accessibility/MagnificationController;->isMagnifying()Z

    #@e
    move-result v2

    #@f
    invoke-static {v0, v2}, Lcom/android/server/accessibility/MagnificationGestureHandler;->-set0(Lcom/android/server/accessibility/MagnificationGestureHandler;Z)Z

    #@12
    .line 746
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    #@14
    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler;->-get1(Lcom/android/server/accessibility/MagnificationGestureHandler;)Lcom/android/server/accessibility/MagnificationController;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationController;->getPersistedScale()F

    #@1b
    move-result v6

    #@1c
    .line 747
    .local v6, "targetScale":F
    const/high16 v0, 0x40000000    # 2.0f

    #@1e
    const/high16 v2, 0x40a00000    # 5.0f

    #@20
    invoke-static {v6, v0, v2}, Landroid/util/MathUtils;->constrain(FFF)F

    #@23
    move-result v1

    #@24
    .line 748
    .local v1, "scale":F
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    #@26
    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler;->-get1(Lcom/android/server/accessibility/MagnificationGestureHandler;)Lcom/android/server/accessibility/MagnificationController;

    #@29
    move-result-object v0

    #@2a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@2d
    move-result v2

    #@2e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@31
    move-result v3

    #@32
    const/4 v4, 0x1

    #@33
    .line 749
    const/4 v5, 0x0

    #@34
    .line 748
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/accessibility/MagnificationController;->setScaleAndCenter(FFFZI)Z

    #@37
    .line 751
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    #@39
    const/4 v2, 0x3

    #@3a
    invoke-static {v0, v2}, Lcom/android/server/accessibility/MagnificationGestureHandler;->-wrap0(Lcom/android/server/accessibility/MagnificationGestureHandler;I)V

    #@3d
    .line 738
    return-void
.end method

.method private sendDelayedMotionEvents()V
    .locals 5

    #@0
    .prologue
    .line 700
    :goto_0
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mDelayedEventQueue:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 701
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mDelayedEventQueue:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    #@6
    .line 702
    .local v0, "info":Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;
    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->-get0(Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;)Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    #@9
    move-result-object v1

    #@a
    iput-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mDelayedEventQueue:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    #@c
    .line 703
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    #@e
    iget-object v2, v0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->mEvent:Landroid/view/MotionEvent;

    #@10
    iget-object v3, v0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->mRawEvent:Landroid/view/MotionEvent;

    #@12
    .line 704
    iget v4, v0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->mPolicyFlags:I

    #@14
    .line 703
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/accessibility/MagnificationGestureHandler;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    #@17
    .line 705
    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->recycle()V

    #@1a
    goto :goto_0

    #@1b
    .line 699
    .end local v0    # "info":Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;
    :cond_0
    return-void
.end method

.method private transitionToDelegatingStateAndClear()V
    .locals 2

    #@0
    .prologue
    .line 718
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-static {v0, v1}, Lcom/android/server/accessibility/MagnificationGestureHandler;->-wrap0(Lcom/android/server/accessibility/MagnificationGestureHandler;I)V

    #@6
    .line 719
    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->sendDelayedMotionEvents()V

    #@9
    .line 720
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->clear()V

    #@c
    .line 717
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    #@0
    .prologue
    .line 658
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mHandler:Landroid/os/Handler;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    #@6
    .line 659
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mHandler:Landroid/os/Handler;

    #@8
    const/4 v1, 0x2

    #@9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    #@c
    .line 660
    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->clearTapDetectionState()V

    #@f
    .line 661
    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->clearDelayedMotionEvents()V

    #@12
    .line 657
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
    .line 571
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->cacheDelayedMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    #@7
    .line 572
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@a
    move-result v0

    #@b
    .line 573
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    #@e
    .line 570
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    #@f
    .line 575
    :pswitch_1
    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mHandler:Landroid/os/Handler;

    #@11
    invoke-virtual {v4, v8}, Landroid/os/Handler;->removeMessages(I)V

    #@14
    .line 576
    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    #@16
    invoke-static {v4}, Lcom/android/server/accessibility/MagnificationGestureHandler;->-get1(Lcom/android/server/accessibility/MagnificationGestureHandler;)Lcom/android/server/accessibility/MagnificationController;

    #@19
    move-result-object v4

    #@1a
    .line 577
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@1d
    move-result v5

    #@1e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@21
    move-result v6

    #@22
    .line 576
    invoke-virtual {v4, v5, v6}, Lcom/android/server/accessibility/MagnificationController;->magnificationRegionContains(FF)Z

    #@25
    move-result v4

    #@26
    if-nez v4, :cond_1

    #@28
    .line 578
    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->transitionToDelegatingStateAndClear()V

    #@2b
    .line 579
    return-void

    #@2c
    .line 581
    :cond_1
    iget v4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mTapCount:I

    #@2e
    if-ne v4, v8, :cond_3

    #@30
    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mLastDownEvent:Landroid/view/MotionEvent;

    #@32
    if-eqz v4, :cond_3

    #@34
    .line 582
    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mLastDownEvent:Landroid/view/MotionEvent;

    #@36
    .line 583
    iget v5, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mMultiTapTimeSlop:I

    #@38
    iget v6, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mMultiTapDistanceSlop:I

    #@3a
    .line 582
    invoke-static {v4, p1, v5, v6, v7}, Lcom/android/server/accessibility/GestureUtils;->isMultiTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;III)Z

    #@3d
    move-result v4

    #@3e
    .line 581
    if-eqz v4, :cond_3

    #@40
    .line 584
    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mHandler:Landroid/os/Handler;

    #@42
    invoke-virtual {v4, v9, p3, v7, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@45
    move-result-object v1

    #@46
    .line 586
    .local v1, "message":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mHandler:Landroid/os/Handler;

    #@48
    .line 587
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    #@4b
    move-result v5

    #@4c
    int-to-long v6, v5

    #@4d
    .line 586
    invoke-virtual {v4, v1, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@50
    .line 593
    .end local v1    # "message":Landroid/os/Message;
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->clearLastDownEvent()V

    #@53
    .line 594
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    #@56
    move-result-object v4

    #@57
    iput-object v4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mLastDownEvent:Landroid/view/MotionEvent;

    #@59
    goto :goto_0

    #@5a
    .line 588
    :cond_3
    iget v4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mTapCount:I

    #@5c
    if-ge v4, v10, :cond_2

    #@5e
    .line 589
    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mHandler:Landroid/os/Handler;

    #@60
    invoke-virtual {v4, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@63
    move-result-object v1

    #@64
    .line 591
    .restart local v1    # "message":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mHandler:Landroid/os/Handler;

    #@66
    iget v5, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mMultiTapTimeSlop:I

    #@68
    int-to-long v6, v5

    #@69
    invoke-virtual {v4, v1, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@6c
    goto :goto_1

    #@6d
    .line 598
    .end local v1    # "message":Landroid/os/Message;
    :pswitch_2
    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    #@6f
    invoke-static {v4}, Lcom/android/server/accessibility/MagnificationGestureHandler;->-get1(Lcom/android/server/accessibility/MagnificationGestureHandler;)Lcom/android/server/accessibility/MagnificationController;

    #@72
    move-result-object v4

    #@73
    invoke-virtual {v4}, Lcom/android/server/accessibility/MagnificationController;->isMagnifying()Z

    #@76
    move-result v4

    #@77
    if-eqz v4, :cond_4

    #@79
    .line 599
    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    #@7b
    const/4 v5, 0x4

    #@7c
    invoke-static {v4, v5}, Lcom/android/server/accessibility/MagnificationGestureHandler;->-wrap0(Lcom/android/server/accessibility/MagnificationGestureHandler;I)V

    #@7f
    .line 600
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->clear()V

    #@82
    goto :goto_0

    #@83
    .line 602
    :cond_4
    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->transitionToDelegatingStateAndClear()V

    #@86
    goto :goto_0

    #@87
    .line 607
    :pswitch_3
    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mLastDownEvent:Landroid/view/MotionEvent;

    #@89
    if-eqz v4, :cond_0

    #@8b
    iget v4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mTapCount:I

    #@8d
    if-ge v4, v8, :cond_0

    #@8f
    .line 608
    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mLastDownEvent:Landroid/view/MotionEvent;

    #@91
    invoke-static {v4, p1, v7}, Lcom/android/server/accessibility/GestureUtils;->computeDistance(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)D

    #@94
    move-result-wide v2

    #@95
    .line 610
    .local v2, "distance":D
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    #@98
    move-result-wide v4

    #@99
    iget v6, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mTapDistanceSlop:I

    #@9b
    int-to-double v6, v6

    #@9c
    cmpl-double v4, v4, v6

    #@9e
    if-lez v4, :cond_0

    #@a0
    .line 611
    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->transitionToDelegatingStateAndClear()V

    #@a3
    goto/16 :goto_0

    #@a5
    .line 617
    .end local v2    # "distance":D
    :pswitch_4
    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mLastDownEvent:Landroid/view/MotionEvent;

    #@a7
    if-nez v4, :cond_5

    #@a9
    .line 618
    return-void

    #@aa
    .line 620
    :cond_5
    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mHandler:Landroid/os/Handler;

    #@ac
    invoke-virtual {v4, v9}, Landroid/os/Handler;->removeMessages(I)V

    #@af
    .line 621
    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    #@b1
    invoke-static {v4}, Lcom/android/server/accessibility/MagnificationGestureHandler;->-get1(Lcom/android/server/accessibility/MagnificationGestureHandler;)Lcom/android/server/accessibility/MagnificationController;

    #@b4
    move-result-object v4

    #@b5
    .line 622
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@b8
    move-result v5

    #@b9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@bc
    move-result v6

    #@bd
    .line 621
    invoke-virtual {v4, v5, v6}, Lcom/android/server/accessibility/MagnificationController;->magnificationRegionContains(FF)Z

    #@c0
    move-result v4

    #@c1
    if-nez v4, :cond_6

    #@c3
    .line 623
    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->transitionToDelegatingStateAndClear()V

    #@c6
    .line 624
    return-void

    #@c7
    .line 626
    :cond_6
    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mLastDownEvent:Landroid/view/MotionEvent;

    #@c9
    iget v5, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mTapTimeSlop:I

    #@cb
    .line 627
    iget v6, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mTapDistanceSlop:I

    #@cd
    .line 626
    invoke-static {v4, p1, v5, v6, v7}, Lcom/android/server/accessibility/GestureUtils;->isTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;III)Z

    #@d0
    move-result v4

    #@d1
    if-nez v4, :cond_7

    #@d3
    .line 628
    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->transitionToDelegatingStateAndClear()V

    #@d6
    .line 629
    return-void

    #@d7
    .line 631
    :cond_7
    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mLastTapUpEvent:Landroid/view/MotionEvent;

    #@d9
    if-eqz v4, :cond_8

    #@db
    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mLastTapUpEvent:Landroid/view/MotionEvent;

    #@dd
    .line 632
    iget v5, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mMultiTapTimeSlop:I

    #@df
    iget v6, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mMultiTapDistanceSlop:I

    #@e1
    .line 631
    invoke-static {v4, p1, v5, v6, v7}, Lcom/android/server/accessibility/GestureUtils;->isMultiTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;III)Z

    #@e4
    move-result v4

    #@e5
    if-eqz v4, :cond_9

    #@e7
    .line 636
    :cond_8
    iget v4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mTapCount:I

    #@e9
    add-int/lit8 v4, v4, 0x1

    #@eb
    iput v4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mTapCount:I

    #@ed
    .line 640
    iget v4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mTapCount:I

    #@ef
    if-ne v4, v10, :cond_a

    #@f1
    .line 641
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->clear()V

    #@f4
    .line 642
    invoke-direct {p0, p1, p3}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->onActionTap(Landroid/view/MotionEvent;I)V

    #@f7
    .line 643
    return-void

    #@f8
    .line 633
    :cond_9
    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->transitionToDelegatingStateAndClear()V

    #@fb
    .line 634
    return-void

    #@fc
    .line 645
    :cond_a
    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->clearLastTapUpEvent()V

    #@ff
    .line 646
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    #@102
    move-result-object v4

    #@103
    iput-object v4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mLastTapUpEvent:Landroid/view/MotionEvent;

    #@105
    goto/16 :goto_0

    #@107
    .line 573
    nop

    #@108
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

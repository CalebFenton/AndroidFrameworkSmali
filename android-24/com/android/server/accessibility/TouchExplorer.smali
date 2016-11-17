.class Lcom/android/server/accessibility/TouchExplorer;
.super Ljava/lang/Object;
.source "TouchExplorer.java"

# interfaces
.implements Lcom/android/server/accessibility/EventStreamTransformation;
.implements Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;,
        Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;,
        Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;,
        Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;,
        Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;,
        Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;
    }
.end annotation


# static fields
.field private static final ALL_POINTER_ID_BITS:I = -0x1

.field private static final CLICK_LOCATION_ACCESSIBILITY_FOCUS:I = 0x1

.field private static final CLICK_LOCATION_LAST_TOUCH_EXPLORED:I = 0x2

.field private static final CLICK_LOCATION_NONE:I = 0x0

.field private static final DEBUG:Z = false

.field private static final EXIT_GESTURE_DETECTION_TIMEOUT:I = 0x7d0

.field private static final INVALID_POINTER_ID:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "TouchExplorer"

.field private static final MAX_DRAGGING_ANGLE_COS:F = 0.52532196f

.field private static final MAX_POINTER_COUNT:I = 0x20

.field private static final MIN_POINTER_DISTANCE_TO_USE_MIDDLE_LOCATION_DIP:I = 0xc8

.field private static final STATE_DELEGATING:I = 0x4

.field private static final STATE_DRAGGING:I = 0x2

.field private static final STATE_GESTURE_DETECTING:I = 0x5

.field private static final STATE_TOUCH_EXPLORING:I = 0x1


# instance fields
.field private final mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

.field private final mContext:Landroid/content/Context;

.field private mCurrentState:I

.field private final mDetermineUserIntentTimeout:I

.field private final mDoubleTapSlop:I

.field private mDraggingPointerId:I

.field private final mExitGestureDetectionModeDelayed:Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;

.field private final mGestureDetector:Lcom/android/server/accessibility/AccessibilityGestureDetector;

.field private final mHandler:Landroid/os/Handler;

.field private final mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

.field private mLastTouchedWindowId:I

.field private mLongPressingPointerDeltaX:I

.field private mLongPressingPointerDeltaY:I

.field private mLongPressingPointerId:I

.field private mNext:Lcom/android/server/accessibility/EventStreamTransformation;

.field private final mReceivedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;

.field private final mScaledMinPointerDistanceToUseMiddleLocation:I

.field private final mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

.field private final mSendHoverExitDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;

.field private final mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

.field private final mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

.field private final mTempPoint:Landroid/graphics/Point;

.field private mTouchExplorationInProgress:Z


# direct methods
.method static synthetic -get0(Lcom/android/server/accessibility/TouchExplorer;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mDetermineUserIntentTimeout:I

    #@2
    return v0
.end method

.method static synthetic -get1(Lcom/android/server/accessibility/TouchExplorer;)Landroid/os/Handler;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mHandler:Landroid/os/Handler;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/accessibility/TouchExplorer;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/accessibility/TouchExplorer;->clear()V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/accessibility/TouchExplorer;I)V
    .locals 0
    .param p1, "type"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/TouchExplorer;->sendAccessibilityEvent(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/accessibility/TouchExplorer;Landroid/view/MotionEvent;III)V
    .locals 0
    .param p1, "prototype"    # Landroid/view/MotionEvent;
    .param p2, "action"    # I
    .param p3, "pointerIdBits"    # I
    .param p4, "policyFlags"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/accessibility/AccessibilityManagerService;

    #@0
    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 103
    const/4 v1, 0x1

    #@4
    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    #@6
    .line 146
    new-instance v1, Landroid/graphics/Point;

    #@8
    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    #@b
    iput-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mTempPoint:Landroid/graphics/Point;

    #@d
    .line 152
    const/4 v1, -0x1

    #@e
    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerId:I

    #@10
    .line 173
    iput-object p1, p0, Lcom/android/server/accessibility/TouchExplorer;->mContext:Landroid/content/Context;

    #@12
    .line 174
    iput-object p2, p0, Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@14
    .line 175
    new-instance v1, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;

    #@16
    invoke-direct {v1, p0}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;-><init>(Lcom/android/server/accessibility/TouchExplorer;)V

    #@19
    iput-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;

    #@1b
    .line 176
    new-instance v1, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    #@1d
    invoke-direct {v1, p0}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;-><init>(Lcom/android/server/accessibility/TouchExplorer;)V

    #@20
    iput-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    #@22
    .line 177
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    #@25
    move-result v1

    #@26
    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mDetermineUserIntentTimeout:I

    #@28
    .line 178
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    #@2f
    move-result v1

    #@30
    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mDoubleTapSlop:I

    #@32
    .line 179
    new-instance v1, Landroid/os/Handler;

    #@34
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    #@37
    move-result-object v2

    #@38
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@3b
    iput-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mHandler:Landroid/os/Handler;

    #@3d
    .line 180
    new-instance v1, Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;

    #@3f
    const/4 v2, 0x0

    #@40
    invoke-direct {v1, p0, v2}, Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;-><init>(Lcom/android/server/accessibility/TouchExplorer;Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;)V

    #@43
    iput-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mExitGestureDetectionModeDelayed:Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;

    #@45
    .line 181
    new-instance v1, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    #@47
    invoke-direct {v1, p0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;-><init>(Lcom/android/server/accessibility/TouchExplorer;)V

    #@4a
    iput-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    #@4c
    .line 182
    new-instance v1, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;

    #@4e
    invoke-direct {v1, p0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;-><init>(Lcom/android/server/accessibility/TouchExplorer;)V

    #@51
    iput-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;

    #@53
    .line 183
    new-instance v1, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    #@55
    .line 185
    iget v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mDetermineUserIntentTimeout:I

    #@57
    .line 184
    const/16 v3, 0x400

    #@59
    .line 183
    invoke-direct {v1, p0, v3, v2}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;-><init>(Lcom/android/server/accessibility/TouchExplorer;II)V

    #@5c
    iput-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    #@5e
    .line 186
    new-instance v1, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    #@60
    .line 188
    iget v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mDetermineUserIntentTimeout:I

    #@62
    .line 187
    const/high16 v3, 0x200000

    #@64
    .line 186
    invoke-direct {v1, p0, v3, v2}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;-><init>(Lcom/android/server/accessibility/TouchExplorer;II)V

    #@67
    iput-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    #@69
    .line 189
    new-instance v1, Lcom/android/server/accessibility/AccessibilityGestureDetector;

    #@6b
    invoke-direct {v1, p1, p0}, Lcom/android/server/accessibility/AccessibilityGestureDetector;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;)V

    #@6e
    iput-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/AccessibilityGestureDetector;

    #@70
    .line 190
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@73
    move-result-object v1

    #@74
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@77
    move-result-object v1

    #@78
    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    #@7a
    .line 192
    .local v0, "density":F
    const/high16 v1, 0x43480000    # 200.0f

    #@7c
    mul-float/2addr v1, v0

    #@7d
    float-to-int v1, v1

    #@7e
    .line 191
    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mScaledMinPointerDistanceToUseMiddleLocation:I

    #@80
    .line 172
    return-void
.end method

.method private clear()V
    .locals 3

    #@0
    .prologue
    .line 213
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;

    #@2
    invoke-virtual {v1}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getLastReceivedEvent()Landroid/view/MotionEvent;

    #@5
    move-result-object v0

    #@6
    .line 214
    .local v0, "event":Landroid/view/MotionEvent;
    if-eqz v0, :cond_0

    #@8
    .line 215
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;

    #@a
    invoke-virtual {v1}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getLastReceivedEvent()Landroid/view/MotionEvent;

    #@d
    move-result-object v1

    #@e
    const/high16 v2, 0x2000000

    #@10
    invoke-direct {p0, v1, v2}, Lcom/android/server/accessibility/TouchExplorer;->clear(Landroid/view/MotionEvent;I)V

    #@13
    .line 210
    :cond_0
    return-void
.end method

.method private clear(Landroid/view/MotionEvent;I)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 220
    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    #@4
    packed-switch v0, :pswitch_data_0

    #@7
    .line 239
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    #@9
    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    #@c
    .line 240
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;

    #@e
    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->cancel()V

    #@11
    .line 241
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mExitGestureDetectionModeDelayed:Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;

    #@13
    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;->cancel()V

    #@16
    .line 242
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    #@18
    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    #@1b
    .line 243
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    #@1d
    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    #@20
    .line 245
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;

    #@22
    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->clear()V

    #@25
    .line 246
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    #@27
    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->clear()V

    #@2a
    .line 248
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/AccessibilityGestureDetector;

    #@2c
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityGestureDetector;->clear()V

    #@2f
    .line 251
    iput v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerId:I

    #@31
    .line 252
    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerDeltaX:I

    #@33
    .line 253
    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerDeltaY:I

    #@35
    .line 254
    const/4 v0, 0x1

    #@36
    iput v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    #@38
    .line 255
    iput-boolean v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mTouchExplorationInProgress:Z

    #@3a
    .line 256
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@3c
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionEnd()V

    #@3f
    .line 219
    return-void

    #@40
    .line 223
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V

    #@43
    goto :goto_0

    #@44
    .line 226
    :pswitch_2
    iput v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mDraggingPointerId:I

    #@46
    .line 228
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendUpForInjectedDownPointers(Landroid/view/MotionEvent;I)V

    #@49
    goto :goto_0

    #@4a
    .line 232
    :pswitch_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendUpForInjectedDownPointers(Landroid/view/MotionEvent;I)V

    #@4d
    goto :goto_0

    #@4e
    .line 220
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method private computeClickLocation(Landroid/graphics/Point;)I
    .locals 5
    .param p1, "outLocation"    # Landroid/graphics/Point;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 1067
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    #@3
    invoke-virtual {v2}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->getLastInjectedHoverEventForClick()Landroid/view/MotionEvent;

    #@6
    move-result-object v0

    #@7
    .line 1068
    .local v0, "lastExploreEvent":Landroid/view/MotionEvent;
    if-eqz v0, :cond_2

    #@9
    .line 1069
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionIndex()I

    #@c
    move-result v1

    #@d
    .line 1070
    .local v1, "lastExplorePointerIndex":I
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    #@10
    move-result v2

    #@11
    float-to-int v2, v2

    #@12
    iput v2, p1, Landroid/graphics/Point;->x:I

    #@14
    .line 1071
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    #@17
    move-result v2

    #@18
    float-to-int v2, v2

    #@19
    iput v2, p1, Landroid/graphics/Point;->y:I

    #@1b
    .line 1072
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@1d
    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->accessibilityFocusOnlyInActiveWindow()Z

    #@20
    move-result v2

    #@21
    if-eqz v2, :cond_0

    #@23
    .line 1073
    iget v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mLastTouchedWindowId:I

    #@25
    iget-object v3, p0, Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@27
    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->getActiveWindowId()I

    #@2a
    move-result v3

    #@2b
    if-ne v2, v3, :cond_2

    #@2d
    .line 1074
    :cond_0
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@2f
    invoke-virtual {v2, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getAccessibilityFocusClickPointInScreen(Landroid/graphics/Point;)Z

    #@32
    move-result v2

    #@33
    if-eqz v2, :cond_1

    #@35
    .line 1075
    return v4

    #@36
    .line 1077
    :cond_1
    const/4 v2, 0x2

    #@37
    return v2

    #@38
    .line 1081
    .end local v1    # "lastExplorePointerIndex":I
    :cond_2
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@3a
    invoke-virtual {v2, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getAccessibilityFocusClickPointInScreen(Landroid/graphics/Point;)Z

    #@3d
    move-result v2

    #@3e
    if-eqz v2, :cond_3

    #@40
    .line 1082
    return v4

    #@41
    .line 1084
    :cond_3
    const/4 v2, 0x0

    #@42
    return v2
.end method

.method private computeInjectionAction(II)I
    .locals 4
    .param p1, "actionMasked"    # I
    .param p2, "pointerIndex"    # I

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 1015
    sparse-switch p1, :sswitch_data_0

    #@5
    .line 1038
    return p1

    #@6
    .line 1018
    :sswitch_0
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    #@8
    .line 1020
    .local v0, "injectedTracker":Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;
    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->getInjectedPointerDownCount()I

    #@b
    move-result v1

    #@c
    if-nez v1, :cond_0

    #@e
    .line 1021
    return v2

    #@f
    .line 1023
    :cond_0
    shl-int/lit8 v1, p2, 0x8

    #@11
    or-int/lit8 v1, v1, 0x5

    #@13
    return v1

    #@14
    .line 1028
    .end local v0    # "injectedTracker":Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;
    :sswitch_1
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    #@16
    .line 1030
    .restart local v0    # "injectedTracker":Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;
    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->getInjectedPointerDownCount()I

    #@19
    move-result v1

    #@1a
    if-ne v1, v3, :cond_1

    #@1c
    .line 1031
    return v3

    #@1d
    .line 1033
    :cond_1
    shl-int/lit8 v1, p2, 0x8

    #@1f
    or-int/lit8 v1, v1, 0x6

    #@21
    return v1

    #@22
    .line 1015
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5 -> :sswitch_0
        0x6 -> :sswitch_1
    .end sparse-switch
.end method

.method private endGestureDetection()V
    .locals 1

    #@0
    .prologue
    .line 787
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@2
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionEnd()V

    #@5
    .line 790
    const/high16 v0, 0x80000

    #@7
    invoke-direct {p0, v0}, Lcom/android/server/accessibility/TouchExplorer;->sendAccessibilityEvent(I)V

    #@a
    .line 792
    const/high16 v0, 0x200000

    #@c
    invoke-direct {p0, v0}, Lcom/android/server/accessibility/TouchExplorer;->sendAccessibilityEvent(I)V

    #@f
    .line 794
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mExitGestureDetectionModeDelayed:Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;

    #@11
    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;->cancel()V

    #@14
    .line 795
    const/4 v0, 0x1

    #@15
    iput v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    #@17
    .line 786
    return-void
.end method

.method private static getStateSymbolicName(I)Ljava/lang/String;
    .locals 3
    .param p0, "state"    # I

    #@0
    .prologue
    .line 1094
    packed-switch p0, :pswitch_data_0

    #@3
    .line 1104
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v2, "Unknown state: "

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v0

    #@1d
    .line 1096
    :pswitch_1
    const-string/jumbo v0, "STATE_TOUCH_EXPLORING"

    #@20
    return-object v0

    #@21
    .line 1098
    :pswitch_2
    const-string/jumbo v0, "STATE_DRAGGING"

    #@24
    return-object v0

    #@25
    .line 1100
    :pswitch_3
    const-string/jumbo v0, "STATE_DELEGATING"

    #@28
    return-object v0

    #@29
    .line 1102
    :pswitch_4
    const-string/jumbo v0, "STATE_GESTURE_DETECTING"

    #@2c
    return-object v0

    #@2d
    .line 1094
    nop

    #@2e
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private handleMotionEventStateDelegating(Landroid/view/MotionEvent;I)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, -0x1

    #@2
    .line 753
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@5
    move-result v0

    #@6
    packed-switch v0, :pswitch_data_0

    #@9
    .line 781
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    #@c
    move-result v0

    #@d
    invoke-direct {p0, p1, v0, v2, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    #@10
    .line 752
    :goto_0
    return-void

    #@11
    .line 755
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    #@13
    const-string/jumbo v1, "Delegating state can only be reached if there is at least one pointer down!"

    #@16
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0

    #@1a
    .line 761
    :pswitch_1
    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerId:I

    #@1c
    if-ltz v0, :cond_0

    #@1e
    .line 762
    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerDeltaX:I

    #@20
    neg-int v0, v0

    #@21
    .line 763
    iget v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerDeltaY:I

    #@23
    neg-int v1, v1

    #@24
    .line 762
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/accessibility/TouchExplorer;->offsetEvent(Landroid/view/MotionEvent;II)Landroid/view/MotionEvent;

    #@27
    move-result-object p1

    #@28
    .line 765
    iput v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerId:I

    #@2a
    .line 766
    iput v3, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerDeltaX:I

    #@2c
    .line 767
    iput v3, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerDeltaY:I

    #@2e
    .line 771
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    #@31
    move-result v0

    #@32
    invoke-direct {p0, p1, v0, v2, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    #@35
    .line 774
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@37
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionEnd()V

    #@3a
    .line 775
    const/high16 v0, 0x200000

    #@3c
    invoke-direct {p0, v0}, Lcom/android/server/accessibility/TouchExplorer;->sendAccessibilityEvent(I)V

    #@3f
    .line 777
    const/4 v0, 0x1

    #@40
    iput v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    #@42
    goto :goto_0

    #@43
    .line 753
    nop

    #@44
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handleMotionEventStateDragging(Landroid/view/MotionEvent;I)V
    .locals 18
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    #@0
    .prologue
    .line 651
    const/4 v11, 0x0

    #@1
    .line 653
    .local v11, "pointerIdBits":I
    move-object/from16 v0, p0

    #@3
    iget v14, v0, Lcom/android/server/accessibility/TouchExplorer;->mDraggingPointerId:I

    #@5
    move-object/from16 v0, p1

    #@7
    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    #@a
    move-result v14

    #@b
    const/4 v15, -0x1

    #@c
    if-ne v14, v15, :cond_1

    #@e
    .line 654
    const-string/jumbo v14, "TouchExplorer"

    #@11
    new-instance v15, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v16, "mDraggingPointerId doesn\'t match any pointers on current event. mDraggingPointerId: "

    #@19
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v15

    #@1d
    .line 655
    move-object/from16 v0, p0

    #@1f
    iget v0, v0, Lcom/android/server/accessibility/TouchExplorer;->mDraggingPointerId:I

    #@21
    move/from16 v16, v0

    #@23
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@26
    move-result-object v16

    #@27
    .line 654
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v15

    #@2b
    .line 656
    const-string/jumbo v16, ", Event: "

    #@2e
    .line 654
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v15

    #@32
    move-object/from16 v0, p1

    #@34
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v15

    #@38
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v15

    #@3c
    invoke-static {v14, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3f
    .line 657
    const/4 v14, -0x1

    #@40
    move-object/from16 v0, p0

    #@42
    iput v14, v0, Lcom/android/server/accessibility/TouchExplorer;->mDraggingPointerId:I

    #@44
    .line 661
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@47
    move-result v14

    #@48
    packed-switch v14, :pswitch_data_0

    #@4b
    .line 650
    :cond_0
    :goto_1
    :pswitch_0
    return-void

    #@4c
    .line 659
    :cond_1
    move-object/from16 v0, p0

    #@4e
    iget v14, v0, Lcom/android/server/accessibility/TouchExplorer;->mDraggingPointerId:I

    #@50
    const/4 v15, 0x1

    #@51
    shl-int v11, v15, v14

    #@53
    goto :goto_0

    #@54
    .line 663
    :pswitch_1
    new-instance v14, Ljava/lang/IllegalStateException;

    #@56
    const-string/jumbo v15, "Dragging state can be reached only if two pointers are already down"

    #@59
    invoke-direct {v14, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@5c
    throw v14

    #@5d
    .line 669
    :pswitch_2
    const/4 v14, 0x4

    #@5e
    move-object/from16 v0, p0

    #@60
    iput v14, v0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    #@62
    .line 670
    move-object/from16 v0, p0

    #@64
    iget v14, v0, Lcom/android/server/accessibility/TouchExplorer;->mDraggingPointerId:I

    #@66
    const/4 v15, -0x1

    #@67
    if-eq v14, v15, :cond_2

    #@69
    .line 671
    const/4 v14, 0x1

    #@6a
    move-object/from16 v0, p0

    #@6c
    move-object/from16 v1, p1

    #@6e
    move/from16 v2, p2

    #@70
    invoke-direct {v0, v1, v14, v11, v2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    #@73
    .line 673
    :cond_2
    invoke-direct/range {p0 .. p2}, Lcom/android/server/accessibility/TouchExplorer;->sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V

    #@76
    goto :goto_1

    #@77
    .line 676
    :pswitch_3
    move-object/from16 v0, p0

    #@79
    iget v14, v0, Lcom/android/server/accessibility/TouchExplorer;->mDraggingPointerId:I

    #@7b
    const/4 v15, -0x1

    #@7c
    if-eq v14, v15, :cond_0

    #@7e
    .line 679
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    #@81
    move-result v14

    #@82
    packed-switch v14, :pswitch_data_1

    #@85
    .line 713
    const/4 v14, 0x4

    #@86
    move-object/from16 v0, p0

    #@88
    iput v14, v0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    #@8a
    .line 715
    const/4 v14, 0x1

    #@8b
    move-object/from16 v0, p0

    #@8d
    move-object/from16 v1, p1

    #@8f
    move/from16 v2, p2

    #@91
    invoke-direct {v0, v1, v14, v11, v2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    #@94
    .line 718
    invoke-direct/range {p0 .. p2}, Lcom/android/server/accessibility/TouchExplorer;->sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V

    #@97
    goto :goto_1

    #@98
    .line 684
    :pswitch_4
    invoke-direct/range {p0 .. p1}, Lcom/android/server/accessibility/TouchExplorer;->isDraggingGesture(Landroid/view/MotionEvent;)Z

    #@9b
    move-result v14

    #@9c
    if-eqz v14, :cond_4

    #@9e
    .line 685
    const/4 v14, 0x0

    #@9f
    move-object/from16 v0, p1

    #@a1
    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getX(I)F

    #@a4
    move-result v8

    #@a5
    .line 686
    .local v8, "firstPtrX":F
    const/4 v14, 0x0

    #@a6
    move-object/from16 v0, p1

    #@a8
    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getY(I)F

    #@ab
    move-result v9

    #@ac
    .line 687
    .local v9, "firstPtrY":F
    const/4 v14, 0x1

    #@ad
    move-object/from16 v0, p1

    #@af
    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getX(I)F

    #@b2
    move-result v12

    #@b3
    .line 688
    .local v12, "secondPtrX":F
    const/4 v14, 0x1

    #@b4
    move-object/from16 v0, p1

    #@b6
    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getY(I)F

    #@b9
    move-result v13

    #@ba
    .line 690
    .local v13, "secondPtrY":F
    sub-float v4, v8, v12

    #@bc
    .line 691
    .local v4, "deltaX":F
    sub-float v5, v9, v13

    #@be
    .line 692
    .local v5, "deltaY":F
    float-to-double v14, v4

    #@bf
    float-to-double v0, v5

    #@c0
    move-wide/from16 v16, v0

    #@c2
    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->hypot(DD)D

    #@c5
    move-result-wide v6

    #@c6
    .line 694
    .local v6, "distance":D
    move-object/from16 v0, p0

    #@c8
    iget v14, v0, Lcom/android/server/accessibility/TouchExplorer;->mScaledMinPointerDistanceToUseMiddleLocation:I

    #@ca
    int-to-double v14, v14

    #@cb
    cmpl-double v14, v6, v14

    #@cd
    if-lez v14, :cond_3

    #@cf
    .line 695
    const/high16 v14, 0x40000000    # 2.0f

    #@d1
    div-float v14, v4, v14

    #@d3
    const/high16 v15, 0x40000000    # 2.0f

    #@d5
    div-float v15, v5, v15

    #@d7
    move-object/from16 v0, p1

    #@d9
    invoke-virtual {v0, v14, v15}, Landroid/view/MotionEvent;->setLocation(FF)V

    #@dc
    .line 699
    :cond_3
    const/4 v14, 0x2

    #@dd
    move-object/from16 v0, p0

    #@df
    move-object/from16 v1, p1

    #@e1
    move/from16 v2, p2

    #@e3
    invoke-direct {v0, v1, v14, v11, v2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    #@e6
    goto/16 :goto_1

    #@e8
    .line 704
    .end local v4    # "deltaX":F
    .end local v5    # "deltaY":F
    .end local v6    # "distance":D
    .end local v8    # "firstPtrX":F
    .end local v9    # "firstPtrY":F
    .end local v12    # "secondPtrX":F
    .end local v13    # "secondPtrY":F
    :cond_4
    const/4 v14, 0x4

    #@e9
    move-object/from16 v0, p0

    #@eb
    iput v14, v0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    #@ed
    .line 706
    const/4 v14, 0x1

    #@ee
    move-object/from16 v0, p0

    #@f0
    move-object/from16 v1, p1

    #@f2
    move/from16 v2, p2

    #@f4
    invoke-direct {v0, v1, v14, v11, v2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    #@f7
    .line 709
    invoke-direct/range {p0 .. p2}, Lcom/android/server/accessibility/TouchExplorer;->sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V

    #@fa
    goto/16 :goto_1

    #@fc
    .line 723
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    #@ff
    move-result v14

    #@100
    move-object/from16 v0, p1

    #@102
    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@105
    move-result v10

    #@106
    .line 724
    .local v10, "pointerId":I
    move-object/from16 v0, p0

    #@108
    iget v14, v0, Lcom/android/server/accessibility/TouchExplorer;->mDraggingPointerId:I

    #@10a
    if-ne v10, v14, :cond_0

    #@10c
    .line 725
    const/4 v14, -0x1

    #@10d
    move-object/from16 v0, p0

    #@10f
    iput v14, v0, Lcom/android/server/accessibility/TouchExplorer;->mDraggingPointerId:I

    #@111
    .line 727
    const/4 v14, 0x1

    #@112
    move-object/from16 v0, p0

    #@114
    move-object/from16 v1, p1

    #@116
    move/from16 v2, p2

    #@118
    invoke-direct {v0, v1, v14, v11, v2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    #@11b
    goto/16 :goto_1

    #@11d
    .line 731
    .end local v10    # "pointerId":I
    :pswitch_6
    move-object/from16 v0, p0

    #@11f
    iget-object v14, v0, Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@121
    invoke-virtual {v14}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionEnd()V

    #@124
    .line 734
    const/high16 v14, 0x200000

    #@126
    .line 733
    move-object/from16 v0, p0

    #@128
    invoke-direct {v0, v14}, Lcom/android/server/accessibility/TouchExplorer;->sendAccessibilityEvent(I)V

    #@12b
    .line 735
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    #@12e
    move-result v14

    #@12f
    move-object/from16 v0, p1

    #@131
    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@134
    move-result v10

    #@135
    .line 736
    .restart local v10    # "pointerId":I
    move-object/from16 v0, p0

    #@137
    iget v14, v0, Lcom/android/server/accessibility/TouchExplorer;->mDraggingPointerId:I

    #@139
    if-ne v10, v14, :cond_5

    #@13b
    .line 737
    const/4 v14, -0x1

    #@13c
    move-object/from16 v0, p0

    #@13e
    iput v14, v0, Lcom/android/server/accessibility/TouchExplorer;->mDraggingPointerId:I

    #@140
    .line 739
    const/4 v14, 0x1

    #@141
    move-object/from16 v0, p0

    #@143
    move-object/from16 v1, p1

    #@145
    move/from16 v2, p2

    #@147
    invoke-direct {v0, v1, v14, v11, v2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    #@14a
    .line 741
    :cond_5
    const/4 v14, 0x1

    #@14b
    move-object/from16 v0, p0

    #@14d
    iput v14, v0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    #@14f
    goto/16 :goto_1

    #@151
    .line 661
    nop

    #@152
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_6
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_5
    .end packed-switch

    #@164
    .line 679
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private handleMotionEventStateTouchExploring(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    #@0
    .prologue
    .line 498
    iget-object v7, p0, Lcom/android/server/accessibility/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;

    #@2
    .line 500
    .local v7, "receivedTracker":Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@5
    move-result v8

    #@6
    packed-switch v8, :pswitch_data_0

    #@9
    .line 497
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    #@a
    .line 502
    :pswitch_1
    iget-object v8, p0, Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@c
    invoke-virtual {v8}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionStart()V

    #@f
    .line 504
    const/high16 v8, 0x100000

    #@11
    invoke-direct {p0, v8}, Lcom/android/server/accessibility/TouchExplorer;->sendAccessibilityEvent(I)V

    #@14
    .line 509
    iget-object v8, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    #@16
    invoke-virtual {v8}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    #@19
    .line 510
    iget-object v8, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;

    #@1b
    invoke-virtual {v8}, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->cancel()V

    #@1e
    .line 512
    iget-object v8, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    #@20
    invoke-virtual {v8}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    #@23
    move-result v8

    #@24
    if-eqz v8, :cond_1

    #@26
    .line 513
    iget-object v8, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    #@28
    invoke-virtual {v8}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->forceSendAndRemove()V

    #@2b
    .line 516
    :cond_1
    iget-object v8, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    #@2d
    invoke-virtual {v8}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    #@30
    move-result v8

    #@31
    if-eqz v8, :cond_2

    #@33
    .line 517
    iget-object v8, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    #@35
    invoke-virtual {v8}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->forceSendAndRemove()V

    #@38
    .line 520
    :cond_2
    iget-object v8, p0, Lcom/android/server/accessibility/TouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/AccessibilityGestureDetector;

    #@3a
    invoke-virtual {v8}, Lcom/android/server/accessibility/AccessibilityGestureDetector;->firstTapDetected()Z

    #@3d
    move-result v8

    #@3e
    if-nez v8, :cond_0

    #@40
    iget-boolean v8, p0, Lcom/android/server/accessibility/TouchExplorer;->mTouchExplorationInProgress:Z

    #@42
    if-nez v8, :cond_0

    #@44
    .line 521
    iget-object v8, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    #@46
    invoke-static {v8}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->-wrap0(Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;)Z

    #@49
    move-result v8

    #@4a
    if-nez v8, :cond_3

    #@4c
    .line 524
    invoke-virtual {v7}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getPrimaryPointerId()I

    #@4f
    move-result v4

    #@50
    .line 525
    .local v4, "pointerId":I
    const/4 v8, 0x1

    #@51
    shl-int v5, v8, v4

    #@53
    .line 526
    .local v5, "pointerIdBits":I
    iget-object v8, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    #@55
    const/4 v9, 0x1

    #@56
    invoke-virtual {v8, p1, v9, v5, p3}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->post(Landroid/view/MotionEvent;ZII)V

    #@59
    goto :goto_0

    #@5a
    .line 530
    .end local v4    # "pointerId":I
    .end local v5    # "pointerIdBits":I
    :cond_3
    iget-object v8, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    #@5c
    invoke-virtual {v8, p1}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->addEvent(Landroid/view/MotionEvent;)V

    #@5f
    goto :goto_0

    #@60
    .line 538
    :pswitch_2
    iget-object v8, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    #@62
    invoke-virtual {v8}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    #@65
    .line 539
    iget-object v8, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;

    #@67
    invoke-virtual {v8}, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->cancel()V

    #@6a
    goto :goto_0

    #@6b
    .line 542
    :pswitch_3
    invoke-virtual {v7}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getPrimaryPointerId()I

    #@6e
    move-result v4

    #@6f
    .line 543
    .restart local v4    # "pointerId":I
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    #@72
    move-result v6

    #@73
    .line 544
    .local v6, "pointerIndex":I
    const/4 v8, 0x1

    #@74
    shl-int v5, v8, v4

    #@76
    .line 545
    .restart local v5    # "pointerIdBits":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    #@79
    move-result v8

    #@7a
    packed-switch v8, :pswitch_data_1

    #@7d
    .line 606
    iget-object v8, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    #@7f
    invoke-static {v8}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->-wrap0(Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;)Z

    #@82
    move-result v8

    #@83
    if-eqz v8, :cond_8

    #@85
    .line 609
    iget-object v8, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    #@87
    invoke-virtual {v8}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    #@8a
    .line 610
    iget-object v8, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;

    #@8c
    invoke-virtual {v8}, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->cancel()V

    #@8f
    .line 618
    :goto_1
    const/4 v8, 0x4

    #@90
    iput v8, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    #@92
    .line 619
    invoke-direct {p0, p1, p3}, Lcom/android/server/accessibility/TouchExplorer;->sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V

    #@95
    goto/16 :goto_0

    #@97
    .line 549
    :pswitch_4
    iget-object v8, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    #@99
    invoke-static {v8}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->-wrap0(Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;)Z

    #@9c
    move-result v8

    #@9d
    if-eqz v8, :cond_4

    #@9f
    .line 551
    iget-object v8, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    #@a1
    invoke-virtual {v8, p1}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->addEvent(Landroid/view/MotionEvent;)V

    #@a4
    goto/16 :goto_0

    #@a6
    .line 553
    :cond_4
    iget-boolean v8, p0, Lcom/android/server/accessibility/TouchExplorer;->mTouchExplorationInProgress:Z

    #@a8
    if-eqz v8, :cond_0

    #@aa
    .line 554
    invoke-direct {p0, p3}, Lcom/android/server/accessibility/TouchExplorer;->sendTouchExplorationGestureStartAndHoverEnterIfNeeded(I)V

    #@ad
    .line 555
    const/4 v8, 0x7

    #@ae
    invoke-direct {p0, p1, v8, v5, p3}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    #@b1
    goto/16 :goto_0

    #@b3
    .line 563
    :pswitch_5
    iget-object v8, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    #@b5
    invoke-static {v8}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->-wrap0(Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;)Z

    #@b8
    move-result v8

    #@b9
    if-eqz v8, :cond_6

    #@bb
    .line 566
    iget-object v8, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    #@bd
    invoke-virtual {v8}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    #@c0
    .line 567
    iget-object v8, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;

    #@c2
    invoke-virtual {v8}, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->cancel()V

    #@c5
    .line 589
    :cond_5
    :goto_2
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/TouchExplorer;->isDraggingGesture(Landroid/view/MotionEvent;)Z

    #@c8
    move-result v8

    #@c9
    if-eqz v8, :cond_7

    #@cb
    .line 592
    const/4 v8, 0x2

    #@cc
    iput v8, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    #@ce
    .line 593
    iput v4, p0, Lcom/android/server/accessibility/TouchExplorer;->mDraggingPointerId:I

    #@d0
    .line 594
    invoke-virtual {v7}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getLastReceivedDownEdgeFlags()I

    #@d3
    move-result v8

    #@d4
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->setEdgeFlags(I)V

    #@d7
    .line 595
    const/4 v8, 0x0

    #@d8
    invoke-direct {p0, p1, v8, v5, p3}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    #@db
    goto/16 :goto_0

    #@dd
    .line 569
    :cond_6
    iget-boolean v8, p0, Lcom/android/server/accessibility/TouchExplorer;->mTouchExplorationInProgress:Z

    #@df
    if-eqz v8, :cond_5

    #@e1
    .line 575
    invoke-virtual {v7, v4}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownX(I)F

    #@e4
    move-result v8

    #@e5
    .line 576
    invoke-virtual {p2, v6}, Landroid/view/MotionEvent;->getX(I)F

    #@e8
    move-result v9

    #@e9
    .line 575
    sub-float v0, v8, v9

    #@eb
    .line 577
    .local v0, "deltaX":F
    invoke-virtual {v7, v4}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownY(I)F

    #@ee
    move-result v8

    #@ef
    .line 578
    invoke-virtual {p2, v6}, Landroid/view/MotionEvent;->getY(I)F

    #@f2
    move-result v9

    #@f3
    .line 577
    sub-float v1, v8, v9

    #@f5
    .line 579
    .local v1, "deltaY":F
    float-to-double v8, v0

    #@f6
    float-to-double v10, v1

    #@f7
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    #@fa
    move-result-wide v2

    #@fb
    .line 580
    .local v2, "moveDelta":D
    iget v8, p0, Lcom/android/server/accessibility/TouchExplorer;->mDoubleTapSlop:I

    #@fd
    int-to-double v8, v8

    #@fe
    cmpg-double v8, v2, v8

    #@100
    if-ltz v8, :cond_0

    #@102
    .line 585
    invoke-direct {p0, p3}, Lcom/android/server/accessibility/TouchExplorer;->sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V

    #@105
    goto :goto_2

    #@106
    .line 599
    .end local v0    # "deltaX":F
    .end local v1    # "deltaY":F
    .end local v2    # "moveDelta":D
    :cond_7
    const/4 v8, 0x4

    #@107
    iput v8, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    #@109
    .line 600
    invoke-direct {p0, p1, p3}, Lcom/android/server/accessibility/TouchExplorer;->sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V

    #@10c
    goto/16 :goto_0

    #@10e
    .line 614
    :cond_8
    invoke-direct {p0, p3}, Lcom/android/server/accessibility/TouchExplorer;->sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V

    #@111
    goto/16 :goto_1

    #@113
    .line 624
    .end local v4    # "pointerId":I
    .end local v5    # "pointerIdBits":I
    .end local v6    # "pointerIndex":I
    :pswitch_6
    iget-object v8, p0, Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@115
    invoke-virtual {v8}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionEnd()V

    #@118
    .line 625
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    #@11b
    move-result v8

    #@11c
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@11f
    move-result v4

    #@120
    .line 626
    .restart local v4    # "pointerId":I
    const/4 v8, 0x1

    #@121
    shl-int v5, v8, v4

    #@123
    .line 628
    .restart local v5    # "pointerIdBits":I
    iget-object v8, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    #@125
    invoke-static {v8}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->-wrap0(Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;)Z

    #@128
    move-result v8

    #@129
    if-eqz v8, :cond_9

    #@12b
    .line 630
    iget-object v8, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;

    #@12d
    invoke-virtual {v8, p1, v5, p3}, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->post(Landroid/view/MotionEvent;II)V

    #@130
    .line 636
    :goto_3
    iget-object v8, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    #@132
    invoke-virtual {v8}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    #@135
    move-result v8

    #@136
    if-nez v8, :cond_0

    #@138
    .line 637
    iget-object v8, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    #@13a
    invoke-virtual {v8}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->post()V

    #@13d
    goto/16 :goto_0

    #@13f
    .line 633
    :cond_9
    invoke-direct {p0, p3}, Lcom/android/server/accessibility/TouchExplorer;->sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V

    #@142
    goto :goto_3

    #@143
    .line 500
    nop

    #@144
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_6
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    #@154
    .line 545
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private isDraggingGesture(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v10, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    .line 1049
    iget-object v9, p0, Lcom/android/server/accessibility/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;

    #@4
    .line 1051
    .local v9, "receivedTracker":Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    #@7
    move-result v4

    #@8
    .line 1052
    .local v4, "firstPtrX":F
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    #@b
    move-result v5

    #@c
    .line 1053
    .local v5, "firstPtrY":F
    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getX(I)F

    #@f
    move-result v6

    #@10
    .line 1054
    .local v6, "secondPtrX":F
    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getY(I)F

    #@13
    move-result v7

    #@14
    .line 1056
    .local v7, "secondPtrY":F
    invoke-virtual {v9, v8}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownX(I)F

    #@17
    move-result v0

    #@18
    .line 1057
    .local v0, "firstPtrDownX":F
    invoke-virtual {v9, v8}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownY(I)F

    #@1b
    move-result v1

    #@1c
    .line 1058
    .local v1, "firstPtrDownY":F
    invoke-virtual {v9, v10}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownX(I)F

    #@1f
    move-result v2

    #@20
    .line 1059
    .local v2, "secondPtrDownX":F
    invoke-virtual {v9, v10}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownY(I)F

    #@23
    move-result v3

    #@24
    .line 1063
    .local v3, "secondPtrDownY":F
    const v8, 0x3f067b80

    #@27
    .line 1061
    invoke-static/range {v0 .. v8}, Lcom/android/server/accessibility/GestureUtils;->isDraggingGesture(FFFFFFFFF)Z

    #@2a
    move-result v8

    #@2b
    return v8
.end method

.method private offsetEvent(Landroid/view/MotionEvent;II)Landroid/view/MotionEvent;
    .locals 21
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "offsetX"    # I
    .param p3, "offsetY"    # I

    #@0
    .prologue
    .line 984
    if-nez p2, :cond_0

    #@2
    if-nez p3, :cond_0

    #@4
    .line 985
    return-object p1

    #@5
    .line 987
    :cond_0
    move-object/from16 v0, p0

    #@7
    iget v2, v0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerId:I

    #@9
    move-object/from16 v0, p1

    #@b
    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    #@e
    move-result v20

    #@f
    .line 988
    .local v20, "remappedIndex":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    #@12
    move-result v19

    #@13
    .line 989
    .local v19, "pointerCount":I
    invoke-static/range {v19 .. v19}, Landroid/view/MotionEvent$PointerProperties;->createArray(I)[Landroid/view/MotionEvent$PointerProperties;

    #@16
    move-result-object v8

    #@17
    .line 990
    .local v8, "props":[Landroid/view/MotionEvent$PointerProperties;
    invoke-static/range {v19 .. v19}, Landroid/view/MotionEvent$PointerCoords;->createArray(I)[Landroid/view/MotionEvent$PointerCoords;

    #@1a
    move-result-object v9

    #@1b
    .line 991
    .local v9, "coords":[Landroid/view/MotionEvent$PointerCoords;
    const/16 v18, 0x0

    #@1d
    .local v18, "i":I
    :goto_0
    move/from16 v0, v18

    #@1f
    move/from16 v1, v19

    #@21
    if-ge v0, v1, :cond_2

    #@23
    .line 992
    aget-object v2, v8, v18

    #@25
    move-object/from16 v0, p1

    #@27
    move/from16 v1, v18

    #@29
    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    #@2c
    .line 993
    aget-object v2, v9, v18

    #@2e
    move-object/from16 v0, p1

    #@30
    move/from16 v1, v18

    #@32
    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    #@35
    .line 994
    move/from16 v0, v18

    #@37
    move/from16 v1, v20

    #@39
    if-ne v0, v1, :cond_1

    #@3b
    .line 995
    aget-object v2, v9, v18

    #@3d
    iget v3, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    #@3f
    move/from16 v0, p2

    #@41
    int-to-float v4, v0

    #@42
    add-float/2addr v3, v4

    #@43
    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    #@45
    .line 996
    aget-object v2, v9, v18

    #@47
    iget v3, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    #@49
    move/from16 v0, p3

    #@4b
    int-to-float v4, v0

    #@4c
    add-float/2addr v3, v4

    #@4d
    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    #@4f
    .line 991
    :cond_1
    add-int/lit8 v18, v18, 0x1

    #@51
    goto :goto_0

    #@52
    .line 999
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    #@55
    move-result-wide v2

    #@56
    .line 1000
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    #@59
    move-result-wide v4

    #@5a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    #@5d
    move-result v6

    #@5e
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    #@61
    move-result v7

    #@62
    .line 1001
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    #@65
    move-result v10

    #@66
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    #@69
    move-result v11

    #@6a
    .line 1002
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    #@6d
    move-result v14

    #@6e
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    #@71
    move-result v15

    #@72
    .line 1003
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    #@75
    move-result v16

    #@76
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    #@79
    move-result v17

    #@7a
    .line 1002
    const/high16 v12, 0x3f800000    # 1.0f

    #@7c
    const/high16 v13, 0x3f800000    # 1.0f

    #@7e
    .line 999
    invoke-static/range {v2 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    #@81
    move-result-object v2

    #@82
    return-object v2
.end method

.method private sendAccessibilityEvent(I)V
    .locals 3
    .param p1, "type"    # I

    #@0
    .prologue
    .line 804
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mContext:Landroid/content/Context;

    #@2
    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    #@5
    move-result-object v0

    #@6
    .line 805
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_0

    #@c
    .line 806
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    #@f
    move-result-object v1

    #@10
    .line 807
    .local v1, "event":Landroid/view/accessibility/AccessibilityEvent;
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@12
    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getActiveWindowId()I

    #@15
    move-result v2

    #@16
    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setWindowId(I)V

    #@19
    .line 808
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    #@1c
    .line 809
    sparse-switch p1, :sswitch_data_0

    #@1f
    .line 803
    .end local v1    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    :goto_0
    return-void

    #@20
    .line 811
    .restart local v1    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :sswitch_0
    const/4 v2, 0x1

    #@21
    iput-boolean v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mTouchExplorationInProgress:Z

    #@23
    goto :goto_0

    #@24
    .line 814
    :sswitch_1
    const/4 v2, 0x0

    #@25
    iput-boolean v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mTouchExplorationInProgress:Z

    #@27
    goto :goto_0

    #@28
    .line 809
    :sswitch_data_0
    .sparse-switch
        0x200 -> :sswitch_0
        0x400 -> :sswitch_1
    .end sparse-switch
.end method

.method private sendActionDownAndUp(Landroid/view/MotionEvent;IZ)V
    .locals 4
    .param p1, "prototype"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I
    .param p3, "targetAccessibilityFocus"    # Z

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 909
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    #@4
    move-result v2

    #@5
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@8
    move-result v0

    #@9
    .line 910
    .local v0, "pointerId":I
    shl-int v1, v3, v0

    #@b
    .line 911
    .local v1, "pointerIdBits":I
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->setTargetAccessibilityFocus(Z)V

    #@e
    .line 912
    const/4 v2, 0x0

    #@f
    invoke-direct {p0, p1, v2, v1, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    #@12
    .line 913
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->setTargetAccessibilityFocus(Z)V

    #@15
    .line 914
    invoke-direct {p0, p1, v3, v1, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    #@18
    .line 907
    return-void
.end method

.method private sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V
    .locals 7
    .param p1, "prototype"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    #@0
    .prologue
    .line 828
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    #@2
    .line 831
    .local v2, "injectedPointers":Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;
    const/4 v5, 0x0

    #@3
    .line 832
    .local v5, "pointerIdBits":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    #@6
    move-result v3

    #@7
    .line 833
    .local v3, "pointerCount":I
    const/4 v1, 0x0

    #@8
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    #@a
    .line 834
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@d
    move-result v4

    #@e
    .line 836
    .local v4, "pointerId":I
    invoke-virtual {v2, v4}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->isInjectedPointerDown(I)Z

    #@11
    move-result v6

    #@12
    if-nez v6, :cond_0

    #@14
    .line 837
    const/4 v6, 0x1

    #@15
    shl-int/2addr v6, v4

    #@16
    or-int/2addr v5, v6

    #@17
    .line 838
    const/4 v6, 0x0

    #@18
    invoke-direct {p0, v6, v1}, Lcom/android/server/accessibility/TouchExplorer;->computeInjectionAction(II)I

    #@1b
    move-result v0

    #@1c
    .line 839
    .local v0, "action":I
    invoke-direct {p0, p1, v0, v5, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    #@1f
    .line 833
    .end local v0    # "action":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@21
    goto :goto_0

    #@22
    .line 827
    .end local v4    # "pointerId":I
    :cond_1
    return-void
.end method

.method private sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V
    .locals 4
    .param p1, "policyFlags"    # I

    #@0
    .prologue
    const/16 v3, 0xa

    #@2
    .line 851
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    #@4
    invoke-virtual {v2}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->getLastInjectedHoverEvent()Landroid/view/MotionEvent;

    #@7
    move-result-object v0

    #@8
    .line 852
    .local v0, "event":Landroid/view/MotionEvent;
    if-eqz v0, :cond_1

    #@a
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    #@d
    move-result v2

    #@e
    if-eq v2, v3, :cond_1

    #@10
    .line 853
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getPointerIdBits()I

    #@13
    move-result v1

    #@14
    .line 854
    .local v1, "pointerIdBits":I
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    #@16
    invoke-virtual {v2}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    #@19
    move-result v2

    #@1a
    if-nez v2, :cond_0

    #@1c
    .line 855
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    #@1e
    invoke-virtual {v2}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->post()V

    #@21
    .line 857
    :cond_0
    invoke-direct {p0, v0, v3, v1, p1}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    #@24
    .line 850
    .end local v1    # "pointerIdBits":I
    :cond_1
    return-void
.end method

.method private sendMotionEvent(Landroid/view/MotionEvent;III)V
    .locals 5
    .param p1, "prototype"    # Landroid/view/MotionEvent;
    .param p2, "action"    # I
    .param p3, "pointerIdBits"    # I
    .param p4, "policyFlags"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 927
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->setAction(I)V

    #@4
    .line 929
    const/4 v0, 0x0

    #@5
    .line 930
    .local v0, "event":Landroid/view/MotionEvent;
    const/4 v1, -0x1

    #@6
    if-ne p3, v1, :cond_3

    #@8
    .line 931
    move-object v0, p1

    #@9
    .line 935
    .local v0, "event":Landroid/view/MotionEvent;
    :goto_0
    if-nez p2, :cond_4

    #@b
    .line 936
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    #@e
    move-result-wide v2

    #@f
    invoke-virtual {v0, v2, v3}, Landroid/view/MotionEvent;->setDownTime(J)V

    #@12
    .line 947
    :goto_1
    iget v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerId:I

    #@14
    if-ltz v1, :cond_0

    #@16
    .line 948
    iget v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerDeltaX:I

    #@18
    neg-int v1, v1

    #@19
    .line 949
    iget v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerDeltaY:I

    #@1b
    neg-int v2, v2

    #@1c
    .line 948
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/accessibility/TouchExplorer;->offsetEvent(Landroid/view/MotionEvent;II)Landroid/view/MotionEvent;

    #@1f
    move-result-object v0

    #@20
    .line 958
    :cond_0
    const/high16 v1, 0x40000000    # 2.0f

    #@22
    or-int/2addr p4, v1

    #@23
    .line 959
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    #@25
    if-eqz v1, :cond_1

    #@27
    .line 963
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    #@29
    invoke-interface {v1, v0, v4, p4}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    #@2c
    .line 966
    :cond_1
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    #@2e
    invoke-virtual {v1, v0}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->onMotionEvent(Landroid/view/MotionEvent;)V

    #@31
    .line 968
    if-eq v0, p1, :cond_2

    #@33
    .line 969
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    #@36
    .line 926
    :cond_2
    return-void

    #@37
    .line 933
    .local v0, "event":Landroid/view/MotionEvent;
    :cond_3
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->split(I)Landroid/view/MotionEvent;

    #@3a
    move-result-object v0

    #@3b
    .local v0, "event":Landroid/view/MotionEvent;
    goto :goto_0

    #@3c
    .line 938
    :cond_4
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    #@3e
    invoke-virtual {v1}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->getLastInjectedDownEventTime()J

    #@41
    move-result-wide v2

    #@42
    invoke-virtual {v0, v2, v3}, Landroid/view/MotionEvent;->setDownTime(J)V

    #@45
    goto :goto_1
.end method

.method private sendTouchExplorationGestureStartAndHoverEnterIfNeeded(I)V
    .locals 4
    .param p1, "policyFlags"    # I

    #@0
    .prologue
    .line 868
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    #@2
    invoke-virtual {v2}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->getLastInjectedHoverEvent()Landroid/view/MotionEvent;

    #@5
    move-result-object v0

    #@6
    .line 869
    .local v0, "event":Landroid/view/MotionEvent;
    if-eqz v0, :cond_0

    #@8
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    #@b
    move-result v2

    #@c
    const/16 v3, 0xa

    #@e
    if-ne v2, v3, :cond_0

    #@10
    .line 870
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getPointerIdBits()I

    #@13
    move-result v1

    #@14
    .line 871
    .local v1, "pointerIdBits":I
    const/16 v2, 0x200

    #@16
    invoke-direct {p0, v2}, Lcom/android/server/accessibility/TouchExplorer;->sendAccessibilityEvent(I)V

    #@19
    .line 872
    const/16 v2, 0x9

    #@1b
    invoke-direct {p0, v0, v2, v1, p1}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    #@1e
    .line 867
    .end local v1    # "pointerIdBits":I
    :cond_0
    return-void
.end method

.method private sendUpForInjectedDownPointers(Landroid/view/MotionEvent;I)V
    .locals 8
    .param p1, "prototype"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    .line 884
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    #@3
    .line 885
    .local v2, "injectedTracked":Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;
    const/4 v5, 0x0

    #@4
    .line 886
    .local v5, "pointerIdBits":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    #@7
    move-result v3

    #@8
    .line 887
    .local v3, "pointerCount":I
    const/4 v1, 0x0

    #@9
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    #@b
    .line 888
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@e
    move-result v4

    #@f
    .line 890
    .local v4, "pointerId":I
    invoke-virtual {v2, v4}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->isInjectedPointerDown(I)Z

    #@12
    move-result v6

    #@13
    if-nez v6, :cond_0

    #@15
    .line 887
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@17
    goto :goto_0

    #@18
    .line 893
    :cond_0
    shl-int v6, v7, v4

    #@1a
    or-int/2addr v5, v6

    #@1b
    .line 894
    invoke-direct {p0, v7, v1}, Lcom/android/server/accessibility/TouchExplorer;->computeInjectionAction(II)I

    #@1e
    move-result v0

    #@1f
    .line 895
    .local v0, "action":I
    invoke-direct {p0, p1, v0, v5, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    #@22
    goto :goto_1

    #@23
    .line 883
    .end local v0    # "action":I
    .end local v4    # "pointerId":I
    :cond_1
    return-void
.end method


# virtual methods
.method public clearEvents(I)V
    .locals 1
    .param p1, "inputSource"    # I

    #@0
    .prologue
    .line 197
    const/16 v0, 0x1002

    #@2
    if-ne p1, v0, :cond_0

    #@4
    .line 198
    invoke-direct {p0}, Lcom/android/server/accessibility/TouchExplorer;->clear()V

    #@7
    .line 200
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    #@9
    if-eqz v0, :cond_1

    #@b
    .line 201
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    #@d
    invoke-interface {v0, p1}, Lcom/android/server/accessibility/EventStreamTransformation;->clearEvents(I)V

    #@10
    .line 196
    :cond_1
    return-void
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    #@0
    .prologue
    const/16 v3, 0x100

    #@2
    const/4 v2, 0x0

    #@3
    .line 321
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    #@6
    move-result v0

    #@7
    .line 325
    .local v0, "eventType":I
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    #@9
    invoke-virtual {v1}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_0

    #@f
    .line 326
    if-ne v0, v3, :cond_0

    #@11
    .line 327
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    #@13
    invoke-virtual {v1}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    #@16
    .line 328
    const/16 v1, 0x400

    #@18
    invoke-direct {p0, v1}, Lcom/android/server/accessibility/TouchExplorer;->sendAccessibilityEvent(I)V

    #@1b
    .line 333
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    #@1d
    invoke-virtual {v1}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    #@20
    move-result v1

    #@21
    if-eqz v1, :cond_1

    #@23
    .line 334
    if-ne v0, v3, :cond_1

    #@25
    .line 335
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    #@27
    invoke-virtual {v1}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    #@2a
    .line 336
    const/high16 v1, 0x200000

    #@2c
    invoke-direct {p0, v1}, Lcom/android/server/accessibility/TouchExplorer;->sendAccessibilityEvent(I)V

    #@2f
    .line 341
    :cond_1
    sparse-switch v0, :sswitch_data_0

    #@32
    .line 355
    :goto_0
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    #@34
    if-eqz v1, :cond_2

    #@36
    .line 356
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    #@38
    invoke-interface {v1, p1}, Lcom/android/server/accessibility/EventStreamTransformation;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    #@3b
    .line 320
    :cond_2
    return-void

    #@3c
    .line 344
    :sswitch_0
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    #@3e
    invoke-static {v1}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->-get0(Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;)Landroid/view/MotionEvent;

    #@41
    move-result-object v1

    #@42
    if-eqz v1, :cond_3

    #@44
    .line 345
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    #@46
    invoke-static {v1}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->-get0(Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;)Landroid/view/MotionEvent;

    #@49
    move-result-object v1

    #@4a
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    #@4d
    .line 346
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    #@4f
    invoke-static {v1, v2}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->-set0(Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    #@52
    .line 348
    :cond_3
    const/4 v1, -0x1

    #@53
    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mLastTouchedWindowId:I

    #@55
    goto :goto_0

    #@56
    .line 352
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    #@59
    move-result v1

    #@5a
    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mLastTouchedWindowId:I

    #@5c
    goto :goto_0

    #@5d
    .line 341
    nop

    #@5e
    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x80 -> :sswitch_1
        0x100 -> :sswitch_1
        0x8000 -> :sswitch_0
    .end sparse-switch
.end method

.method public onDestroy()V
    .locals 0

    #@0
    .prologue
    .line 207
    invoke-direct {p0}, Lcom/android/server/accessibility/TouchExplorer;->clear()V

    #@3
    .line 206
    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;I)Z
    .locals 26
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    #@0
    .prologue
    .line 395
    move-object/from16 v0, p0

    #@2
    iget v4, v0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    #@4
    const/4 v5, 0x1

    #@5
    if-eq v4, v5, :cond_0

    #@7
    .line 396
    const/4 v4, 0x0

    #@8
    return v4

    #@9
    .line 400
    :cond_0
    move-object/from16 v0, p0

    #@b
    iget-object v4, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    #@d
    invoke-virtual {v4}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    #@10
    .line 401
    move-object/from16 v0, p0

    #@12
    iget-object v4, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;

    #@14
    invoke-virtual {v4}, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->cancel()V

    #@17
    .line 403
    move-object/from16 v0, p0

    #@19
    iget-object v4, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    #@1b
    invoke-virtual {v4}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    #@1e
    move-result v4

    #@1f
    if-eqz v4, :cond_1

    #@21
    .line 404
    move-object/from16 v0, p0

    #@23
    iget-object v4, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    #@25
    invoke-virtual {v4}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->forceSendAndRemove()V

    #@28
    .line 406
    :cond_1
    move-object/from16 v0, p0

    #@2a
    iget-object v4, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    #@2c
    invoke-virtual {v4}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    #@2f
    move-result v4

    #@30
    if-eqz v4, :cond_2

    #@32
    .line 407
    move-object/from16 v0, p0

    #@34
    iget-object v4, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    #@36
    invoke-virtual {v4}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->forceSendAndRemove()V

    #@39
    .line 410
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    #@3c
    move-result v23

    #@3d
    .line 411
    .local v23, "pointerIndex":I
    move-object/from16 v0, p1

    #@3f
    move/from16 v1, v23

    #@41
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@44
    move-result v22

    #@45
    .line 413
    .local v22, "pointerId":I
    move-object/from16 v0, p0

    #@47
    iget-object v0, v0, Lcom/android/server/accessibility/TouchExplorer;->mTempPoint:Landroid/graphics/Point;

    #@49
    move-object/from16 v20, v0

    #@4b
    .line 414
    .local v20, "clickLocation":Landroid/graphics/Point;
    move-object/from16 v0, p0

    #@4d
    move-object/from16 v1, v20

    #@4f
    invoke-direct {v0, v1}, Lcom/android/server/accessibility/TouchExplorer;->computeClickLocation(Landroid/graphics/Point;)I

    #@52
    move-result v24

    #@53
    .line 415
    .local v24, "result":I
    if-nez v24, :cond_3

    #@55
    .line 418
    const/4 v4, 0x1

    #@56
    return v4

    #@57
    .line 422
    :cond_3
    const/4 v4, 0x1

    #@58
    new-array v10, v4, [Landroid/view/MotionEvent$PointerProperties;

    #@5a
    .line 423
    .local v10, "properties":[Landroid/view/MotionEvent$PointerProperties;
    new-instance v4, Landroid/view/MotionEvent$PointerProperties;

    #@5c
    invoke-direct {v4}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    #@5f
    const/4 v5, 0x0

    #@60
    aput-object v4, v10, v5

    #@62
    .line 424
    const/4 v4, 0x0

    #@63
    aget-object v4, v10, v4

    #@65
    move-object/from16 v0, p1

    #@67
    move/from16 v1, v23

    #@69
    invoke-virtual {v0, v1, v4}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    #@6c
    .line 425
    const/4 v4, 0x1

    #@6d
    new-array v11, v4, [Landroid/view/MotionEvent$PointerCoords;

    #@6f
    .line 426
    .local v11, "coords":[Landroid/view/MotionEvent$PointerCoords;
    new-instance v4, Landroid/view/MotionEvent$PointerCoords;

    #@71
    invoke-direct {v4}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    #@74
    const/4 v5, 0x0

    #@75
    aput-object v4, v11, v5

    #@77
    .line 427
    const/4 v4, 0x0

    #@78
    aget-object v4, v11, v4

    #@7a
    move-object/from16 v0, v20

    #@7c
    iget v5, v0, Landroid/graphics/Point;->x:I

    #@7e
    int-to-float v5, v5

    #@7f
    iput v5, v4, Landroid/view/MotionEvent$PointerCoords;->x:F

    #@81
    .line 428
    const/4 v4, 0x0

    #@82
    aget-object v4, v11, v4

    #@84
    move-object/from16 v0, v20

    #@86
    iget v5, v0, Landroid/graphics/Point;->y:I

    #@88
    int-to-float v5, v5

    #@89
    iput v5, v4, Landroid/view/MotionEvent$PointerCoords;->y:F

    #@8b
    .line 429
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    #@8e
    move-result-wide v4

    #@8f
    .line 430
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    #@92
    move-result-wide v6

    #@93
    .line 431
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    #@96
    move-result v16

    #@97
    .line 432
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    #@9a
    move-result v18

    #@9b
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    #@9e
    move-result v19

    #@9f
    .line 430
    const/4 v8, 0x0

    #@a0
    const/4 v9, 0x1

    #@a1
    .line 431
    const/4 v12, 0x0

    #@a2
    const/4 v13, 0x0

    #@a3
    const/high16 v14, 0x3f800000    # 1.0f

    #@a5
    const/high16 v15, 0x3f800000    # 1.0f

    #@a7
    const/16 v17, 0x0

    #@a9
    .line 429
    invoke-static/range {v4 .. v19}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    #@ac
    move-result-object v21

    #@ad
    .line 433
    .local v21, "click_event":Landroid/view/MotionEvent;
    const/4 v4, 0x1

    #@ae
    move/from16 v0, v24

    #@b0
    if-ne v0, v4, :cond_4

    #@b2
    const/16 v25, 0x1

    #@b4
    .line 434
    .local v25, "targetAccessibilityFocus":Z
    :goto_0
    move-object/from16 v0, p0

    #@b6
    move-object/from16 v1, v21

    #@b8
    move/from16 v2, p2

    #@ba
    move/from16 v3, v25

    #@bc
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/accessibility/TouchExplorer;->sendActionDownAndUp(Landroid/view/MotionEvent;IZ)V

    #@bf
    .line 435
    invoke-virtual/range {v21 .. v21}, Landroid/view/MotionEvent;->recycle()V

    #@c2
    .line 436
    const/4 v4, 0x1

    #@c3
    return v4

    #@c4
    .line 433
    .end local v25    # "targetAccessibilityFocus":Z
    :cond_4
    const/16 v25, 0x0

    #@c6
    goto :goto_0
.end method

.method public onDoubleTapAndHold(Landroid/view/MotionEvent;I)V
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    #@0
    .prologue
    .line 363
    iget v4, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    #@2
    const/4 v5, 0x1

    #@3
    if-eq v4, v5, :cond_0

    #@5
    .line 364
    return-void

    #@6
    .line 368
    :cond_0
    iget-object v4, p0, Lcom/android/server/accessibility/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;

    #@8
    invoke-virtual {v4}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getLastReceivedEvent()Landroid/view/MotionEvent;

    #@b
    move-result-object v4

    #@c
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getPointerCount()I

    #@f
    move-result v4

    #@10
    if-nez v4, :cond_1

    #@12
    .line 369
    return-void

    #@13
    .line 372
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    #@16
    move-result v2

    #@17
    .line 373
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@1a
    move-result v1

    #@1b
    .line 375
    .local v1, "pointerId":I
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mTempPoint:Landroid/graphics/Point;

    #@1d
    .line 376
    .local v0, "clickLocation":Landroid/graphics/Point;
    invoke-direct {p0, v0}, Lcom/android/server/accessibility/TouchExplorer;->computeClickLocation(Landroid/graphics/Point;)I

    #@20
    move-result v3

    #@21
    .line 378
    .local v3, "result":I
    if-nez v3, :cond_2

    #@23
    .line 379
    return-void

    #@24
    .line 382
    :cond_2
    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerId:I

    #@26
    .line 383
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    #@29
    move-result v4

    #@2a
    float-to-int v4, v4

    #@2b
    iget v5, v0, Landroid/graphics/Point;->x:I

    #@2d
    sub-int/2addr v4, v5

    #@2e
    iput v4, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerDeltaX:I

    #@30
    .line 384
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    #@33
    move-result v4

    #@34
    float-to-int v4, v4

    #@35
    iget v5, v0, Landroid/graphics/Point;->y:I

    #@37
    sub-int/2addr v4, v5

    #@38
    iput v4, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerDeltaY:I

    #@3a
    .line 386
    invoke-direct {p0, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V

    #@3d
    .line 388
    const/4 v4, 0x4

    #@3e
    iput v4, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    #@40
    .line 389
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V

    #@43
    .line 361
    return-void
.end method

.method public onGestureCancelled(Landroid/view/MotionEvent;I)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 468
    iget v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    #@3
    const/4 v3, 0x5

    #@4
    if-ne v2, v3, :cond_0

    #@6
    .line 469
    invoke-direct {p0}, Lcom/android/server/accessibility/TouchExplorer;->endGestureDetection()V

    #@9
    .line 470
    return v4

    #@a
    .line 471
    :cond_0
    iget v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    #@c
    if-ne v2, v4, :cond_1

    #@e
    .line 473
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@11
    move-result v2

    #@12
    const/4 v3, 0x2

    #@13
    if-ne v2, v3, :cond_1

    #@15
    .line 474
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;

    #@17
    invoke-virtual {v2}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getPrimaryPointerId()I

    #@1a
    move-result v0

    #@1b
    .line 475
    .local v0, "pointerId":I
    shl-int v1, v4, v0

    #@1d
    .line 479
    .local v1, "pointerIdBits":I
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    #@1f
    invoke-virtual {v2, p1}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->addEvent(Landroid/view/MotionEvent;)V

    #@22
    .line 480
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    #@24
    invoke-virtual {v2}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->forceSendAndRemove()V

    #@27
    .line 481
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;

    #@29
    invoke-virtual {v2}, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->cancel()V

    #@2c
    .line 482
    const/4 v2, 0x7

    #@2d
    invoke-direct {p0, p1, v2, v1, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    #@30
    .line 483
    return v4

    #@31
    .line 486
    .end local v0    # "pointerId":I
    .end local v1    # "pointerIdBits":I
    :cond_1
    const/4 v2, 0x0

    #@32
    return v2
.end method

.method public onGestureCompleted(I)Z
    .locals 2
    .param p1, "gestureId"    # I

    #@0
    .prologue
    .line 455
    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    #@2
    const/4 v1, 0x5

    #@3
    if-eq v0, v1, :cond_0

    #@5
    .line 456
    const/4 v0, 0x0

    #@6
    return v0

    #@7
    .line 459
    :cond_0
    invoke-direct {p0}, Lcom/android/server/accessibility/TouchExplorer;->endGestureDetection()V

    #@a
    .line 461
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@c
    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onGesture(I)Z

    #@f
    .line 463
    const/4 v0, 0x1

    #@10
    return v0
.end method

.method public onGestureStarted()Z
    .locals 1

    #@0
    .prologue
    .line 443
    const/4 v0, 0x5

    #@1
    iput v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    #@3
    .line 444
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    #@5
    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    #@8
    .line 445
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;

    #@a
    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->cancel()V

    #@d
    .line 446
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mExitGestureDetectionModeDelayed:Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;

    #@f
    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;->post()V

    #@12
    .line 449
    const/high16 v0, 0x40000

    #@14
    invoke-direct {p0, v0}, Lcom/android/server/accessibility/TouchExplorer;->sendAccessibilityEvent(I)V

    #@17
    .line 450
    const/4 v0, 0x0

    #@18
    return v0
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;I)V
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    #@0
    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 315
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    #@6
    invoke-interface {v0, p1, p2}, Lcom/android/server/accessibility/EventStreamTransformation;->onKeyEvent(Landroid/view/KeyEvent;I)V

    #@9
    .line 313
    :cond_0
    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    #@0
    .prologue
    .line 266
    const/16 v0, 0x1002

    #@2
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_1

    #@8
    .line 267
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 268
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    #@e
    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    #@11
    .line 270
    :cond_0
    return-void

    #@12
    .line 279
    :cond_1
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;

    #@14
    invoke-virtual {v0, p2}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->onMotionEvent(Landroid/view/MotionEvent;)V

    #@17
    .line 284
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/AccessibilityGestureDetector;

    #@19
    invoke-virtual {v0, p2, p3}, Lcom/android/server/accessibility/AccessibilityGestureDetector;->onMotionEvent(Landroid/view/MotionEvent;I)Z

    #@1c
    move-result v0

    #@1d
    if-eqz v0, :cond_2

    #@1f
    .line 286
    return-void

    #@20
    .line 289
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@23
    move-result v0

    #@24
    const/4 v1, 0x3

    #@25
    if-ne v0, v1, :cond_3

    #@27
    .line 290
    invoke-direct {p0, p1, p3}, Lcom/android/server/accessibility/TouchExplorer;->clear(Landroid/view/MotionEvent;I)V

    #@2a
    .line 291
    return-void

    #@2b
    .line 294
    :cond_3
    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    #@2d
    packed-switch v0, :pswitch_data_0

    #@30
    .line 308
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    #@32
    new-instance v1, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    const-string/jumbo v2, "Illegal state: "

    #@3a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v1

    #@3e
    iget v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    #@40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@43
    move-result-object v1

    #@44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v1

    #@48
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@4b
    throw v0

    #@4c
    .line 296
    :pswitch_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/TouchExplorer;->handleMotionEventStateTouchExploring(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    #@4f
    .line 265
    :goto_0
    :pswitch_2
    return-void

    #@50
    .line 299
    :pswitch_3
    invoke-direct {p0, p1, p3}, Lcom/android/server/accessibility/TouchExplorer;->handleMotionEventStateDragging(Landroid/view/MotionEvent;I)V

    #@53
    goto :goto_0

    #@54
    .line 302
    :pswitch_4
    invoke-direct {p0, p1, p3}, Lcom/android/server/accessibility/TouchExplorer;->handleMotionEventStateDelegating(Landroid/view/MotionEvent;I)V

    #@57
    goto :goto_0

    #@58
    .line 294
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method public setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V
    .locals 0
    .param p1, "next"    # Lcom/android/server/accessibility/EventStreamTransformation;

    #@0
    .prologue
    .line 261
    iput-object p1, p0, Lcom/android/server/accessibility/TouchExplorer;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    #@2
    .line 260
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1309
    const-string/jumbo v0, "TouchExplorer"

    #@3
    return-object v0
.end method

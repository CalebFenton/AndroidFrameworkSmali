.class Lcom/android/server/accessibility/TouchExplorer;
.super Ljava/lang/Object;
.source "TouchExplorer.java"

# interfaces
.implements Lcom/android/server/accessibility/EventStreamTransformation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;,
        Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;,
        Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;,
        Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;,
        Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;,
        Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;,
        Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;,
        Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;
    }
.end annotation


# static fields
.field private static final ALL_POINTER_ID_BITS:I = -0x1

.field private static final CLICK_LOCATION_ACCESSIBILITY_FOCUS:I = 0x1

.field private static final CLICK_LOCATION_LAST_TOUCH_EXPLORED:I = 0x2

.field private static final CLICK_LOCATION_NONE:I = 0x0

.field private static final DEBUG:Z = false

.field private static final EXIT_GESTURE_DETECTION_TIMEOUT:I = 0x7d0

.field private static final GESTURE_DETECTION_VELOCITY_DIP:I = 0x3e8

.field private static final INVALID_POINTER_ID:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "TouchExplorer"

.field private static final MAX_DRAGGING_ANGLE_COS:F = 0.52532196f

.field private static final MAX_POINTER_COUNT:I = 0x20

.field private static final MIN_POINTER_DISTANCE_TO_USE_MIDDLE_LOCATION_DIP:I = 0xc8

.field private static final MIN_PREDICTION_SCORE:F = 2.0f

.field private static final STATE_DELEGATING:I = 0x4

.field private static final STATE_DRAGGING:I = 0x2

.field private static final STATE_GESTURE_DETECTING:I = 0x5

.field private static final STATE_TOUCH_EXPLORING:I = 0x1

.field private static final TOUCH_TOLERANCE:I = 0x3


# instance fields
.field private final mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

.field private final mContext:Landroid/content/Context;

.field private mCurrentState:I

.field private final mDetermineUserIntentTimeout:I

.field private final mDoubleTapDetector:Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;

.field private final mDoubleTapSlop:I

.field private final mDoubleTapTimeout:I

.field private mDraggingPointerId:I

.field private final mExitGestureDetectionModeDelayed:Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;

.field private mGestureLibrary:Landroid/gesture/GestureLibrary;

.field private final mHandler:Landroid/os/Handler;

.field private final mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

.field private mLastTouchedWindowId:I

.field private mLongPressingPointerDeltaX:I

.field private mLongPressingPointerDeltaY:I

.field private mLongPressingPointerId:I

.field private mNext:Lcom/android/server/accessibility/EventStreamTransformation;

.field private final mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

.field private mPreviousX:F

.field private mPreviousY:F

.field private final mReceivedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;

.field private final mScaledGestureDetectionVelocity:I

.field private final mScaledMinPointerDistanceToUseMiddleLocation:I

.field private final mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

.field private final mSendHoverExitDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;

.field private final mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

.field private final mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

.field private final mStrokeBuffer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/gesture/GesturePoint;",
            ">;"
        }
    .end annotation
.end field

.field private final mTapTimeout:I

.field private final mTempPoint:Landroid/graphics/Point;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchExplorationInProgress:Z

.field private final mTouchSlop:I

.field private final mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static synthetic -get0(Lcom/android/server/accessibility/TouchExplorer;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mDetermineUserIntentTimeout:I

    #@2
    return v0
.end method

.method static synthetic -get1(Lcom/android/server/accessibility/TouchExplorer;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mDoubleTapSlop:I

    #@2
    return v0
.end method

.method static synthetic -get10(Lcom/android/server/accessibility/TouchExplorer;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mTapTimeout:I

    #@2
    return v0
.end method

.method static synthetic -get11(Lcom/android/server/accessibility/TouchExplorer;)Landroid/graphics/Point;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mTempPoint:Landroid/graphics/Point;

    #@2
    return-object v0
.end method

.method static synthetic -get12(Lcom/android/server/accessibility/TouchExplorer;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mTouchSlop:I

    #@2
    return v0
.end method

.method static synthetic -get2(Lcom/android/server/accessibility/TouchExplorer;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mDoubleTapTimeout:I

    #@2
    return v0
.end method

.method static synthetic -get3(Lcom/android/server/accessibility/TouchExplorer;)Landroid/os/Handler;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mHandler:Landroid/os/Handler;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    #@2
    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;

    #@2
    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    #@2
    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/accessibility/TouchExplorer;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    #@2
    return p1
.end method

.method static synthetic -set1(Lcom/android/server/accessibility/TouchExplorer;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerDeltaX:I

    #@2
    return p1
.end method

.method static synthetic -set2(Lcom/android/server/accessibility/TouchExplorer;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerDeltaY:I

    #@2
    return p1
.end method

.method static synthetic -set3(Lcom/android/server/accessibility/TouchExplorer;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerId:I

    #@2
    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/accessibility/TouchExplorer;Landroid/graphics/Point;)I
    .locals 1
    .param p1, "outLocation"    # Landroid/graphics/Point;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/TouchExplorer;->computeClickLocation(Landroid/graphics/Point;)I

    #@3
    move-result v0

    #@4
    return v0
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

.method static synthetic -wrap2(Lcom/android/server/accessibility/TouchExplorer;Landroid/view/MotionEvent;IZ)V
    .locals 0
    .param p1, "prototype"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I
    .param p3, "targetAccessibilityFocus"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/TouchExplorer;->sendActionDownAndUp(Landroid/view/MotionEvent;IZ)V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/accessibility/TouchExplorer;Landroid/view/MotionEvent;I)V
    .locals 0
    .param p1, "prototype"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V

    #@3
    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/accessibility/TouchExplorer;I)V
    .locals 0
    .param p1, "policyFlags"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/TouchExplorer;->sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/accessibility/TouchExplorer;Landroid/view/MotionEvent;III)V
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
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/accessibility/AccessibilityManagerService;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 125
    const/4 v1, 0x1

    #@5
    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    #@7
    .line 165
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    #@a
    move-result-object v1

    #@b
    iput-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@d
    .line 177
    new-instance v1, Landroid/graphics/Rect;

    #@f
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    #@12
    iput-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mTempRect:Landroid/graphics/Rect;

    #@14
    .line 180
    new-instance v1, Landroid/graphics/Point;

    #@16
    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    #@19
    iput-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mTempPoint:Landroid/graphics/Point;

    #@1b
    .line 192
    new-instance v1, Ljava/util/ArrayList;

    #@1d
    const/16 v2, 0x64

    #@1f
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    #@22
    iput-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mStrokeBuffer:Ljava/util/ArrayList;

    #@24
    .line 204
    const/4 v1, -0x1

    #@25
    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerId:I

    #@27
    .line 225
    iput-object p1, p0, Lcom/android/server/accessibility/TouchExplorer;->mContext:Landroid/content/Context;

    #@29
    .line 226
    iput-object p2, p0, Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@2b
    .line 227
    new-instance v1, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;

    #@2d
    invoke-direct {v1, p0}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;-><init>(Lcom/android/server/accessibility/TouchExplorer;)V

    #@30
    iput-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;

    #@32
    .line 228
    new-instance v1, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    #@34
    invoke-direct {v1, p0}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;-><init>(Lcom/android/server/accessibility/TouchExplorer;)V

    #@37
    iput-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    #@39
    .line 229
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    #@3c
    move-result v1

    #@3d
    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mTapTimeout:I

    #@3f
    .line 230
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    #@42
    move-result v1

    #@43
    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mDetermineUserIntentTimeout:I

    #@45
    .line 231
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    #@48
    move-result v1

    #@49
    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mDoubleTapTimeout:I

    #@4b
    .line 232
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    #@4e
    move-result-object v1

    #@4f
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    #@52
    move-result v1

    #@53
    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mTouchSlop:I

    #@55
    .line 233
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    #@58
    move-result-object v1

    #@59
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    #@5c
    move-result v1

    #@5d
    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mDoubleTapSlop:I

    #@5f
    .line 234
    new-instance v1, Landroid/os/Handler;

    #@61
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    #@64
    move-result-object v2

    #@65
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@68
    iput-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mHandler:Landroid/os/Handler;

    #@6a
    .line 235
    new-instance v1, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    #@6c
    invoke-direct {v1, p0, v4}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;-><init>(Lcom/android/server/accessibility/TouchExplorer;Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;)V

    #@6f
    iput-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    #@71
    .line 236
    new-instance v1, Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;

    #@73
    invoke-direct {v1, p0, v4}, Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;-><init>(Lcom/android/server/accessibility/TouchExplorer;Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;)V

    #@76
    iput-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mExitGestureDetectionModeDelayed:Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;

    #@78
    .line 237
    const v1, 0x1100002

    #@7b
    invoke-static {p1, v1}, Landroid/gesture/GestureLibraries;->fromRawResource(Landroid/content/Context;I)Landroid/gesture/GestureLibrary;

    #@7e
    move-result-object v1

    #@7f
    iput-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mGestureLibrary:Landroid/gesture/GestureLibrary;

    #@81
    .line 238
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mGestureLibrary:Landroid/gesture/GestureLibrary;

    #@83
    const/16 v2, 0x8

    #@85
    invoke-virtual {v1, v2}, Landroid/gesture/GestureLibrary;->setOrientationStyle(I)V

    #@88
    .line 239
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mGestureLibrary:Landroid/gesture/GestureLibrary;

    #@8a
    const/4 v2, 0x2

    #@8b
    invoke-virtual {v1, v2}, Landroid/gesture/GestureLibrary;->setSequenceType(I)V

    #@8e
    .line 240
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mGestureLibrary:Landroid/gesture/GestureLibrary;

    #@90
    invoke-virtual {v1}, Landroid/gesture/GestureLibrary;->load()Z

    #@93
    .line 241
    new-instance v1, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    #@95
    invoke-direct {v1, p0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;-><init>(Lcom/android/server/accessibility/TouchExplorer;)V

    #@98
    iput-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    #@9a
    .line 242
    new-instance v1, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;

    #@9c
    invoke-direct {v1, p0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;-><init>(Lcom/android/server/accessibility/TouchExplorer;)V

    #@9f
    iput-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;

    #@a1
    .line 243
    new-instance v1, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    #@a3
    .line 245
    iget v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mDetermineUserIntentTimeout:I

    #@a5
    .line 244
    const/16 v3, 0x400

    #@a7
    .line 243
    invoke-direct {v1, p0, v3, v2}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;-><init>(Lcom/android/server/accessibility/TouchExplorer;II)V

    #@aa
    iput-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    #@ac
    .line 246
    new-instance v1, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    #@ae
    .line 248
    iget v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mDetermineUserIntentTimeout:I

    #@b0
    .line 247
    const/high16 v3, 0x200000

    #@b2
    .line 246
    invoke-direct {v1, p0, v3, v2}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;-><init>(Lcom/android/server/accessibility/TouchExplorer;II)V

    #@b5
    iput-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    #@b7
    .line 249
    new-instance v1, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;

    #@b9
    invoke-direct {v1, p0, v4}, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;-><init>(Lcom/android/server/accessibility/TouchExplorer;Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;)V

    #@bc
    iput-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mDoubleTapDetector:Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;

    #@be
    .line 250
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@c1
    move-result-object v1

    #@c2
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@c5
    move-result-object v1

    #@c6
    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    #@c8
    .line 252
    .local v0, "density":F
    const/high16 v1, 0x43480000    # 200.0f

    #@ca
    mul-float/2addr v1, v0

    #@cb
    float-to-int v1, v1

    #@cc
    .line 251
    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mScaledMinPointerDistanceToUseMiddleLocation:I

    #@ce
    .line 253
    const/high16 v1, 0x447a0000    # 1000.0f

    #@d0
    mul-float/2addr v1, v0

    #@d1
    float-to-int v1, v1

    #@d2
    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mScaledGestureDetectionVelocity:I

    #@d4
    .line 224
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
    .line 270
    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    #@4
    packed-switch v0, :pswitch_data_0

    #@7
    .line 290
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    #@9
    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    #@c
    .line 291
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;

    #@e
    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->cancel()V

    #@11
    .line 292
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    #@13
    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->cancel()V

    #@16
    .line 293
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mExitGestureDetectionModeDelayed:Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;

    #@18
    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;->cancel()V

    #@1b
    .line 294
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    #@1d
    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    #@20
    .line 295
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    #@22
    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    #@25
    .line 297
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;

    #@27
    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->clear()V

    #@2a
    .line 298
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    #@2c
    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->clear()V

    #@2f
    .line 300
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mDoubleTapDetector:Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;

    #@31
    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->clear()V

    #@34
    .line 303
    iput v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerId:I

    #@36
    .line 304
    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerDeltaX:I

    #@38
    .line 305
    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerDeltaY:I

    #@3a
    .line 306
    const/4 v0, 0x1

    #@3b
    iput v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    #@3d
    .line 307
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    #@3f
    if-eqz v0, :cond_0

    #@41
    .line 308
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    #@43
    invoke-interface {v0}, Lcom/android/server/accessibility/EventStreamTransformation;->clear()V

    #@46
    .line 310
    :cond_0
    iput-boolean v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mTouchExplorationInProgress:Z

    #@48
    .line 311
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@4a
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionEnd()V

    #@4d
    .line 269
    return-void

    #@4e
    .line 273
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V

    #@51
    goto :goto_0

    #@52
    .line 276
    :pswitch_2
    iput v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mDraggingPointerId:I

    #@54
    .line 278
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendUpForInjectedDownPointers(Landroid/view/MotionEvent;I)V

    #@57
    goto :goto_0

    #@58
    .line 282
    :pswitch_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendUpForInjectedDownPointers(Landroid/view/MotionEvent;I)V

    #@5b
    goto :goto_0

    #@5c
    .line 286
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mStrokeBuffer:Ljava/util/ArrayList;

    #@5e
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@61
    goto :goto_0

    #@62
    .line 270
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private computeClickLocation(Landroid/graphics/Point;)I
    .locals 5
    .param p1, "outLocation"    # Landroid/graphics/Point;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 1230
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    #@3
    invoke-virtual {v2}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->getLastInjectedHoverEventForClick()Landroid/view/MotionEvent;

    #@6
    move-result-object v0

    #@7
    .line 1231
    .local v0, "lastExploreEvent":Landroid/view/MotionEvent;
    if-eqz v0, :cond_2

    #@9
    .line 1232
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionIndex()I

    #@c
    move-result v1

    #@d
    .line 1233
    .local v1, "lastExplorePointerIndex":I
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    #@10
    move-result v2

    #@11
    float-to-int v2, v2

    #@12
    iput v2, p1, Landroid/graphics/Point;->x:I

    #@14
    .line 1234
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    #@17
    move-result v2

    #@18
    float-to-int v2, v2

    #@19
    iput v2, p1, Landroid/graphics/Point;->y:I

    #@1b
    .line 1235
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@1d
    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->accessibilityFocusOnlyInActiveWindow()Z

    #@20
    move-result v2

    #@21
    if-eqz v2, :cond_0

    #@23
    .line 1236
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
    .line 1237
    :cond_0
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@2f
    invoke-virtual {v2, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getAccessibilityFocusClickPointInScreen(Landroid/graphics/Point;)Z

    #@32
    move-result v2

    #@33
    if-eqz v2, :cond_1

    #@35
    .line 1238
    return v4

    #@36
    .line 1240
    :cond_1
    const/4 v2, 0x2

    #@37
    return v2

    #@38
    .line 1244
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
    .line 1245
    return v4

    #@41
    .line 1247
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
    .line 1060
    sparse-switch p1, :sswitch_data_0

    #@5
    .line 1083
    return p1

    #@6
    .line 1063
    :sswitch_0
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    #@8
    .line 1065
    .local v0, "injectedTracker":Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;
    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->getInjectedPointerDownCount()I

    #@b
    move-result v1

    #@c
    if-nez v1, :cond_0

    #@e
    .line 1066
    return v2

    #@f
    .line 1068
    :cond_0
    shl-int/lit8 v1, p2, 0x8

    #@11
    or-int/lit8 v1, v1, 0x5

    #@13
    return v1

    #@14
    .line 1073
    .end local v0    # "injectedTracker":Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;
    :sswitch_1
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    #@16
    .line 1075
    .restart local v0    # "injectedTracker":Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;
    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->getInjectedPointerDownCount()I

    #@19
    move-result v1

    #@1a
    if-ne v1, v3, :cond_1

    #@1c
    .line 1076
    return v3

    #@1d
    .line 1078
    :cond_1
    shl-int/lit8 v1, p2, 0x8

    #@1f
    or-int/lit8 v1, v1, 0x6

    #@21
    return v1

    #@22
    .line 1060
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5 -> :sswitch_0
        0x6 -> :sswitch_1
    .end sparse-switch
.end method

.method private static getStateSymbolicName(I)Ljava/lang/String;
    .locals 3
    .param p0, "state"    # I

    #@0
    .prologue
    .line 1257
    packed-switch p0, :pswitch_data_0

    #@3
    .line 1267
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
    .line 1259
    :pswitch_1
    const-string/jumbo v0, "STATE_TOUCH_EXPLORING"

    #@20
    return-object v0

    #@21
    .line 1261
    :pswitch_2
    const-string/jumbo v0, "STATE_DRAGGING"

    #@24
    return-object v0

    #@25
    .line 1263
    :pswitch_3
    const-string/jumbo v0, "STATE_DELEGATING"

    #@28
    return-object v0

    #@29
    .line 1265
    :pswitch_4
    const-string/jumbo v0, "STATE_GESTURE_DETECTING"

    #@2c
    return-object v0

    #@2d
    .line 1257
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

.method private handleMotionEventGestureDetecting(Landroid/view/MotionEvent;I)V
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    #@0
    .prologue
    .line 783
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@3
    move-result v9

    #@4
    packed-switch v9, :pswitch_data_0

    #@7
    .line 782
    :cond_0
    :goto_0
    return-void

    #@8
    .line 785
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@b
    move-result v7

    #@c
    .line 786
    .local v7, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@f
    move-result v8

    #@10
    .line 787
    .local v8, "y":F
    iput v7, p0, Lcom/android/server/accessibility/TouchExplorer;->mPreviousX:F

    #@12
    .line 788
    iput v8, p0, Lcom/android/server/accessibility/TouchExplorer;->mPreviousY:F

    #@14
    .line 789
    iget-object v9, p0, Lcom/android/server/accessibility/TouchExplorer;->mStrokeBuffer:Ljava/util/ArrayList;

    #@16
    new-instance v10, Landroid/gesture/GesturePoint;

    #@18
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    #@1b
    move-result-wide v12

    #@1c
    invoke-direct {v10, v7, v8, v12, v13}, Landroid/gesture/GesturePoint;-><init>(FFJ)V

    #@1f
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@22
    goto :goto_0

    #@23
    .line 792
    .end local v7    # "x":F
    .end local v8    # "y":F
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@26
    move-result v7

    #@27
    .line 793
    .restart local v7    # "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@2a
    move-result v8

    #@2b
    .line 794
    .restart local v8    # "y":F
    iget v9, p0, Lcom/android/server/accessibility/TouchExplorer;->mPreviousX:F

    #@2d
    sub-float v9, v7, v9

    #@2f
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    #@32
    move-result v1

    #@33
    .line 795
    .local v1, "dX":F
    iget v9, p0, Lcom/android/server/accessibility/TouchExplorer;->mPreviousY:F

    #@35
    sub-float v9, v8, v9

    #@37
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    #@3a
    move-result v2

    #@3b
    .line 796
    .local v2, "dY":F
    const/high16 v9, 0x40400000    # 3.0f

    #@3d
    cmpl-float v9, v1, v9

    #@3f
    if-gez v9, :cond_1

    #@41
    const/high16 v9, 0x40400000    # 3.0f

    #@43
    cmpl-float v9, v2, v9

    #@45
    if-ltz v9, :cond_0

    #@47
    .line 797
    :cond_1
    iput v7, p0, Lcom/android/server/accessibility/TouchExplorer;->mPreviousX:F

    #@49
    .line 798
    iput v8, p0, Lcom/android/server/accessibility/TouchExplorer;->mPreviousY:F

    #@4b
    .line 799
    iget-object v9, p0, Lcom/android/server/accessibility/TouchExplorer;->mStrokeBuffer:Ljava/util/ArrayList;

    #@4d
    new-instance v10, Landroid/gesture/GesturePoint;

    #@4f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    #@52
    move-result-wide v12

    #@53
    invoke-direct {v10, v7, v8, v12, v13}, Landroid/gesture/GesturePoint;-><init>(FFJ)V

    #@56
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@59
    goto :goto_0

    #@5a
    .line 803
    .end local v1    # "dX":F
    .end local v2    # "dY":F
    .end local v7    # "x":F
    .end local v8    # "y":F
    :pswitch_2
    iget-object v9, p0, Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@5c
    invoke-virtual {v9}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionEnd()V

    #@5f
    .line 805
    const/high16 v9, 0x80000

    #@61
    invoke-direct {p0, v9}, Lcom/android/server/accessibility/TouchExplorer;->sendAccessibilityEvent(I)V

    #@64
    .line 807
    const/high16 v9, 0x200000

    #@66
    invoke-direct {p0, v9}, Lcom/android/server/accessibility/TouchExplorer;->sendAccessibilityEvent(I)V

    #@69
    .line 809
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@6c
    move-result v7

    #@6d
    .line 810
    .restart local v7    # "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@70
    move-result v8

    #@71
    .line 811
    .restart local v8    # "y":F
    iget-object v9, p0, Lcom/android/server/accessibility/TouchExplorer;->mStrokeBuffer:Ljava/util/ArrayList;

    #@73
    new-instance v10, Landroid/gesture/GesturePoint;

    #@75
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    #@78
    move-result-wide v12

    #@79
    invoke-direct {v10, v7, v8, v12, v13}, Landroid/gesture/GesturePoint;-><init>(FFJ)V

    #@7c
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@7f
    .line 813
    new-instance v3, Landroid/gesture/Gesture;

    #@81
    invoke-direct {v3}, Landroid/gesture/Gesture;-><init>()V

    #@84
    .line 814
    .local v3, "gesture":Landroid/gesture/Gesture;
    new-instance v9, Landroid/gesture/GestureStroke;

    #@86
    iget-object v10, p0, Lcom/android/server/accessibility/TouchExplorer;->mStrokeBuffer:Ljava/util/ArrayList;

    #@88
    invoke-direct {v9, v10}, Landroid/gesture/GestureStroke;-><init>(Ljava/util/ArrayList;)V

    #@8b
    invoke-virtual {v3, v9}, Landroid/gesture/Gesture;->addStroke(Landroid/gesture/GestureStroke;)V

    #@8e
    .line 816
    iget-object v9, p0, Lcom/android/server/accessibility/TouchExplorer;->mGestureLibrary:Landroid/gesture/GestureLibrary;

    #@90
    invoke-virtual {v9, v3}, Landroid/gesture/GestureLibrary;->recognize(Landroid/gesture/Gesture;)Ljava/util/ArrayList;

    #@93
    move-result-object v6

    #@94
    .line 817
    .local v6, "predictions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/Prediction;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    #@97
    move-result v9

    #@98
    if-nez v9, :cond_2

    #@9a
    .line 818
    const/4 v9, 0x0

    #@9b
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@9e
    move-result-object v0

    #@9f
    check-cast v0, Landroid/gesture/Prediction;

    #@a1
    .line 819
    .local v0, "bestPrediction":Landroid/gesture/Prediction;
    iget-wide v10, v0, Landroid/gesture/Prediction;->score:D

    #@a3
    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    #@a5
    cmpl-double v9, v10, v12

    #@a7
    if-ltz v9, :cond_2

    #@a9
    .line 825
    :try_start_0
    iget-object v9, v0, Landroid/gesture/Prediction;->name:Ljava/lang/String;

    #@ab
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@ae
    move-result v4

    #@af
    .line 826
    .local v4, "gestureId":I
    iget-object v9, p0, Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@b1
    invoke-virtual {v9, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->onGesture(I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@b4
    .line 833
    .end local v0    # "bestPrediction":Landroid/gesture/Prediction;
    .end local v4    # "gestureId":I
    :cond_2
    :goto_1
    iget-object v9, p0, Lcom/android/server/accessibility/TouchExplorer;->mStrokeBuffer:Ljava/util/ArrayList;

    #@b6
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    #@b9
    .line 834
    iget-object v9, p0, Lcom/android/server/accessibility/TouchExplorer;->mExitGestureDetectionModeDelayed:Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;

    #@bb
    invoke-virtual {v9}, Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;->cancel()V

    #@be
    .line 835
    const/4 v9, 0x1

    #@bf
    iput v9, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    #@c1
    goto/16 :goto_0

    #@c3
    .line 827
    .restart local v0    # "bestPrediction":Landroid/gesture/Prediction;
    :catch_0
    move-exception v5

    #@c4
    .line 828
    .local v5, "nfe":Ljava/lang/NumberFormatException;
    const-string/jumbo v9, "TouchExplorer"

    #@c7
    new-instance v10, Ljava/lang/StringBuilder;

    #@c9
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@cc
    const-string/jumbo v11, "Non numeric gesture id:"

    #@cf
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d2
    move-result-object v10

    #@d3
    iget-object v11, v0, Landroid/gesture/Prediction;->name:Ljava/lang/String;

    #@d5
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d8
    move-result-object v10

    #@d9
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@dc
    move-result-object v10

    #@dd
    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@e0
    goto :goto_1

    #@e1
    .line 838
    .end local v0    # "bestPrediction":Landroid/gesture/Prediction;
    .end local v3    # "gesture":Landroid/gesture/Gesture;
    .end local v5    # "nfe":Ljava/lang/NumberFormatException;
    .end local v6    # "predictions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/Prediction;>;"
    .end local v7    # "x":F
    .end local v8    # "y":F
    :pswitch_3
    invoke-direct/range {p0 .. p2}, Lcom/android/server/accessibility/TouchExplorer;->clear(Landroid/view/MotionEvent;I)V

    #@e4
    goto/16 :goto_0

    #@e6
    .line 783
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
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
    .line 746
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@5
    move-result v0

    #@6
    packed-switch v0, :pswitch_data_0

    #@9
    .line 777
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    #@c
    move-result v0

    #@d
    invoke-direct {p0, p1, v0, v2, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    #@10
    .line 745
    :goto_0
    return-void

    #@11
    .line 748
    :pswitch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    #@13
    const-string/jumbo v1, "Delegating state can only be reached if there is at least one pointer down!"

    #@16
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0

    #@1a
    .line 754
    :pswitch_2
    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerId:I

    #@1c
    if-ltz v0, :cond_0

    #@1e
    .line 755
    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerDeltaX:I

    #@20
    neg-int v0, v0

    #@21
    .line 756
    iget v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerDeltaY:I

    #@23
    neg-int v1, v1

    #@24
    .line 755
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/accessibility/TouchExplorer;->offsetEvent(Landroid/view/MotionEvent;II)Landroid/view/MotionEvent;

    #@27
    move-result-object p1

    #@28
    .line 758
    iput v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerId:I

    #@2a
    .line 759
    iput v3, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerDeltaX:I

    #@2c
    .line 760
    iput v3, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerDeltaY:I

    #@2e
    .line 764
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    #@31
    move-result v0

    #@32
    invoke-direct {p0, p1, v0, v2, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    #@35
    .line 767
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@37
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionEnd()V

    #@3a
    .line 768
    const/high16 v0, 0x200000

    #@3c
    invoke-direct {p0, v0}, Lcom/android/server/accessibility/TouchExplorer;->sendAccessibilityEvent(I)V

    #@3f
    .line 770
    const/4 v0, 0x1

    #@40
    iput v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    #@42
    goto :goto_0

    #@43
    .line 773
    :pswitch_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/TouchExplorer;->clear(Landroid/view/MotionEvent;I)V

    #@46
    goto :goto_0

    #@47
    .line 746
    nop

    #@48
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private handleMotionEventStateDragging(Landroid/view/MotionEvent;I)V
    .locals 18
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    #@0
    .prologue
    .line 653
    move-object/from16 v0, p0

    #@2
    iget v14, v0, Lcom/android/server/accessibility/TouchExplorer;->mDraggingPointerId:I

    #@4
    const/4 v15, 0x1

    #@5
    shl-int v11, v15, v14

    #@7
    .line 654
    .local v11, "pointerIdBits":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@a
    move-result v14

    #@b
    packed-switch v14, :pswitch_data_0

    #@e
    .line 652
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    #@f
    .line 656
    :pswitch_1
    new-instance v14, Ljava/lang/IllegalStateException;

    #@11
    const-string/jumbo v15, "Dragging state can be reached only if two pointers are already down"

    #@14
    invoke-direct {v14, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@17
    throw v14

    #@18
    .line 662
    :pswitch_2
    const/4 v14, 0x4

    #@19
    move-object/from16 v0, p0

    #@1b
    iput v14, v0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    #@1d
    .line 663
    move-object/from16 v0, p0

    #@1f
    iget v14, v0, Lcom/android/server/accessibility/TouchExplorer;->mDraggingPointerId:I

    #@21
    const/4 v15, -0x1

    #@22
    if-eq v14, v15, :cond_1

    #@24
    .line 664
    const/4 v14, 0x1

    #@25
    move-object/from16 v0, p0

    #@27
    move-object/from16 v1, p1

    #@29
    move/from16 v2, p2

    #@2b
    invoke-direct {v0, v1, v14, v11, v2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    #@2e
    .line 666
    :cond_1
    invoke-direct/range {p0 .. p2}, Lcom/android/server/accessibility/TouchExplorer;->sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V

    #@31
    goto :goto_0

    #@32
    .line 669
    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    #@35
    move-result v14

    #@36
    packed-switch v14, :pswitch_data_1

    #@39
    .line 703
    const/4 v14, 0x4

    #@3a
    move-object/from16 v0, p0

    #@3c
    iput v14, v0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    #@3e
    .line 705
    const/4 v14, 0x1

    #@3f
    move-object/from16 v0, p0

    #@41
    move-object/from16 v1, p1

    #@43
    move/from16 v2, p2

    #@45
    invoke-direct {v0, v1, v14, v11, v2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    #@48
    .line 708
    invoke-direct/range {p0 .. p2}, Lcom/android/server/accessibility/TouchExplorer;->sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V

    #@4b
    goto :goto_0

    #@4c
    .line 674
    :pswitch_4
    invoke-direct/range {p0 .. p1}, Lcom/android/server/accessibility/TouchExplorer;->isDraggingGesture(Landroid/view/MotionEvent;)Z

    #@4f
    move-result v14

    #@50
    if-eqz v14, :cond_3

    #@52
    .line 675
    const/4 v14, 0x0

    #@53
    move-object/from16 v0, p1

    #@55
    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getX(I)F

    #@58
    move-result v8

    #@59
    .line 676
    .local v8, "firstPtrX":F
    const/4 v14, 0x0

    #@5a
    move-object/from16 v0, p1

    #@5c
    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getY(I)F

    #@5f
    move-result v9

    #@60
    .line 677
    .local v9, "firstPtrY":F
    const/4 v14, 0x1

    #@61
    move-object/from16 v0, p1

    #@63
    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getX(I)F

    #@66
    move-result v12

    #@67
    .line 678
    .local v12, "secondPtrX":F
    const/4 v14, 0x1

    #@68
    move-object/from16 v0, p1

    #@6a
    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getY(I)F

    #@6d
    move-result v13

    #@6e
    .line 680
    .local v13, "secondPtrY":F
    sub-float v4, v8, v12

    #@70
    .line 681
    .local v4, "deltaX":F
    sub-float v5, v9, v13

    #@72
    .line 682
    .local v5, "deltaY":F
    float-to-double v14, v4

    #@73
    float-to-double v0, v5

    #@74
    move-wide/from16 v16, v0

    #@76
    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->hypot(DD)D

    #@79
    move-result-wide v6

    #@7a
    .line 684
    .local v6, "distance":D
    move-object/from16 v0, p0

    #@7c
    iget v14, v0, Lcom/android/server/accessibility/TouchExplorer;->mScaledMinPointerDistanceToUseMiddleLocation:I

    #@7e
    int-to-double v14, v14

    #@7f
    cmpl-double v14, v6, v14

    #@81
    if-lez v14, :cond_2

    #@83
    .line 685
    const/high16 v14, 0x40000000    # 2.0f

    #@85
    div-float v14, v4, v14

    #@87
    const/high16 v15, 0x40000000    # 2.0f

    #@89
    div-float v15, v5, v15

    #@8b
    move-object/from16 v0, p1

    #@8d
    invoke-virtual {v0, v14, v15}, Landroid/view/MotionEvent;->setLocation(FF)V

    #@90
    .line 689
    :cond_2
    const/4 v14, 0x2

    #@91
    move-object/from16 v0, p0

    #@93
    move-object/from16 v1, p1

    #@95
    move/from16 v2, p2

    #@97
    invoke-direct {v0, v1, v14, v11, v2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    #@9a
    goto/16 :goto_0

    #@9c
    .line 694
    .end local v4    # "deltaX":F
    .end local v5    # "deltaY":F
    .end local v6    # "distance":D
    .end local v8    # "firstPtrX":F
    .end local v9    # "firstPtrY":F
    .end local v12    # "secondPtrX":F
    .end local v13    # "secondPtrY":F
    :cond_3
    const/4 v14, 0x4

    #@9d
    move-object/from16 v0, p0

    #@9f
    iput v14, v0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    #@a1
    .line 696
    const/4 v14, 0x1

    #@a2
    move-object/from16 v0, p0

    #@a4
    move-object/from16 v1, p1

    #@a6
    move/from16 v2, p2

    #@a8
    invoke-direct {v0, v1, v14, v11, v2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    #@ab
    .line 699
    invoke-direct/range {p0 .. p2}, Lcom/android/server/accessibility/TouchExplorer;->sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V

    #@ae
    goto/16 :goto_0

    #@b0
    .line 713
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    #@b3
    move-result v14

    #@b4
    move-object/from16 v0, p1

    #@b6
    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@b9
    move-result v10

    #@ba
    .line 714
    .local v10, "pointerId":I
    move-object/from16 v0, p0

    #@bc
    iget v14, v0, Lcom/android/server/accessibility/TouchExplorer;->mDraggingPointerId:I

    #@be
    if-ne v10, v14, :cond_0

    #@c0
    .line 715
    const/4 v14, -0x1

    #@c1
    move-object/from16 v0, p0

    #@c3
    iput v14, v0, Lcom/android/server/accessibility/TouchExplorer;->mDraggingPointerId:I

    #@c5
    .line 717
    const/4 v14, 0x1

    #@c6
    move-object/from16 v0, p0

    #@c8
    move-object/from16 v1, p1

    #@ca
    move/from16 v2, p2

    #@cc
    invoke-direct {v0, v1, v14, v11, v2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    #@cf
    goto/16 :goto_0

    #@d1
    .line 721
    .end local v10    # "pointerId":I
    :pswitch_6
    move-object/from16 v0, p0

    #@d3
    iget-object v14, v0, Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@d5
    invoke-virtual {v14}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionEnd()V

    #@d8
    .line 724
    const/high16 v14, 0x200000

    #@da
    .line 723
    move-object/from16 v0, p0

    #@dc
    invoke-direct {v0, v14}, Lcom/android/server/accessibility/TouchExplorer;->sendAccessibilityEvent(I)V

    #@df
    .line 725
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    #@e2
    move-result v14

    #@e3
    move-object/from16 v0, p1

    #@e5
    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@e8
    move-result v10

    #@e9
    .line 726
    .restart local v10    # "pointerId":I
    move-object/from16 v0, p0

    #@eb
    iget v14, v0, Lcom/android/server/accessibility/TouchExplorer;->mDraggingPointerId:I

    #@ed
    if-ne v10, v14, :cond_4

    #@ef
    .line 727
    const/4 v14, -0x1

    #@f0
    move-object/from16 v0, p0

    #@f2
    iput v14, v0, Lcom/android/server/accessibility/TouchExplorer;->mDraggingPointerId:I

    #@f4
    .line 729
    const/4 v14, 0x1

    #@f5
    move-object/from16 v0, p0

    #@f7
    move-object/from16 v1, p1

    #@f9
    move/from16 v2, p2

    #@fb
    invoke-direct {v0, v1, v14, v11, v2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    #@fe
    .line 731
    :cond_4
    const/4 v14, 0x1

    #@ff
    move-object/from16 v0, p0

    #@101
    iput v14, v0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    #@103
    goto/16 :goto_0

    #@105
    .line 734
    .end local v10    # "pointerId":I
    :pswitch_7
    invoke-direct/range {p0 .. p2}, Lcom/android/server/accessibility/TouchExplorer;->clear(Landroid/view/MotionEvent;I)V

    #@108
    goto/16 :goto_0

    #@10a
    .line 654
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_6
        :pswitch_3
        :pswitch_7
        :pswitch_0
        :pswitch_2
        :pswitch_5
    .end packed-switch

    #@11c
    .line 669
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private handleMotionEventStateTouchExploring(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 18
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    #@0
    .prologue
    .line 396
    move-object/from16 v0, p0

    #@2
    iget-object v12, v0, Lcom/android/server/accessibility/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;

    #@4
    .line 398
    .local v12, "receivedTracker":Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;
    move-object/from16 v0, p0

    #@6
    iget-object v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@8
    move-object/from16 v0, p2

    #@a
    invoke-virtual {v13, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    #@d
    .line 400
    move-object/from16 v0, p0

    #@f
    iget-object v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mDoubleTapDetector:Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;

    #@11
    move-object/from16 v0, p1

    #@13
    move/from16 v1, p3

    #@15
    invoke-virtual {v13, v0, v1}, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->onMotionEvent(Landroid/view/MotionEvent;I)V

    #@18
    .line 402
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@1b
    move-result v13

    #@1c
    packed-switch v13, :pswitch_data_0

    #@1f
    .line 395
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    #@20
    .line 404
    :pswitch_1
    move-object/from16 v0, p0

    #@22
    iget-object v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@24
    invoke-virtual {v13}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionStart()V

    #@27
    .line 410
    move-object/from16 v0, p0

    #@29
    move-object/from16 v1, p2

    #@2b
    move/from16 v2, p3

    #@2d
    invoke-direct {v0, v1, v2}, Lcom/android/server/accessibility/TouchExplorer;->handleMotionEventGestureDetecting(Landroid/view/MotionEvent;I)V

    #@30
    .line 411
    const/high16 v13, 0x100000

    #@32
    move-object/from16 v0, p0

    #@34
    invoke-direct {v0, v13}, Lcom/android/server/accessibility/TouchExplorer;->sendAccessibilityEvent(I)V

    #@37
    .line 416
    move-object/from16 v0, p0

    #@39
    iget-object v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    #@3b
    invoke-virtual {v13}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    #@3e
    .line 417
    move-object/from16 v0, p0

    #@40
    iget-object v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;

    #@42
    invoke-virtual {v13}, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->cancel()V

    #@45
    .line 418
    move-object/from16 v0, p0

    #@47
    iget-object v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    #@49
    invoke-virtual {v13}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->cancel()V

    #@4c
    .line 420
    move-object/from16 v0, p0

    #@4e
    iget-object v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    #@50
    invoke-virtual {v13}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    #@53
    move-result v13

    #@54
    if-eqz v13, :cond_1

    #@56
    .line 421
    move-object/from16 v0, p0

    #@58
    iget-object v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    #@5a
    invoke-virtual {v13}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->forceSendAndRemove()V

    #@5d
    .line 424
    :cond_1
    move-object/from16 v0, p0

    #@5f
    iget-object v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    #@61
    invoke-virtual {v13}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    #@64
    move-result v13

    #@65
    if-eqz v13, :cond_2

    #@67
    .line 425
    move-object/from16 v0, p0

    #@69
    iget-object v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    #@6b
    invoke-virtual {v13}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->forceSendAndRemove()V

    #@6e
    .line 434
    :cond_2
    move-object/from16 v0, p0

    #@70
    iget-object v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mDoubleTapDetector:Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;

    #@72
    invoke-virtual {v13}, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->firstTapDetected()Z

    #@75
    move-result v13

    #@76
    if-eqz v13, :cond_3

    #@78
    .line 436
    move-object/from16 v0, p0

    #@7a
    iget-object v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    #@7c
    move-object/from16 v0, p1

    #@7e
    move/from16 v1, p3

    #@80
    invoke-virtual {v13, v0, v1}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->post(Landroid/view/MotionEvent;I)V

    #@83
    goto :goto_0

    #@84
    .line 439
    :cond_3
    move-object/from16 v0, p0

    #@86
    iget-boolean v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mTouchExplorationInProgress:Z

    #@88
    if-nez v13, :cond_0

    #@8a
    .line 440
    move-object/from16 v0, p0

    #@8c
    iget-object v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    #@8e
    invoke-static {v13}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->-wrap0(Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;)Z

    #@91
    move-result v13

    #@92
    if-nez v13, :cond_4

    #@94
    .line 443
    invoke-virtual {v12}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getPrimaryPointerId()I

    #@97
    move-result v7

    #@98
    .line 444
    .local v7, "pointerId":I
    const/4 v13, 0x1

    #@99
    shl-int v10, v13, v7

    #@9b
    .line 445
    .local v10, "pointerIdBits":I
    move-object/from16 v0, p0

    #@9d
    iget-object v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    #@9f
    const/4 v14, 0x1

    #@a0
    move-object/from16 v0, p1

    #@a2
    move/from16 v1, p3

    #@a4
    invoke-virtual {v13, v0, v14, v10, v1}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->post(Landroid/view/MotionEvent;ZII)V

    #@a7
    goto/16 :goto_0

    #@a9
    .line 449
    .end local v7    # "pointerId":I
    .end local v10    # "pointerIdBits":I
    :cond_4
    move-object/from16 v0, p0

    #@ab
    iget-object v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    #@ad
    move-object/from16 v0, p1

    #@af
    invoke-virtual {v13, v0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->addEvent(Landroid/view/MotionEvent;)V

    #@b2
    goto/16 :goto_0

    #@b4
    .line 457
    :pswitch_2
    move-object/from16 v0, p0

    #@b6
    iget-object v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    #@b8
    invoke-virtual {v13}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    #@bb
    .line 458
    move-object/from16 v0, p0

    #@bd
    iget-object v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;

    #@bf
    invoke-virtual {v13}, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->cancel()V

    #@c2
    .line 459
    move-object/from16 v0, p0

    #@c4
    iget-object v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    #@c6
    invoke-virtual {v13}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->cancel()V

    #@c9
    goto/16 :goto_0

    #@cb
    .line 462
    :pswitch_3
    invoke-virtual {v12}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getPrimaryPointerId()I

    #@ce
    move-result v7

    #@cf
    .line 463
    .restart local v7    # "pointerId":I
    move-object/from16 v0, p1

    #@d1
    invoke-virtual {v0, v7}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    #@d4
    move-result v11

    #@d5
    .line 464
    .local v11, "pointerIndex":I
    const/4 v13, 0x1

    #@d6
    shl-int v10, v13, v7

    #@d8
    .line 465
    .restart local v10    # "pointerIdBits":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    #@db
    move-result v13

    #@dc
    packed-switch v13, :pswitch_data_1

    #@df
    .line 596
    move-object/from16 v0, p0

    #@e1
    iget-object v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    #@e3
    invoke-static {v13}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->-wrap0(Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;)Z

    #@e6
    move-result v13

    #@e7
    if-eqz v13, :cond_b

    #@e9
    .line 599
    move-object/from16 v0, p0

    #@eb
    iget-object v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    #@ed
    invoke-virtual {v13}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    #@f0
    .line 600
    move-object/from16 v0, p0

    #@f2
    iget-object v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;

    #@f4
    invoke-virtual {v13}, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->cancel()V

    #@f7
    .line 601
    move-object/from16 v0, p0

    #@f9
    iget-object v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    #@fb
    invoke-virtual {v13}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->cancel()V

    #@fe
    .line 610
    :goto_1
    const/4 v13, 0x4

    #@ff
    move-object/from16 v0, p0

    #@101
    iput v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    #@103
    .line 611
    move-object/from16 v0, p0

    #@105
    move-object/from16 v1, p1

    #@107
    move/from16 v2, p3

    #@109
    invoke-direct {v0, v1, v2}, Lcom/android/server/accessibility/TouchExplorer;->sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V

    #@10c
    .line 612
    move-object/from16 v0, p0

    #@10e
    iget-object v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@110
    invoke-virtual {v13}, Landroid/view/VelocityTracker;->clear()V

    #@113
    goto/16 :goto_0

    #@115
    .line 469
    :pswitch_4
    move-object/from16 v0, p0

    #@117
    iget-object v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    #@119
    invoke-static {v13}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->-wrap0(Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;)Z

    #@11c
    move-result v13

    #@11d
    if-eqz v13, :cond_6

    #@11f
    .line 474
    move-object/from16 v0, p0

    #@121
    move-object/from16 v1, p2

    #@123
    move/from16 v2, p3

    #@125
    invoke-direct {v0, v1, v2}, Lcom/android/server/accessibility/TouchExplorer;->handleMotionEventGestureDetecting(Landroid/view/MotionEvent;I)V

    #@128
    .line 477
    move-object/from16 v0, p0

    #@12a
    iget-object v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    #@12c
    move-object/from16 v0, p1

    #@12e
    invoke-virtual {v13, v0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->addEvent(Landroid/view/MotionEvent;)V

    #@131
    .line 481
    invoke-virtual {v12, v7}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownX(I)F

    #@134
    move-result v13

    #@135
    .line 482
    move-object/from16 v0, p2

    #@137
    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getX(I)F

    #@13a
    move-result v14

    #@13b
    .line 481
    sub-float v4, v13, v14

    #@13d
    .line 483
    .local v4, "deltaX":F
    invoke-virtual {v12, v7}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownY(I)F

    #@140
    move-result v13

    #@141
    .line 484
    move-object/from16 v0, p2

    #@143
    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getY(I)F

    #@146
    move-result v14

    #@147
    .line 483
    sub-float v5, v13, v14

    #@149
    .line 485
    .local v5, "deltaY":F
    float-to-double v14, v4

    #@14a
    float-to-double v0, v5

    #@14b
    move-wide/from16 v16, v0

    #@14d
    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->hypot(DD)D

    #@150
    move-result-wide v8

    #@151
    .line 487
    .local v8, "moveDelta":D
    move-object/from16 v0, p0

    #@153
    iget v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mDoubleTapSlop:I

    #@155
    int-to-double v14, v13

    #@156
    cmpl-double v13, v8, v14

    #@158
    if-lez v13, :cond_0

    #@15a
    .line 491
    move-object/from16 v0, p0

    #@15c
    iget-object v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@15e
    const/16 v14, 0x3e8

    #@160
    invoke-virtual {v13, v14}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    #@163
    .line 493
    move-object/from16 v0, p0

    #@165
    iget-object v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@167
    invoke-virtual {v13, v7}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    #@16a
    move-result v13

    #@16b
    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    #@16e
    move-result v13

    #@16f
    .line 494
    move-object/from16 v0, p0

    #@171
    iget-object v14, v0, Lcom/android/server/accessibility/TouchExplorer;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@173
    invoke-virtual {v14, v7}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    #@176
    move-result v14

    #@177
    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    #@17a
    move-result v14

    #@17b
    .line 492
    invoke-static {v13, v14}, Ljava/lang/Math;->max(FF)F

    #@17e
    move-result v6

    #@17f
    .line 495
    .local v6, "maxAbsVelocity":F
    move-object/from16 v0, p0

    #@181
    iget v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mScaledGestureDetectionVelocity:I

    #@183
    int-to-float v13, v13

    #@184
    cmpl-float v13, v6, v13

    #@186
    if-lez v13, :cond_5

    #@188
    .line 498
    const/4 v13, 0x5

    #@189
    move-object/from16 v0, p0

    #@18b
    iput v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    #@18d
    .line 499
    move-object/from16 v0, p0

    #@18f
    iget-object v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@191
    invoke-virtual {v13}, Landroid/view/VelocityTracker;->clear()V

    #@194
    .line 500
    move-object/from16 v0, p0

    #@196
    iget-object v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    #@198
    invoke-virtual {v13}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    #@19b
    .line 501
    move-object/from16 v0, p0

    #@19d
    iget-object v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;

    #@19f
    invoke-virtual {v13}, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->cancel()V

    #@1a2
    .line 502
    move-object/from16 v0, p0

    #@1a4
    iget-object v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    #@1a6
    invoke-virtual {v13}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->cancel()V

    #@1a9
    .line 503
    move-object/from16 v0, p0

    #@1ab
    iget-object v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mExitGestureDetectionModeDelayed:Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;

    #@1ad
    invoke-virtual {v13}, Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;->post()V

    #@1b0
    .line 507
    const/high16 v13, 0x40000

    #@1b2
    .line 506
    move-object/from16 v0, p0

    #@1b4
    invoke-direct {v0, v13}, Lcom/android/server/accessibility/TouchExplorer;->sendAccessibilityEvent(I)V

    #@1b7
    goto/16 :goto_0

    #@1b9
    .line 511
    :cond_5
    move-object/from16 v0, p0

    #@1bb
    iget-object v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    #@1bd
    invoke-virtual {v13}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->forceSendAndRemove()V

    #@1c0
    .line 512
    move-object/from16 v0, p0

    #@1c2
    iget-object v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;

    #@1c4
    invoke-virtual {v13}, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->cancel()V

    #@1c7
    .line 513
    move-object/from16 v0, p0

    #@1c9
    iget-object v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    #@1cb
    invoke-virtual {v13}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->cancel()V

    #@1ce
    .line 514
    const/4 v13, 0x7

    #@1cf
    move-object/from16 v0, p0

    #@1d1
    move-object/from16 v1, p1

    #@1d3
    move/from16 v2, p3

    #@1d5
    invoke-direct {v0, v1, v13, v10, v2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    #@1d8
    goto/16 :goto_0

    #@1da
    .line 522
    .end local v4    # "deltaX":F
    .end local v5    # "deltaY":F
    .end local v6    # "maxAbsVelocity":F
    .end local v8    # "moveDelta":D
    :cond_6
    move-object/from16 v0, p0

    #@1dc
    iget-object v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    #@1de
    invoke-static {v13}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->-wrap0(Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;)Z

    #@1e1
    move-result v13

    #@1e2
    if-eqz v13, :cond_7

    #@1e4
    .line 524
    invoke-virtual {v12, v7}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownX(I)F

    #@1e7
    move-result v13

    #@1e8
    .line 525
    move-object/from16 v0, p2

    #@1ea
    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getX(I)F

    #@1ed
    move-result v14

    #@1ee
    .line 524
    sub-float v4, v13, v14

    #@1f0
    .line 527
    .restart local v4    # "deltaX":F
    invoke-virtual {v12, v7}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownY(I)F

    #@1f3
    move-result v13

    #@1f4
    .line 528
    move-object/from16 v0, p2

    #@1f6
    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getY(I)F

    #@1f9
    move-result v14

    #@1fa
    .line 527
    sub-float v5, v13, v14

    #@1fc
    .line 529
    .restart local v5    # "deltaY":F
    float-to-double v14, v4

    #@1fd
    float-to-double v0, v5

    #@1fe
    move-wide/from16 v16, v0

    #@200
    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->hypot(DD)D

    #@203
    move-result-wide v8

    #@204
    .line 531
    .restart local v8    # "moveDelta":D
    move-object/from16 v0, p0

    #@206
    iget v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mTouchSlop:I

    #@208
    int-to-double v14, v13

    #@209
    cmpl-double v13, v8, v14

    #@20b
    if-lez v13, :cond_7

    #@20d
    .line 532
    move-object/from16 v0, p0

    #@20f
    iget-object v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    #@211
    invoke-virtual {v13}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->cancel()V

    #@214
    .line 535
    .end local v4    # "deltaX":F
    .end local v5    # "deltaY":F
    .end local v8    # "moveDelta":D
    :cond_7
    move-object/from16 v0, p0

    #@216
    iget-boolean v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mTouchExplorationInProgress:Z

    #@218
    if-eqz v13, :cond_0

    #@21a
    .line 536
    move-object/from16 v0, p0

    #@21c
    move/from16 v1, p3

    #@21e
    invoke-direct {v0, v1}, Lcom/android/server/accessibility/TouchExplorer;->sendTouchExplorationGestureStartAndHoverEnterIfNeeded(I)V

    #@221
    .line 537
    const/4 v13, 0x7

    #@222
    move-object/from16 v0, p0

    #@224
    move-object/from16 v1, p1

    #@226
    move/from16 v2, p3

    #@228
    invoke-direct {v0, v1, v13, v10, v2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    #@22b
    goto/16 :goto_0

    #@22d
    .line 545
    :pswitch_5
    move-object/from16 v0, p0

    #@22f
    iget-object v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    #@231
    invoke-static {v13}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->-wrap0(Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;)Z

    #@234
    move-result v13

    #@235
    if-eqz v13, :cond_9

    #@237
    .line 548
    move-object/from16 v0, p0

    #@239
    iget-object v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    #@23b
    invoke-virtual {v13}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    #@23e
    .line 549
    move-object/from16 v0, p0

    #@240
    iget-object v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;

    #@242
    invoke-virtual {v13}, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->cancel()V

    #@245
    .line 550
    move-object/from16 v0, p0

    #@247
    iget-object v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    #@249
    invoke-virtual {v13}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->cancel()V

    #@24c
    .line 576
    :cond_8
    :goto_2
    move-object/from16 v0, p0

    #@24e
    iget-object v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mStrokeBuffer:Ljava/util/ArrayList;

    #@250
    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    #@253
    .line 578
    invoke-direct/range {p0 .. p1}, Lcom/android/server/accessibility/TouchExplorer;->isDraggingGesture(Landroid/view/MotionEvent;)Z

    #@256
    move-result v13

    #@257
    if-eqz v13, :cond_a

    #@259
    .line 581
    const/4 v13, 0x2

    #@25a
    move-object/from16 v0, p0

    #@25c
    iput v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    #@25e
    .line 582
    move-object/from16 v0, p0

    #@260
    iput v7, v0, Lcom/android/server/accessibility/TouchExplorer;->mDraggingPointerId:I

    #@262
    .line 583
    invoke-virtual {v12}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getLastReceivedDownEdgeFlags()I

    #@265
    move-result v13

    #@266
    move-object/from16 v0, p1

    #@268
    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->setEdgeFlags(I)V

    #@26b
    .line 584
    const/4 v13, 0x0

    #@26c
    move-object/from16 v0, p0

    #@26e
    move-object/from16 v1, p1

    #@270
    move/from16 v2, p3

    #@272
    invoke-direct {v0, v1, v13, v10, v2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    #@275
    .line 591
    :goto_3
    move-object/from16 v0, p0

    #@277
    iget-object v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@279
    invoke-virtual {v13}, Landroid/view/VelocityTracker;->clear()V

    #@27c
    goto/16 :goto_0

    #@27e
    .line 552
    :cond_9
    move-object/from16 v0, p0

    #@280
    iget-object v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    #@282
    invoke-virtual {v13}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->cancel()V

    #@285
    .line 553
    move-object/from16 v0, p0

    #@287
    iget-boolean v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mTouchExplorationInProgress:Z

    #@289
    if-eqz v13, :cond_8

    #@28b
    .line 559
    invoke-virtual {v12, v7}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownX(I)F

    #@28e
    move-result v13

    #@28f
    .line 560
    move-object/from16 v0, p2

    #@291
    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getX(I)F

    #@294
    move-result v14

    #@295
    .line 559
    sub-float v4, v13, v14

    #@297
    .line 561
    .restart local v4    # "deltaX":F
    invoke-virtual {v12, v7}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownY(I)F

    #@29a
    move-result v13

    #@29b
    .line 562
    move-object/from16 v0, p2

    #@29d
    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getY(I)F

    #@2a0
    move-result v14

    #@2a1
    .line 561
    sub-float v5, v13, v14

    #@2a3
    .line 563
    .restart local v5    # "deltaY":F
    float-to-double v14, v4

    #@2a4
    float-to-double v0, v5

    #@2a5
    move-wide/from16 v16, v0

    #@2a7
    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->hypot(DD)D

    #@2aa
    move-result-wide v8

    #@2ab
    .line 564
    .restart local v8    # "moveDelta":D
    move-object/from16 v0, p0

    #@2ad
    iget v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mDoubleTapSlop:I

    #@2af
    int-to-double v14, v13

    #@2b0
    cmpg-double v13, v8, v14

    #@2b2
    if-ltz v13, :cond_0

    #@2b4
    .line 569
    move-object/from16 v0, p0

    #@2b6
    move/from16 v1, p3

    #@2b8
    invoke-direct {v0, v1}, Lcom/android/server/accessibility/TouchExplorer;->sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V

    #@2bb
    goto :goto_2

    #@2bc
    .line 588
    .end local v4    # "deltaX":F
    .end local v5    # "deltaY":F
    .end local v8    # "moveDelta":D
    :cond_a
    const/4 v13, 0x4

    #@2bd
    move-object/from16 v0, p0

    #@2bf
    iput v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    #@2c1
    .line 589
    move-object/from16 v0, p0

    #@2c3
    move-object/from16 v1, p1

    #@2c5
    move/from16 v2, p3

    #@2c7
    invoke-direct {v0, v1, v2}, Lcom/android/server/accessibility/TouchExplorer;->sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V

    #@2ca
    goto :goto_3

    #@2cb
    .line 603
    :cond_b
    move-object/from16 v0, p0

    #@2cd
    iget-object v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    #@2cf
    invoke-virtual {v13}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->cancel()V

    #@2d2
    .line 606
    move-object/from16 v0, p0

    #@2d4
    move/from16 v1, p3

    #@2d6
    invoke-direct {v0, v1}, Lcom/android/server/accessibility/TouchExplorer;->sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V

    #@2d9
    goto/16 :goto_1

    #@2db
    .line 617
    .end local v7    # "pointerId":I
    .end local v10    # "pointerIdBits":I
    .end local v11    # "pointerIndex":I
    :pswitch_6
    move-object/from16 v0, p0

    #@2dd
    iget-object v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@2df
    invoke-virtual {v13}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionEnd()V

    #@2e2
    .line 620
    move-object/from16 v0, p0

    #@2e4
    iget-object v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mStrokeBuffer:Ljava/util/ArrayList;

    #@2e6
    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    #@2e9
    .line 621
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    #@2ec
    move-result v13

    #@2ed
    move-object/from16 v0, p1

    #@2ef
    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@2f2
    move-result v7

    #@2f3
    .line 622
    .restart local v7    # "pointerId":I
    const/4 v13, 0x1

    #@2f4
    shl-int v10, v13, v7

    #@2f6
    .line 624
    .restart local v10    # "pointerIdBits":I
    move-object/from16 v0, p0

    #@2f8
    iget-object v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    #@2fa
    invoke-virtual {v13}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->cancel()V

    #@2fd
    .line 625
    move-object/from16 v0, p0

    #@2ff
    iget-object v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@301
    invoke-virtual {v13}, Landroid/view/VelocityTracker;->clear()V

    #@304
    .line 627
    move-object/from16 v0, p0

    #@306
    iget-object v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    #@308
    invoke-static {v13}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->-wrap0(Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;)Z

    #@30b
    move-result v13

    #@30c
    if-eqz v13, :cond_c

    #@30e
    .line 629
    move-object/from16 v0, p0

    #@310
    iget-object v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;

    #@312
    move-object/from16 v0, p1

    #@314
    move/from16 v1, p3

    #@316
    invoke-virtual {v13, v0, v10, v1}, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->post(Landroid/view/MotionEvent;II)V

    #@319
    .line 635
    :goto_4
    move-object/from16 v0, p0

    #@31b
    iget-object v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    #@31d
    invoke-virtual {v13}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    #@320
    move-result v13

    #@321
    if-nez v13, :cond_0

    #@323
    .line 636
    move-object/from16 v0, p0

    #@325
    iget-object v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    #@327
    invoke-virtual {v13}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->post()V

    #@32a
    goto/16 :goto_0

    #@32c
    .line 632
    :cond_c
    move-object/from16 v0, p0

    #@32e
    move/from16 v1, p3

    #@330
    invoke-direct {v0, v1}, Lcom/android/server/accessibility/TouchExplorer;->sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V

    #@333
    goto :goto_4

    #@334
    .line 641
    .end local v7    # "pointerId":I
    .end local v10    # "pointerIdBits":I
    :pswitch_7
    move-object/from16 v0, p0

    #@336
    move-object/from16 v1, p1

    #@338
    move/from16 v2, p3

    #@33a
    invoke-direct {v0, v1, v2}, Lcom/android/server/accessibility/TouchExplorer;->clear(Landroid/view/MotionEvent;I)V

    #@33d
    goto/16 :goto_0

    #@33f
    .line 402
    nop

    #@340
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_6
        :pswitch_3
        :pswitch_7
        :pswitch_0
        :pswitch_2
    .end packed-switch

    #@350
    .line 465
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
    .line 1212
    iget-object v9, p0, Lcom/android/server/accessibility/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;

    #@4
    .line 1214
    .local v9, "receivedTracker":Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    #@7
    move-result v4

    #@8
    .line 1215
    .local v4, "firstPtrX":F
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    #@b
    move-result v5

    #@c
    .line 1216
    .local v5, "firstPtrY":F
    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getX(I)F

    #@f
    move-result v6

    #@10
    .line 1217
    .local v6, "secondPtrX":F
    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getY(I)F

    #@13
    move-result v7

    #@14
    .line 1219
    .local v7, "secondPtrY":F
    invoke-virtual {v9, v8}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownX(I)F

    #@17
    move-result v0

    #@18
    .line 1220
    .local v0, "firstPtrDownX":F
    invoke-virtual {v9, v8}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownY(I)F

    #@1b
    move-result v1

    #@1c
    .line 1221
    .local v1, "firstPtrDownY":F
    invoke-virtual {v9, v10}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownX(I)F

    #@1f
    move-result v2

    #@20
    .line 1222
    .local v2, "secondPtrDownX":F
    invoke-virtual {v9, v10}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownY(I)F

    #@23
    move-result v3

    #@24
    .line 1226
    .local v3, "secondPtrDownY":F
    const v8, 0x3f067b80

    #@27
    .line 1224
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
    .line 1029
    if-nez p2, :cond_0

    #@2
    if-nez p3, :cond_0

    #@4
    .line 1030
    return-object p1

    #@5
    .line 1032
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
    .line 1033
    .local v20, "remappedIndex":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    #@12
    move-result v19

    #@13
    .line 1034
    .local v19, "pointerCount":I
    invoke-static/range {v19 .. v19}, Landroid/view/MotionEvent$PointerProperties;->createArray(I)[Landroid/view/MotionEvent$PointerProperties;

    #@16
    move-result-object v8

    #@17
    .line 1035
    .local v8, "props":[Landroid/view/MotionEvent$PointerProperties;
    invoke-static/range {v19 .. v19}, Landroid/view/MotionEvent$PointerCoords;->createArray(I)[Landroid/view/MotionEvent$PointerCoords;

    #@1a
    move-result-object v9

    #@1b
    .line 1036
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
    .line 1037
    aget-object v2, v8, v18

    #@25
    move-object/from16 v0, p1

    #@27
    move/from16 v1, v18

    #@29
    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    #@2c
    .line 1038
    aget-object v2, v9, v18

    #@2e
    move-object/from16 v0, p1

    #@30
    move/from16 v1, v18

    #@32
    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    #@35
    .line 1039
    move/from16 v0, v18

    #@37
    move/from16 v1, v20

    #@39
    if-ne v0, v1, :cond_1

    #@3b
    .line 1040
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
    .line 1041
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
    .line 1036
    :cond_1
    add-int/lit8 v18, v18, 0x1

    #@51
    goto :goto_0

    #@52
    .line 1044
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    #@55
    move-result-wide v2

    #@56
    .line 1045
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
    .line 1046
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    #@65
    move-result v10

    #@66
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    #@69
    move-result v11

    #@6a
    .line 1047
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    #@6d
    move-result v14

    #@6e
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    #@71
    move-result v15

    #@72
    .line 1048
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    #@75
    move-result v16

    #@76
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    #@79
    move-result v17

    #@7a
    .line 1047
    const/high16 v12, 0x3f800000    # 1.0f

    #@7c
    const/high16 v13, 0x3f800000    # 1.0f

    #@7e
    .line 1044
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
    .line 849
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mContext:Landroid/content/Context;

    #@2
    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    #@5
    move-result-object v0

    #@6
    .line 850
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_0

    #@c
    .line 851
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    #@f
    move-result-object v1

    #@10
    .line 852
    .local v1, "event":Landroid/view/accessibility/AccessibilityEvent;
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@12
    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getActiveWindowId()I

    #@15
    move-result v2

    #@16
    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setWindowId(I)V

    #@19
    .line 853
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    #@1c
    .line 854
    sparse-switch p1, :sswitch_data_0

    #@1f
    .line 848
    .end local v1    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    :goto_0
    return-void

    #@20
    .line 856
    .restart local v1    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :sswitch_0
    const/4 v2, 0x1

    #@21
    iput-boolean v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mTouchExplorationInProgress:Z

    #@23
    goto :goto_0

    #@24
    .line 859
    :sswitch_1
    const/4 v2, 0x0

    #@25
    iput-boolean v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mTouchExplorationInProgress:Z

    #@27
    goto :goto_0

    #@28
    .line 854
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
    .line 954
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    #@4
    move-result v2

    #@5
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@8
    move-result v0

    #@9
    .line 955
    .local v0, "pointerId":I
    shl-int v1, v3, v0

    #@b
    .line 956
    .local v1, "pointerIdBits":I
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->setTargetAccessibilityFocus(Z)V

    #@e
    .line 957
    const/4 v2, 0x0

    #@f
    invoke-direct {p0, p1, v2, v1, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    #@12
    .line 958
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->setTargetAccessibilityFocus(Z)V

    #@15
    .line 959
    invoke-direct {p0, p1, v3, v1, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    #@18
    .line 952
    return-void
.end method

.method private sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V
    .locals 7
    .param p1, "prototype"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    #@0
    .prologue
    .line 873
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    #@2
    .line 876
    .local v2, "injectedPointers":Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;
    const/4 v5, 0x0

    #@3
    .line 877
    .local v5, "pointerIdBits":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    #@6
    move-result v3

    #@7
    .line 878
    .local v3, "pointerCount":I
    const/4 v1, 0x0

    #@8
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    #@a
    .line 879
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@d
    move-result v4

    #@e
    .line 881
    .local v4, "pointerId":I
    invoke-virtual {v2, v4}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->isInjectedPointerDown(I)Z

    #@11
    move-result v6

    #@12
    if-nez v6, :cond_0

    #@14
    .line 882
    const/4 v6, 0x1

    #@15
    shl-int/2addr v6, v4

    #@16
    or-int/2addr v5, v6

    #@17
    .line 883
    const/4 v6, 0x0

    #@18
    invoke-direct {p0, v6, v1}, Lcom/android/server/accessibility/TouchExplorer;->computeInjectionAction(II)I

    #@1b
    move-result v0

    #@1c
    .line 884
    .local v0, "action":I
    invoke-direct {p0, p1, v0, v5, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    #@1f
    .line 878
    .end local v0    # "action":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@21
    goto :goto_0

    #@22
    .line 872
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
    .line 896
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    #@4
    invoke-virtual {v2}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->getLastInjectedHoverEvent()Landroid/view/MotionEvent;

    #@7
    move-result-object v0

    #@8
    .line 897
    .local v0, "event":Landroid/view/MotionEvent;
    if-eqz v0, :cond_1

    #@a
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    #@d
    move-result v2

    #@e
    if-eq v2, v3, :cond_1

    #@10
    .line 898
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getPointerIdBits()I

    #@13
    move-result v1

    #@14
    .line 899
    .local v1, "pointerIdBits":I
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    #@16
    invoke-virtual {v2}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    #@19
    move-result v2

    #@1a
    if-nez v2, :cond_0

    #@1c
    .line 900
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    #@1e
    invoke-virtual {v2}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->post()V

    #@21
    .line 902
    :cond_0
    invoke-direct {p0, v0, v3, v1, p1}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    #@24
    .line 895
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
    .line 972
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->setAction(I)V

    #@4
    .line 974
    const/4 v0, 0x0

    #@5
    .line 975
    .local v0, "event":Landroid/view/MotionEvent;
    const/4 v1, -0x1

    #@6
    if-ne p3, v1, :cond_3

    #@8
    .line 976
    move-object v0, p1

    #@9
    .line 980
    .local v0, "event":Landroid/view/MotionEvent;
    :goto_0
    if-nez p2, :cond_4

    #@b
    .line 981
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    #@e
    move-result-wide v2

    #@f
    invoke-virtual {v0, v2, v3}, Landroid/view/MotionEvent;->setDownTime(J)V

    #@12
    .line 992
    :goto_1
    iget v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerId:I

    #@14
    if-ltz v1, :cond_0

    #@16
    .line 993
    iget v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerDeltaX:I

    #@18
    neg-int v1, v1

    #@19
    .line 994
    iget v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerDeltaY:I

    #@1b
    neg-int v2, v2

    #@1c
    .line 993
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/accessibility/TouchExplorer;->offsetEvent(Landroid/view/MotionEvent;II)Landroid/view/MotionEvent;

    #@1f
    move-result-object v0

    #@20
    .line 1003
    :cond_0
    const/high16 v1, 0x40000000    # 2.0f

    #@22
    or-int/2addr p4, v1

    #@23
    .line 1004
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    #@25
    if-eqz v1, :cond_1

    #@27
    .line 1008
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    #@29
    invoke-interface {v1, v0, v4, p4}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    #@2c
    .line 1011
    :cond_1
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    #@2e
    invoke-virtual {v1, v0}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->onMotionEvent(Landroid/view/MotionEvent;)V

    #@31
    .line 1013
    if-eq v0, p1, :cond_2

    #@33
    .line 1014
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    #@36
    .line 971
    :cond_2
    return-void

    #@37
    .line 978
    .local v0, "event":Landroid/view/MotionEvent;
    :cond_3
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->split(I)Landroid/view/MotionEvent;

    #@3a
    move-result-object v0

    #@3b
    .local v0, "event":Landroid/view/MotionEvent;
    goto :goto_0

    #@3c
    .line 983
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
    .line 913
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    #@2
    invoke-virtual {v2}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->getLastInjectedHoverEvent()Landroid/view/MotionEvent;

    #@5
    move-result-object v0

    #@6
    .line 914
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
    .line 915
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getPointerIdBits()I

    #@13
    move-result v1

    #@14
    .line 916
    .local v1, "pointerIdBits":I
    const/16 v2, 0x200

    #@16
    invoke-direct {p0, v2}, Lcom/android/server/accessibility/TouchExplorer;->sendAccessibilityEvent(I)V

    #@19
    .line 917
    const/16 v2, 0x9

    #@1b
    invoke-direct {p0, v0, v2, v1, p1}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    #@1e
    .line 912
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
    .line 929
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    #@3
    .line 930
    .local v2, "injectedTracked":Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;
    const/4 v5, 0x0

    #@4
    .line 931
    .local v5, "pointerIdBits":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    #@7
    move-result v3

    #@8
    .line 932
    .local v3, "pointerCount":I
    const/4 v1, 0x0

    #@9
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    #@b
    .line 933
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@e
    move-result v4

    #@f
    .line 935
    .local v4, "pointerId":I
    invoke-virtual {v2, v4}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->isInjectedPointerDown(I)Z

    #@12
    move-result v6

    #@13
    if-nez v6, :cond_0

    #@15
    .line 932
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@17
    goto :goto_0

    #@18
    .line 938
    :cond_0
    shl-int v6, v7, v4

    #@1a
    or-int/2addr v5, v6

    #@1b
    .line 939
    invoke-direct {p0, v7, v1}, Lcom/android/server/accessibility/TouchExplorer;->computeInjectionAction(II)I

    #@1e
    move-result v0

    #@1f
    .line 940
    .local v0, "action":I
    invoke-direct {p0, p1, v0, v5, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    #@22
    goto :goto_1

    #@23
    .line 928
    .end local v0    # "action":I
    .end local v4    # "pointerId":I
    :cond_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    #@0
    .prologue
    .line 259
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;

    #@2
    invoke-virtual {v1}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getLastReceivedEvent()Landroid/view/MotionEvent;

    #@5
    move-result-object v0

    #@6
    .line 260
    .local v0, "event":Landroid/view/MotionEvent;
    if-eqz v0, :cond_0

    #@8
    .line 261
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
    .line 256
    :cond_0
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
    .line 348
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    #@6
    move-result v0

    #@7
    .line 352
    .local v0, "eventType":I
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    #@9
    invoke-virtual {v1}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_0

    #@f
    .line 353
    if-ne v0, v3, :cond_0

    #@11
    .line 354
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    #@13
    invoke-virtual {v1}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    #@16
    .line 355
    const/16 v1, 0x400

    #@18
    invoke-direct {p0, v1}, Lcom/android/server/accessibility/TouchExplorer;->sendAccessibilityEvent(I)V

    #@1b
    .line 360
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    #@1d
    invoke-virtual {v1}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    #@20
    move-result v1

    #@21
    if-eqz v1, :cond_1

    #@23
    .line 361
    if-ne v0, v3, :cond_1

    #@25
    .line 362
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    #@27
    invoke-virtual {v1}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    #@2a
    .line 363
    const/high16 v1, 0x200000

    #@2c
    invoke-direct {p0, v1}, Lcom/android/server/accessibility/TouchExplorer;->sendAccessibilityEvent(I)V

    #@2f
    .line 368
    :cond_1
    sparse-switch v0, :sswitch_data_0

    #@32
    .line 382
    :goto_0
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    #@34
    if-eqz v1, :cond_2

    #@36
    .line 383
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    #@38
    invoke-interface {v1, p1}, Lcom/android/server/accessibility/EventStreamTransformation;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    #@3b
    .line 347
    :cond_2
    return-void

    #@3c
    .line 371
    :sswitch_0
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    #@3e
    invoke-static {v1}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->-get0(Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;)Landroid/view/MotionEvent;

    #@41
    move-result-object v1

    #@42
    if-eqz v1, :cond_3

    #@44
    .line 372
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    #@46
    invoke-static {v1}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->-get0(Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;)Landroid/view/MotionEvent;

    #@49
    move-result-object v1

    #@4a
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    #@4d
    .line 373
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    #@4f
    invoke-static {v1, v2}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->-set0(Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    #@52
    .line 375
    :cond_3
    const/4 v1, -0x1

    #@53
    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mLastTouchedWindowId:I

    #@55
    goto :goto_0

    #@56
    .line 379
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    #@59
    move-result v1

    #@5a
    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mLastTouchedWindowId:I

    #@5c
    goto :goto_0

    #@5d
    .line 368
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
    .line 265
    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    #@0
    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;

    #@2
    invoke-virtual {v0, p2}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->onMotionEvent(Landroid/view/MotionEvent;)V

    #@5
    .line 329
    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    #@7
    packed-switch v0, :pswitch_data_0

    #@a
    .line 343
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    #@c
    new-instance v1, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v2, "Illegal state: "

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    iget v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@25
    throw v0

    #@26
    .line 331
    :pswitch_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/TouchExplorer;->handleMotionEventStateTouchExploring(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    #@29
    .line 320
    :goto_0
    return-void

    #@2a
    .line 334
    :pswitch_2
    invoke-direct {p0, p1, p3}, Lcom/android/server/accessibility/TouchExplorer;->handleMotionEventStateDragging(Landroid/view/MotionEvent;I)V

    #@2d
    goto :goto_0

    #@2e
    .line 337
    :pswitch_3
    invoke-direct {p0, p1, p3}, Lcom/android/server/accessibility/TouchExplorer;->handleMotionEventStateDelegating(Landroid/view/MotionEvent;I)V

    #@31
    goto :goto_0

    #@32
    .line 340
    :pswitch_4
    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/TouchExplorer;->handleMotionEventGestureDetecting(Landroid/view/MotionEvent;I)V

    #@35
    goto :goto_0

    #@36
    .line 329
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V
    .locals 0
    .param p1, "next"    # Lcom/android/server/accessibility/EventStreamTransformation;

    #@0
    .prologue
    .line 316
    iput-object p1, p0, Lcom/android/server/accessibility/TouchExplorer;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    #@2
    .line 315
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1531
    const-string/jumbo v0, "TouchExplorer"

    #@3
    return-object v0
.end method

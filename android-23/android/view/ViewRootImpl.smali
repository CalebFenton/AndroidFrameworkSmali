.class public final Landroid/view/ViewRootImpl;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Landroid/view/ViewParent;
.implements Landroid/view/View$AttachInfo$Callbacks;
.implements Landroid/view/HardwareRenderer$HardwareDrawCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;,
        Landroid/view/ViewRootImpl$ViewRootHandler;,
        Landroid/view/ViewRootImpl$InputStage;,
        Landroid/view/ViewRootImpl$AsyncInputStage;,
        Landroid/view/ViewRootImpl$NativePreImeInputStage;,
        Landroid/view/ViewRootImpl$ViewPreImeInputStage;,
        Landroid/view/ViewRootImpl$ImeInputStage;,
        Landroid/view/ViewRootImpl$EarlyPostImeInputStage;,
        Landroid/view/ViewRootImpl$NativePostImeInputStage;,
        Landroid/view/ViewRootImpl$ViewPostImeInputStage;,
        Landroid/view/ViewRootImpl$SyntheticInputStage;,
        Landroid/view/ViewRootImpl$SyntheticTrackballHandler;,
        Landroid/view/ViewRootImpl$TrackballAxis;,
        Landroid/view/ViewRootImpl$SyntheticJoystickHandler;,
        Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;,
        Landroid/view/ViewRootImpl$SyntheticKeyboardHandler;,
        Landroid/view/ViewRootImpl$QueuedInputEvent;,
        Landroid/view/ViewRootImpl$TraversalRunnable;,
        Landroid/view/ViewRootImpl$WindowInputEventReceiver;,
        Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;,
        Landroid/view/ViewRootImpl$ConsumeBatchedInputImmediatelyRunnable;,
        Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;,
        Landroid/view/ViewRootImpl$TakenSurfaceHolder;,
        Landroid/view/ViewRootImpl$W;,
        Landroid/view/ViewRootImpl$CalledFromWrongThreadException;,
        Landroid/view/ViewRootImpl$RunQueue;,
        Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;,
        Landroid/view/ViewRootImpl$HighContrastTextManager;,
        Landroid/view/ViewRootImpl$AccessibilityInteractionConnection;,
        Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;,
        Landroid/view/ViewRootImpl$1;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final DEBUG_CONFIGURATION:Z = false

.field private static final DEBUG_DIALOG:Z = false

.field private static final DEBUG_DRAW:Z = false

.field private static final DEBUG_FPS:Z = false

.field private static final DEBUG_IMF:Z = false

.field private static final DEBUG_INPUT_RESIZE:Z = false

.field private static final DEBUG_INPUT_STAGES:Z = false

.field private static final DEBUG_LAYOUT:Z = false

.field private static final DEBUG_ORIENTATION:Z = false

.field private static final DEBUG_TRACKBALL:Z = false

.field private static final LOCAL_LOGV:Z = false

.field private static final MAX_QUEUED_INPUT_EVENT_POOL_SIZE:I = 0xa

.field static final MAX_TRACKBALL_DELAY:I = 0xfa

.field private static final MSG_CHECK_FOCUS:I = 0xd

.field private static final MSG_CLEAR_ACCESSIBILITY_FOCUS_HOST:I = 0x15

.field private static final MSG_CLOSE_SYSTEM_DIALOGS:I = 0xe

.field private static final MSG_DIE:I = 0x3

.field private static final MSG_DISPATCH_APP_VISIBILITY:I = 0x8

.field private static final MSG_DISPATCH_DRAG_EVENT:I = 0xf

.field private static final MSG_DISPATCH_DRAG_LOCATION_EVENT:I = 0x10

.field private static final MSG_DISPATCH_GET_NEW_SURFACE:I = 0x9

.field private static final MSG_DISPATCH_INPUT_EVENT:I = 0x7

.field private static final MSG_DISPATCH_KEY_FROM_IME:I = 0xb

.field private static final MSG_DISPATCH_SYSTEM_UI_VISIBILITY:I = 0x11

.field private static final MSG_DISPATCH_WINDOW_ANIMATION_STARTED:I = 0x1b

.field private static final MSG_DISPATCH_WINDOW_ANIMATION_STOPPED:I = 0x1a

.field private static final MSG_DISPATCH_WINDOW_SHOWN:I = 0x19

.field private static final MSG_FINISH_INPUT_CONNECTION:I = 0xc

.field private static final MSG_INVALIDATE:I = 0x1

.field private static final MSG_INVALIDATE_RECT:I = 0x2

.field private static final MSG_INVALIDATE_WORLD:I = 0x16

.field private static final MSG_PROCESS_INPUT_EVENTS:I = 0x13

.field private static final MSG_RESIZED:I = 0x4

.field private static final MSG_RESIZED_REPORT:I = 0x5

.field private static final MSG_SYNTHESIZE_INPUT_EVENT:I = 0x18

.field private static final MSG_UPDATE_CONFIGURATION:I = 0x12

.field private static final MSG_WINDOW_FOCUS_CHANGED:I = 0x6

.field private static final MSG_WINDOW_MOVED:I = 0x17

.field public static final PROPERTY_EMULATOR_WIN_OUTSET_BOTTOM_PX:Ljava/lang/String; = "ro.emu.win_outset_bottom_px"

.field private static final PROPERTY_PROFILE_RENDERING:Ljava/lang/String; = "viewroot.profile_rendering"

.field private static final TAG:Ljava/lang/String; = "ViewRootImpl"

.field static final mResizeInterpolator:Landroid/view/animation/Interpolator;

.field static final sConfigCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field static sFirstDrawComplete:Z

.field static final sFirstDrawHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field static final sRunQueues:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/view/ViewRootImpl$RunQueue;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mAccessibilityFocusedHost:Landroid/view/View;

.field mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

.field mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

.field mAccessibilityInteractionController:Landroid/view/AccessibilityInteractionController;

.field final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field mAdded:Z

.field mAddedTouchMode:Z

.field mAppVisible:Z

.field mApplyInsetsRequested:Z

.field final mAttachInfo:Landroid/view/View$AttachInfo;

.field mAudioManager:Landroid/media/AudioManager;

.field final mBasePackageName:Ljava/lang/String;

.field mBlockResizeBuffer:Z

.field mChoreographer:Landroid/view/Choreographer;

.field mClientWindowLayoutFlags:I

.field final mConsumeBatchedInputImmediatelyRunnable:Landroid/view/ViewRootImpl$ConsumeBatchedInputImmediatelyRunnable;

.field mConsumeBatchedInputImmediatelyScheduled:Z

.field mConsumeBatchedInputScheduled:Z

.field final mConsumedBatchedInputRunnable:Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;

.field final mContext:Landroid/content/Context;

.field mCurScrollY:I

.field mCurrentDragView:Landroid/view/View;

.field private final mDensity:I

.field mDirty:Landroid/graphics/Rect;

.field final mDispatchContentInsets:Landroid/graphics/Rect;

.field final mDispatchStableInsets:Landroid/graphics/Rect;

.field final mDisplay:Landroid/view/Display;

.field final mDisplayAdjustments:Landroid/view/DisplayAdjustments;

.field private final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field mDragDescription:Landroid/content/ClipDescription;

.field final mDragPoint:Landroid/graphics/PointF;

.field mDrawDuringWindowsAnimating:Z

.field mDrawingAllowed:Z

.field mFallbackEventHandler:Landroid/view/FallbackEventHandler;

.field mFirst:Z

.field mFirstInputStage:Landroid/view/ViewRootImpl$InputStage;

.field mFirstPostImeInputStage:Landroid/view/ViewRootImpl$InputStage;

.field private mFpsNumFrames:I

.field private mFpsPrevTime:J

.field private mFpsStartTime:J

.field mFullRedrawNeeded:Z

.field final mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

.field mHandlingLayoutInLayoutRequest:Z

.field mHardwareXOffset:I

.field mHardwareYOffset:I

.field mHasHadWindowFocus:Z

.field mHeight:I

.field mHighContrastTextManager:Landroid/view/ViewRootImpl$HighContrastTextManager;

.field private mInLayout:Z

.field mInputChannel:Landroid/view/InputChannel;

.field protected final mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

.field mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

.field mInputQueue:Landroid/view/InputQueue;

.field mInputQueueCallback:Landroid/view/InputQueue$Callback;

.field final mInvalidateOnAnimationRunnable:Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;

.field mIsAnimating:Z

.field mIsCreating:Z

.field mIsDrawing:Z

.field mIsInTraversal:Z

.field final mLastConfiguration:Landroid/content/res/Configuration;

.field final mLastGivenInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

.field mLastInCompatMode:Z

.field mLastOverscanRequested:Z

.field mLastScrolledFocus:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mLastSystemUiVisibility:I

.field final mLastTouchPoint:Landroid/graphics/PointF;

.field mLastWasImTarget:Z

.field private mLastWindowInsets:Landroid/view/WindowInsets;

.field mLayoutRequested:Z

.field mLayoutRequesters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field volatile mLocalDragState:Ljava/lang/Object;

.field final mLocation:Landroid/view/WindowLeaked;

.field mNewSurfaceNeeded:Z

.field private final mNoncompatDensity:I

.field mOrigWindowType:I

.field mPausedForTransition:Z

.field final mPendingConfiguration:Landroid/content/res/Configuration;

.field final mPendingContentInsets:Landroid/graphics/Rect;

.field mPendingInputEventCount:I

.field mPendingInputEventHead:Landroid/view/ViewRootImpl$QueuedInputEvent;

.field mPendingInputEventQueueLengthCounterName:Ljava/lang/String;

.field mPendingInputEventTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

.field final mPendingOutsets:Landroid/graphics/Rect;

.field final mPendingOverscanInsets:Landroid/graphics/Rect;

.field final mPendingStableInsets:Landroid/graphics/Rect;

.field private mPendingTransitions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/LayoutTransition;",
            ">;"
        }
    .end annotation
.end field

.field final mPendingVisibleInsets:Landroid/graphics/Rect;

.field final mPreviousTransparentRegion:Landroid/graphics/Region;

.field mProcessInputEventsScheduled:Z

.field private mProfile:Z

.field private mProfileRendering:Z

.field private mQueuedInputEventPool:Landroid/view/ViewRootImpl$QueuedInputEvent;

.field private mQueuedInputEventPoolSize:I

.field private mRemainingFrameCount:I

.field private mRemoved:Z

.field private mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

.field private mRenderProfilingEnabled:Z

.field mReportNextDraw:Z

.field mResizeAlpha:I

.field mResizeBuffer:Landroid/view/HardwareLayer;

.field mResizeBufferDuration:I

.field mResizeBufferStartTime:J

.field final mResizePaint:Landroid/graphics/Paint;

.field mScrollMayChange:Z

.field mScrollY:I

.field mScroller:Landroid/widget/Scroller;

.field mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

.field mSeq:I

.field mSoftInputMode:I

.field mStopped:Z

.field final mSurface:Landroid/view/Surface;

.field mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

.field mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

.field mSyntheticInputStage:Landroid/view/ViewRootImpl$InputStage;

.field final mTargetSdkVersion:I

.field mTempHashSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final mTempRect:Landroid/graphics/Rect;

.field final mThread:Ljava/lang/Thread;

.field final mTmpLocation:[I

.field final mTmpValue:Landroid/util/TypedValue;

.field mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

.field final mTransparentRegion:Landroid/graphics/Region;

.field mTraversalBarrier:I

.field final mTraversalRunnable:Landroid/view/ViewRootImpl$TraversalRunnable;

.field mTraversalScheduled:Z

.field mUnbufferedInputDispatch:Z

.field mView:Landroid/view/View;

.field final mViewConfiguration:Landroid/view/ViewConfiguration;

.field private mViewLayoutDirectionInitial:I

.field mViewVisibility:I

.field final mVisRect:Landroid/graphics/Rect;

.field mWidth:I

.field mWillDrawSoon:Z

.field final mWinFrame:Landroid/graphics/Rect;

.field final mWindow:Landroid/view/ViewRootImpl$W;

.field final mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

.field mWindowAttributesChanged:Z

.field mWindowAttributesChangesFlag:I

.field final mWindowSession:Landroid/view/IWindowSession;

.field mWindowsAnimating:Z


# direct methods
.method static synthetic -get0(Landroid/view/ViewRootImpl;)Landroid/view/Choreographer$FrameCallback;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/view/ViewRootImpl;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mRenderProfilingEnabled:Z

    #@2
    return v0
.end method

.method static synthetic -set0(Landroid/view/ViewRootImpl;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mProfileRendering:Z

    #@2
    return p1
.end method

.method static synthetic -wrap0(Landroid/view/ViewRootImpl;Landroid/view/View;Landroid/view/View;)Landroid/view/View;
    .locals 1
    .param p1, "first"    # Landroid/view/View;
    .param p2, "second"    # Landroid/view/View;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/view/ViewRootImpl;->getCommonPredecessor(Landroid/view/View;Landroid/view/View;)Landroid/view/View;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Landroid/view/ViewRootImpl;Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->checkForLeavingTouchModeAndConsume(Landroid/view/KeyEvent;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap2(Landroid/view/ViewRootImpl;Z)Z
    .locals 1
    .param p1, "inTouchMode"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->ensureTouchModeLocally(Z)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap3(Landroid/view/ViewRootImpl;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->isInLocalFocusMode()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap4(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .locals 0
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->finishInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    #@3
    return-void
.end method

.method static synthetic -wrap5(Landroid/view/View;)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;

    #@0
    .prologue
    invoke-static {p0}, Landroid/view/ViewRootImpl;->forceLayout(Landroid/view/View;)V

    #@3
    return-void
.end method

.method static synthetic -wrap6(Landroid/view/ViewRootImpl;Landroid/view/DragEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/DragEvent;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->handleDragEvent(Landroid/view/DragEvent;)V

    #@3
    return-void
.end method

.method static synthetic -wrap7(Landroid/view/ViewRootImpl;Z)V
    .locals 0
    .param p1, "enabled"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->profileRendering(Z)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 134
    new-instance v0, Ljava/lang/ThreadLocal;

    #@2
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    #@5
    sput-object v0, Landroid/view/ViewRootImpl;->sRunQueues:Ljava/lang/ThreadLocal;

    #@7
    .line 136
    new-instance v0, Ljava/util/ArrayList;

    #@9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@c
    sput-object v0, Landroid/view/ViewRootImpl;->sFirstDrawHandlers:Ljava/util/ArrayList;

    #@e
    .line 137
    const/4 v0, 0x0

    #@f
    sput-boolean v0, Landroid/view/ViewRootImpl;->sFirstDrawComplete:Z

    #@11
    .line 140
    new-instance v0, Ljava/util/ArrayList;

    #@13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@16
    .line 139
    sput-object v0, Landroid/view/ViewRootImpl;->sConfigCallbacks:Ljava/util/ArrayList;

    #@18
    .line 295
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    #@1a
    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    #@1d
    sput-object v0, Landroid/view/ViewRootImpl;->mResizeInterpolator:Landroid/view/animation/Interpolator;

    #@1f
    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Display;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "display"    # Landroid/view/Display;

    #@0
    .prologue
    const-wide/16 v6, -0x1

    #@2
    const/4 v1, 0x0

    #@3
    const/4 v4, 0x1

    #@4
    const/4 v3, -0x1

    #@5
    const/4 v2, 0x0

    #@6
    .line 358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    .line 148
    const/4 v0, 0x2

    #@a
    new-array v0, v0, [I

    #@c
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mTmpLocation:[I

    #@e
    .line 150
    new-instance v0, Landroid/util/TypedValue;

    #@10
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    #@13
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mTmpValue:Landroid/util/TypedValue;

    #@15
    .line 156
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    #@17
    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    #@1a
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@1c
    .line 170
    iput-boolean v4, p0, Landroid/view/ViewRootImpl;->mAppVisible:Z

    #@1e
    .line 171
    iput v3, p0, Landroid/view/ViewRootImpl;->mOrigWindowType:I

    #@20
    .line 175
    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mStopped:Z

    #@22
    .line 178
    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mPausedForTransition:Z

    #@24
    .line 180
    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mLastInCompatMode:Z

    #@26
    .line 245
    const-string/jumbo v0, "pq"

    #@29
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPendingInputEventQueueLengthCounterName:Ljava/lang/String;

    #@2b
    .line 251
    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    #@2d
    .line 252
    iput v2, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChangesFlag:I

    #@2f
    .line 256
    new-instance v0, Landroid/view/Surface;

    #@31
    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    #@34
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    #@36
    .line 266
    new-instance v0, Landroid/graphics/Rect;

    #@38
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@3b
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    #@3d
    .line 267
    new-instance v0, Landroid/graphics/Rect;

    #@3f
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@42
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    #@44
    .line 268
    new-instance v0, Landroid/graphics/Rect;

    #@46
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@49
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    #@4b
    .line 269
    new-instance v0, Landroid/graphics/Rect;

    #@4d
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@50
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    #@52
    .line 270
    new-instance v0, Landroid/graphics/Rect;

    #@54
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@57
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPendingOutsets:Landroid/graphics/Rect;

    #@59
    .line 272
    new-instance v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    #@5b
    invoke-direct {v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;-><init>()V

    #@5e
    .line 271
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mLastGivenInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    #@60
    .line 274
    new-instance v0, Landroid/graphics/Rect;

    #@62
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@65
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mDispatchContentInsets:Landroid/graphics/Rect;

    #@67
    .line 275
    new-instance v0, Landroid/graphics/Rect;

    #@69
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@6c
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mDispatchStableInsets:Landroid/graphics/Rect;

    #@6e
    .line 279
    new-instance v0, Landroid/content/res/Configuration;

    #@70
    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    #@73
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mLastConfiguration:Landroid/content/res/Configuration;

    #@75
    .line 280
    new-instance v0, Landroid/content/res/Configuration;

    #@77
    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    #@7a
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPendingConfiguration:Landroid/content/res/Configuration;

    #@7c
    .line 304
    new-instance v0, Landroid/graphics/PointF;

    #@7e
    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    #@81
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mDragPoint:Landroid/graphics/PointF;

    #@83
    .line 305
    new-instance v0, Landroid/graphics/PointF;

    #@85
    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    #@88
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mLastTouchPoint:Landroid/graphics/PointF;

    #@8a
    .line 312
    iput-wide v6, p0, Landroid/view/ViewRootImpl;->mFpsStartTime:J

    #@8c
    .line 313
    iput-wide v6, p0, Landroid/view/ViewRootImpl;->mFpsPrevTime:J

    #@8e
    .line 335
    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mInLayout:Z

    #@90
    .line 336
    new-instance v0, Ljava/util/ArrayList;

    #@92
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@95
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mLayoutRequesters:Ljava/util/ArrayList;

    #@97
    .line 337
    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mHandlingLayoutInLayoutRequest:Z

    #@99
    .line 348
    invoke-static {}, Landroid/view/InputEventConsistencyVerifier;->isInstrumentationEnabled()Z

    #@9c
    move-result v0

    #@9d
    if-eqz v0, :cond_0

    #@9f
    .line 349
    new-instance v0, Landroid/view/InputEventConsistencyVerifier;

    #@a1
    invoke-direct {v0, p0, v2}, Landroid/view/InputEventConsistencyVerifier;-><init>(Ljava/lang/Object;I)V

    #@a4
    .line 347
    :goto_0
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    #@a6
    .line 415
    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mProfile:Z

    #@a8
    .line 845
    new-instance v0, Landroid/view/ViewRootImpl$1;

    #@aa
    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$1;-><init>(Landroid/view/ViewRootImpl;)V

    #@ad
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    #@af
    .line 2343
    new-instance v0, Landroid/graphics/Paint;

    #@b1
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    #@b4
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mResizePaint:Landroid/graphics/Paint;

    #@b6
    .line 3491
    new-instance v0, Landroid/view/ViewRootImpl$ViewRootHandler;

    #@b8
    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$ViewRootHandler;-><init>(Landroid/view/ViewRootImpl;)V

    #@bb
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@bd
    .line 6016
    new-instance v0, Landroid/view/ViewRootImpl$TraversalRunnable;

    #@bf
    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$TraversalRunnable;-><init>(Landroid/view/ViewRootImpl;)V

    #@c2
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mTraversalRunnable:Landroid/view/ViewRootImpl$TraversalRunnable;

    #@c4
    .line 6052
    new-instance v0, Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;

    #@c6
    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;-><init>(Landroid/view/ViewRootImpl;)V

    #@c9
    .line 6051
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mConsumedBatchedInputRunnable:Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;

    #@cb
    .line 6062
    new-instance v0, Landroid/view/ViewRootImpl$ConsumeBatchedInputImmediatelyRunnable;

    #@cd
    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$ConsumeBatchedInputImmediatelyRunnable;-><init>(Landroid/view/ViewRootImpl;)V

    #@d0
    .line 6061
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputImmediatelyRunnable:Landroid/view/ViewRootImpl$ConsumeBatchedInputImmediatelyRunnable;

    #@d2
    .line 6148
    new-instance v0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;

    #@d4
    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;-><init>(Landroid/view/ViewRootImpl;)V

    #@d7
    .line 6147
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mInvalidateOnAnimationRunnable:Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;

    #@d9
    .line 359
    iput-object p1, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    #@db
    .line 360
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    #@de
    move-result-object v0

    #@df
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    #@e1
    .line 361
    iput-object p2, p0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    #@e3
    .line 362
    invoke-virtual {p1}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    #@e6
    move-result-object v0

    #@e7
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mBasePackageName:Ljava/lang/String;

    #@e9
    .line 364
    invoke-virtual {p2}, Landroid/view/Display;->getDisplayAdjustments()Landroid/view/DisplayAdjustments;

    #@ec
    move-result-object v0

    #@ed
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    #@ef
    .line 366
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@f2
    move-result-object v0

    #@f3
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mThread:Ljava/lang/Thread;

    #@f5
    .line 367
    new-instance v0, Landroid/view/WindowLeaked;

    #@f7
    invoke-direct {v0, v1}, Landroid/view/WindowLeaked;-><init>(Ljava/lang/String;)V

    #@fa
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mLocation:Landroid/view/WindowLeaked;

    #@fc
    .line 368
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLocation:Landroid/view/WindowLeaked;

    #@fe
    invoke-virtual {v0}, Landroid/view/WindowLeaked;->fillInStackTrace()Ljava/lang/Throwable;

    #@101
    .line 369
    iput v3, p0, Landroid/view/ViewRootImpl;->mWidth:I

    #@103
    .line 370
    iput v3, p0, Landroid/view/ViewRootImpl;->mHeight:I

    #@105
    .line 371
    new-instance v0, Landroid/graphics/Rect;

    #@107
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@10a
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mDirty:Landroid/graphics/Rect;

    #@10c
    .line 372
    new-instance v0, Landroid/graphics/Rect;

    #@10e
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@111
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    #@113
    .line 373
    new-instance v0, Landroid/graphics/Rect;

    #@115
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@118
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mVisRect:Landroid/graphics/Rect;

    #@11a
    .line 374
    new-instance v0, Landroid/graphics/Rect;

    #@11c
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@11f
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    #@121
    .line 375
    new-instance v0, Landroid/view/ViewRootImpl$W;

    #@123
    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$W;-><init>(Landroid/view/ViewRootImpl;)V

    #@126
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    #@128
    .line 376
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@12b
    move-result-object v0

    #@12c
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@12e
    iput v0, p0, Landroid/view/ViewRootImpl;->mTargetSdkVersion:I

    #@130
    .line 377
    const/16 v0, 0x8

    #@132
    iput v0, p0, Landroid/view/ViewRootImpl;->mViewVisibility:I

    #@134
    .line 378
    new-instance v0, Landroid/graphics/Region;

    #@136
    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    #@139
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    #@13b
    .line 379
    new-instance v0, Landroid/graphics/Region;

    #@13d
    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    #@140
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPreviousTransparentRegion:Landroid/graphics/Region;

    #@142
    .line 380
    iput-boolean v4, p0, Landroid/view/ViewRootImpl;->mFirst:Z

    #@144
    .line 381
    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    #@146
    .line 382
    new-instance v0, Landroid/view/View$AttachInfo;

    #@148
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    #@14a
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    #@14c
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@14e
    move-object v3, p2

    #@14f
    move-object v4, p0

    #@150
    move-object v6, p0

    #@151
    invoke-direct/range {v0 .. v6}, Landroid/view/View$AttachInfo;-><init>(Landroid/view/IWindowSession;Landroid/view/IWindow;Landroid/view/Display;Landroid/view/ViewRootImpl;Landroid/os/Handler;Landroid/view/View$AttachInfo$Callbacks;)V

    #@154
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@156
    .line 383
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    #@159
    move-result-object v0

    #@15a
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    #@15c
    .line 385
    new-instance v0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    #@15e
    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;-><init>(Landroid/view/ViewRootImpl;)V

    #@161
    .line 384
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    #@163
    .line 386
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    #@165
    .line 387
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    #@167
    .line 386
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    #@16a
    .line 388
    new-instance v0, Landroid/view/ViewRootImpl$HighContrastTextManager;

    #@16c
    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$HighContrastTextManager;-><init>(Landroid/view/ViewRootImpl;)V

    #@16f
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mHighContrastTextManager:Landroid/view/ViewRootImpl$HighContrastTextManager;

    #@171
    .line 389
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    #@173
    .line 390
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHighContrastTextManager:Landroid/view/ViewRootImpl$HighContrastTextManager;

    #@175
    .line 389
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->addHighTextContrastStateChangeListener(Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;)Z

    #@178
    .line 391
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    #@17b
    move-result-object v0

    #@17c
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mViewConfiguration:Landroid/view/ViewConfiguration;

    #@17e
    .line 392
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@181
    move-result-object v0

    #@182
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@185
    move-result-object v0

    #@186
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    #@188
    iput v0, p0, Landroid/view/ViewRootImpl;->mDensity:I

    #@18a
    .line 393
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@18d
    move-result-object v0

    #@18e
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@191
    move-result-object v0

    #@192
    iget v0, v0, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    #@194
    iput v0, p0, Landroid/view/ViewRootImpl;->mNoncompatDensity:I

    #@196
    .line 394
    new-instance v0, Lcom/android/internal/policy/PhoneFallbackEventHandler;

    #@198
    invoke-direct {v0, p1}, Lcom/android/internal/policy/PhoneFallbackEventHandler;-><init>(Landroid/content/Context;)V

    #@19b
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mFallbackEventHandler:Landroid/view/FallbackEventHandler;

    #@19d
    .line 395
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    #@1a0
    move-result-object v0

    #@1a1
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    #@1a3
    .line 396
    const-string/jumbo v0, "display"

    #@1a6
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@1a9
    move-result-object v0

    #@1aa
    check-cast v0, Landroid/hardware/display/DisplayManager;

    #@1ac
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    #@1ae
    .line 397
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->loadSystemProperties()V

    #@1b1
    .line 358
    return-void

    #@1b2
    :cond_0
    move-object v0, v1

    #@1b3
    .line 349
    goto/16 :goto_0
.end method

.method public static addConfigCallback(Landroid/content/ComponentCallbacks;)V
    .locals 2
    .param p0, "callback"    # Landroid/content/ComponentCallbacks;

    #@0
    .prologue
    .line 409
    sget-object v1, Landroid/view/ViewRootImpl;->sConfigCallbacks:Ljava/util/ArrayList;

    #@2
    monitor-enter v1

    #@3
    .line 410
    :try_start_0
    sget-object v0, Landroid/view/ViewRootImpl;->sConfigCallbacks:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 408
    return-void

    #@a
    .line 409
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method public static addFirstDrawHandler(Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "callback"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 401
    sget-object v1, Landroid/view/ViewRootImpl;->sFirstDrawHandlers:Ljava/util/ArrayList;

    #@2
    monitor-enter v1

    #@3
    .line 402
    :try_start_0
    sget-boolean v0, Landroid/view/ViewRootImpl;->sFirstDrawComplete:Z

    #@5
    if-nez v0, :cond_0

    #@7
    .line 403
    sget-object v0, Landroid/view/ViewRootImpl;->sFirstDrawHandlers:Ljava/util/ArrayList;

    #@9
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    :cond_0
    monitor-exit v1

    #@d
    .line 400
    return-void

    #@e
    .line 401
    :catchall_0
    move-exception v0

    #@f
    monitor-exit v1

    #@10
    throw v0
.end method

.method private adjustInputEventForCompatibility(Landroid/view/InputEvent;)V
    .locals 6
    .param p1, "e"    # Landroid/view/InputEvent;

    #@0
    .prologue
    .line 5943
    iget v4, p0, Landroid/view/ViewRootImpl;->mTargetSdkVersion:I

    #@2
    const/16 v5, 0x17

    #@4
    if-ge v4, v5, :cond_0

    #@6
    instance-of v4, p1, Landroid/view/MotionEvent;

    #@8
    if-eqz v4, :cond_0

    #@a
    move-object v3, p1

    #@b
    .line 5944
    check-cast v3, Landroid/view/MotionEvent;

    #@d
    .line 5946
    .local v3, "motion":Landroid/view/MotionEvent;
    const/16 v2, 0x60

    #@f
    .line 5947
    .local v2, "mask":I
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getButtonState()I

    #@12
    move-result v0

    #@13
    .line 5948
    .local v0, "buttonState":I
    and-int/lit8 v4, v0, 0x60

    #@15
    shr-int/lit8 v1, v4, 0x4

    #@17
    .line 5949
    .local v1, "compatButtonState":I
    if-eqz v1, :cond_0

    #@19
    .line 5950
    or-int v4, v0, v1

    #@1b
    invoke-virtual {v3, v4}, Landroid/view/MotionEvent;->setButtonState(I)V

    #@1e
    .line 5942
    .end local v0    # "buttonState":I
    .end local v1    # "compatButtonState":I
    .end local v2    # "mask":I
    .end local v3    # "motion":Landroid/view/MotionEvent;
    :cond_0
    return-void
.end method

.method private applyKeepScreenOnFlag(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2
    .param p1, "params"    # Landroid/view/WindowManager$LayoutParams;

    #@0
    .prologue
    .line 1120
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@2
    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1121
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@8
    or-int/lit16 v0, v0, 0x80

    #@a
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@c
    .line 1116
    :goto_0
    return-void

    #@d
    .line 1123
    :cond_0
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@f
    and-int/lit16 v0, v0, -0x81

    #@11
    .line 1124
    iget v1, p0, Landroid/view/ViewRootImpl;->mClientWindowLayoutFlags:I

    #@13
    and-int/lit16 v1, v1, 0x80

    #@15
    .line 1123
    or-int/2addr v0, v1

    #@16
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@18
    goto :goto_0
.end method

.method private checkForLeavingTouchModeAndConsume(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 5200
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@3
    iget-boolean v1, v1, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    #@5
    if-nez v1, :cond_0

    #@7
    .line 5201
    return v2

    #@8
    .line 5205
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    #@b
    move-result v0

    #@c
    .line 5206
    .local v0, "action":I
    if-eqz v0, :cond_1

    #@e
    const/4 v1, 0x2

    #@f
    if-eq v0, v1, :cond_1

    #@11
    .line 5207
    return v2

    #@12
    .line 5211
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    #@15
    move-result v1

    #@16
    and-int/lit8 v1, v1, 0x4

    #@18
    if-eqz v1, :cond_2

    #@1a
    .line 5212
    return v2

    #@1b
    .line 5220
    :cond_2
    invoke-static {p1}, Landroid/view/ViewRootImpl;->isNavigationKey(Landroid/view/KeyEvent;)Z

    #@1e
    move-result v1

    #@1f
    if-eqz v1, :cond_3

    #@21
    .line 5221
    invoke-virtual {p0, v2}, Landroid/view/ViewRootImpl;->ensureTouchMode(Z)Z

    #@24
    move-result v1

    #@25
    return v1

    #@26
    .line 5227
    :cond_3
    invoke-static {p1}, Landroid/view/ViewRootImpl;->isTypingKey(Landroid/view/KeyEvent;)Z

    #@29
    move-result v1

    #@2a
    if-eqz v1, :cond_4

    #@2c
    .line 5228
    invoke-virtual {p0, v2}, Landroid/view/ViewRootImpl;->ensureTouchMode(Z)Z

    #@2f
    .line 5229
    return v2

    #@30
    .line 5232
    :cond_4
    return v2
.end method

.method private collectViewAttributes()Z
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1129
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@3
    iget-boolean v2, v2, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    #@5
    if-eqz v2, :cond_2

    #@7
    .line 1131
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@9
    iput-boolean v5, v2, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    #@b
    .line 1132
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@d
    iget-boolean v0, v2, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    #@f
    .line 1133
    .local v0, "oldScreenOn":Z
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@11
    iput-boolean v5, v2, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    #@13
    .line 1134
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@15
    iput v5, v2, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    #@17
    .line 1135
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@19
    iput-boolean v5, v2, Landroid/view/View$AttachInfo;->mHasSystemUiListeners:Z

    #@1b
    .line 1136
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@1d
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@1f
    invoke-virtual {v2, v3, v5}, Landroid/view/View;->dispatchCollectViewAttributes(Landroid/view/View$AttachInfo;I)V

    #@22
    .line 1137
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@24
    iget v3, v2, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    #@26
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@28
    iget v4, v4, Landroid/view/View$AttachInfo;->mDisabledSystemUiVisibility:I

    #@2a
    not-int v4, v4

    #@2b
    and-int/2addr v3, v4

    #@2c
    iput v3, v2, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    #@2e
    .line 1138
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@30
    .line 1139
    .local v1, "params":Landroid/view/WindowManager$LayoutParams;
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@32
    iget v3, v2, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    #@34
    invoke-direct {p0, v1}, Landroid/view/ViewRootImpl;->getImpliedSystemUiVisibility(Landroid/view/WindowManager$LayoutParams;)I

    #@37
    move-result v4

    #@38
    or-int/2addr v3, v4

    #@39
    iput v3, v2, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    #@3b
    .line 1140
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@3d
    iget-boolean v2, v2, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    #@3f
    if-ne v2, v0, :cond_0

    #@41
    .line 1141
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@43
    iget v2, v2, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    #@45
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    #@47
    if-eq v2, v3, :cond_1

    #@49
    .line 1143
    :cond_0
    invoke-direct {p0, v1}, Landroid/view/ViewRootImpl;->applyKeepScreenOnFlag(Landroid/view/WindowManager$LayoutParams;)V

    #@4c
    .line 1144
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@4e
    iget v2, v2, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    #@50
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    #@52
    .line 1145
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@54
    iget-boolean v2, v2, Landroid/view/View$AttachInfo;->mHasSystemUiListeners:Z

    #@56
    iput-boolean v2, v1, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    #@58
    .line 1146
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@5a
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@5c
    iget v3, v3, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    #@5e
    invoke-virtual {v2, v3}, Landroid/view/View;->dispatchWindowSystemUiVisiblityChanged(I)V

    #@61
    .line 1147
    const/4 v2, 0x1

    #@62
    return v2

    #@63
    .line 1142
    :cond_1
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@65
    iget-boolean v2, v2, Landroid/view/View$AttachInfo;->mHasSystemUiListeners:Z

    #@67
    iget-boolean v3, v1, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    #@69
    if-ne v2, v3, :cond_0

    #@6b
    .line 1150
    .end local v0    # "oldScreenOn":Z
    .end local v1    # "params":Landroid/view/WindowManager$LayoutParams;
    :cond_2
    return v5
.end method

.method private deliverInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .locals 6
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@0
    .prologue
    .line 5908
    const-string/jumbo v1, "deliverInputEvent"

    #@3
    .line 5909
    iget-object v2, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    #@5
    invoke-virtual {v2}, Landroid/view/InputEvent;->getSequenceNumber()I

    #@8
    move-result v2

    #@9
    .line 5908
    const-wide/16 v4, 0x8

    #@b
    invoke-static {v4, v5, v1, v2}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    #@e
    .line 5910
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    #@10
    if-eqz v1, :cond_0

    #@12
    .line 5911
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    #@14
    iget-object v2, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    #@16
    const/4 v3, 0x0

    #@17
    invoke-virtual {v1, v2, v3}, Landroid/view/InputEventConsistencyVerifier;->onInputEvent(Landroid/view/InputEvent;I)V

    #@1a
    .line 5915
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewRootImpl$QueuedInputEvent;->shouldSendToSynthesizer()Z

    #@1d
    move-result v1

    #@1e
    if-eqz v1, :cond_1

    #@20
    .line 5916
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSyntheticInputStage:Landroid/view/ViewRootImpl$InputStage;

    #@22
    .line 5921
    .local v0, "stage":Landroid/view/ViewRootImpl$InputStage;
    :goto_0
    if-eqz v0, :cond_3

    #@24
    .line 5922
    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl$InputStage;->deliver(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    #@27
    .line 5907
    :goto_1
    return-void

    #@28
    .line 5918
    .end local v0    # "stage":Landroid/view/ViewRootImpl$InputStage;
    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewRootImpl$QueuedInputEvent;->shouldSkipIme()Z

    #@2b
    move-result v1

    #@2c
    if-eqz v1, :cond_2

    #@2e
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mFirstPostImeInputStage:Landroid/view/ViewRootImpl$InputStage;

    #@30
    .restart local v0    # "stage":Landroid/view/ViewRootImpl$InputStage;
    goto :goto_0

    #@31
    .end local v0    # "stage":Landroid/view/ViewRootImpl$InputStage;
    :cond_2
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mFirstInputStage:Landroid/view/ViewRootImpl$InputStage;

    #@33
    .restart local v0    # "stage":Landroid/view/ViewRootImpl$InputStage;
    goto :goto_0

    #@34
    .line 5924
    :cond_3
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->finishInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    #@37
    goto :goto_1
.end method

.method private destroyHardwareRenderer()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 5670
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@4
    iget-object v0, v1, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    #@6
    .line 5672
    .local v0, "hardwareRenderer":Landroid/view/HardwareRenderer;
    if-eqz v0, :cond_1

    #@8
    .line 5673
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 5674
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@e
    invoke-virtual {v0, v1}, Landroid/view/HardwareRenderer;->destroyHardwareResources(Landroid/view/View;)V

    #@11
    .line 5676
    :cond_0
    invoke-virtual {v0}, Landroid/view/HardwareRenderer;->destroy()V

    #@14
    .line 5677
    invoke-virtual {v0, v3}, Landroid/view/HardwareRenderer;->setRequested(Z)V

    #@17
    .line 5679
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@19
    iput-object v2, v1, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    #@1b
    .line 5680
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@1d
    iput-boolean v3, v1, Landroid/view/View$AttachInfo;->mHardwareAccelerated:Z

    #@1f
    .line 5669
    :cond_1
    return-void
.end method

.method private draw(Z)V
    .locals 34
    .param p1, "fullRedrawNeeded"    # Z

    #@0
    .prologue
    .line 2479
    move-object/from16 v0, p0

    #@2
    iget-object v9, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    #@4
    .line 2480
    .local v9, "surface":Landroid/view/Surface;
    invoke-virtual {v9}, Landroid/view/Surface;->isValid()Z

    #@7
    move-result v2

    #@8
    if-nez v2, :cond_0

    #@a
    .line 2481
    return-void

    #@b
    .line 2488
    :cond_0
    sget-boolean v2, Landroid/view/ViewRootImpl;->sFirstDrawComplete:Z

    #@d
    if-nez v2, :cond_2

    #@f
    .line 2489
    sget-object v3, Landroid/view/ViewRootImpl;->sFirstDrawHandlers:Ljava/util/ArrayList;

    #@11
    monitor-enter v3

    #@12
    .line 2490
    const/4 v2, 0x1

    #@13
    :try_start_0
    sput-boolean v2, Landroid/view/ViewRootImpl;->sFirstDrawComplete:Z

    #@15
    .line 2491
    sget-object v2, Landroid/view/ViewRootImpl;->sFirstDrawHandlers:Ljava/util/ArrayList;

    #@17
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@1a
    move-result v20

    #@1b
    .line 2492
    .local v20, "count":I
    const/16 v27, 0x0

    #@1d
    .local v27, "i":I
    :goto_0
    move/from16 v0, v27

    #@1f
    move/from16 v1, v20

    #@21
    if-ge v0, v1, :cond_1

    #@23
    .line 2493
    move-object/from16 v0, p0

    #@25
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@27
    sget-object v2, Landroid/view/ViewRootImpl;->sFirstDrawHandlers:Ljava/util/ArrayList;

    #@29
    move/from16 v0, v27

    #@2b
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2e
    move-result-object v2

    #@2f
    check-cast v2, Ljava/lang/Runnable;

    #@31
    invoke-virtual {v4, v2}, Landroid/view/ViewRootImpl$ViewRootHandler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@34
    .line 2492
    add-int/lit8 v27, v27, 0x1

    #@36
    goto :goto_0

    #@37
    :cond_1
    monitor-exit v3

    #@38
    .line 2498
    .end local v20    # "count":I
    .end local v27    # "i":I
    :cond_2
    const/4 v2, 0x0

    #@39
    const/4 v3, 0x0

    #@3a
    move-object/from16 v0, p0

    #@3c
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewRootImpl;->scrollToRectOrFocus(Landroid/graphics/Rect;Z)Z

    #@3f
    .line 2500
    move-object/from16 v0, p0

    #@41
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@43
    iget-boolean v2, v2, Landroid/view/View$AttachInfo;->mViewScrollChanged:Z

    #@45
    if-eqz v2, :cond_3

    #@47
    .line 2501
    move-object/from16 v0, p0

    #@49
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@4b
    const/4 v3, 0x0

    #@4c
    iput-boolean v3, v2, Landroid/view/View$AttachInfo;->mViewScrollChanged:Z

    #@4e
    .line 2502
    move-object/from16 v0, p0

    #@50
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@52
    iget-object v2, v2, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    #@54
    invoke-virtual {v2}, Landroid/view/ViewTreeObserver;->dispatchOnScrollChanged()V

    #@57
    .line 2505
    :cond_3
    move-object/from16 v0, p0

    #@59
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    #@5b
    if-eqz v2, :cond_8

    #@5d
    move-object/from16 v0, p0

    #@5f
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    #@61
    invoke-virtual {v2}, Landroid/widget/Scroller;->computeScrollOffset()Z

    #@64
    move-result v17

    #@65
    .line 2507
    :goto_1
    if-eqz v17, :cond_9

    #@67
    .line 2508
    move-object/from16 v0, p0

    #@69
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    #@6b
    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    #@6e
    move-result v21

    #@6f
    .line 2512
    .local v21, "curScrollY":I
    :goto_2
    move-object/from16 v0, p0

    #@71
    iget v2, v0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    #@73
    move/from16 v0, v21

    #@75
    if-eq v2, v0, :cond_4

    #@77
    .line 2513
    move/from16 v0, v21

    #@79
    move-object/from16 v1, p0

    #@7b
    iput v0, v1, Landroid/view/ViewRootImpl;->mCurScrollY:I

    #@7d
    .line 2514
    const/16 p1, 0x1

    #@7f
    .line 2515
    .local p1, "fullRedrawNeeded":Z
    move-object/from16 v0, p0

    #@81
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@83
    instance-of v2, v2, Lcom/android/internal/view/RootViewSurfaceTaker;

    #@85
    if-eqz v2, :cond_4

    #@87
    .line 2516
    move-object/from16 v0, p0

    #@89
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@8b
    check-cast v2, Lcom/android/internal/view/RootViewSurfaceTaker;

    #@8d
    move-object/from16 v0, p0

    #@8f
    iget v3, v0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    #@91
    invoke-interface {v2, v3}, Lcom/android/internal/view/RootViewSurfaceTaker;->onRootViewScrollYChanged(I)V

    #@94
    .line 2520
    .end local p1    # "fullRedrawNeeded":Z
    :cond_4
    move-object/from16 v0, p0

    #@96
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@98
    iget v0, v2, Landroid/view/View$AttachInfo;->mApplicationScale:F

    #@9a
    move/from16 v18, v0

    #@9c
    .line 2521
    .local v18, "appScale":F
    move-object/from16 v0, p0

    #@9e
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@a0
    iget-boolean v13, v2, Landroid/view/View$AttachInfo;->mScalingRequired:Z

    #@a2
    .line 2523
    .local v13, "scalingRequired":Z
    const/16 v30, 0x0

    #@a4
    .line 2524
    .local v30, "resizeAlpha":I
    move-object/from16 v0, p0

    #@a6
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    #@a8
    if-eqz v2, :cond_5

    #@aa
    .line 2525
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@ad
    move-result-wide v2

    #@ae
    move-object/from16 v0, p0

    #@b0
    iget-wide v4, v0, Landroid/view/ViewRootImpl;->mResizeBufferStartTime:J

    #@b2
    sub-long v22, v2, v4

    #@b4
    .line 2526
    .local v22, "deltaTime":J
    move-object/from16 v0, p0

    #@b6
    iget v2, v0, Landroid/view/ViewRootImpl;->mResizeBufferDuration:I

    #@b8
    int-to-long v2, v2

    #@b9
    cmp-long v2, v22, v2

    #@bb
    if-gez v2, :cond_a

    #@bd
    .line 2527
    move-wide/from16 v0, v22

    #@bf
    long-to-float v2, v0

    #@c0
    move-object/from16 v0, p0

    #@c2
    iget v3, v0, Landroid/view/ViewRootImpl;->mResizeBufferDuration:I

    #@c4
    int-to-float v3, v3

    #@c5
    div-float v16, v2, v3

    #@c7
    .line 2528
    .local v16, "amt":F
    sget-object v2, Landroid/view/ViewRootImpl;->mResizeInterpolator:Landroid/view/animation/Interpolator;

    #@c9
    move/from16 v0, v16

    #@cb
    invoke-interface {v2, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    #@ce
    move-result v16

    #@cf
    .line 2529
    const/16 v17, 0x1

    #@d1
    .line 2530
    .local v17, "animating":Z
    const/high16 v2, 0x437f0000    # 255.0f

    #@d3
    mul-float v2, v2, v16

    #@d5
    float-to-int v2, v2

    #@d6
    rsub-int v0, v2, 0xff

    #@d8
    move/from16 v30, v0

    #@da
    .line 2536
    .end local v16    # "amt":F
    .end local v17    # "animating":Z
    .end local v22    # "deltaTime":J
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    #@dc
    iget-object v14, v0, Landroid/view/ViewRootImpl;->mDirty:Landroid/graphics/Rect;

    #@de
    .line 2537
    .local v14, "dirty":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    #@e0
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@e2
    if-eqz v2, :cond_b

    #@e4
    .line 2539
    invoke-virtual {v14}, Landroid/graphics/Rect;->setEmpty()V

    #@e7
    .line 2540
    if-eqz v17, :cond_7

    #@e9
    .line 2541
    move-object/from16 v0, p0

    #@eb
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    #@ed
    if-eqz v2, :cond_6

    #@ef
    .line 2542
    move-object/from16 v0, p0

    #@f1
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    #@f3
    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    #@f6
    .line 2544
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->disposeResizeBuffer()V

    #@f9
    .line 2546
    :cond_7
    return-void

    #@fa
    .line 2489
    .end local v13    # "scalingRequired":Z
    .end local v14    # "dirty":Landroid/graphics/Rect;
    .end local v18    # "appScale":F
    .end local v21    # "curScrollY":I
    .end local v30    # "resizeAlpha":I
    .local p1, "fullRedrawNeeded":Z
    :catchall_0
    move-exception v2

    #@fb
    monitor-exit v3

    #@fc
    throw v2

    #@fd
    .line 2505
    :cond_8
    const/16 v17, 0x0

    #@ff
    .restart local v17    # "animating":Z
    goto/16 :goto_1

    #@101
    .line 2510
    .end local v17    # "animating":Z
    :cond_9
    move-object/from16 v0, p0

    #@103
    iget v0, v0, Landroid/view/ViewRootImpl;->mScrollY:I

    #@105
    move/from16 v21, v0

    #@107
    .restart local v21    # "curScrollY":I
    goto/16 :goto_2

    #@109
    .line 2532
    .end local p1    # "fullRedrawNeeded":Z
    .restart local v13    # "scalingRequired":Z
    .restart local v18    # "appScale":F
    .restart local v22    # "deltaTime":J
    .restart local v30    # "resizeAlpha":I
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->disposeResizeBuffer()V

    #@10c
    goto :goto_3

    #@10d
    .line 2549
    .end local v22    # "deltaTime":J
    .restart local v14    # "dirty":Landroid/graphics/Rect;
    :cond_b
    if-eqz p1, :cond_c

    #@10f
    .line 2550
    move-object/from16 v0, p0

    #@111
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@113
    const/4 v3, 0x1

    #@114
    iput-boolean v3, v2, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    #@116
    .line 2551
    move-object/from16 v0, p0

    #@118
    iget v2, v0, Landroid/view/ViewRootImpl;->mWidth:I

    #@11a
    int-to-float v2, v2

    #@11b
    mul-float v2, v2, v18

    #@11d
    const/high16 v3, 0x3f000000    # 0.5f

    #@11f
    add-float/2addr v2, v3

    #@120
    float-to-int v2, v2

    #@121
    move-object/from16 v0, p0

    #@123
    iget v3, v0, Landroid/view/ViewRootImpl;->mHeight:I

    #@125
    int-to-float v3, v3

    #@126
    mul-float v3, v3, v18

    #@128
    const/high16 v4, 0x3f000000    # 0.5f

    #@12a
    add-float/2addr v3, v4

    #@12b
    float-to-int v3, v3

    #@12c
    const/4 v4, 0x0

    #@12d
    const/4 v5, 0x0

    #@12e
    invoke-virtual {v14, v4, v5, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    #@131
    .line 2563
    :cond_c
    move-object/from16 v0, p0

    #@133
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@135
    iget-object v2, v2, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    #@137
    invoke-virtual {v2}, Landroid/view/ViewTreeObserver;->dispatchOnDraw()V

    #@13a
    .line 2565
    const/4 v11, 0x0

    #@13b
    .line 2566
    .local v11, "xOffset":I
    move/from16 v12, v21

    #@13d
    .line 2567
    .local v12, "yOffset":I
    move-object/from16 v0, p0

    #@13f
    iget-object v0, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@141
    move-object/from16 v29, v0

    #@143
    .line 2568
    .local v29, "params":Landroid/view/WindowManager$LayoutParams;
    if-eqz v29, :cond_16

    #@145
    move-object/from16 v0, v29

    #@147
    iget-object v7, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@149
    .line 2569
    :goto_4
    if-eqz v7, :cond_d

    #@14b
    .line 2570
    iget v2, v7, Landroid/graphics/Rect;->left:I

    #@14d
    rsub-int/lit8 v11, v2, 0x0

    #@14f
    .line 2571
    iget v2, v7, Landroid/graphics/Rect;->top:I

    #@151
    sub-int/2addr v12, v2

    #@152
    .line 2574
    iget v2, v7, Landroid/graphics/Rect;->left:I

    #@154
    iget v3, v7, Landroid/graphics/Rect;->right:I

    #@156
    invoke-virtual {v14, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    #@159
    .line 2577
    :cond_d
    const/4 v15, 0x0

    #@15a
    .line 2578
    .local v15, "accessibilityFocusDirty":Z
    move-object/from16 v0, p0

    #@15c
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@15e
    iget-object v0, v2, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    #@160
    move-object/from16 v24, v0

    #@162
    .line 2579
    .local v24, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v24, :cond_f

    #@164
    .line 2580
    move-object/from16 v0, p0

    #@166
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@168
    iget-object v0, v2, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    #@16a
    move-object/from16 v19, v0

    #@16c
    .line 2581
    .local v19, "bounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    #@16e
    move-object/from16 v1, v19

    #@170
    invoke-direct {v0, v1}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedRect(Landroid/graphics/Rect;)Z

    #@173
    move-result v26

    #@174
    .line 2582
    .local v26, "hasFocus":Z
    if-nez v26, :cond_e

    #@176
    .line 2583
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->setEmpty()V

    #@179
    .line 2585
    :cond_e
    invoke-virtual/range {v24 .. v24}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    #@17c
    move-result-object v2

    #@17d
    move-object/from16 v0, v19

    #@17f
    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@182
    move-result v2

    #@183
    if-nez v2, :cond_f

    #@185
    .line 2586
    const/4 v15, 0x1

    #@186
    .line 2590
    .end local v19    # "bounds":Landroid/graphics/Rect;
    .end local v26    # "hasFocus":Z
    :cond_f
    move-object/from16 v0, p0

    #@188
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@18a
    .line 2591
    move-object/from16 v0, p0

    #@18c
    iget-object v3, v0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    #@18e
    invoke-virtual {v3}, Landroid/view/Choreographer;->getFrameTimeNanos()J

    #@191
    move-result-wide v4

    #@192
    const-wide/32 v32, 0xf4240

    #@195
    div-long v4, v4, v32

    #@197
    .line 2590
    iput-wide v4, v2, Landroid/view/View$AttachInfo;->mDrawingTime:J

    #@199
    .line 2593
    invoke-virtual {v14}, Landroid/graphics/Rect;->isEmpty()Z

    #@19c
    move-result v2

    #@19d
    if-eqz v2, :cond_10

    #@19f
    move-object/from16 v0, p0

    #@1a1
    iget-boolean v2, v0, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    #@1a3
    if-nez v2, :cond_10

    #@1a5
    if-eqz v15, :cond_14

    #@1a7
    .line 2594
    :cond_10
    move-object/from16 v0, p0

    #@1a9
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@1ab
    iget-object v2, v2, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    #@1ad
    if-eqz v2, :cond_17

    #@1af
    move-object/from16 v0, p0

    #@1b1
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@1b3
    iget-object v2, v2, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    #@1b5
    invoke-virtual {v2}, Landroid/view/HardwareRenderer;->isEnabled()Z

    #@1b8
    move-result v2

    #@1b9
    if-eqz v2, :cond_17

    #@1bb
    .line 2596
    move/from16 v28, v15

    #@1bd
    .line 2599
    .local v28, "invalidateRoot":Z
    const/4 v2, 0x0

    #@1be
    move-object/from16 v0, p0

    #@1c0
    iput-boolean v2, v0, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    #@1c2
    .line 2601
    move-object/from16 v0, p0

    #@1c4
    iget v2, v0, Landroid/view/ViewRootImpl;->mHardwareYOffset:I

    #@1c6
    if-ne v2, v12, :cond_11

    #@1c8
    move-object/from16 v0, p0

    #@1ca
    iget v2, v0, Landroid/view/ViewRootImpl;->mHardwareXOffset:I

    #@1cc
    if-eq v2, v11, :cond_12

    #@1ce
    .line 2602
    :cond_11
    move-object/from16 v0, p0

    #@1d0
    iput v12, v0, Landroid/view/ViewRootImpl;->mHardwareYOffset:I

    #@1d2
    .line 2603
    move-object/from16 v0, p0

    #@1d4
    iput v11, v0, Landroid/view/ViewRootImpl;->mHardwareXOffset:I

    #@1d6
    .line 2604
    const/16 v28, 0x1

    #@1d8
    .line 2606
    .end local v28    # "invalidateRoot":Z
    :cond_12
    move/from16 v0, v30

    #@1da
    move-object/from16 v1, p0

    #@1dc
    iput v0, v1, Landroid/view/ViewRootImpl;->mResizeAlpha:I

    #@1de
    .line 2608
    if-eqz v28, :cond_13

    #@1e0
    .line 2609
    move-object/from16 v0, p0

    #@1e2
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@1e4
    iget-object v2, v2, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    #@1e6
    invoke-virtual {v2}, Landroid/view/HardwareRenderer;->invalidateRoot()V

    #@1e9
    .line 2612
    :cond_13
    invoke-virtual {v14}, Landroid/graphics/Rect;->setEmpty()V

    #@1ec
    .line 2614
    const/4 v2, 0x0

    #@1ed
    move-object/from16 v0, p0

    #@1ef
    iput-boolean v2, v0, Landroid/view/ViewRootImpl;->mBlockResizeBuffer:Z

    #@1f1
    .line 2615
    move-object/from16 v0, p0

    #@1f3
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@1f5
    iget-object v2, v2, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    #@1f7
    move-object/from16 v0, p0

    #@1f9
    iget-object v3, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@1fb
    move-object/from16 v0, p0

    #@1fd
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@1ff
    move-object/from16 v0, p0

    #@201
    invoke-virtual {v2, v3, v4, v0}, Landroid/view/HardwareRenderer;->draw(Landroid/view/View;Landroid/view/View$AttachInfo;Landroid/view/HardwareRenderer$HardwareDrawCallbacks;)V

    #@204
    .line 2648
    :cond_14
    if-eqz v17, :cond_15

    #@206
    .line 2649
    const/4 v2, 0x1

    #@207
    move-object/from16 v0, p0

    #@209
    iput-boolean v2, v0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    #@20b
    .line 2650
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    #@20e
    .line 2478
    :cond_15
    return-void

    #@20f
    .line 2568
    .end local v15    # "accessibilityFocusDirty":Z
    .end local v24    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_16
    const/4 v7, 0x0

    #@210
    .local v7, "surfaceInsets":Landroid/graphics/Rect;
    goto/16 :goto_4

    #@212
    .line 2625
    .end local v7    # "surfaceInsets":Landroid/graphics/Rect;
    .restart local v15    # "accessibilityFocusDirty":Z
    .restart local v24    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_17
    move-object/from16 v0, p0

    #@214
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@216
    iget-object v2, v2, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    #@218
    if-eqz v2, :cond_18

    #@21a
    .line 2626
    move-object/from16 v0, p0

    #@21c
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@21e
    iget-object v2, v2, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    #@220
    invoke-virtual {v2}, Landroid/view/HardwareRenderer;->isEnabled()Z

    #@223
    move-result v2

    #@224
    if-eqz v2, :cond_19

    #@226
    .line 2642
    :cond_18
    move-object/from16 v0, p0

    #@228
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@22a
    move-object/from16 v8, p0

    #@22c
    invoke-direct/range {v8 .. v14}, Landroid/view/ViewRootImpl;->drawSoftware(Landroid/view/Surface;Landroid/view/View$AttachInfo;IIZLandroid/graphics/Rect;)Z

    #@22f
    move-result v2

    #@230
    if-nez v2, :cond_14

    #@232
    .line 2643
    return-void

    #@233
    .line 2627
    :cond_19
    move-object/from16 v0, p0

    #@235
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@237
    iget-object v2, v2, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    #@239
    invoke-virtual {v2}, Landroid/view/HardwareRenderer;->isRequested()Z

    #@23c
    move-result v2

    #@23d
    .line 2625
    if-eqz v2, :cond_18

    #@23f
    .line 2630
    :try_start_1
    move-object/from16 v0, p0

    #@241
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@243
    iget-object v2, v2, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    #@245
    .line 2631
    move-object/from16 v0, p0

    #@247
    iget v3, v0, Landroid/view/ViewRootImpl;->mWidth:I

    #@249
    move-object/from16 v0, p0

    #@24b
    iget v4, v0, Landroid/view/ViewRootImpl;->mHeight:I

    #@24d
    move-object/from16 v0, p0

    #@24f
    iget-object v5, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@251
    move-object/from16 v0, p0

    #@253
    iget-object v6, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    #@255
    .line 2630
    invoke-virtual/range {v2 .. v7}, Landroid/view/HardwareRenderer;->initializeIfNeeded(IILandroid/view/View$AttachInfo;Landroid/view/Surface;Landroid/graphics/Rect;)Z
    :try_end_1
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1 .. :try_end_1} :catch_0

    #@258
    .line 2637
    const/4 v2, 0x1

    #@259
    move-object/from16 v0, p0

    #@25b
    iput-boolean v2, v0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    #@25d
    .line 2638
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    #@260
    .line 2639
    return-void

    #@261
    .line 2632
    :catch_0
    move-exception v25

    #@262
    .line 2633
    .local v25, "e":Landroid/view/Surface$OutOfResourcesException;
    move-object/from16 v0, p0

    #@264
    move-object/from16 v1, v25

    #@266
    invoke-direct {v0, v1}, Landroid/view/ViewRootImpl;->handleOutOfResourcesException(Landroid/view/Surface$OutOfResourcesException;)V

    #@269
    .line 2634
    return-void
.end method

.method private drawAccessibilityFocusedDrawableIfNeeded(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2765
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@3
    iget-object v0, v2, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    #@5
    .line 2766
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-direct {p0, v0}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedRect(Landroid/graphics/Rect;)Z

    #@8
    move-result v2

    #@9
    if-eqz v2, :cond_1

    #@b
    .line 2767
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedDrawable()Landroid/graphics/drawable/Drawable;

    #@e
    move-result-object v1

    #@f
    .line 2768
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    #@11
    .line 2769
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    #@14
    .line 2770
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@17
    .line 2764
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-void

    #@18
    .line 2772
    :cond_1
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@1a
    iget-object v2, v2, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    #@1c
    if-eqz v2, :cond_0

    #@1e
    .line 2773
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@20
    iget-object v2, v2, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    #@22
    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@25
    goto :goto_0
.end method

.method private drawSoftware(Landroid/view/Surface;Landroid/view/View$AttachInfo;IIZLandroid/graphics/Rect;)Z
    .locals 9
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "attachInfo"    # Landroid/view/View$AttachInfo;
    .param p3, "xoff"    # I
    .param p4, "yoff"    # I
    .param p5, "scalingRequired"    # Z
    .param p6, "dirty"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 2663
    :try_start_0
    iget v4, p6, Landroid/graphics/Rect;->left:I

    #@2
    .line 2664
    .local v4, "left":I
    iget v6, p6, Landroid/graphics/Rect;->top:I

    #@4
    .line 2665
    .local v6, "top":I
    iget v5, p6, Landroid/graphics/Rect;->right:I

    #@6
    .line 2666
    .local v5, "right":I
    iget v0, p6, Landroid/graphics/Rect;->bottom:I

    #@8
    .line 2668
    .local v0, "bottom":I
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    #@a
    invoke-virtual {v7, p6}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    #@d
    move-result-object v1

    #@e
    .line 2672
    .local v1, "canvas":Landroid/graphics/Canvas;
    iget v7, p6, Landroid/graphics/Rect;->left:I

    #@10
    if-ne v4, v7, :cond_0

    #@12
    iget v7, p6, Landroid/graphics/Rect;->top:I

    #@14
    if-eq v6, v7, :cond_6

    #@16
    .line 2674
    :cond_0
    :goto_0
    const/4 v7, 0x1

    #@17
    iput-boolean v7, p2, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    #@19
    .line 2678
    :cond_1
    iget v7, p0, Landroid/view/ViewRootImpl;->mDensity:I

    #@1b
    invoke-virtual {v1, v7}, Landroid/graphics/Canvas;->setDensity(I)V
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@1e
    .line 2706
    :try_start_1
    invoke-virtual {v1}, Landroid/graphics/Canvas;->isOpaque()Z

    #@21
    move-result v7

    #@22
    if-eqz v7, :cond_2

    #@24
    if-eqz p4, :cond_7

    #@26
    .line 2707
    :cond_2
    :goto_1
    sget-object v7, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    #@28
    const/4 v8, 0x0

    #@29
    invoke-virtual {v1, v8, v7}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    #@2c
    .line 2710
    :cond_3
    invoke-virtual {p6}, Landroid/graphics/Rect;->setEmpty()V

    #@2f
    .line 2711
    const/4 v7, 0x0

    #@30
    iput-boolean v7, p0, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    #@32
    .line 2712
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@34
    iget v8, v7, Landroid/view/View;->mPrivateFlags:I

    #@36
    or-int/lit8 v8, v8, 0x20

    #@38
    iput v8, v7, Landroid/view/View;->mPrivateFlags:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@3a
    .line 2721
    neg-int v7, p3

    #@3b
    int-to-float v7, v7

    #@3c
    neg-int v8, p4

    #@3d
    int-to-float v8, v8

    #@3e
    :try_start_2
    invoke-virtual {v1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    #@41
    .line 2722
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@43
    if-eqz v7, :cond_4

    #@45
    .line 2723
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@47
    invoke-virtual {v7, v1}, Landroid/content/res/CompatibilityInfo$Translator;->translateCanvas(Landroid/graphics/Canvas;)V

    #@4a
    .line 2725
    :cond_4
    if-eqz p5, :cond_8

    #@4c
    iget v7, p0, Landroid/view/ViewRootImpl;->mNoncompatDensity:I

    #@4e
    :goto_2
    invoke-virtual {v1, v7}, Landroid/graphics/Canvas;->setScreenDensity(I)V

    #@51
    .line 2726
    const/4 v7, 0x0

    #@52
    iput-boolean v7, p2, Landroid/view/View$AttachInfo;->mSetIgnoreDirtyState:Z

    #@54
    .line 2728
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@56
    invoke-virtual {v7, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    #@59
    .line 2730
    invoke-direct {p0, v1}, Landroid/view/ViewRootImpl;->drawAccessibilityFocusedDrawableIfNeeded(Landroid/graphics/Canvas;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@5c
    .line 2732
    :try_start_3
    iget-boolean v7, p2, Landroid/view/View$AttachInfo;->mSetIgnoreDirtyState:Z

    #@5e
    if-nez v7, :cond_5

    #@60
    .line 2734
    const/4 v7, 0x0

    #@61
    iput-boolean v7, p2, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@63
    .line 2739
    :cond_5
    :try_start_4
    invoke-virtual {p1, v1}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2

    #@66
    .line 2751
    const/4 v7, 0x1

    #@67
    return v7

    #@68
    .line 2672
    :cond_6
    :try_start_5
    iget v7, p6, Landroid/graphics/Rect;->right:I

    #@6a
    if-ne v5, v7, :cond_0

    #@6c
    .line 2673
    iget v7, p6, Landroid/graphics/Rect;->bottom:I
    :try_end_5
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_0

    #@6e
    if-eq v0, v7, :cond_1

    #@70
    goto :goto_0

    #@71
    .line 2682
    .end local v0    # "bottom":I
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v4    # "left":I
    .end local v5    # "right":I
    .end local v6    # "top":I
    :catch_0
    move-exception v3

    #@72
    .line 2683
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v7, "ViewRootImpl"

    #@75
    const-string/jumbo v8, "Could not lock surface"

    #@78
    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@7b
    .line 2687
    const/4 v7, 0x1

    #@7c
    iput-boolean v7, p0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    #@7e
    .line 2688
    const/4 v7, 0x0

    #@7f
    return v7

    #@80
    .line 2679
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v2

    #@81
    .line 2680
    .local v2, "e":Landroid/view/Surface$OutOfResourcesException;
    invoke-direct {p0, v2}, Landroid/view/ViewRootImpl;->handleOutOfResourcesException(Landroid/view/Surface$OutOfResourcesException;)V

    #@84
    .line 2681
    const/4 v7, 0x0

    #@85
    return v7

    #@86
    .line 2706
    .end local v2    # "e":Landroid/view/Surface$OutOfResourcesException;
    .restart local v0    # "bottom":I
    .restart local v1    # "canvas":Landroid/graphics/Canvas;
    .restart local v4    # "left":I
    .restart local v5    # "right":I
    .restart local v6    # "top":I
    :cond_7
    if-eqz p3, :cond_3

    #@88
    goto :goto_1

    #@89
    .line 2725
    :cond_8
    const/4 v7, 0x0

    #@8a
    goto :goto_2

    #@8b
    .line 2731
    :catchall_0
    move-exception v7

    #@8c
    .line 2732
    :try_start_6
    iget-boolean v8, p2, Landroid/view/View$AttachInfo;->mSetIgnoreDirtyState:Z

    #@8e
    if-nez v8, :cond_9

    #@90
    .line 2734
    const/4 v8, 0x0

    #@91
    iput-boolean v8, p2, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    #@93
    .line 2731
    :cond_9
    throw v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@94
    .line 2737
    :catchall_1
    move-exception v7

    #@95
    .line 2739
    :try_start_7
    invoke-virtual {p1, v1}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_3

    #@98
    .line 2737
    throw v7

    #@99
    .line 2740
    :catch_2
    move-exception v3

    #@9a
    .line 2741
    .restart local v3    # "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v7, "ViewRootImpl"

    #@9d
    const-string/jumbo v8, "Could not unlock surface"

    #@a0
    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@a3
    .line 2742
    const/4 v7, 0x1

    #@a4
    iput-boolean v7, p0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    #@a6
    .line 2744
    const/4 v7, 0x0

    #@a7
    return v7

    #@a8
    .line 2740
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v3

    #@a9
    .line 2741
    .restart local v3    # "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v7, "ViewRootImpl"

    #@ac
    const-string/jumbo v8, "Could not unlock surface"

    #@af
    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@b2
    .line 2742
    const/4 v7, 0x1

    #@b3
    iput-boolean v7, p0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    #@b5
    .line 2744
    const/4 v7, 0x0

    #@b6
    return v7
.end method

.method private dumpViewHierarchy(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V
    .locals 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 5531
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3
    .line 5532
    if-nez p3, :cond_0

    #@5
    .line 5533
    const-string/jumbo v3, "null"

    #@8
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@b
    .line 5534
    return-void

    #@c
    .line 5536
    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->toString()Ljava/lang/String;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@13
    .line 5537
    instance-of v3, p3, Landroid/view/ViewGroup;

    #@15
    if-nez v3, :cond_1

    #@17
    .line 5538
    return-void

    #@18
    :cond_1
    move-object v1, p3

    #@19
    .line 5540
    check-cast v1, Landroid/view/ViewGroup;

    #@1b
    .line 5541
    .local v1, "grp":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    #@1e
    move-result v0

    #@1f
    .line 5542
    .local v0, "N":I
    if-gtz v0, :cond_2

    #@21
    .line 5543
    return-void

    #@22
    .line 5545
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v3

    #@2b
    const-string/jumbo v4, "  "

    #@2e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v3

    #@32
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object p1

    #@36
    .line 5546
    const/4 v2, 0x0

    #@37
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    #@39
    .line 5547
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@3c
    move-result-object v3

    #@3d
    invoke-direct {p0, p1, p2, v3}, Landroid/view/ViewRootImpl;->dumpViewHierarchy(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V

    #@40
    .line 5546
    add-int/lit8 v2, v2, 0x1

    #@42
    goto :goto_0

    #@43
    .line 5530
    :cond_3
    return-void
.end method

.method private enableHardwareAcceleration(Landroid/view/WindowManager$LayoutParams;)V
    .locals 9
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 711
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@4
    iput-boolean v7, v6, Landroid/view/View$AttachInfo;->mHardwareAccelerated:Z

    #@6
    .line 712
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@8
    iput-boolean v7, v6, Landroid/view/View$AttachInfo;->mHardwareAccelerationRequested:Z

    #@a
    .line 715
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@c
    if-eqz v6, :cond_0

    #@e
    return-void

    #@f
    .line 719
    :cond_0
    iget v6, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@11
    const/high16 v7, 0x1000000

    #@13
    and-int/2addr v6, v7

    #@14
    if-eqz v6, :cond_1

    #@16
    const/4 v2, 0x1

    #@17
    .line 721
    .local v2, "hardwareAccelerated":Z
    :goto_0
    if-eqz v2, :cond_3

    #@19
    .line 722
    invoke-static {}, Landroid/view/HardwareRenderer;->isAvailable()Z

    #@1c
    move-result v6

    #@1d
    if-nez v6, :cond_2

    #@1f
    .line 723
    return-void

    #@20
    .line 719
    .end local v2    # "hardwareAccelerated":Z
    :cond_1
    const/4 v2, 0x0

    #@21
    .restart local v2    # "hardwareAccelerated":Z
    goto :goto_0

    #@22
    .line 735
    :cond_2
    iget v6, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@24
    and-int/lit8 v6, v6, 0x1

    #@26
    if-eqz v6, :cond_4

    #@28
    const/4 v0, 0x1

    #@29
    .line 737
    .local v0, "fakeHwAccelerated":Z
    :goto_1
    iget v6, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@2b
    and-int/lit8 v6, v6, 0x2

    #@2d
    if-eqz v6, :cond_5

    #@2f
    const/4 v1, 0x1

    #@30
    .line 740
    .local v1, "forceHwAccelerated":Z
    :goto_2
    if-eqz v0, :cond_6

    #@32
    .line 744
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@34
    iput-boolean v8, v6, Landroid/view/View$AttachInfo;->mHardwareAccelerationRequested:Z

    #@36
    .line 710
    .end local v0    # "fakeHwAccelerated":Z
    .end local v1    # "forceHwAccelerated":Z
    :cond_3
    :goto_3
    return-void

    #@37
    .line 735
    :cond_4
    const/4 v0, 0x0

    #@38
    .restart local v0    # "fakeHwAccelerated":Z
    goto :goto_1

    #@39
    .line 737
    :cond_5
    const/4 v1, 0x0

    #@3a
    .restart local v1    # "forceHwAccelerated":Z
    goto :goto_2

    #@3b
    .line 745
    :cond_6
    sget-boolean v6, Landroid/view/HardwareRenderer;->sRendererDisabled:Z

    #@3d
    if-eqz v6, :cond_7

    #@3f
    .line 746
    sget-boolean v6, Landroid/view/HardwareRenderer;->sSystemRendererDisabled:Z

    #@41
    if-eqz v6, :cond_3

    #@43
    .line 745
    if-eqz v1, :cond_3

    #@45
    .line 747
    :cond_7
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@47
    iget-object v6, v6, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    #@49
    if-eqz v6, :cond_8

    #@4b
    .line 748
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@4d
    iget-object v6, v6, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    #@4f
    invoke-virtual {v6}, Landroid/view/HardwareRenderer;->destroy()V

    #@52
    .line 751
    :cond_8
    iget-object v4, p1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@54
    .line 752
    .local v4, "insets":Landroid/graphics/Rect;
    iget v6, v4, Landroid/graphics/Rect;->left:I

    #@56
    if-nez v6, :cond_9

    #@58
    iget v6, v4, Landroid/graphics/Rect;->right:I

    #@5a
    if-eqz v6, :cond_a

    #@5c
    :cond_9
    const/4 v3, 0x1

    #@5d
    .line 754
    .local v3, "hasSurfaceInsets":Z
    :goto_4
    iget v6, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    #@5f
    const/4 v7, -0x1

    #@60
    if-ne v6, v7, :cond_c

    #@62
    move v5, v3

    #@63
    .line 755
    :goto_5
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@65
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    #@67
    invoke-static {v7, v5}, Landroid/view/HardwareRenderer;->create(Landroid/content/Context;Z)Landroid/view/HardwareRenderer;

    #@6a
    move-result-object v7

    #@6b
    iput-object v7, v6, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    #@6d
    .line 756
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@6f
    iget-object v6, v6, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    #@71
    if-eqz v6, :cond_3

    #@73
    .line 757
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@75
    iget-object v6, v6, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    #@77
    invoke-virtual {p1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    #@7a
    move-result-object v7

    #@7b
    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@7e
    move-result-object v7

    #@7f
    invoke-virtual {v6, v7}, Landroid/view/HardwareRenderer;->setName(Ljava/lang/String;)V

    #@82
    .line 758
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@84
    .line 759
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@86
    iput-boolean v8, v7, Landroid/view/View$AttachInfo;->mHardwareAccelerationRequested:Z

    #@88
    .line 758
    iput-boolean v8, v6, Landroid/view/View$AttachInfo;->mHardwareAccelerated:Z

    #@8a
    goto :goto_3

    #@8b
    .line 753
    .end local v3    # "hasSurfaceInsets":Z
    :cond_a
    iget v6, v4, Landroid/graphics/Rect;->top:I

    #@8d
    if-nez v6, :cond_9

    #@8f
    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    #@91
    if-eqz v6, :cond_b

    #@93
    const/4 v3, 0x1

    #@94
    .restart local v3    # "hasSurfaceInsets":Z
    goto :goto_4

    #@95
    .end local v3    # "hasSurfaceInsets":Z
    :cond_b
    const/4 v3, 0x0

    #@96
    .restart local v3    # "hasSurfaceInsets":Z
    goto :goto_4

    #@97
    .line 754
    :cond_c
    const/4 v5, 0x1

    #@98
    .local v5, "translucent":Z
    goto :goto_5
.end method

.method private ensureTouchModeLocally(Z)Z
    .locals 1
    .param p1, "inTouchMode"    # Z

    #@0
    .prologue
    .line 3530
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@2
    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    #@4
    if-ne v0, p1, :cond_0

    #@6
    const/4 v0, 0x0

    #@7
    return v0

    #@8
    .line 3532
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@a
    iput-boolean p1, v0, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    #@c
    .line 3533
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@e
    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    #@10
    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver;->dispatchOnTouchModeChanged(Z)V

    #@13
    .line 3535
    if-eqz p1, :cond_1

    #@15
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->enterTouchMode()Z

    #@18
    move-result v0

    #@19
    :goto_0
    return v0

    #@1a
    :cond_1
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->leaveTouchMode()Z

    #@1d
    move-result v0

    #@1e
    goto :goto_0
.end method

.method private enterTouchMode()Z
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    const/4 v3, 0x0

    #@3
    .line 3539
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@5
    if-eqz v2, :cond_0

    #@7
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@9
    invoke-virtual {v2}, Landroid/view/View;->hasFocus()Z

    #@c
    move-result v2

    #@d
    if-eqz v2, :cond_0

    #@f
    .line 3543
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@11
    invoke-virtual {v2}, Landroid/view/View;->findFocus()Landroid/view/View;

    #@14
    move-result-object v1

    #@15
    .line 3544
    .local v1, "focused":Landroid/view/View;
    if-eqz v1, :cond_0

    #@17
    invoke-virtual {v1}, Landroid/view/View;->isFocusableInTouchMode()Z

    #@1a
    move-result v2

    #@1b
    if-eqz v2, :cond_1

    #@1d
    .line 3559
    .end local v1    # "focused":Landroid/view/View;
    :cond_0
    return v4

    #@1e
    .line 3545
    .restart local v1    # "focused":Landroid/view/View;
    :cond_1
    invoke-static {v1}, Landroid/view/ViewRootImpl;->findAncestorToTakeFocusInTouchMode(Landroid/view/View;)Landroid/view/ViewGroup;

    #@21
    move-result-object v0

    #@22
    .line 3546
    .local v0, "ancestorToTakeFocus":Landroid/view/ViewGroup;
    if-eqz v0, :cond_2

    #@24
    .line 3550
    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestFocus()Z

    #@27
    move-result v2

    #@28
    return v2

    #@29
    .line 3554
    :cond_2
    invoke-virtual {v1, v3, v5, v4}, Landroid/view/View;->clearFocusInternal(Landroid/view/View;ZZ)V

    #@2c
    .line 3555
    return v5
.end method

.method private static findAncestorToTakeFocusInTouchMode(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 5
    .param p0, "focused"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 3569
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@4
    move-result-object v0

    #@5
    .line 3570
    .local v0, "parent":Landroid/view/ViewParent;
    :goto_0
    instance-of v2, v0, Landroid/view/ViewGroup;

    #@7
    if-eqz v2, :cond_2

    #@9
    move-object v1, v0

    #@a
    .line 3571
    check-cast v1, Landroid/view/ViewGroup;

    #@c
    .line 3572
    .local v1, "vgParent":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    #@f
    move-result v2

    #@10
    const/high16 v3, 0x40000

    #@12
    if-ne v2, v3, :cond_0

    #@14
    .line 3573
    invoke-virtual {v1}, Landroid/view/ViewGroup;->isFocusableInTouchMode()Z

    #@17
    move-result v2

    #@18
    .line 3572
    if-eqz v2, :cond_0

    #@1a
    .line 3574
    return-object v1

    #@1b
    .line 3576
    :cond_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->isRootNamespace()Z

    #@1e
    move-result v2

    #@1f
    if-eqz v2, :cond_1

    #@21
    .line 3577
    return-object v4

    #@22
    .line 3579
    :cond_1
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    #@25
    move-result-object v0

    #@26
    goto :goto_0

    #@27
    .line 3582
    .end local v1    # "vgParent":Landroid/view/ViewGroup;
    :cond_2
    return-object v4
.end method

.method private finishInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .locals 6
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@0
    .prologue
    .line 5929
    const-string/jumbo v1, "deliverInputEvent"

    #@3
    .line 5930
    iget-object v2, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    #@5
    invoke-virtual {v2}, Landroid/view/InputEvent;->getSequenceNumber()I

    #@8
    move-result v2

    #@9
    .line 5929
    const-wide/16 v4, 0x8

    #@b
    invoke-static {v4, v5, v1, v2}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    #@e
    .line 5932
    iget-object v1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mReceiver:Landroid/view/InputEventReceiver;

    #@10
    if-eqz v1, :cond_1

    #@12
    .line 5933
    iget v1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    #@14
    and-int/lit8 v1, v1, 0x8

    #@16
    if-eqz v1, :cond_0

    #@18
    const/4 v0, 0x1

    #@19
    .line 5934
    .local v0, "handled":Z
    :goto_0
    iget-object v1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mReceiver:Landroid/view/InputEventReceiver;

    #@1b
    iget-object v2, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    #@1d
    invoke-virtual {v1, v2, v0}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    #@20
    .line 5939
    .end local v0    # "handled":Z
    :goto_1
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->recycleQueuedInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    #@23
    .line 5928
    return-void

    #@24
    .line 5933
    :cond_0
    const/4 v0, 0x0

    #@25
    .restart local v0    # "handled":Z
    goto :goto_0

    #@26
    .line 5936
    .end local v0    # "handled":Z
    :cond_1
    iget-object v1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    #@28
    invoke-virtual {v1}, Landroid/view/InputEvent;->recycleIfNeededAfterDispatch()V

    #@2b
    goto :goto_1
.end method

.method private static forceLayout(Landroid/view/View;)V
    .locals 4
    .param p0, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 3163
    invoke-virtual {p0}, Landroid/view/View;->forceLayout()V

    #@3
    .line 3164
    instance-of v3, p0, Landroid/view/ViewGroup;

    #@5
    if-eqz v3, :cond_0

    #@7
    move-object v1, p0

    #@8
    .line 3165
    check-cast v1, Landroid/view/ViewGroup;

    #@a
    .line 3166
    .local v1, "group":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    #@d
    move-result v0

    #@e
    .line 3167
    .local v0, "count":I
    const/4 v2, 0x0

    #@f
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    #@11
    .line 3168
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@14
    move-result-object v3

    #@15
    invoke-static {v3}, Landroid/view/ViewRootImpl;->forceLayout(Landroid/view/View;)V

    #@18
    .line 3167
    add-int/lit8 v2, v2, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 3162
    .end local v0    # "count":I
    .end local v1    # "group":Landroid/view/ViewGroup;
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method private getAccessibilityFocusedDrawable()Landroid/graphics/drawable/Drawable;
    .locals 5

    #@0
    .prologue
    .line 2811
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@2
    iget-object v2, v2, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    #@4
    if-nez v2, :cond_0

    #@6
    .line 2812
    new-instance v1, Landroid/util/TypedValue;

    #@8
    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    #@b
    .line 2813
    .local v1, "value":Landroid/util/TypedValue;
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@d
    iget-object v2, v2, Landroid/view/View;->mContext:Landroid/content/Context;

    #@f
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@12
    move-result-object v2

    #@13
    .line 2814
    const v3, 0x1160031

    #@16
    const/4 v4, 0x1

    #@17
    .line 2813
    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    #@1a
    move-result v0

    #@1b
    .line 2815
    .local v0, "resolved":Z
    if-eqz v0, :cond_0

    #@1d
    .line 2816
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@1f
    .line 2817
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@21
    iget-object v3, v3, Landroid/view/View;->mContext:Landroid/content/Context;

    #@23
    iget v4, v1, Landroid/util/TypedValue;->resourceId:I

    #@25
    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@28
    move-result-object v3

    #@29
    .line 2816
    iput-object v3, v2, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    #@2b
    .line 2820
    .end local v0    # "resolved":Z
    .end local v1    # "value":Landroid/util/TypedValue;
    :cond_0
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@2d
    iget-object v2, v2, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    #@2f
    return-object v2
.end method

.method private getAccessibilityFocusedRect(Landroid/graphics/Rect;)Z
    .locals 8
    .param p1, "bounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 2778
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@4
    iget-object v6, v6, Landroid/view/View;->mContext:Landroid/content/Context;

    #@6
    invoke-static {v6}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    #@9
    move-result-object v2

    #@a
    .line 2779
    .local v2, "manager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    #@d
    move-result v6

    #@e
    if-eqz v6, :cond_1

    #@10
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    #@13
    move-result v6

    #@14
    if-eqz v6, :cond_1

    #@16
    .line 2783
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    #@18
    .line 2784
    .local v1, "host":Landroid/view/View;
    if-eqz v1, :cond_0

    #@1a
    iget-object v6, v1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@1c
    if-nez v6, :cond_2

    #@1e
    .line 2785
    :cond_0
    return v4

    #@1f
    .line 2780
    .end local v1    # "host":Landroid/view/View;
    :cond_1
    return v4

    #@20
    .line 2788
    .restart local v1    # "host":Landroid/view/View;
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    #@23
    move-result-object v3

    #@24
    .line 2789
    .local v3, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-nez v3, :cond_4

    #@26
    .line 2790
    invoke-virtual {v1, p1, v5}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;Z)V

    #@29
    .line 2798
    :goto_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@2b
    .line 2799
    .local v0, "attachInfo":Landroid/view/View$AttachInfo;
    iget-object v6, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    #@2d
    iget v6, v6, Landroid/view/ViewRootImpl;->mScrollY:I

    #@2f
    invoke-virtual {p1, v4, v6}, Landroid/graphics/Rect;->offset(II)V

    #@32
    .line 2800
    iget v6, v0, Landroid/view/View$AttachInfo;->mWindowLeft:I

    #@34
    neg-int v6, v6

    #@35
    iget v7, v0, Landroid/view/View$AttachInfo;->mWindowTop:I

    #@37
    neg-int v7, v7

    #@38
    invoke-virtual {p1, v6, v7}, Landroid/graphics/Rect;->offset(II)V

    #@3b
    .line 2801
    iget-object v6, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    #@3d
    iget v6, v6, Landroid/view/ViewRootImpl;->mWidth:I

    #@3f
    .line 2802
    iget-object v7, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    #@41
    iget v7, v7, Landroid/view/ViewRootImpl;->mHeight:I

    #@43
    .line 2801
    invoke-virtual {p1, v4, v4, v6, v7}, Landroid/graphics/Rect;->intersect(IIII)Z

    #@46
    move-result v6

    #@47
    if-nez v6, :cond_3

    #@49
    .line 2804
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    #@4c
    .line 2806
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    #@4f
    move-result v6

    #@50
    if-eqz v6, :cond_6

    #@52
    :goto_1
    return v4

    #@53
    .line 2791
    .end local v0    # "attachInfo":Landroid/view/View$AttachInfo;
    :cond_4
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    #@55
    if-eqz v6, :cond_5

    #@57
    .line 2792
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    #@59
    invoke-virtual {v6, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    #@5c
    goto :goto_0

    #@5d
    .line 2794
    :cond_5
    return v4

    #@5e
    .restart local v0    # "attachInfo":Landroid/view/View$AttachInfo;
    :cond_6
    move v4, v5

    #@5f
    .line 2806
    goto :goto_1
.end method

.method private getAudioManager()Landroid/media/AudioManager;
    .locals 2

    #@0
    .prologue
    .line 5372
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 5373
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "getAudioManager called when there is no mView"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 5375
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAudioManager:Landroid/media/AudioManager;

    #@f
    if-nez v0, :cond_1

    #@11
    .line 5376
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@13
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@16
    move-result-object v0

    #@17
    const-string/jumbo v1, "audio"

    #@1a
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@1d
    move-result-object v0

    #@1e
    check-cast v0, Landroid/media/AudioManager;

    #@20
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mAudioManager:Landroid/media/AudioManager;

    #@22
    .line 5378
    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAudioManager:Landroid/media/AudioManager;

    #@24
    return-object v0
.end method

.method private getCommonPredecessor(Landroid/view/View;Landroid/view/View;)Landroid/view/View;
    .locals 7
    .param p1, "first"    # Landroid/view/View;
    .param p2, "second"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 6522
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mTempHashSet:Ljava/util/HashSet;

    #@3
    if-nez v5, :cond_0

    #@5
    .line 6523
    new-instance v5, Ljava/util/HashSet;

    #@7
    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    #@a
    iput-object v5, p0, Landroid/view/ViewRootImpl;->mTempHashSet:Ljava/util/HashSet;

    #@c
    .line 6525
    :cond_0
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mTempHashSet:Ljava/util/HashSet;

    #@e
    .line 6526
    .local v4, "seen":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/view/View;>;"
    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    #@11
    .line 6527
    move-object v0, p1

    #@12
    .line 6528
    :goto_0
    if-eqz v0, :cond_2

    #@14
    .line 6529
    invoke-virtual {v4, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@17
    .line 6530
    iget-object v1, v0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    #@19
    .line 6531
    .local v1, "firstCurrentParent":Landroid/view/ViewParent;
    instance-of v5, v1, Landroid/view/View;

    #@1b
    if-eqz v5, :cond_1

    #@1d
    move-object v0, v1

    #@1e
    .line 6532
    check-cast v0, Landroid/view/View;

    #@20
    .local v0, "firstCurrent":Landroid/view/View;
    goto :goto_0

    #@21
    .line 6534
    .end local v0    # "firstCurrent":Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    #@22
    .local v0, "firstCurrent":Landroid/view/View;
    goto :goto_0

    #@23
    .line 6537
    .end local v0    # "firstCurrent":Landroid/view/View;
    .end local v1    # "firstCurrentParent":Landroid/view/ViewParent;
    :cond_2
    move-object v2, p2

    #@24
    .line 6538
    :goto_1
    if-eqz v2, :cond_5

    #@26
    .line 6539
    invoke-virtual {v4, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@29
    move-result v5

    #@2a
    if-eqz v5, :cond_3

    #@2c
    .line 6540
    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    #@2f
    .line 6541
    return-object v2

    #@30
    .line 6543
    :cond_3
    iget-object v3, v2, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    #@32
    .line 6544
    .local v3, "secondCurrentParent":Landroid/view/ViewParent;
    instance-of v5, v3, Landroid/view/View;

    #@34
    if-eqz v5, :cond_4

    #@36
    move-object v2, v3

    #@37
    .line 6545
    check-cast v2, Landroid/view/View;

    #@39
    .local v2, "secondCurrent":Landroid/view/View;
    goto :goto_1

    #@3a
    .line 6547
    .end local v2    # "secondCurrent":Landroid/view/View;
    :cond_4
    const/4 v2, 0x0

    #@3b
    .local v2, "secondCurrent":Landroid/view/View;
    goto :goto_1

    #@3c
    .line 6550
    .end local v2    # "secondCurrent":Landroid/view/View;
    .end local v3    # "secondCurrentParent":Landroid/view/ViewParent;
    :cond_5
    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    #@3f
    .line 6551
    return-object v6
.end method

.method private static getGfxInfo(Landroid/view/View;[I)V
    .locals 7
    .param p0, "view"    # Landroid/view/View;
    .param p1, "info"    # [I

    #@0
    .prologue
    .line 5559
    iget-object v3, p0, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    #@2
    .line 5560
    .local v3, "renderNode":Landroid/view/RenderNode;
    const/4 v4, 0x0

    #@3
    aget v5, p1, v4

    #@5
    add-int/lit8 v5, v5, 0x1

    #@7
    aput v5, p1, v4

    #@9
    .line 5561
    if-eqz v3, :cond_0

    #@b
    .line 5562
    const/4 v4, 0x1

    #@c
    aget v5, p1, v4

    #@e
    invoke-virtual {v3}, Landroid/view/RenderNode;->getDebugSize()I

    #@11
    move-result v6

    #@12
    add-int/2addr v5, v6

    #@13
    aput v5, p1, v4

    #@15
    .line 5565
    :cond_0
    instance-of v4, p0, Landroid/view/ViewGroup;

    #@17
    if-eqz v4, :cond_1

    #@19
    move-object v1, p0

    #@1a
    .line 5566
    check-cast v1, Landroid/view/ViewGroup;

    #@1c
    .line 5568
    .local v1, "group":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    #@1f
    move-result v0

    #@20
    .line 5569
    .local v0, "count":I
    const/4 v2, 0x0

    #@21
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    #@23
    .line 5570
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@26
    move-result-object v4

    #@27
    invoke-static {v4, p1}, Landroid/view/ViewRootImpl;->getGfxInfo(Landroid/view/View;[I)V

    #@2a
    .line 5569
    add-int/lit8 v2, v2, 0x1

    #@2c
    goto :goto_0

    #@2d
    .line 5558
    .end local v0    # "count":I
    .end local v1    # "group":Landroid/view/ViewGroup;
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method private getImpliedSystemUiVisibility(Landroid/view/WindowManager$LayoutParams;)I
    .locals 3
    .param p1, "params"    # Landroid/view/WindowManager$LayoutParams;

    #@0
    .prologue
    .line 1154
    const/4 v0, 0x0

    #@1
    .line 1156
    .local v0, "vis":I
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@3
    const/high16 v2, 0x4000000

    #@5
    and-int/2addr v1, v2

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 1157
    const/16 v0, 0x500

    #@a
    .line 1159
    :cond_0
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@c
    const/high16 v2, 0x8000000

    #@e
    and-int/2addr v1, v2

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 1160
    or-int/lit16 v0, v0, 0x300

    #@13
    .line 1162
    :cond_1
    return v0
.end method

.method private static getRootMeasureSpec(II)I
    .locals 2
    .param p0, "windowSize"    # I
    .param p1, "rootDimension"    # I

    #@0
    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    #@2
    .line 2322
    packed-switch p1, :pswitch_data_0

    #@5
    .line 2334
    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@8
    move-result v0

    #@9
    .line 2337
    .local v0, "measureSpec":I
    :goto_0
    return v0

    #@a
    .line 2326
    .end local v0    # "measureSpec":I
    :pswitch_0
    invoke-static {p0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@d
    move-result v0

    #@e
    .restart local v0    # "measureSpec":I
    goto :goto_0

    #@f
    .line 2330
    .end local v0    # "measureSpec":I
    :pswitch_1
    const/high16 v1, -0x80000000

    #@11
    invoke-static {p0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@14
    move-result v0

    #@15
    .restart local v0    # "measureSpec":I
    goto :goto_0

    #@16
    .line 2322
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static getRunQueue()Landroid/view/ViewRootImpl$RunQueue;
    .locals 2

    #@0
    .prologue
    .line 6849
    sget-object v1, Landroid/view/ViewRootImpl;->sRunQueues:Ljava/lang/ThreadLocal;

    #@2
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/view/ViewRootImpl$RunQueue;

    #@8
    .line 6850
    .local v0, "rq":Landroid/view/ViewRootImpl$RunQueue;
    if-eqz v0, :cond_0

    #@a
    .line 6851
    return-object v0

    #@b
    .line 6853
    :cond_0
    new-instance v0, Landroid/view/ViewRootImpl$RunQueue;

    #@d
    .end local v0    # "rq":Landroid/view/ViewRootImpl$RunQueue;
    invoke-direct {v0}, Landroid/view/ViewRootImpl$RunQueue;-><init>()V

    #@10
    .line 6854
    .restart local v0    # "rq":Landroid/view/ViewRootImpl$RunQueue;
    sget-object v1, Landroid/view/ViewRootImpl;->sRunQueues:Ljava/lang/ThreadLocal;

    #@12
    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    #@15
    .line 6855
    return-object v0
.end method

.method private getValidLayoutRequesters(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;
    .locals 8
    .param p2, "secondLayoutRequests"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;Z)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 2245
    .local p1, "layoutRequesters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@3
    move-result v2

    #@4
    .line 2246
    .local v2, "numViewsRequestingLayout":I
    const/4 v4, 0x0

    #@5
    .line 2247
    .local v4, "validLayoutRequesters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v1, 0x0

    #@6
    .end local v4    # "validLayoutRequesters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_6

    #@8
    .line 2248
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@b
    move-result-object v5

    #@c
    check-cast v5, Landroid/view/View;

    #@e
    .line 2249
    .local v5, "view":Landroid/view/View;
    if-eqz v5, :cond_3

    #@10
    iget-object v6, v5, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@12
    if-eqz v6, :cond_3

    #@14
    iget-object v6, v5, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    #@16
    if-eqz v6, :cond_3

    #@18
    .line 2250
    if-nez p2, :cond_0

    #@1a
    iget v6, v5, Landroid/view/View;->mPrivateFlags:I

    #@1c
    and-int/lit16 v6, v6, 0x1000

    #@1e
    .line 2251
    const/16 v7, 0x1000

    #@20
    .line 2250
    if-ne v6, v7, :cond_3

    #@22
    .line 2252
    :cond_0
    const/4 v0, 0x0

    #@23
    .line 2253
    .local v0, "gone":Z
    move-object v3, v5

    #@24
    .line 2255
    :goto_1
    if-eqz v3, :cond_1

    #@26
    .line 2256
    iget v6, v3, Landroid/view/View;->mViewFlags:I

    #@28
    and-int/lit8 v6, v6, 0xc

    #@2a
    const/16 v7, 0x8

    #@2c
    if-ne v6, v7, :cond_4

    #@2e
    .line 2257
    const/4 v0, 0x1

    #@2f
    .line 2266
    :cond_1
    if-nez v0, :cond_3

    #@31
    .line 2267
    if-nez v4, :cond_2

    #@33
    .line 2268
    new-instance v4, Ljava/util/ArrayList;

    #@35
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@38
    .line 2270
    :cond_2
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@3b
    .line 2247
    .end local v0    # "gone":Z
    :cond_3
    add-int/lit8 v1, v1, 0x1

    #@3d
    goto :goto_0

    #@3e
    .line 2260
    .restart local v0    # "gone":Z
    :cond_4
    iget-object v6, v3, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    #@40
    instance-of v6, v6, Landroid/view/View;

    #@42
    if-eqz v6, :cond_5

    #@44
    .line 2261
    iget-object v3, v3, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    #@46
    check-cast v3, Landroid/view/View;

    #@48
    .local v3, "parent":Landroid/view/View;
    goto :goto_1

    #@49
    .line 2263
    .end local v3    # "parent":Landroid/view/View;
    :cond_5
    const/4 v3, 0x0

    #@4a
    .local v3, "parent":Landroid/view/View;
    goto :goto_1

    #@4b
    .line 2274
    .end local v0    # "gone":Z
    .end local v3    # "parent":Landroid/view/View;
    .end local v5    # "view":Landroid/view/View;
    :cond_6
    if-nez p2, :cond_9

    #@4d
    .line 2276
    const/4 v1, 0x0

    #@4e
    :goto_2
    if-ge v1, v2, :cond_9

    #@50
    .line 2277
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@53
    move-result-object v5

    #@54
    check-cast v5, Landroid/view/View;

    #@56
    .line 2278
    :goto_3
    if-eqz v5, :cond_8

    #@58
    .line 2279
    iget v6, v5, Landroid/view/View;->mPrivateFlags:I

    #@5a
    and-int/lit16 v6, v6, 0x1000

    #@5c
    if-eqz v6, :cond_8

    #@5e
    .line 2280
    iget v6, v5, Landroid/view/View;->mPrivateFlags:I

    #@60
    and-int/lit16 v6, v6, -0x1001

    #@62
    iput v6, v5, Landroid/view/View;->mPrivateFlags:I

    #@64
    .line 2281
    iget-object v6, v5, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    #@66
    instance-of v6, v6, Landroid/view/View;

    #@68
    if-eqz v6, :cond_7

    #@6a
    .line 2282
    iget-object v5, v5, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    #@6c
    check-cast v5, Landroid/view/View;

    #@6e
    .restart local v5    # "view":Landroid/view/View;
    goto :goto_3

    #@6f
    .line 2284
    .end local v5    # "view":Landroid/view/View;
    :cond_7
    const/4 v5, 0x0

    #@70
    .local v5, "view":Landroid/view/View;
    goto :goto_3

    #@71
    .line 2276
    .end local v5    # "view":Landroid/view/View;
    :cond_8
    add-int/lit8 v1, v1, 0x1

    #@73
    goto :goto_2

    #@74
    .line 2289
    :cond_9
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    #@77
    .line 2290
    return-object v4
.end method

.method private handleDragEvent(Landroid/view/DragEvent;)V
    .locals 9
    .param p1, "event"    # Landroid/view/DragEvent;

    #@0
    .prologue
    const/4 v8, 0x3

    #@1
    const/4 v7, 0x0

    #@2
    .line 5244
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@4
    if-eqz v4, :cond_0

    #@6
    iget-boolean v4, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    #@8
    if-eqz v4, :cond_0

    #@a
    .line 5245
    iget v3, p1, Landroid/view/DragEvent;->mAction:I

    #@c
    .line 5247
    .local v3, "what":I
    const/4 v4, 0x6

    #@d
    if-ne v3, v4, :cond_1

    #@f
    .line 5252
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@11
    invoke-virtual {v4, p1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    #@14
    .line 5316
    .end local v3    # "what":I
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/view/DragEvent;->recycle()V

    #@17
    .line 5240
    return-void

    #@18
    .line 5256
    .restart local v3    # "what":I
    :cond_1
    const/4 v4, 0x1

    #@19
    if-ne v3, v4, :cond_9

    #@1b
    .line 5257
    iput-object v7, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    #@1d
    .line 5258
    iget-object v4, p1, Landroid/view/DragEvent;->mClipDescription:Landroid/content/ClipDescription;

    #@1f
    iput-object v4, p0, Landroid/view/ViewRootImpl;->mDragDescription:Landroid/content/ClipDescription;

    #@21
    .line 5264
    :goto_1
    const/4 v4, 0x2

    #@22
    if-eq v3, v4, :cond_2

    #@24
    if-ne v3, v8, :cond_5

    #@26
    .line 5265
    :cond_2
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mDragPoint:Landroid/graphics/PointF;

    #@28
    iget v5, p1, Landroid/view/DragEvent;->mX:F

    #@2a
    iget v6, p1, Landroid/view/DragEvent;->mY:F

    #@2c
    invoke-virtual {v4, v5, v6}, Landroid/graphics/PointF;->set(FF)V

    #@2f
    .line 5266
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@31
    if-eqz v4, :cond_3

    #@33
    .line 5267
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@35
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mDragPoint:Landroid/graphics/PointF;

    #@37
    invoke-virtual {v4, v5}, Landroid/content/res/CompatibilityInfo$Translator;->translatePointInScreenToAppWindow(Landroid/graphics/PointF;)V

    #@3a
    .line 5270
    :cond_3
    iget v4, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    #@3c
    if-eqz v4, :cond_4

    #@3e
    .line 5271
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mDragPoint:Landroid/graphics/PointF;

    #@40
    const/4 v5, 0x0

    #@41
    iget v6, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    #@43
    int-to-float v6, v6

    #@44
    invoke-virtual {v4, v5, v6}, Landroid/graphics/PointF;->offset(FF)V

    #@47
    .line 5274
    :cond_4
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mDragPoint:Landroid/graphics/PointF;

    #@49
    iget v4, v4, Landroid/graphics/PointF;->x:F

    #@4b
    iput v4, p1, Landroid/view/DragEvent;->mX:F

    #@4d
    .line 5275
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mDragPoint:Landroid/graphics/PointF;

    #@4f
    iget v4, v4, Landroid/graphics/PointF;->y:F

    #@51
    iput v4, p1, Landroid/view/DragEvent;->mY:F

    #@53
    .line 5279
    :cond_5
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    #@55
    .line 5282
    .local v1, "prevDragView":Landroid/view/View;
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@57
    invoke-virtual {v4, p1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    #@5a
    move-result v2

    #@5b
    .line 5285
    .local v2, "result":Z
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    #@5d
    if-eq v1, v4, :cond_7

    #@5f
    .line 5287
    if-eqz v1, :cond_6

    #@61
    .line 5288
    :try_start_0
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    #@63
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    #@65
    invoke-interface {v4, v5}, Landroid/view/IWindowSession;->dragRecipientExited(Landroid/view/IWindow;)V

    #@68
    .line 5290
    :cond_6
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    #@6a
    if-eqz v4, :cond_7

    #@6c
    .line 5291
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    #@6e
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    #@70
    invoke-interface {v4, v5}, Landroid/view/IWindowSession;->dragRecipientEntered(Landroid/view/IWindow;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@73
    .line 5299
    :cond_7
    :goto_2
    if-ne v3, v8, :cond_8

    #@75
    .line 5300
    iput-object v7, p0, Landroid/view/ViewRootImpl;->mDragDescription:Landroid/content/ClipDescription;

    #@77
    .line 5302
    :try_start_1
    const-string/jumbo v4, "ViewRootImpl"

    #@7a
    new-instance v5, Ljava/lang/StringBuilder;

    #@7c
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@7f
    const-string/jumbo v6, "Reporting drop result: "

    #@82
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v5

    #@86
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@89
    move-result-object v5

    #@8a
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8d
    move-result-object v5

    #@8e
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@91
    .line 5303
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    #@93
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    #@95
    invoke-interface {v4, v5, v2}, Landroid/view/IWindowSession;->reportDropResult(Landroid/view/IWindow;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@98
    .line 5311
    :cond_8
    :goto_3
    const/4 v4, 0x4

    #@99
    if-ne v3, v4, :cond_0

    #@9b
    .line 5312
    invoke-virtual {p0, v7}, Landroid/view/ViewRootImpl;->setLocalDragState(Ljava/lang/Object;)V

    #@9e
    goto/16 :goto_0

    #@a0
    .line 5260
    .end local v1    # "prevDragView":Landroid/view/View;
    .end local v2    # "result":Z
    :cond_9
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mDragDescription:Landroid/content/ClipDescription;

    #@a2
    iput-object v4, p1, Landroid/view/DragEvent;->mClipDescription:Landroid/content/ClipDescription;

    #@a4
    goto/16 :goto_1

    #@a6
    .line 5293
    .restart local v1    # "prevDragView":Landroid/view/View;
    .restart local v2    # "result":Z
    :catch_0
    move-exception v0

    #@a7
    .line 5294
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "ViewRootImpl"

    #@aa
    const-string/jumbo v5, "Unable to note drag target change"

    #@ad
    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@b0
    goto :goto_2

    #@b1
    .line 5304
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    #@b2
    .line 5305
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "ViewRootImpl"

    #@b5
    const-string/jumbo v5, "Unable to report drop result"

    #@b8
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@bb
    goto :goto_3
.end method

.method private handleOutOfResourcesException(Landroid/view/Surface$OutOfResourcesException;)V
    .locals 3
    .param p1, "e"    # Landroid/view/Surface$OutOfResourcesException;

    #@0
    .prologue
    .line 2085
    const-string/jumbo v1, "ViewRootImpl"

    #@3
    const-string/jumbo v2, "OutOfResourcesException initializing HW surface"

    #@6
    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@9
    .line 2087
    :try_start_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    #@b
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    #@d
    invoke-interface {v1, v2}, Landroid/view/IWindowSession;->outOfMemory(Landroid/view/IWindow;)Z

    #@10
    move-result v1

    #@11
    if-nez v1, :cond_0

    #@13
    .line 2088
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@16
    move-result v1

    #@17
    const/16 v2, 0x3e8

    #@19
    if-eq v1, v2, :cond_0

    #@1b
    .line 2089
    const-string/jumbo v1, "ViewRootImpl"

    #@1e
    const-string/jumbo v2, "No processes killed for memory; killing self"

    #@21
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@24
    .line 2090
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@27
    move-result v1

    #@28
    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@2b
    .line 2094
    :cond_0
    :goto_0
    const/4 v1, 0x1

    #@2c
    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    #@2e
    .line 2084
    return-void

    #@2f
    .line 2092
    :catch_0
    move-exception v0

    #@30
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private handleWindowContentChangedEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 18
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    #@0
    .prologue
    .line 6393
    move-object/from16 v0, p0

    #@2
    iget-object v7, v0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    #@4
    .line 6394
    .local v7, "focusedHost":Landroid/view/View;
    if-eqz v7, :cond_0

    #@6
    move-object/from16 v0, p0

    #@8
    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    #@a
    move-object/from16 v16, v0

    #@c
    if-nez v16, :cond_1

    #@e
    .line 6396
    :cond_0
    return-void

    #@f
    .line 6399
    :cond_1
    invoke-virtual {v7}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    #@12
    move-result-object v14

    #@13
    .line 6400
    .local v14, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-nez v14, :cond_2

    #@15
    .line 6402
    const/16 v16, 0x0

    #@17
    move-object/from16 v0, v16

    #@19
    move-object/from16 v1, p0

    #@1b
    iput-object v0, v1, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    #@1d
    .line 6403
    const/16 v16, 0x0

    #@1f
    move-object/from16 v0, v16

    #@21
    move-object/from16 v1, p0

    #@23
    iput-object v0, v1, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    #@25
    .line 6404
    invoke-virtual {v7}, Landroid/view/View;->clearAccessibilityFocusNoCallbacks()V

    #@28
    .line 6405
    return-void

    #@29
    .line 6410
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityEvent;->getContentChangeTypes()I

    #@2c
    move-result v3

    #@2d
    .line 6411
    .local v3, "changes":I
    and-int/lit8 v16, v3, 0x1

    #@2f
    if-nez v16, :cond_3

    #@31
    .line 6412
    if-eqz v3, :cond_3

    #@33
    .line 6413
    return-void

    #@34
    .line 6416
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    #@37
    move-result-wide v4

    #@38
    .line 6417
    .local v4, "eventSourceNodeId":J
    invoke-static {v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    #@3b
    move-result v2

    #@3c
    .line 6420
    .local v2, "changedViewId":I
    const/4 v10, 0x0

    #@3d
    .line 6421
    .local v10, "hostInSubtree":Z
    move-object/from16 v0, p0

    #@3f
    iget-object v15, v0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    #@41
    .line 6422
    :goto_0
    if-eqz v15, :cond_4

    #@43
    if-eqz v10, :cond_5

    #@45
    .line 6436
    :cond_4
    if-nez v10, :cond_8

    #@47
    .line 6437
    return-void

    #@48
    .line 6423
    :cond_5
    invoke-virtual {v15}, Landroid/view/View;->getAccessibilityViewId()I

    #@4b
    move-result v16

    #@4c
    move/from16 v0, v16

    #@4e
    if-ne v2, v0, :cond_6

    #@50
    .line 6424
    const/4 v10, 0x1

    #@51
    goto :goto_0

    #@52
    .line 6426
    :cond_6
    invoke-virtual {v15}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@55
    move-result-object v13

    #@56
    .line 6427
    .local v13, "parent":Landroid/view/ViewParent;
    instance-of v0, v13, Landroid/view/View;

    #@58
    move/from16 v16, v0

    #@5a
    if-eqz v16, :cond_7

    #@5c
    move-object v15, v13

    #@5d
    .line 6428
    check-cast v15, Landroid/view/View;

    #@5f
    .local v15, "root":Landroid/view/View;
    goto :goto_0

    #@60
    .line 6430
    .end local v15    # "root":Landroid/view/View;
    :cond_7
    const/4 v15, 0x0

    #@61
    .local v15, "root":Landroid/view/View;
    goto :goto_0

    #@62
    .line 6440
    .end local v13    # "parent":Landroid/view/ViewParent;
    .end local v15    # "root":Landroid/view/View;
    :cond_8
    move-object/from16 v0, p0

    #@64
    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    #@66
    move-object/from16 v16, v0

    #@68
    invoke-virtual/range {v16 .. v16}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    #@6b
    move-result-wide v8

    #@6c
    .line 6441
    .local v8, "focusedSourceNodeId":J
    invoke-static {v8, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    #@6f
    move-result v6

    #@70
    .line 6442
    .local v6, "focusedChildId":I
    const v16, 0x7fffffff

    #@73
    move/from16 v0, v16

    #@75
    if-ne v6, v0, :cond_9

    #@77
    .line 6444
    const/4 v6, -0x1

    #@78
    .line 6448
    :cond_9
    move-object/from16 v0, p0

    #@7a
    iget-object v12, v0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    #@7c
    .line 6449
    .local v12, "oldBounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    #@7e
    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    #@80
    move-object/from16 v16, v0

    #@82
    move-object/from16 v0, v16

    #@84
    invoke-virtual {v0, v12}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    #@87
    .line 6450
    invoke-virtual {v14, v6}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@8a
    move-result-object v16

    #@8b
    move-object/from16 v0, v16

    #@8d
    move-object/from16 v1, p0

    #@8f
    iput-object v0, v1, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    #@91
    .line 6451
    move-object/from16 v0, p0

    #@93
    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    #@95
    move-object/from16 v16, v0

    #@97
    if-nez v16, :cond_b

    #@99
    .line 6453
    const/16 v16, 0x0

    #@9b
    move-object/from16 v0, v16

    #@9d
    move-object/from16 v1, p0

    #@9f
    iput-object v0, v1, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    #@a1
    .line 6454
    invoke-virtual {v7}, Landroid/view/View;->clearAccessibilityFocusNoCallbacks()V

    #@a4
    .line 6459
    sget-object v16, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLEAR_ACCESSIBILITY_FOCUS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    #@a6
    invoke-virtual/range {v16 .. v16}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    #@a9
    move-result v16

    #@aa
    const/16 v17, 0x0

    #@ac
    .line 6458
    move/from16 v0, v16

    #@ae
    move-object/from16 v1, v17

    #@b0
    invoke-virtual {v14, v6, v0, v1}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    #@b3
    .line 6460
    move-object/from16 v0, p0

    #@b5
    invoke-direct {v0, v12}, Landroid/view/ViewRootImpl;->invalidateRectOnScreen(Landroid/graphics/Rect;)V

    #@b8
    .line 6392
    :cond_a
    :goto_1
    return-void

    #@b9
    .line 6463
    :cond_b
    move-object/from16 v0, p0

    #@bb
    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    #@bd
    move-object/from16 v16, v0

    #@bf
    invoke-virtual/range {v16 .. v16}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen()Landroid/graphics/Rect;

    #@c2
    move-result-object v11

    #@c3
    .line 6464
    .local v11, "newBounds":Landroid/graphics/Rect;
    invoke-virtual {v12, v11}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@c6
    move-result v16

    #@c7
    if-nez v16, :cond_a

    #@c9
    .line 6465
    invoke-virtual {v12, v11}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    #@cc
    .line 6466
    move-object/from16 v0, p0

    #@ce
    invoke-direct {v0, v12}, Landroid/view/ViewRootImpl;->invalidateRectOnScreen(Landroid/graphics/Rect;)V

    #@d1
    goto :goto_1
.end method

.method private invalidateRectOnScreen(Landroid/graphics/Rect;)V
    .locals 9
    .param p1, "dirty"    # Landroid/graphics/Rect;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    const/high16 v7, 0x3f000000    # 0.5f

    #@4
    .line 972
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mDirty:Landroid/graphics/Rect;

    #@6
    .line 973
    .local v2, "localDirty":Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    #@9
    move-result v3

    #@a
    if-nez v3, :cond_0

    #@c
    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    #@f
    move-result v3

    #@10
    if-eqz v3, :cond_4

    #@12
    .line 979
    :cond_0
    :goto_0
    iget v3, p1, Landroid/graphics/Rect;->left:I

    #@14
    iget v4, p1, Landroid/graphics/Rect;->top:I

    #@16
    iget v5, p1, Landroid/graphics/Rect;->right:I

    #@18
    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    #@1a
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->union(IIII)V

    #@1d
    .line 982
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@1f
    iget v0, v3, Landroid/view/View$AttachInfo;->mApplicationScale:F

    #@21
    .line 984
    .local v0, "appScale":F
    iget v3, p0, Landroid/view/ViewRootImpl;->mWidth:I

    #@23
    int-to-float v3, v3

    #@24
    mul-float/2addr v3, v0

    #@25
    add-float/2addr v3, v7

    #@26
    float-to-int v3, v3

    #@27
    iget v4, p0, Landroid/view/ViewRootImpl;->mHeight:I

    #@29
    int-to-float v4, v4

    #@2a
    mul-float/2addr v4, v0

    #@2b
    add-float/2addr v4, v7

    #@2c
    float-to-int v4, v4

    #@2d
    .line 983
    invoke-virtual {v2, v8, v8, v3, v4}, Landroid/graphics/Rect;->intersect(IIII)Z

    #@30
    move-result v1

    #@31
    .line 985
    .local v1, "intersected":Z
    if-nez v1, :cond_1

    #@33
    .line 986
    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    #@36
    .line 988
    :cond_1
    iget-boolean v3, p0, Landroid/view/ViewRootImpl;->mWillDrawSoon:Z

    #@38
    if-nez v3, :cond_3

    #@3a
    if-nez v1, :cond_2

    #@3c
    iget-boolean v3, p0, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    #@3e
    if-eqz v3, :cond_3

    #@40
    .line 989
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    #@43
    .line 971
    :cond_3
    return-void

    #@44
    .line 974
    .end local v0    # "appScale":F
    .end local v1    # "intersected":Z
    :cond_4
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@46
    iput-boolean v4, v3, Landroid/view/View$AttachInfo;->mSetIgnoreDirtyState:Z

    #@48
    .line 975
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@4a
    iput-boolean v4, v3, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    #@4c
    goto :goto_0
.end method

.method private isInLocalFocusMode()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 654
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@3
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@5
    const/high16 v2, 0x10000000

    #@7
    and-int/2addr v1, v2

    #@8
    if-eqz v1, :cond_0

    #@a
    const/4 v0, 0x1

    #@b
    :cond_0
    return v0
.end method

.method static isInTouchMode()Z
    .locals 3

    #@0
    .prologue
    .line 434
    invoke-static {}, Landroid/view/WindowManagerGlobal;->peekWindowSession()Landroid/view/IWindowSession;

    #@3
    move-result-object v1

    #@4
    .line 435
    .local v1, "windowSession":Landroid/view/IWindowSession;
    if-eqz v1, :cond_0

    #@6
    .line 437
    :try_start_0
    invoke-interface {v1}, Landroid/view/IWindowSession;->getInTouchMode()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v2

    #@a
    return v2

    #@b
    .line 438
    :catch_0
    move-exception v0

    #@c
    .line 441
    :cond_0
    const/4 v2, 0x0

    #@d
    return v2
.end method

.method private static isNavigationKey(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p0, "keyEvent"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 5165
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCode()I

    #@3
    move-result v0

    #@4
    sparse-switch v0, :sswitch_data_0

    #@7
    .line 5180
    const/4 v0, 0x0

    #@8
    return v0

    #@9
    .line 5178
    :sswitch_0
    const/4 v0, 0x1

    #@a
    return v0

    #@b
    .line 5165
    nop

    #@c
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
        0x3d -> :sswitch_0
        0x3e -> :sswitch_0
        0x42 -> :sswitch_0
        0x5c -> :sswitch_0
        0x5d -> :sswitch_0
        0x7a -> :sswitch_0
        0x7b -> :sswitch_0
    .end sparse-switch
.end method

.method static isTerminalInputEvent(Landroid/view/InputEvent;)Z
    .locals 6
    .param p0, "event"    # Landroid/view/InputEvent;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x1

    #@2
    .line 5956
    instance-of v5, p0, Landroid/view/KeyEvent;

    #@4
    if-eqz v5, :cond_1

    #@6
    move-object v1, p0

    #@7
    .line 5957
    check-cast v1, Landroid/view/KeyEvent;

    #@9
    .line 5958
    .local v1, "keyEvent":Landroid/view/KeyEvent;
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getAction()I

    #@c
    move-result v5

    #@d
    if-ne v5, v3, :cond_0

    #@f
    :goto_0
    return v3

    #@10
    :cond_0
    move v3, v4

    #@11
    goto :goto_0

    #@12
    .end local v1    # "keyEvent":Landroid/view/KeyEvent;
    :cond_1
    move-object v2, p0

    #@13
    .line 5960
    check-cast v2, Landroid/view/MotionEvent;

    #@15
    .line 5961
    .local v2, "motionEvent":Landroid/view/MotionEvent;
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    #@18
    move-result v0

    #@19
    .line 5962
    .local v0, "action":I
    if-eq v0, v3, :cond_2

    #@1b
    .line 5963
    const/4 v5, 0x3

    #@1c
    if-ne v0, v5, :cond_3

    #@1e
    .line 5962
    :cond_2
    :goto_1
    return v3

    #@1f
    .line 5964
    :cond_3
    const/16 v5, 0xa

    #@21
    if-eq v0, v5, :cond_2

    #@23
    move v3, v4

    #@24
    goto :goto_1
.end method

.method private static isTypingKey(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p0, "keyEvent"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 5189
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getUnicodeChar()I

    #@4
    move-result v1

    #@5
    if-lez v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public static isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 2
    .param p0, "child"    # Landroid/view/View;
    .param p1, "parent"    # Landroid/view/View;

    #@0
    .prologue
    .line 3154
    if-ne p0, p1, :cond_0

    #@2
    .line 3155
    const/4 v1, 0x1

    #@3
    return v1

    #@4
    .line 3158
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@7
    move-result-object v0

    #@8
    .line 3159
    .local v0, "theParent":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/ViewGroup;

    #@a
    if-eqz v1, :cond_1

    #@c
    check-cast v0, Landroid/view/View;

    #@e
    .end local v0    # "theParent":Landroid/view/ViewParent;
    invoke-static {v0, p1}, Landroid/view/ViewRootImpl;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    #@11
    move-result v1

    #@12
    :goto_0
    return v1

    #@13
    .restart local v0    # "theParent":Landroid/view/ViewParent;
    :cond_1
    const/4 v1, 0x0

    #@14
    goto :goto_0
.end method

.method private leaveTouchMode()Z
    .locals 7

    #@0
    .prologue
    const/16 v6, 0x82

    #@2
    const/4 v5, 0x0

    #@3
    const/4 v4, 0x0

    #@4
    .line 3586
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@6
    if-eqz v2, :cond_2

    #@8
    .line 3587
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@a
    invoke-virtual {v2}, Landroid/view/View;->hasFocus()Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_1

    #@10
    .line 3588
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@12
    invoke-virtual {v2}, Landroid/view/View;->findFocus()Landroid/view/View;

    #@15
    move-result-object v1

    #@16
    .line 3589
    .local v1, "focusedView":Landroid/view/View;
    instance-of v2, v1, Landroid/view/ViewGroup;

    #@18
    if-nez v2, :cond_0

    #@1a
    .line 3591
    return v4

    #@1b
    .line 3592
    :cond_0
    check-cast v1, Landroid/view/ViewGroup;

    #@1d
    .end local v1    # "focusedView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    #@20
    move-result v2

    #@21
    .line 3593
    const/high16 v3, 0x40000

    #@23
    .line 3592
    if-eq v2, v3, :cond_1

    #@25
    .line 3596
    return v4

    #@26
    .line 3602
    :cond_1
    invoke-virtual {p0, v5, v6}, Landroid/view/ViewRootImpl;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    #@29
    move-result-object v0

    #@2a
    .line 3603
    .local v0, "focused":Landroid/view/View;
    if-eqz v0, :cond_2

    #@2c
    .line 3604
    invoke-virtual {v0, v6}, Landroid/view/View;->requestFocus(I)Z

    #@2f
    move-result v2

    #@30
    return v2

    #@31
    .line 3607
    .end local v0    # "focused":Landroid/view/View;
    :cond_2
    return v4
.end method

.method private measureHierarchy(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/content/res/Resources;II)Z
    .locals 10
    .param p1, "host"    # Landroid/view/View;
    .param p2, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "res"    # Landroid/content/res/Resources;
    .param p4, "desiredWindowWidth"    # I
    .param p5, "desiredWindowHeight"    # I

    #@0
    .prologue
    const/high16 v9, 0x1000000

    #@2
    .line 1169
    const/4 v5, 0x0

    #@3
    .line 1175
    .local v5, "windowSizeMayChange":Z
    const/4 v3, 0x0

    #@4
    .line 1176
    .local v3, "goodMeasure":Z
    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    #@6
    const/4 v7, -0x2

    #@7
    if-ne v6, v7, :cond_1

    #@9
    .line 1181
    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@c
    move-result-object v4

    #@d
    .line 1182
    .local v4, "packageMetrics":Landroid/util/DisplayMetrics;
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTmpValue:Landroid/util/TypedValue;

    #@f
    const v7, 0x105000e

    #@12
    const/4 v8, 0x1

    #@13
    invoke-virtual {p3, v7, v6, v8}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    #@16
    .line 1183
    const/4 v0, 0x0

    #@17
    .line 1184
    .local v0, "baseSize":I
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTmpValue:Landroid/util/TypedValue;

    #@19
    iget v6, v6, Landroid/util/TypedValue;->type:I

    #@1b
    const/4 v7, 0x5

    #@1c
    if-ne v6, v7, :cond_0

    #@1e
    .line 1185
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTmpValue:Landroid/util/TypedValue;

    #@20
    invoke-virtual {v6, v4}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    #@23
    move-result v6

    #@24
    float-to-int v0, v6

    #@25
    .line 1188
    :cond_0
    if-eqz v0, :cond_1

    #@27
    if-le p4, v0, :cond_1

    #@29
    .line 1189
    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    #@2b
    invoke-static {v0, v6}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    #@2e
    move-result v2

    #@2f
    .line 1190
    .local v2, "childWidthMeasureSpec":I
    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    #@31
    invoke-static {p5, v6}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    #@34
    move-result v1

    #@35
    .line 1191
    .local v1, "childHeightMeasureSpec":I
    invoke-direct {p0, v2, v1}, Landroid/view/ViewRootImpl;->performMeasure(II)V

    #@38
    .line 1194
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidthAndState()I

    #@3b
    move-result v6

    #@3c
    and-int/2addr v6, v9

    #@3d
    if-nez v6, :cond_4

    #@3f
    .line 1195
    const/4 v3, 0x1

    #@40
    .line 1213
    .end local v0    # "baseSize":I
    .end local v1    # "childHeightMeasureSpec":I
    .end local v2    # "childWidthMeasureSpec":I
    .end local v4    # "packageMetrics":Landroid/util/DisplayMetrics;
    :cond_1
    :goto_0
    if-nez v3, :cond_3

    #@42
    .line 1214
    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    #@44
    invoke-static {p4, v6}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    #@47
    move-result v2

    #@48
    .line 1215
    .restart local v2    # "childWidthMeasureSpec":I
    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    #@4a
    invoke-static {p5, v6}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    #@4d
    move-result v1

    #@4e
    .line 1216
    .restart local v1    # "childHeightMeasureSpec":I
    invoke-direct {p0, v2, v1}, Landroid/view/ViewRootImpl;->performMeasure(II)V

    #@51
    .line 1217
    iget v6, p0, Landroid/view/ViewRootImpl;->mWidth:I

    #@53
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    #@56
    move-result v7

    #@57
    if-ne v6, v7, :cond_2

    #@59
    iget v6, p0, Landroid/view/ViewRootImpl;->mHeight:I

    #@5b
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    #@5e
    move-result v7

    #@5f
    if-eq v6, v7, :cond_3

    #@61
    .line 1218
    :cond_2
    const/4 v5, 0x1

    #@62
    .line 1228
    .end local v1    # "childHeightMeasureSpec":I
    .end local v2    # "childWidthMeasureSpec":I
    :cond_3
    return v5

    #@63
    .line 1198
    .restart local v0    # "baseSize":I
    .restart local v1    # "childHeightMeasureSpec":I
    .restart local v2    # "childWidthMeasureSpec":I
    .restart local v4    # "packageMetrics":Landroid/util/DisplayMetrics;
    :cond_4
    add-int v6, v0, p4

    #@65
    div-int/lit8 v0, v6, 0x2

    #@67
    .line 1201
    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    #@69
    invoke-static {v0, v6}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    #@6c
    move-result v2

    #@6d
    .line 1202
    invoke-direct {p0, v2, v1}, Landroid/view/ViewRootImpl;->performMeasure(II)V

    #@70
    .line 1205
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidthAndState()I

    #@73
    move-result v6

    #@74
    and-int/2addr v6, v9

    #@75
    if-nez v6, :cond_1

    #@77
    .line 1207
    const/4 v3, 0x1

    #@78
    goto :goto_0
.end method

.method private obtainQueuedInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;I)Landroid/view/ViewRootImpl$QueuedInputEvent;
    .locals 3
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "receiver"    # Landroid/view/InputEventReceiver;
    .param p3, "flags"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 5804
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPool:Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@3
    .line 5805
    .local v0, "q":Landroid/view/ViewRootImpl$QueuedInputEvent;
    if-eqz v0, :cond_0

    #@5
    .line 5806
    iget v1, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPoolSize:I

    #@7
    add-int/lit8 v1, v1, -0x1

    #@9
    iput v1, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPoolSize:I

    #@b
    .line 5807
    iget-object v1, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@d
    iput-object v1, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPool:Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@f
    .line 5808
    iput-object v2, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@11
    .line 5813
    :goto_0
    iput-object p1, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    #@13
    .line 5814
    iput-object p2, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mReceiver:Landroid/view/InputEventReceiver;

    #@15
    .line 5815
    iput p3, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    #@17
    .line 5816
    return-object v0

    #@18
    .line 5810
    :cond_0
    new-instance v0, Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@1a
    .end local v0    # "q":Landroid/view/ViewRootImpl$QueuedInputEvent;
    invoke-direct {v0, v2}, Landroid/view/ViewRootImpl$QueuedInputEvent;-><init>(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    #@1d
    .restart local v0    # "q":Landroid/view/ViewRootImpl$QueuedInputEvent;
    goto :goto_0
.end method

.method private performDraw()V
    .locals 11

    #@0
    .prologue
    const/4 v10, 0x1

    #@1
    const-wide/16 v8, 0x8

    #@3
    const/4 v7, 0x0

    #@4
    .line 2424
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@6
    iget v6, v6, Landroid/view/View$AttachInfo;->mDisplayState:I

    #@8
    if-ne v6, v10, :cond_0

    #@a
    iget-boolean v6, p0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    #@c
    if-eqz v6, :cond_1

    #@e
    .line 2428
    :cond_0
    iget-boolean v4, p0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    #@10
    .line 2429
    .local v4, "fullRedrawNeeded":Z
    iput-boolean v7, p0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    #@12
    .line 2431
    iput-boolean v10, p0, Landroid/view/ViewRootImpl;->mIsDrawing:Z

    #@14
    .line 2432
    const-string/jumbo v6, "draw"

    #@17
    invoke-static {v8, v9, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@1a
    .line 2434
    :try_start_0
    invoke-direct {p0, v4}, Landroid/view/ViewRootImpl;->draw(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    .line 2436
    iput-boolean v7, p0, Landroid/view/ViewRootImpl;->mIsDrawing:Z

    #@1f
    .line 2437
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    #@22
    .line 2442
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@24
    iget-object v6, v6, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    #@26
    if-eqz v6, :cond_3

    #@28
    .line 2443
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@2a
    iget-object v6, v6, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    #@2c
    invoke-interface {v6}, Ljava/util/List;->size()I

    #@2f
    move-result v2

    #@30
    .line 2444
    .local v2, "count":I
    const/4 v5, 0x0

    #@31
    .local v5, "i":I
    :goto_0
    if-ge v5, v2, :cond_2

    #@33
    .line 2445
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@35
    iget-object v6, v6, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    #@37
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@3a
    move-result-object v6

    #@3b
    check-cast v6, Landroid/view/RenderNode;

    #@3d
    invoke-virtual {v6}, Landroid/view/RenderNode;->endAllAnimators()V

    #@40
    .line 2444
    add-int/lit8 v5, v5, 0x1

    #@42
    goto :goto_0

    #@43
    .line 2425
    .end local v2    # "count":I
    .end local v4    # "fullRedrawNeeded":Z
    .end local v5    # "i":I
    :cond_1
    return-void

    #@44
    .line 2435
    .restart local v4    # "fullRedrawNeeded":Z
    :catchall_0
    move-exception v6

    #@45
    .line 2436
    iput-boolean v7, p0, Landroid/view/ViewRootImpl;->mIsDrawing:Z

    #@47
    .line 2437
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    #@4a
    .line 2435
    throw v6

    #@4b
    .line 2447
    .restart local v2    # "count":I
    .restart local v5    # "i":I
    :cond_2
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@4d
    iget-object v6, v6, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    #@4f
    invoke-interface {v6}, Ljava/util/List;->clear()V

    #@52
    .line 2450
    .end local v2    # "count":I
    .end local v5    # "i":I
    :cond_3
    iget-boolean v6, p0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    #@54
    if-eqz v6, :cond_7

    #@56
    .line 2451
    iput-boolean v7, p0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    #@58
    .line 2452
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@5a
    iget-object v6, v6, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    #@5c
    if-eqz v6, :cond_4

    #@5e
    .line 2453
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@60
    iget-object v6, v6, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    #@62
    invoke-virtual {v6}, Landroid/view/HardwareRenderer;->fence()V

    #@65
    .line 2459
    :cond_4
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@67
    if-eqz v6, :cond_6

    #@69
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    #@6b
    invoke-virtual {v6}, Landroid/view/Surface;->isValid()Z

    #@6e
    move-result v6

    #@6f
    if-eqz v6, :cond_6

    #@71
    .line 2460
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    #@73
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@75
    invoke-interface {v6, v8}, Landroid/view/SurfaceHolder$Callback2;->surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V

    #@78
    .line 2461
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@7a
    invoke-virtual {v6}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    #@7d
    move-result-object v1

    #@7e
    .line 2462
    .local v1, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    if-eqz v1, :cond_6

    #@80
    .line 2463
    array-length v8, v1

    #@81
    move v6, v7

    #@82
    :goto_1
    if-ge v6, v8, :cond_6

    #@84
    aget-object v0, v1, v6

    #@86
    .line 2464
    .local v0, "c":Landroid/view/SurfaceHolder$Callback;
    instance-of v7, v0, Landroid/view/SurfaceHolder$Callback2;

    #@88
    if-eqz v7, :cond_5

    #@8a
    .line 2465
    check-cast v0, Landroid/view/SurfaceHolder$Callback2;

    #@8c
    .line 2466
    .end local v0    # "c":Landroid/view/SurfaceHolder$Callback;
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@8e
    .line 2465
    invoke-interface {v0, v7}, Landroid/view/SurfaceHolder$Callback2;->surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V

    #@91
    .line 2463
    :cond_5
    add-int/lit8 v6, v6, 0x1

    #@93
    goto :goto_1

    #@94
    .line 2472
    .end local v1    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :cond_6
    :try_start_1
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    #@96
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    #@98
    invoke-interface {v6, v7}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@9b
    .line 2423
    :cond_7
    :goto_2
    return-void

    #@9c
    .line 2473
    :catch_0
    move-exception v3

    #@9d
    .local v3, "e":Landroid/os/RemoteException;
    goto :goto_2
.end method

.method private performLayout(Landroid/view/WindowManager$LayoutParams;II)V
    .locals 12
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "desiredWindowWidth"    # I
    .param p3, "desiredWindowHeight"    # I

    #@0
    .prologue
    .line 2159
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    #@3
    .line 2160
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mScrollMayChange:Z

    #@6
    .line 2161
    const/4 v0, 0x1

    #@7
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mInLayout:Z

    #@9
    .line 2163
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@b
    .line 2169
    .local v1, "host":Landroid/view/View;
    const-string/jumbo v0, "layout"

    #@e
    const-wide/16 v2, 0x8

    #@10
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@13
    .line 2171
    :try_start_0
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    #@16
    move-result v0

    #@17
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    #@1a
    move-result v2

    #@1b
    const/4 v3, 0x0

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-virtual {v1, v3, v4, v0, v2}, Landroid/view/View;->layout(IIII)V

    #@20
    .line 2173
    const/4 v0, 0x0

    #@21
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mInLayout:Z

    #@23
    .line 2174
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLayoutRequesters:Ljava/util/ArrayList;

    #@25
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@28
    move-result v9

    #@29
    .line 2175
    .local v9, "numViewsRequestingLayout":I
    if-lez v9, :cond_1

    #@2b
    .line 2180
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLayoutRequesters:Ljava/util/ArrayList;

    #@2d
    .line 2181
    const/4 v2, 0x0

    #@2e
    .line 2180
    invoke-direct {p0, v0, v2}, Landroid/view/ViewRootImpl;->getValidLayoutRequesters(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    #@31
    move-result-object v10

    #@32
    .line 2182
    .local v10, "validLayoutRequesters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz v10, :cond_1

    #@34
    .line 2186
    const/4 v0, 0x1

    #@35
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mHandlingLayoutInLayoutRequest:Z

    #@37
    .line 2189
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    #@3a
    move-result v8

    #@3b
    .line 2190
    .local v8, "numValidRequests":I
    const/4 v7, 0x0

    #@3c
    .local v7, "i":I
    :goto_0
    if-ge v7, v8, :cond_0

    #@3e
    .line 2191
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@41
    move-result-object v11

    #@42
    check-cast v11, Landroid/view/View;

    #@44
    .line 2192
    .local v11, "view":Landroid/view/View;
    const-string/jumbo v0, "View"

    #@47
    new-instance v2, Ljava/lang/StringBuilder;

    #@49
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@4c
    const-string/jumbo v3, "requestLayout() improperly called by "

    #@4f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v2

    #@53
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v2

    #@57
    .line 2193
    const-string/jumbo v3, " during layout: running second layout pass"

    #@5a
    .line 2192
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v2

    #@5e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@61
    move-result-object v2

    #@62
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@65
    .line 2194
    invoke-virtual {v11}, Landroid/view/View;->requestLayout()V

    #@68
    .line 2190
    add-int/lit8 v7, v7, 0x1

    #@6a
    goto :goto_0

    #@6b
    .line 2196
    .end local v11    # "view":Landroid/view/View;
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@6d
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@70
    move-result-object v0

    #@71
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@74
    move-result-object v3

    #@75
    move-object v0, p0

    #@76
    move-object v2, p1

    #@77
    move v4, p2

    #@78
    move v5, p3

    #@79
    invoke-direct/range {v0 .. v5}, Landroid/view/ViewRootImpl;->measureHierarchy(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/content/res/Resources;II)Z

    #@7c
    .line 2198
    const/4 v0, 0x1

    #@7d
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mInLayout:Z

    #@7f
    .line 2199
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    #@82
    move-result v0

    #@83
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    #@86
    move-result v2

    #@87
    const/4 v3, 0x0

    #@88
    const/4 v4, 0x0

    #@89
    invoke-virtual {v1, v3, v4, v0, v2}, Landroid/view/View;->layout(IIII)V

    #@8c
    .line 2201
    const/4 v0, 0x0

    #@8d
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mHandlingLayoutInLayoutRequest:Z

    #@8f
    .line 2205
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLayoutRequesters:Ljava/util/ArrayList;

    #@91
    const/4 v2, 0x1

    #@92
    invoke-direct {p0, v0, v2}, Landroid/view/ViewRootImpl;->getValidLayoutRequesters(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    #@95
    move-result-object v10

    #@96
    .line 2206
    if-eqz v10, :cond_1

    #@98
    .line 2207
    move-object v6, v10

    #@99
    .line 2209
    .local v6, "finalRequesters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-static {}, Landroid/view/ViewRootImpl;->getRunQueue()Landroid/view/ViewRootImpl$RunQueue;

    #@9c
    move-result-object v0

    #@9d
    new-instance v2, Landroid/view/ViewRootImpl$2;

    #@9f
    invoke-direct {v2, p0, v6}, Landroid/view/ViewRootImpl$2;-><init>(Landroid/view/ViewRootImpl;Ljava/util/ArrayList;)V

    #@a2
    invoke-virtual {v0, v2}, Landroid/view/ViewRootImpl$RunQueue;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a5
    .line 2226
    .end local v6    # "finalRequesters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v7    # "i":I
    .end local v8    # "numValidRequests":I
    .end local v10    # "validLayoutRequesters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_1
    const-wide/16 v2, 0x8

    #@a7
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    #@aa
    .line 2228
    const/4 v0, 0x0

    #@ab
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mInLayout:Z

    #@ad
    .line 2158
    return-void

    #@ae
    .line 2225
    .end local v9    # "numViewsRequestingLayout":I
    :catchall_0
    move-exception v0

    #@af
    .line 2226
    const-wide/16 v2, 0x8

    #@b1
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    #@b4
    .line 2225
    throw v0
.end method

.method private performMeasure(II)V
    .locals 4
    .param p1, "childWidthMeasureSpec"    # I
    .param p2, "childHeightMeasureSpec"    # I

    #@0
    .prologue
    const-wide/16 v2, 0x8

    #@2
    .line 2098
    const-string/jumbo v0, "measure"

    #@5
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@8
    .line 2100
    :try_start_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@a
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    .line 2102
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    #@10
    .line 2097
    return-void

    #@11
    .line 2101
    :catchall_0
    move-exception v0

    #@12
    .line 2102
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    #@15
    .line 2101
    throw v0
.end method

.method private performTraversals()V
    .locals 67

    #@0
    .prologue
    .line 1284
    move-object/from16 v0, p0

    #@2
    iget-object v5, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@4
    .line 1292
    .local v5, "host":Landroid/view/View;
    if-eqz v5, :cond_f

    #@6
    move-object/from16 v0, p0

    #@8
    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mAdded:Z

    #@a
    if-eqz v4, :cond_f

    #@c
    .line 1295
    const/4 v4, 0x1

    #@d
    move-object/from16 v0, p0

    #@f
    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mIsInTraversal:Z

    #@11
    .line 1296
    const/4 v4, 0x1

    #@12
    move-object/from16 v0, p0

    #@14
    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mWillDrawSoon:Z

    #@16
    .line 1297
    const/16 v66, 0x0

    #@18
    .line 1298
    .local v66, "windowSizeMayChange":Z
    const/16 v47, 0x0

    #@1a
    .line 1299
    .local v47, "newSurface":Z
    const/16 v57, 0x0

    #@1c
    .line 1300
    .local v57, "surfaceChanged":Z
    move-object/from16 v0, p0

    #@1e
    iget-object v6, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@20
    .line 1305
    .local v6, "lp":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->getHostVisibility()I

    #@23
    move-result v60

    #@24
    .line 1306
    .local v60, "viewVisibility":I
    move-object/from16 v0, p0

    #@26
    iget v4, v0, Landroid/view/ViewRootImpl;->mViewVisibility:I

    #@28
    move/from16 v0, v60

    #@2a
    if-ne v4, v0, :cond_10

    #@2c
    .line 1307
    move-object/from16 v0, p0

    #@2e
    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mNewSurfaceNeeded:Z

    #@30
    move/from16 v61, v0

    #@32
    .line 1309
    :goto_0
    const/16 v51, 0x0

    #@34
    .line 1310
    .local v51, "params":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, p0

    #@36
    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    #@38
    if-eqz v4, :cond_0

    #@3a
    .line 1311
    const/4 v4, 0x0

    #@3b
    move-object/from16 v0, p0

    #@3d
    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    #@3f
    .line 1312
    const/16 v57, 0x1

    #@41
    .line 1313
    move-object/from16 v51, v6

    #@43
    .line 1315
    .end local v51    # "params":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    move-object/from16 v0, p0

    #@45
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    #@47
    invoke-virtual {v4}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    #@4a
    move-result-object v28

    #@4b
    .line 1316
    .local v28, "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    invoke-virtual/range {v28 .. v28}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    #@4e
    move-result v4

    #@4f
    move-object/from16 v0, p0

    #@51
    iget-boolean v10, v0, Landroid/view/ViewRootImpl;->mLastInCompatMode:Z

    #@53
    if-ne v4, v10, :cond_1

    #@55
    .line 1317
    move-object/from16 v51, v6

    #@57
    .line 1318
    .local v51, "params":Landroid/view/WindowManager$LayoutParams;
    const/4 v4, 0x1

    #@58
    move-object/from16 v0, p0

    #@5a
    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    #@5c
    .line 1319
    const/4 v4, 0x1

    #@5d
    move-object/from16 v0, p0

    #@5f
    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    #@61
    .line 1320
    move-object/from16 v0, p0

    #@63
    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mLastInCompatMode:Z

    #@65
    if-eqz v4, :cond_11

    #@67
    .line 1321
    move-object/from16 v0, v51

    #@69
    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@6b
    and-int/lit16 v4, v4, -0x81

    #@6d
    move-object/from16 v0, v51

    #@6f
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@71
    .line 1322
    const/4 v4, 0x0

    #@72
    move-object/from16 v0, p0

    #@74
    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mLastInCompatMode:Z

    #@76
    .line 1329
    .end local v51    # "params":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    :goto_1
    const/4 v4, 0x0

    #@77
    move-object/from16 v0, p0

    #@79
    iput v4, v0, Landroid/view/ViewRootImpl;->mWindowAttributesChangesFlag:I

    #@7b
    .line 1331
    move-object/from16 v0, p0

    #@7d
    iget-object v0, v0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    #@7f
    move-object/from16 v35, v0

    #@81
    .line 1332
    .local v35, "frame":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    #@83
    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mFirst:Z

    #@85
    if-eqz v4, :cond_13

    #@87
    .line 1333
    const/4 v4, 0x1

    #@88
    move-object/from16 v0, p0

    #@8a
    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    #@8c
    .line 1334
    const/4 v4, 0x1

    #@8d
    move-object/from16 v0, p0

    #@8f
    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    #@91
    .line 1336
    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    #@93
    const/16 v10, 0x7de

    #@95
    if-eq v4, v10, :cond_2

    #@97
    .line 1337
    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    #@99
    const/16 v10, 0x7db

    #@9b
    if-ne v4, v10, :cond_12

    #@9d
    .line 1339
    :cond_2
    new-instance v54, Landroid/graphics/Point;

    #@9f
    invoke-direct/range {v54 .. v54}, Landroid/graphics/Point;-><init>()V

    #@a2
    .line 1340
    .local v54, "size":Landroid/graphics/Point;
    move-object/from16 v0, p0

    #@a4
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    #@a6
    move-object/from16 v0, v54

    #@a8
    invoke-virtual {v4, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    #@ab
    .line 1341
    move-object/from16 v0, v54

    #@ad
    iget v8, v0, Landroid/graphics/Point;->x:I

    #@af
    .line 1342
    .local v8, "desiredWindowWidth":I
    move-object/from16 v0, v54

    #@b1
    iget v9, v0, Landroid/graphics/Point;->y:I

    #@b3
    .line 1353
    .end local v54    # "size":Landroid/graphics/Point;
    .local v9, "desiredWindowHeight":I
    :goto_2
    move-object/from16 v0, p0

    #@b5
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@b7
    const/4 v10, 0x1

    #@b8
    iput-boolean v10, v4, Landroid/view/View$AttachInfo;->mUse32BitDrawingCache:Z

    #@ba
    .line 1354
    move-object/from16 v0, p0

    #@bc
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@be
    const/4 v10, 0x0

    #@bf
    iput-boolean v10, v4, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    #@c1
    .line 1355
    move-object/from16 v0, p0

    #@c3
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@c5
    move/from16 v0, v60

    #@c7
    iput v0, v4, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    #@c9
    .line 1356
    move-object/from16 v0, p0

    #@cb
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@cd
    const/4 v10, 0x0

    #@ce
    iput-boolean v10, v4, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    #@d0
    .line 1357
    const/16 v61, 0x0

    #@d2
    .line 1358
    .local v61, "viewVisibilityChanged":Z
    move-object/from16 v0, p0

    #@d4
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mLastConfiguration:Landroid/content/res/Configuration;

    #@d6
    invoke-virtual {v5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    #@d9
    move-result-object v10

    #@da
    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@dd
    move-result-object v10

    #@de
    invoke-virtual {v4, v10}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    #@e1
    .line 1359
    move-object/from16 v0, p0

    #@e3
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@e5
    iget v4, v4, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    #@e7
    move-object/from16 v0, p0

    #@e9
    iput v4, v0, Landroid/view/ViewRootImpl;->mLastSystemUiVisibility:I

    #@eb
    .line 1361
    move-object/from16 v0, p0

    #@ed
    iget v4, v0, Landroid/view/ViewRootImpl;->mViewLayoutDirectionInitial:I

    #@ef
    const/4 v10, 0x2

    #@f0
    if-ne v4, v10, :cond_3

    #@f2
    .line 1362
    move-object/from16 v0, p0

    #@f4
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mLastConfiguration:Landroid/content/res/Configuration;

    #@f6
    invoke-virtual {v4}, Landroid/content/res/Configuration;->getLayoutDirection()I

    #@f9
    move-result v4

    #@fa
    invoke-virtual {v5, v4}, Landroid/view/View;->setLayoutDirection(I)V

    #@fd
    .line 1364
    :cond_3
    move-object/from16 v0, p0

    #@ff
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@101
    const/4 v10, 0x0

    #@102
    invoke-virtual {v5, v4, v10}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    #@105
    .line 1365
    move-object/from16 v0, p0

    #@107
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@109
    iget-object v4, v4, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    #@10b
    const/4 v10, 0x1

    #@10c
    invoke-virtual {v4, v10}, Landroid/view/ViewTreeObserver;->dispatchOnWindowAttachedChange(Z)V

    #@10f
    .line 1366
    move-object/from16 v0, p0

    #@111
    invoke-virtual {v0, v5}, Landroid/view/ViewRootImpl;->dispatchApplyInsets(Landroid/view/View;)V

    #@114
    .line 1381
    .end local v61    # "viewVisibilityChanged":Z
    :cond_4
    :goto_3
    if-eqz v61, :cond_7

    #@116
    .line 1382
    move-object/from16 v0, p0

    #@118
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@11a
    move/from16 v0, v60

    #@11c
    iput v0, v4, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    #@11e
    .line 1383
    move/from16 v0, v60

    #@120
    invoke-virtual {v5, v0}, Landroid/view/View;->dispatchWindowVisibilityChanged(I)V

    #@123
    .line 1384
    if-nez v60, :cond_5

    #@125
    move-object/from16 v0, p0

    #@127
    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mNewSurfaceNeeded:Z

    #@129
    if-eqz v4, :cond_6

    #@12b
    .line 1385
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->destroyHardwareResources()V

    #@12e
    .line 1387
    :cond_6
    const/16 v4, 0x8

    #@130
    move/from16 v0, v60

    #@132
    if-ne v0, v4, :cond_7

    #@134
    .line 1390
    const/4 v4, 0x0

    #@135
    move-object/from16 v0, p0

    #@137
    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mHasHadWindowFocus:Z

    #@139
    .line 1395
    :cond_7
    move-object/from16 v0, p0

    #@13b
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@13d
    iget v4, v4, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    #@13f
    if-eqz v4, :cond_8

    #@141
    .line 1396
    invoke-virtual {v5}, Landroid/view/View;->clearAccessibilityFocus()V

    #@144
    .line 1400
    :cond_8
    invoke-static {}, Landroid/view/ViewRootImpl;->getRunQueue()Landroid/view/ViewRootImpl$RunQueue;

    #@147
    move-result-object v4

    #@148
    move-object/from16 v0, p0

    #@14a
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@14c
    iget-object v10, v10, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    #@14e
    invoke-virtual {v4, v10}, Landroid/view/ViewRootImpl$RunQueue;->executeActions(Landroid/os/Handler;)V

    #@151
    .line 1402
    const/16 v43, 0x0

    #@153
    .line 1404
    .local v43, "insetsChanged":Z
    move-object/from16 v0, p0

    #@155
    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    #@157
    if-eqz v4, :cond_16

    #@159
    move-object/from16 v0, p0

    #@15b
    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mStopped:Z

    #@15d
    if-eqz v4, :cond_15

    #@15f
    move-object/from16 v0, p0

    #@161
    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    #@163
    move/from16 v45, v0

    #@165
    .line 1405
    :goto_4
    if-eqz v45, :cond_a

    #@167
    .line 1407
    move-object/from16 v0, p0

    #@169
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@16b
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@16e
    move-result-object v4

    #@16f
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@172
    move-result-object v7

    #@173
    .line 1409
    .local v7, "res":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    #@175
    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mFirst:Z

    #@177
    if-eqz v4, :cond_18

    #@179
    .line 1412
    move-object/from16 v0, p0

    #@17b
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@17d
    move-object/from16 v0, p0

    #@17f
    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mAddedTouchMode:Z

    #@181
    if-eqz v4, :cond_17

    #@183
    const/4 v4, 0x0

    #@184
    :goto_5
    iput-boolean v4, v10, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    #@186
    .line 1413
    move-object/from16 v0, p0

    #@188
    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mAddedTouchMode:Z

    #@18a
    move-object/from16 v0, p0

    #@18c
    invoke-direct {v0, v4}, Landroid/view/ViewRootImpl;->ensureTouchModeLocally(Z)Z

    #@18f
    :cond_9
    :goto_6
    move-object/from16 v4, p0

    #@191
    .line 1452
    invoke-direct/range {v4 .. v9}, Landroid/view/ViewRootImpl;->measureHierarchy(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/content/res/Resources;II)Z

    #@194
    move-result v4

    #@195
    or-int v66, v66, v4

    #@197
    .line 1456
    .end local v7    # "res":Landroid/content/res/Resources;
    .end local v66    # "windowSizeMayChange":Z
    :cond_a
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->collectViewAttributes()Z

    #@19a
    move-result v4

    #@19b
    if-eqz v4, :cond_b

    #@19d
    .line 1457
    move-object/from16 v51, v6

    #@19f
    .line 1459
    :cond_b
    move-object/from16 v0, p0

    #@1a1
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@1a3
    iget-boolean v4, v4, Landroid/view/View$AttachInfo;->mForceReportNewAttributes:Z

    #@1a5
    if-eqz v4, :cond_c

    #@1a7
    .line 1460
    move-object/from16 v0, p0

    #@1a9
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@1ab
    const/4 v10, 0x0

    #@1ac
    iput-boolean v10, v4, Landroid/view/View$AttachInfo;->mForceReportNewAttributes:Z

    #@1ae
    .line 1461
    move-object/from16 v51, v6

    #@1b0
    .line 1464
    :cond_c
    move-object/from16 v0, p0

    #@1b2
    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mFirst:Z

    #@1b4
    if-nez v4, :cond_d

    #@1b6
    move-object/from16 v0, p0

    #@1b8
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@1ba
    iget-boolean v4, v4, Landroid/view/View$AttachInfo;->mViewVisibilityChanged:Z

    #@1bc
    if-eqz v4, :cond_23

    #@1be
    .line 1465
    :cond_d
    move-object/from16 v0, p0

    #@1c0
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@1c2
    const/4 v10, 0x0

    #@1c3
    iput-boolean v10, v4, Landroid/view/View$AttachInfo;->mViewVisibilityChanged:Z

    #@1c5
    .line 1466
    move-object/from16 v0, p0

    #@1c7
    iget v4, v0, Landroid/view/ViewRootImpl;->mSoftInputMode:I

    #@1c9
    and-int/lit16 v0, v4, 0xf0

    #@1cb
    move/from16 v53, v0

    #@1cd
    .line 1470
    .local v53, "resizeMode":I
    if-nez v53, :cond_23

    #@1cf
    .line 1471
    move-object/from16 v0, p0

    #@1d1
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@1d3
    iget-object v4, v4, Landroid/view/View$AttachInfo;->mScrollContainers:Ljava/util/ArrayList;

    #@1d5
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@1d8
    move-result v22

    #@1d9
    .line 1472
    .local v22, "N":I
    const/16 v40, 0x0

    #@1db
    .local v40, "i":I
    :goto_7
    move/from16 v0, v40

    #@1dd
    move/from16 v1, v22

    #@1df
    if-ge v0, v1, :cond_21

    #@1e1
    .line 1473
    move-object/from16 v0, p0

    #@1e3
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@1e5
    iget-object v4, v4, Landroid/view/View$AttachInfo;->mScrollContainers:Ljava/util/ArrayList;

    #@1e7
    move/from16 v0, v40

    #@1e9
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1ec
    move-result-object v4

    #@1ed
    check-cast v4, Landroid/view/View;

    #@1ef
    invoke-virtual {v4}, Landroid/view/View;->isShown()Z

    #@1f2
    move-result v4

    #@1f3
    if-eqz v4, :cond_e

    #@1f5
    .line 1474
    const/16 v53, 0x10

    #@1f7
    .line 1472
    :cond_e
    add-int/lit8 v40, v40, 0x1

    #@1f9
    goto :goto_7

    #@1fa
    .line 1293
    .end local v6    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v8    # "desiredWindowWidth":I
    .end local v9    # "desiredWindowHeight":I
    .end local v22    # "N":I
    .end local v28    # "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    .end local v35    # "frame":Landroid/graphics/Rect;
    .end local v40    # "i":I
    .end local v43    # "insetsChanged":Z
    .end local v47    # "newSurface":Z
    .end local v53    # "resizeMode":I
    .end local v57    # "surfaceChanged":Z
    .end local v60    # "viewVisibility":I
    :cond_f
    return-void

    #@1fb
    .line 1306
    .restart local v6    # "lp":Landroid/view/WindowManager$LayoutParams;
    .restart local v47    # "newSurface":Z
    .restart local v57    # "surfaceChanged":Z
    .restart local v60    # "viewVisibility":I
    .restart local v66    # "windowSizeMayChange":Z
    :cond_10
    const/16 v61, 0x1

    #@1fd
    .restart local v61    # "viewVisibilityChanged":Z
    goto/16 :goto_0

    #@1ff
    .line 1324
    .end local v61    # "viewVisibilityChanged":Z
    .restart local v28    # "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    .restart local v51    # "params":Landroid/view/WindowManager$LayoutParams;
    :cond_11
    move-object/from16 v0, v51

    #@201
    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@203
    or-int/lit16 v4, v4, 0x80

    #@205
    move-object/from16 v0, v51

    #@207
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@209
    .line 1325
    const/4 v4, 0x1

    #@20a
    move-object/from16 v0, p0

    #@20c
    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mLastInCompatMode:Z

    #@20e
    goto/16 :goto_1

    #@210
    .line 1345
    .end local v51    # "params":Landroid/view/WindowManager$LayoutParams;
    .restart local v35    # "frame":Landroid/graphics/Rect;
    :cond_12
    move-object/from16 v0, p0

    #@212
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@214
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@217
    move-result-object v4

    #@218
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@21b
    move-result-object v4

    #@21c
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@21f
    move-result-object v50

    #@220
    .line 1346
    .local v50, "packageMetrics":Landroid/util/DisplayMetrics;
    move-object/from16 v0, v50

    #@222
    iget v8, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    #@224
    .line 1347
    .restart local v8    # "desiredWindowWidth":I
    move-object/from16 v0, v50

    #@226
    iget v9, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    #@228
    .restart local v9    # "desiredWindowHeight":I
    goto/16 :goto_2

    #@22a
    .line 1370
    .end local v8    # "desiredWindowWidth":I
    .end local v9    # "desiredWindowHeight":I
    .end local v50    # "packageMetrics":Landroid/util/DisplayMetrics;
    :cond_13
    invoke-virtual/range {v35 .. v35}, Landroid/graphics/Rect;->width()I

    #@22d
    move-result v8

    #@22e
    .line 1371
    .restart local v8    # "desiredWindowWidth":I
    invoke-virtual/range {v35 .. v35}, Landroid/graphics/Rect;->height()I

    #@231
    move-result v9

    #@232
    .line 1372
    .restart local v9    # "desiredWindowHeight":I
    move-object/from16 v0, p0

    #@234
    iget v4, v0, Landroid/view/ViewRootImpl;->mWidth:I

    #@236
    if-ne v8, v4, :cond_14

    #@238
    move-object/from16 v0, p0

    #@23a
    iget v4, v0, Landroid/view/ViewRootImpl;->mHeight:I

    #@23c
    if-eq v9, v4, :cond_4

    #@23e
    .line 1375
    :cond_14
    const/4 v4, 0x1

    #@23f
    move-object/from16 v0, p0

    #@241
    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    #@243
    .line 1376
    const/4 v4, 0x1

    #@244
    move-object/from16 v0, p0

    #@246
    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    #@248
    .line 1377
    const/16 v66, 0x1

    #@24a
    goto/16 :goto_3

    #@24c
    .line 1404
    .restart local v43    # "insetsChanged":Z
    :cond_15
    const/16 v45, 0x1

    #@24e
    .local v45, "layoutRequested":Z
    goto/16 :goto_4

    #@250
    .end local v45    # "layoutRequested":Z
    :cond_16
    const/16 v45, 0x0

    #@252
    .restart local v45    # "layoutRequested":Z
    goto/16 :goto_4

    #@254
    .line 1412
    .end local v45    # "layoutRequested":Z
    .restart local v7    # "res":Landroid/content/res/Resources;
    :cond_17
    const/4 v4, 0x1

    #@255
    goto/16 :goto_5

    #@257
    .line 1415
    :cond_18
    move-object/from16 v0, p0

    #@259
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    #@25b
    move-object/from16 v0, p0

    #@25d
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@25f
    iget-object v10, v10, Landroid/view/View$AttachInfo;->mOverscanInsets:Landroid/graphics/Rect;

    #@261
    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@264
    move-result v4

    #@265
    if-nez v4, :cond_19

    #@267
    .line 1416
    const/16 v43, 0x1

    #@269
    .line 1418
    :cond_19
    move-object/from16 v0, p0

    #@26b
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    #@26d
    move-object/from16 v0, p0

    #@26f
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@271
    iget-object v10, v10, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    #@273
    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@276
    move-result v4

    #@277
    if-nez v4, :cond_1a

    #@279
    .line 1419
    const/16 v43, 0x1

    #@27b
    .line 1421
    :cond_1a
    move-object/from16 v0, p0

    #@27d
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    #@27f
    move-object/from16 v0, p0

    #@281
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@283
    iget-object v10, v10, Landroid/view/View$AttachInfo;->mStableInsets:Landroid/graphics/Rect;

    #@285
    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@288
    move-result v4

    #@289
    if-nez v4, :cond_1b

    #@28b
    .line 1422
    const/16 v43, 0x1

    #@28d
    .line 1424
    :cond_1b
    move-object/from16 v0, p0

    #@28f
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    #@291
    move-object/from16 v0, p0

    #@293
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@295
    iget-object v10, v10, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    #@297
    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@29a
    move-result v4

    #@29b
    if-nez v4, :cond_1c

    #@29d
    .line 1425
    move-object/from16 v0, p0

    #@29f
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@2a1
    iget-object v4, v4, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    #@2a3
    move-object/from16 v0, p0

    #@2a5
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    #@2a7
    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@2aa
    .line 1429
    :cond_1c
    move-object/from16 v0, p0

    #@2ac
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingOutsets:Landroid/graphics/Rect;

    #@2ae
    move-object/from16 v0, p0

    #@2b0
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@2b2
    iget-object v10, v10, Landroid/view/View$AttachInfo;->mOutsets:Landroid/graphics/Rect;

    #@2b4
    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@2b7
    move-result v4

    #@2b8
    if-nez v4, :cond_1d

    #@2ba
    .line 1430
    const/16 v43, 0x1

    #@2bc
    .line 1432
    :cond_1d
    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    #@2be
    const/4 v10, -0x2

    #@2bf
    if-eq v4, v10, :cond_1e

    #@2c1
    .line 1433
    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    #@2c3
    const/4 v10, -0x2

    #@2c4
    if-ne v4, v10, :cond_9

    #@2c6
    .line 1434
    :cond_1e
    const/16 v66, 0x1

    #@2c8
    .line 1436
    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    #@2ca
    const/16 v10, 0x7de

    #@2cc
    if-eq v4, v10, :cond_1f

    #@2ce
    .line 1437
    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    #@2d0
    const/16 v10, 0x7db

    #@2d2
    if-ne v4, v10, :cond_20

    #@2d4
    .line 1439
    :cond_1f
    new-instance v54, Landroid/graphics/Point;

    #@2d6
    invoke-direct/range {v54 .. v54}, Landroid/graphics/Point;-><init>()V

    #@2d9
    .line 1440
    .restart local v54    # "size":Landroid/graphics/Point;
    move-object/from16 v0, p0

    #@2db
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    #@2dd
    move-object/from16 v0, v54

    #@2df
    invoke-virtual {v4, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    #@2e2
    .line 1441
    move-object/from16 v0, v54

    #@2e4
    iget v8, v0, Landroid/graphics/Point;->x:I

    #@2e6
    .line 1442
    move-object/from16 v0, v54

    #@2e8
    iget v9, v0, Landroid/graphics/Point;->y:I

    #@2ea
    goto/16 :goto_6

    #@2ec
    .line 1444
    .end local v54    # "size":Landroid/graphics/Point;
    :cond_20
    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@2ef
    move-result-object v50

    #@2f0
    .line 1445
    .restart local v50    # "packageMetrics":Landroid/util/DisplayMetrics;
    move-object/from16 v0, v50

    #@2f2
    iget v8, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    #@2f4
    .line 1446
    move-object/from16 v0, v50

    #@2f6
    iget v9, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    #@2f8
    goto/16 :goto_6

    #@2fa
    .line 1477
    .end local v7    # "res":Landroid/content/res/Resources;
    .end local v50    # "packageMetrics":Landroid/util/DisplayMetrics;
    .end local v66    # "windowSizeMayChange":Z
    .restart local v22    # "N":I
    .restart local v40    # "i":I
    .restart local v53    # "resizeMode":I
    :cond_21
    if-nez v53, :cond_22

    #@2fc
    .line 1478
    const/16 v53, 0x20

    #@2fe
    .line 1480
    :cond_22
    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    #@300
    and-int/lit16 v4, v4, 0xf0

    #@302
    move/from16 v0, v53

    #@304
    if-eq v4, v0, :cond_23

    #@306
    .line 1482
    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    #@308
    and-int/lit16 v4, v4, -0xf1

    #@30a
    or-int v4, v4, v53

    #@30c
    iput v4, v6, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    #@30e
    .line 1485
    move-object/from16 v51, v6

    #@310
    .line 1490
    .end local v22    # "N":I
    .end local v40    # "i":I
    .end local v53    # "resizeMode":I
    :cond_23
    if-eqz v51, :cond_25

    #@312
    .line 1491
    iget v4, v5, Landroid/view/View;->mPrivateFlags:I

    #@314
    and-int/lit16 v4, v4, 0x200

    #@316
    if-eqz v4, :cond_24

    #@318
    .line 1492
    move-object/from16 v0, v51

    #@31a
    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    #@31c
    invoke-static {v4}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    #@31f
    move-result v4

    #@320
    if-nez v4, :cond_24

    #@322
    .line 1493
    const/4 v4, -0x3

    #@323
    move-object/from16 v0, v51

    #@325
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    #@327
    .line 1496
    :cond_24
    move-object/from16 v0, p0

    #@329
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@32b
    move-object/from16 v0, v51

    #@32d
    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@32f
    .line 1497
    const/high16 v11, 0x2000000

    #@331
    .line 1496
    and-int/2addr v4, v11

    #@332
    if-eqz v4, :cond_3a

    #@334
    const/4 v4, 0x1

    #@335
    :goto_8
    iput-boolean v4, v10, Landroid/view/View$AttachInfo;->mOverscanRequested:Z

    #@337
    .line 1500
    :cond_25
    move-object/from16 v0, p0

    #@339
    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mApplyInsetsRequested:Z

    #@33b
    if-eqz v4, :cond_26

    #@33d
    .line 1501
    const/4 v4, 0x0

    #@33e
    move-object/from16 v0, p0

    #@340
    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mApplyInsetsRequested:Z

    #@342
    .line 1502
    move-object/from16 v0, p0

    #@344
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@346
    iget-boolean v4, v4, Landroid/view/View$AttachInfo;->mOverscanRequested:Z

    #@348
    move-object/from16 v0, p0

    #@34a
    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mLastOverscanRequested:Z

    #@34c
    .line 1503
    move-object/from16 v0, p0

    #@34e
    invoke-virtual {v0, v5}, Landroid/view/ViewRootImpl;->dispatchApplyInsets(Landroid/view/View;)V

    #@351
    .line 1504
    move-object/from16 v0, p0

    #@353
    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    #@355
    if-eqz v4, :cond_26

    #@357
    .line 1509
    move-object/from16 v0, p0

    #@359
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@35b
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@35e
    move-result-object v4

    #@35f
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@362
    move-result-object v13

    #@363
    move-object/from16 v10, p0

    #@365
    move-object v11, v5

    #@366
    move-object v12, v6

    #@367
    move v14, v8

    #@368
    move v15, v9

    #@369
    .line 1508
    invoke-direct/range {v10 .. v15}, Landroid/view/ViewRootImpl;->measureHierarchy(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/content/res/Resources;II)Z

    #@36c
    move-result v4

    #@36d
    or-int v66, v66, v4

    #@36f
    .line 1514
    :cond_26
    if-eqz v45, :cond_27

    #@371
    .line 1518
    const/4 v4, 0x0

    #@372
    move-object/from16 v0, p0

    #@374
    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    #@376
    .line 1521
    :cond_27
    if-eqz v45, :cond_3f

    #@378
    if-eqz v66, :cond_3f

    #@37a
    .line 1522
    move-object/from16 v0, p0

    #@37c
    iget v4, v0, Landroid/view/ViewRootImpl;->mWidth:I

    #@37e
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    #@381
    move-result v10

    #@382
    if-ne v4, v10, :cond_28

    #@384
    move-object/from16 v0, p0

    #@386
    iget v4, v0, Landroid/view/ViewRootImpl;->mHeight:I

    #@388
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    #@38b
    move-result v10

    #@38c
    if-eq v4, v10, :cond_3b

    #@38e
    :cond_28
    const/16 v65, 0x1

    #@390
    .line 1532
    .local v65, "windowShouldResize":Z
    :goto_9
    move-object/from16 v0, p0

    #@392
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@394
    iget-object v4, v4, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    #@396
    invoke-virtual {v4}, Landroid/view/ViewTreeObserver;->hasComputeInternalInsetsListeners()Z

    #@399
    move-result v4

    #@39a
    if-nez v4, :cond_40

    #@39c
    .line 1533
    move-object/from16 v0, p0

    #@39e
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@3a0
    iget-boolean v0, v4, Landroid/view/View$AttachInfo;->mHasNonEmptyGivenInternalInsets:Z

    #@3a2
    move/from16 v29, v0

    #@3a4
    .line 1535
    :goto_a
    const/16 v44, 0x0

    #@3a6
    .line 1536
    .local v44, "insetsPending":Z
    const/16 v52, 0x0

    #@3a8
    .line 1538
    .local v52, "relayoutResult":I
    move-object/from16 v0, p0

    #@3aa
    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mFirst:Z

    #@3ac
    if-nez v4, :cond_29

    #@3ae
    if-nez v65, :cond_29

    #@3b0
    if-nez v43, :cond_29

    #@3b2
    if-nez v61, :cond_29

    #@3b4
    .line 1539
    if-eqz v51, :cond_6a

    #@3b6
    .line 1541
    :cond_29
    if-nez v60, :cond_2a

    #@3b8
    .line 1551
    if-eqz v29, :cond_42

    #@3ba
    move-object/from16 v0, p0

    #@3bc
    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mFirst:Z

    #@3be
    if-nez v4, :cond_41

    #@3c0
    move/from16 v44, v61

    #@3c2
    .line 1554
    .end local v44    # "insetsPending":Z
    :cond_2a
    :goto_b
    move-object/from16 v0, p0

    #@3c4
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@3c6
    if-eqz v4, :cond_2b

    #@3c8
    .line 1555
    move-object/from16 v0, p0

    #@3ca
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@3cc
    iget-object v4, v4, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@3ce
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@3d1
    .line 1556
    const/4 v4, 0x1

    #@3d2
    move-object/from16 v0, p0

    #@3d4
    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mDrawingAllowed:Z

    #@3d6
    .line 1559
    :cond_2b
    const/16 v39, 0x0

    #@3d8
    .line 1560
    .local v39, "hwInitialized":Z
    const/16 v30, 0x0

    #@3da
    .line 1561
    .local v30, "contentInsetsChanged":Z
    move-object/from16 v0, p0

    #@3dc
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    #@3de
    invoke-virtual {v4}, Landroid/view/Surface;->isValid()Z

    #@3e1
    move-result v36

    #@3e2
    .line 1569
    .local v36, "hadSurface":Z
    :try_start_0
    move-object/from16 v0, p0

    #@3e4
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@3e6
    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    #@3e8
    if-eqz v4, :cond_2d

    #@3ea
    .line 1573
    move-object/from16 v0, p0

    #@3ec
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@3ee
    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    #@3f0
    move-object/from16 v0, p0

    #@3f2
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    #@3f4
    invoke-virtual {v4, v10}, Landroid/view/HardwareRenderer;->pauseSurface(Landroid/view/Surface;)Z

    #@3f7
    move-result v4

    #@3f8
    if-eqz v4, :cond_2c

    #@3fa
    .line 1576
    move-object/from16 v0, p0

    #@3fc
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mDirty:Landroid/graphics/Rect;

    #@3fe
    move-object/from16 v0, p0

    #@400
    iget v10, v0, Landroid/view/ViewRootImpl;->mWidth:I

    #@402
    move-object/from16 v0, p0

    #@404
    iget v11, v0, Landroid/view/ViewRootImpl;->mHeight:I

    #@406
    const/4 v12, 0x0

    #@407
    const/16 v17, 0x0

    #@409
    move/from16 v0, v17

    #@40b
    invoke-virtual {v4, v12, v0, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    #@40e
    .line 1578
    :cond_2c
    move-object/from16 v0, p0

    #@410
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    #@412
    iget-object v4, v4, Landroid/view/Choreographer;->mFrameInfo:Landroid/view/FrameInfo;

    #@414
    const-wide/16 v10, 0x1

    #@416
    invoke-virtual {v4, v10, v11}, Landroid/view/FrameInfo;->addFlags(J)V

    #@419
    .line 1580
    :cond_2d
    move-object/from16 v0, p0

    #@41b
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    #@41d
    invoke-virtual {v4}, Landroid/view/Surface;->getGenerationId()I

    #@420
    move-result v58

    #@421
    .line 1581
    .local v58, "surfaceGenerationId":I
    move-object/from16 v0, p0

    #@423
    move-object/from16 v1, v51

    #@425
    move/from16 v2, v60

    #@427
    move/from16 v3, v44

    #@429
    invoke-direct {v0, v1, v2, v3}, Landroid/view/ViewRootImpl;->relayoutWindow(Landroid/view/WindowManager$LayoutParams;IZ)I

    #@42c
    move-result v52

    #@42d
    .line 1591
    move-object/from16 v0, p0

    #@42f
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingConfiguration:Landroid/content/res/Configuration;

    #@431
    iget v4, v4, Landroid/content/res/Configuration;->seq:I

    #@433
    if-eqz v4, :cond_2e

    #@435
    .line 1594
    move-object/from16 v0, p0

    #@437
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mPendingConfiguration:Landroid/content/res/Configuration;

    #@439
    move-object/from16 v0, p0

    #@43b
    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mFirst:Z

    #@43d
    if-eqz v4, :cond_43

    #@43f
    const/4 v4, 0x0

    #@440
    :goto_c
    move-object/from16 v0, p0

    #@442
    invoke-virtual {v0, v10, v4}, Landroid/view/ViewRootImpl;->updateConfiguration(Landroid/content/res/Configuration;Z)V

    #@445
    .line 1595
    move-object/from16 v0, p0

    #@447
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingConfiguration:Landroid/content/res/Configuration;

    #@449
    const/4 v10, 0x0

    #@44a
    iput v10, v4, Landroid/content/res/Configuration;->seq:I

    #@44c
    .line 1598
    :cond_2e
    move-object/from16 v0, p0

    #@44e
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    #@450
    .line 1599
    move-object/from16 v0, p0

    #@452
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@454
    iget-object v10, v10, Landroid/view/View$AttachInfo;->mOverscanInsets:Landroid/graphics/Rect;

    #@456
    .line 1598
    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@459
    move-result v4

    #@45a
    if-eqz v4, :cond_44

    #@45c
    const/16 v49, 0x0

    #@45e
    .line 1600
    .local v49, "overscanInsetsChanged":Z
    :goto_d
    move-object/from16 v0, p0

    #@460
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    #@462
    .line 1601
    move-object/from16 v0, p0

    #@464
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@466
    iget-object v10, v10, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    #@468
    .line 1600
    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@46b
    move-result v4

    #@46c
    if-eqz v4, :cond_45

    #@46e
    const/16 v30, 0x0

    #@470
    .line 1602
    :goto_e
    move-object/from16 v0, p0

    #@472
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    #@474
    .line 1603
    move-object/from16 v0, p0

    #@476
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@478
    iget-object v10, v10, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    #@47a
    .line 1602
    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@47d
    move-result v4

    #@47e
    if-eqz v4, :cond_46

    #@480
    const/16 v62, 0x0

    #@482
    .line 1604
    .local v62, "visibleInsetsChanged":Z
    :goto_f
    move-object/from16 v0, p0

    #@484
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    #@486
    .line 1605
    move-object/from16 v0, p0

    #@488
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@48a
    iget-object v10, v10, Landroid/view/View$AttachInfo;->mStableInsets:Landroid/graphics/Rect;

    #@48c
    .line 1604
    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@48f
    move-result v4

    #@490
    if-eqz v4, :cond_47

    #@492
    const/16 v56, 0x0

    #@494
    .line 1606
    .local v56, "stableInsetsChanged":Z
    :goto_10
    move-object/from16 v0, p0

    #@496
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingOutsets:Landroid/graphics/Rect;

    #@498
    move-object/from16 v0, p0

    #@49a
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@49c
    iget-object v10, v10, Landroid/view/View$AttachInfo;->mOutsets:Landroid/graphics/Rect;

    #@49e
    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@4a1
    move-result v4

    #@4a2
    if-eqz v4, :cond_48

    #@4a4
    const/16 v48, 0x0

    #@4a6
    .line 1607
    .local v48, "outsetsChanged":Z
    :goto_11
    if-eqz v30, :cond_30

    #@4a8
    .line 1608
    move-object/from16 v0, p0

    #@4aa
    iget v4, v0, Landroid/view/ViewRootImpl;->mWidth:I

    #@4ac
    if-lez v4, :cond_2f

    #@4ae
    move-object/from16 v0, p0

    #@4b0
    iget v4, v0, Landroid/view/ViewRootImpl;->mHeight:I

    #@4b2
    if-lez v4, :cond_2f

    #@4b4
    if-eqz v6, :cond_2f

    #@4b6
    .line 1609
    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    #@4b8
    iget v10, v6, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    #@4ba
    or-int/2addr v4, v10

    #@4bb
    and-int/lit16 v4, v4, 0x600

    #@4bd
    if-nez v4, :cond_2f

    #@4bf
    .line 1611
    move-object/from16 v0, p0

    #@4c1
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    #@4c3
    if-eqz v4, :cond_2f

    #@4c5
    move-object/from16 v0, p0

    #@4c7
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    #@4c9
    invoke-virtual {v4}, Landroid/view/Surface;->isValid()Z

    #@4cc
    move-result v4

    #@4cd
    .line 1608
    if-eqz v4, :cond_2f

    #@4cf
    .line 1612
    move-object/from16 v0, p0

    #@4d1
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@4d3
    iget-boolean v4, v4, Landroid/view/View$AttachInfo;->mTurnOffWindowResizeAnim:Z

    #@4d5
    if-eqz v4, :cond_49

    #@4d7
    .line 1670
    :cond_2f
    :goto_12
    move-object/from16 v0, p0

    #@4d9
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@4db
    iget-object v4, v4, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    #@4dd
    move-object/from16 v0, p0

    #@4df
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    #@4e1
    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@4e4
    .line 1674
    :cond_30
    if-eqz v49, :cond_31

    #@4e6
    .line 1675
    move-object/from16 v0, p0

    #@4e8
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@4ea
    iget-object v4, v4, Landroid/view/View$AttachInfo;->mOverscanInsets:Landroid/graphics/Rect;

    #@4ec
    move-object/from16 v0, p0

    #@4ee
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    #@4f0
    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@4f3
    .line 1679
    const/16 v30, 0x1

    #@4f5
    .line 1681
    :cond_31
    if-eqz v56, :cond_32

    #@4f7
    .line 1682
    move-object/from16 v0, p0

    #@4f9
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@4fb
    iget-object v4, v4, Landroid/view/View$AttachInfo;->mStableInsets:Landroid/graphics/Rect;

    #@4fd
    move-object/from16 v0, p0

    #@4ff
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    #@501
    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@504
    .line 1686
    const/16 v30, 0x1

    #@506
    .line 1688
    :cond_32
    if-nez v30, :cond_33

    #@508
    move-object/from16 v0, p0

    #@50a
    iget v4, v0, Landroid/view/ViewRootImpl;->mLastSystemUiVisibility:I

    #@50c
    .line 1689
    move-object/from16 v0, p0

    #@50e
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@510
    iget v10, v10, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    #@512
    .line 1688
    if-eq v4, v10, :cond_4a

    #@514
    .line 1692
    :cond_33
    :goto_13
    move-object/from16 v0, p0

    #@516
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@518
    iget v4, v4, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    #@51a
    move-object/from16 v0, p0

    #@51c
    iput v4, v0, Landroid/view/ViewRootImpl;->mLastSystemUiVisibility:I

    #@51e
    .line 1693
    move-object/from16 v0, p0

    #@520
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@522
    iget-boolean v4, v4, Landroid/view/View$AttachInfo;->mOverscanRequested:Z

    #@524
    move-object/from16 v0, p0

    #@526
    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mLastOverscanRequested:Z

    #@528
    .line 1694
    move-object/from16 v0, p0

    #@52a
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@52c
    iget-object v4, v4, Landroid/view/View$AttachInfo;->mOutsets:Landroid/graphics/Rect;

    #@52e
    move-object/from16 v0, p0

    #@530
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mPendingOutsets:Landroid/graphics/Rect;

    #@532
    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@535
    .line 1695
    const/4 v4, 0x0

    #@536
    move-object/from16 v0, p0

    #@538
    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mApplyInsetsRequested:Z

    #@53a
    .line 1696
    move-object/from16 v0, p0

    #@53c
    invoke-virtual {v0, v5}, Landroid/view/ViewRootImpl;->dispatchApplyInsets(Landroid/view/View;)V

    #@53f
    .line 1698
    :cond_34
    if-eqz v62, :cond_35

    #@541
    .line 1699
    move-object/from16 v0, p0

    #@543
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@545
    iget-object v4, v4, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    #@547
    move-object/from16 v0, p0

    #@549
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    #@54b
    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@54e
    .line 1704
    :cond_35
    if-nez v36, :cond_4b

    #@550
    .line 1705
    move-object/from16 v0, p0

    #@552
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    #@554
    invoke-virtual {v4}, Landroid/view/Surface;->isValid()Z

    #@557
    move-result v4

    #@558
    if-eqz v4, :cond_36

    #@55a
    .line 1713
    const/16 v47, 0x1

    #@55c
    .line 1714
    const/4 v4, 0x1

    #@55d
    move-object/from16 v0, p0

    #@55f
    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    #@561
    .line 1715
    move-object/from16 v0, p0

    #@563
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPreviousTransparentRegion:Landroid/graphics/Region;

    #@565
    invoke-virtual {v4}, Landroid/graphics/Region;->setEmpty()V

    #@568
    .line 1720
    move-object/from16 v0, p0

    #@56a
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@56c
    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@56e
    if-eqz v4, :cond_36

    #@570
    .line 1722
    :try_start_1
    move-object/from16 v0, p0

    #@572
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@574
    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    #@576
    .line 1723
    move-object/from16 v0, p0

    #@578
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    #@57a
    .line 1722
    invoke-virtual {v4, v10}, Landroid/view/HardwareRenderer;->initialize(Landroid/view/Surface;)Z

    #@57d
    move-result v39

    #@57e
    .line 1724
    .local v39, "hwInitialized":Z
    if-eqz v39, :cond_36

    #@580
    iget v4, v5, Landroid/view/View;->mPrivateFlags:I

    #@582
    and-int/lit16 v4, v4, 0x200

    #@584
    if-nez v4, :cond_36

    #@586
    .line 1728
    move-object/from16 v0, p0

    #@588
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    #@58a
    invoke-virtual {v4}, Landroid/view/Surface;->allocateBuffers()V
    :try_end_1
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@58d
    .line 1771
    .end local v39    # "hwInitialized":Z
    .end local v48    # "outsetsChanged":Z
    .end local v49    # "overscanInsetsChanged":Z
    .end local v56    # "stableInsetsChanged":Z
    .end local v58    # "surfaceGenerationId":I
    .end local v62    # "visibleInsetsChanged":Z
    :cond_36
    :goto_14
    move-object/from16 v0, p0

    #@58f
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@591
    move-object/from16 v0, v35

    #@593
    iget v10, v0, Landroid/graphics/Rect;->left:I

    #@595
    iput v10, v4, Landroid/view/View$AttachInfo;->mWindowLeft:I

    #@597
    .line 1772
    move-object/from16 v0, p0

    #@599
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@59b
    move-object/from16 v0, v35

    #@59d
    iget v10, v0, Landroid/graphics/Rect;->top:I

    #@59f
    iput v10, v4, Landroid/view/View$AttachInfo;->mWindowTop:I

    #@5a1
    .line 1777
    move-object/from16 v0, p0

    #@5a3
    iget v4, v0, Landroid/view/ViewRootImpl;->mWidth:I

    #@5a5
    invoke-virtual/range {v35 .. v35}, Landroid/graphics/Rect;->width()I

    #@5a8
    move-result v10

    #@5a9
    if-ne v4, v10, :cond_37

    #@5ab
    move-object/from16 v0, p0

    #@5ad
    iget v4, v0, Landroid/view/ViewRootImpl;->mHeight:I

    #@5af
    invoke-virtual/range {v35 .. v35}, Landroid/graphics/Rect;->height()I

    #@5b2
    move-result v10

    #@5b3
    if-eq v4, v10, :cond_38

    #@5b5
    .line 1778
    :cond_37
    invoke-virtual/range {v35 .. v35}, Landroid/graphics/Rect;->width()I

    #@5b8
    move-result v4

    #@5b9
    move-object/from16 v0, p0

    #@5bb
    iput v4, v0, Landroid/view/ViewRootImpl;->mWidth:I

    #@5bd
    .line 1779
    invoke-virtual/range {v35 .. v35}, Landroid/graphics/Rect;->height()I

    #@5c0
    move-result v4

    #@5c1
    move-object/from16 v0, p0

    #@5c3
    iput v4, v0, Landroid/view/ViewRootImpl;->mHeight:I

    #@5c5
    .line 1782
    :cond_38
    move-object/from16 v0, p0

    #@5c7
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@5c9
    if-eqz v4, :cond_53

    #@5cb
    .line 1784
    move-object/from16 v0, p0

    #@5cd
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    #@5cf
    invoke-virtual {v4}, Landroid/view/Surface;->isValid()Z

    #@5d2
    move-result v4

    #@5d3
    if-eqz v4, :cond_39

    #@5d5
    .line 1787
    move-object/from16 v0, p0

    #@5d7
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@5d9
    move-object/from16 v0, p0

    #@5db
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    #@5dd
    iput-object v10, v4, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;

    #@5df
    .line 1789
    :cond_39
    move-object/from16 v0, p0

    #@5e1
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@5e3
    move-object/from16 v0, p0

    #@5e5
    iget v10, v0, Landroid/view/ViewRootImpl;->mWidth:I

    #@5e7
    move-object/from16 v0, p0

    #@5e9
    iget v11, v0, Landroid/view/ViewRootImpl;->mHeight:I

    #@5eb
    invoke-virtual {v4, v10, v11}, Lcom/android/internal/view/BaseSurfaceHolder;->setSurfaceFrameSize(II)V

    #@5ee
    .line 1790
    move-object/from16 v0, p0

    #@5f0
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@5f2
    iget-object v4, v4, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@5f4
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@5f7
    .line 1791
    move-object/from16 v0, p0

    #@5f9
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    #@5fb
    invoke-virtual {v4}, Landroid/view/Surface;->isValid()Z

    #@5fe
    move-result v4

    #@5ff
    if-eqz v4, :cond_65

    #@601
    .line 1792
    if-nez v36, :cond_51

    #@603
    .line 1793
    move-object/from16 v0, p0

    #@605
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@607
    invoke-virtual {v4}, Lcom/android/internal/view/BaseSurfaceHolder;->ungetCallbacks()V

    #@60a
    .line 1795
    const/4 v4, 0x1

    #@60b
    move-object/from16 v0, p0

    #@60d
    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mIsCreating:Z

    #@60f
    .line 1796
    move-object/from16 v0, p0

    #@611
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    #@613
    move-object/from16 v0, p0

    #@615
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@617
    invoke-interface {v4, v10}, Landroid/view/SurfaceHolder$Callback2;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    #@61a
    .line 1797
    move-object/from16 v0, p0

    #@61c
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@61e
    invoke-virtual {v4}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    #@621
    move-result-object v24

    #@622
    .line 1798
    .local v24, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    if-eqz v24, :cond_50

    #@624
    .line 1799
    const/4 v4, 0x0

    #@625
    move-object/from16 v0, v24

    #@627
    array-length v10, v0

    #@628
    :goto_15
    if-ge v4, v10, :cond_50

    #@62a
    aget-object v23, v24, v4

    #@62c
    .line 1800
    .local v23, "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    #@62e
    iget-object v11, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@630
    move-object/from16 v0, v23

    #@632
    invoke-interface {v0, v11}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    #@635
    .line 1799
    add-int/lit8 v4, v4, 0x1

    #@637
    goto :goto_15

    #@638
    .line 1496
    .end local v23    # "c":Landroid/view/SurfaceHolder$Callback;
    .end local v24    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .end local v30    # "contentInsetsChanged":Z
    .end local v36    # "hadSurface":Z
    .end local v52    # "relayoutResult":I
    .end local v65    # "windowShouldResize":Z
    :cond_3a
    const/4 v4, 0x0

    #@639
    goto/16 :goto_8

    #@63b
    .line 1523
    :cond_3b
    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    #@63d
    const/4 v10, -0x2

    #@63e
    if-ne v4, v10, :cond_3c

    #@640
    .line 1524
    invoke-virtual/range {v35 .. v35}, Landroid/graphics/Rect;->width()I

    #@643
    move-result v4

    #@644
    if-ge v4, v8, :cond_3c

    #@646
    invoke-virtual/range {v35 .. v35}, Landroid/graphics/Rect;->width()I

    #@649
    move-result v4

    #@64a
    move-object/from16 v0, p0

    #@64c
    iget v10, v0, Landroid/view/ViewRootImpl;->mWidth:I

    #@64e
    if-ne v4, v10, :cond_28

    #@650
    .line 1525
    :cond_3c
    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    #@652
    const/4 v10, -0x2

    #@653
    if-ne v4, v10, :cond_3e

    #@655
    .line 1526
    invoke-virtual/range {v35 .. v35}, Landroid/graphics/Rect;->height()I

    #@658
    move-result v4

    #@659
    if-ge v4, v9, :cond_3e

    #@65b
    invoke-virtual/range {v35 .. v35}, Landroid/graphics/Rect;->height()I

    #@65e
    move-result v4

    #@65f
    move-object/from16 v0, p0

    #@661
    iget v10, v0, Landroid/view/ViewRootImpl;->mHeight:I

    #@663
    if-eq v4, v10, :cond_3d

    #@665
    const/16 v65, 0x1

    #@667
    .restart local v65    # "windowShouldResize":Z
    goto/16 :goto_9

    #@669
    .end local v65    # "windowShouldResize":Z
    :cond_3d
    const/16 v65, 0x0

    #@66b
    .restart local v65    # "windowShouldResize":Z
    goto/16 :goto_9

    #@66d
    .line 1525
    .end local v65    # "windowShouldResize":Z
    :cond_3e
    const/16 v65, 0x0

    #@66f
    .restart local v65    # "windowShouldResize":Z
    goto/16 :goto_9

    #@671
    .line 1521
    .end local v65    # "windowShouldResize":Z
    :cond_3f
    const/16 v65, 0x0

    #@673
    .restart local v65    # "windowShouldResize":Z
    goto/16 :goto_9

    #@675
    .line 1532
    :cond_40
    const/16 v29, 0x1

    #@677
    .local v29, "computesInternalInsets":Z
    goto/16 :goto_a

    #@679
    .line 1551
    .end local v29    # "computesInternalInsets":Z
    .restart local v44    # "insetsPending":Z
    .restart local v52    # "relayoutResult":I
    :cond_41
    const/16 v44, 0x1

    #@67b
    goto/16 :goto_b

    #@67d
    :cond_42
    const/16 v44, 0x0

    #@67f
    goto/16 :goto_b

    #@681
    .line 1594
    .end local v44    # "insetsPending":Z
    .restart local v30    # "contentInsetsChanged":Z
    .restart local v36    # "hadSurface":Z
    .local v39, "hwInitialized":Z
    .restart local v58    # "surfaceGenerationId":I
    :cond_43
    const/4 v4, 0x1

    #@682
    goto/16 :goto_c

    #@684
    .line 1598
    :cond_44
    const/16 v49, 0x1

    #@686
    .restart local v49    # "overscanInsetsChanged":Z
    goto/16 :goto_d

    #@688
    .line 1600
    :cond_45
    const/16 v30, 0x1

    #@68a
    goto/16 :goto_e

    #@68c
    .line 1602
    :cond_46
    const/16 v62, 0x1

    #@68e
    .restart local v62    # "visibleInsetsChanged":Z
    goto/16 :goto_f

    #@690
    .line 1604
    :cond_47
    const/16 v56, 0x1

    #@692
    .restart local v56    # "stableInsetsChanged":Z
    goto/16 :goto_10

    #@694
    .line 1606
    :cond_48
    const/16 v48, 0x1

    #@696
    .restart local v48    # "outsetsChanged":Z
    goto/16 :goto_11

    #@698
    .line 1613
    :cond_49
    :try_start_2
    move-object/from16 v0, p0

    #@69a
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@69c
    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    #@69e
    if-eqz v4, :cond_2f

    #@6a0
    .line 1614
    move-object/from16 v0, p0

    #@6a2
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@6a4
    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    #@6a6
    invoke-virtual {v4}, Landroid/view/HardwareRenderer;->isEnabled()Z

    #@6a9
    move-result v4

    #@6aa
    .line 1608
    if-eqz v4, :cond_2f

    #@6ac
    .line 1615
    if-eqz v6, :cond_2f

    #@6ae
    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->format:I

    #@6b0
    invoke-static {v4}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    #@6b3
    move-result v4

    #@6b4
    if-nez v4, :cond_2f

    #@6b6
    .line 1616
    move-object/from16 v0, p0

    #@6b8
    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mBlockResizeBuffer:Z

    #@6ba
    if-nez v4, :cond_2f

    #@6bc
    .line 1618
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->disposeResizeBuffer()V

    #@6bf
    goto/16 :goto_12

    #@6c1
    .line 1765
    .end local v39    # "hwInitialized":Z
    .end local v48    # "outsetsChanged":Z
    .end local v49    # "overscanInsetsChanged":Z
    .end local v56    # "stableInsetsChanged":Z
    .end local v58    # "surfaceGenerationId":I
    .end local v62    # "visibleInsetsChanged":Z
    :catch_0
    move-exception v32

    #@6c2
    .local v32, "e":Landroid/os/RemoteException;
    goto/16 :goto_14

    #@6c4
    .line 1689
    .end local v32    # "e":Landroid/os/RemoteException;
    .restart local v39    # "hwInitialized":Z
    .restart local v48    # "outsetsChanged":Z
    .restart local v49    # "overscanInsetsChanged":Z
    .restart local v56    # "stableInsetsChanged":Z
    .restart local v58    # "surfaceGenerationId":I
    .restart local v62    # "visibleInsetsChanged":Z
    :cond_4a
    move-object/from16 v0, p0

    #@6c6
    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mApplyInsetsRequested:Z

    #@6c8
    .line 1688
    if-nez v4, :cond_33

    #@6ca
    .line 1690
    move-object/from16 v0, p0

    #@6cc
    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mLastOverscanRequested:Z

    #@6ce
    move-object/from16 v0, p0

    #@6d0
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@6d2
    iget-boolean v10, v10, Landroid/view/View$AttachInfo;->mOverscanRequested:Z

    #@6d4
    if-ne v4, v10, :cond_33

    #@6d6
    .line 1688
    if-eqz v48, :cond_34

    #@6d8
    goto/16 :goto_13

    #@6da
    .line 1730
    .end local v39    # "hwInitialized":Z
    :catch_1
    move-exception v33

    #@6db
    .line 1731
    .local v33, "e":Landroid/view/Surface$OutOfResourcesException;
    move-object/from16 v0, p0

    #@6dd
    move-object/from16 v1, v33

    #@6df
    invoke-direct {v0, v1}, Landroid/view/ViewRootImpl;->handleOutOfResourcesException(Landroid/view/Surface$OutOfResourcesException;)V

    #@6e2
    .line 1732
    return-void

    #@6e3
    .line 1736
    .end local v33    # "e":Landroid/view/Surface$OutOfResourcesException;
    .restart local v39    # "hwInitialized":Z
    :cond_4b
    move-object/from16 v0, p0

    #@6e5
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    #@6e7
    invoke-virtual {v4}, Landroid/view/Surface;->isValid()Z

    #@6ea
    move-result v4

    #@6eb
    if-nez v4, :cond_4f

    #@6ed
    .line 1739
    move-object/from16 v0, p0

    #@6ef
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mLastScrolledFocus:Ljava/lang/ref/WeakReference;

    #@6f1
    if-eqz v4, :cond_4c

    #@6f3
    .line 1740
    move-object/from16 v0, p0

    #@6f5
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mLastScrolledFocus:Ljava/lang/ref/WeakReference;

    #@6f7
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->clear()V

    #@6fa
    .line 1742
    :cond_4c
    const/4 v4, 0x0

    #@6fb
    move-object/from16 v0, p0

    #@6fd
    iput v4, v0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    #@6ff
    const/4 v4, 0x0

    #@700
    move-object/from16 v0, p0

    #@702
    iput v4, v0, Landroid/view/ViewRootImpl;->mScrollY:I

    #@704
    .line 1743
    move-object/from16 v0, p0

    #@706
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@708
    instance-of v4, v4, Lcom/android/internal/view/RootViewSurfaceTaker;

    #@70a
    if-eqz v4, :cond_4d

    #@70c
    .line 1744
    move-object/from16 v0, p0

    #@70e
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@710
    check-cast v4, Lcom/android/internal/view/RootViewSurfaceTaker;

    #@712
    move-object/from16 v0, p0

    #@714
    iget v10, v0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    #@716
    invoke-interface {v4, v10}, Lcom/android/internal/view/RootViewSurfaceTaker;->onRootViewScrollYChanged(I)V

    #@719
    .line 1746
    :cond_4d
    move-object/from16 v0, p0

    #@71b
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    #@71d
    if-eqz v4, :cond_4e

    #@71f
    .line 1747
    move-object/from16 v0, p0

    #@721
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    #@723
    invoke-virtual {v4}, Landroid/widget/Scroller;->abortAnimation()V

    #@726
    .line 1749
    :cond_4e
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->disposeResizeBuffer()V

    #@729
    .line 1751
    move-object/from16 v0, p0

    #@72b
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@72d
    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    #@72f
    if-eqz v4, :cond_36

    #@731
    .line 1752
    move-object/from16 v0, p0

    #@733
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@735
    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    #@737
    invoke-virtual {v4}, Landroid/view/HardwareRenderer;->isEnabled()Z

    #@73a
    move-result v4

    #@73b
    .line 1751
    if-eqz v4, :cond_36

    #@73d
    .line 1753
    move-object/from16 v0, p0

    #@73f
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@741
    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    #@743
    invoke-virtual {v4}, Landroid/view/HardwareRenderer;->destroy()V

    #@746
    goto/16 :goto_14

    #@748
    .line 1755
    :cond_4f
    move-object/from16 v0, p0

    #@74a
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    #@74c
    invoke-virtual {v4}, Landroid/view/Surface;->getGenerationId()I

    #@74f
    move-result v4

    #@750
    move/from16 v0, v58

    #@752
    if-eq v0, v4, :cond_36

    #@754
    .line 1756
    move-object/from16 v0, p0

    #@756
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@758
    if-nez v4, :cond_36

    #@75a
    move-object/from16 v0, p0

    #@75c
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@75e
    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    #@760
    if-eqz v4, :cond_36

    #@762
    .line 1757
    const/4 v4, 0x1

    #@763
    move-object/from16 v0, p0

    #@765
    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@767
    .line 1759
    :try_start_3
    move-object/from16 v0, p0

    #@769
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@76b
    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    #@76d
    move-object/from16 v0, p0

    #@76f
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    #@771
    invoke-virtual {v4, v10}, Landroid/view/HardwareRenderer;->updateSurface(Landroid/view/Surface;)V
    :try_end_3
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    #@774
    goto/16 :goto_14

    #@776
    .line 1760
    :catch_2
    move-exception v33

    #@777
    .line 1761
    .restart local v33    # "e":Landroid/view/Surface$OutOfResourcesException;
    :try_start_4
    move-object/from16 v0, p0

    #@779
    move-object/from16 v1, v33

    #@77b
    invoke-direct {v0, v1}, Landroid/view/ViewRootImpl;->handleOutOfResourcesException(Landroid/view/Surface$OutOfResourcesException;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    #@77e
    .line 1762
    return-void

    #@77f
    .line 1803
    .end local v33    # "e":Landroid/view/Surface$OutOfResourcesException;
    .end local v39    # "hwInitialized":Z
    .end local v48    # "outsetsChanged":Z
    .end local v49    # "overscanInsetsChanged":Z
    .end local v56    # "stableInsetsChanged":Z
    .end local v58    # "surfaceGenerationId":I
    .end local v62    # "visibleInsetsChanged":Z
    .restart local v24    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :cond_50
    const/16 v57, 0x1

    #@781
    .line 1805
    .end local v24    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :cond_51
    if-eqz v57, :cond_52

    #@783
    .line 1806
    move-object/from16 v0, p0

    #@785
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    #@787
    move-object/from16 v0, p0

    #@789
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@78b
    .line 1807
    iget v11, v6, Landroid/view/WindowManager$LayoutParams;->format:I

    #@78d
    move-object/from16 v0, p0

    #@78f
    iget v12, v0, Landroid/view/ViewRootImpl;->mWidth:I

    #@791
    move-object/from16 v0, p0

    #@793
    iget v0, v0, Landroid/view/ViewRootImpl;->mHeight:I

    #@795
    move/from16 v17, v0

    #@797
    .line 1806
    move/from16 v0, v17

    #@799
    invoke-interface {v4, v10, v11, v12, v0}, Landroid/view/SurfaceHolder$Callback2;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    #@79c
    .line 1808
    move-object/from16 v0, p0

    #@79e
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@7a0
    invoke-virtual {v4}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    #@7a3
    move-result-object v24

    #@7a4
    .line 1809
    .restart local v24    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    if-eqz v24, :cond_52

    #@7a6
    .line 1810
    const/4 v4, 0x0

    #@7a7
    move-object/from16 v0, v24

    #@7a9
    array-length v10, v0

    #@7aa
    :goto_16
    if-ge v4, v10, :cond_52

    #@7ac
    aget-object v23, v24, v4

    #@7ae
    .line 1811
    .restart local v23    # "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    #@7b0
    iget-object v11, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@7b2
    iget v12, v6, Landroid/view/WindowManager$LayoutParams;->format:I

    #@7b4
    .line 1812
    move-object/from16 v0, p0

    #@7b6
    iget v0, v0, Landroid/view/ViewRootImpl;->mWidth:I

    #@7b8
    move/from16 v17, v0

    #@7ba
    move-object/from16 v0, p0

    #@7bc
    iget v0, v0, Landroid/view/ViewRootImpl;->mHeight:I

    #@7be
    move/from16 v18, v0

    #@7c0
    .line 1811
    move-object/from16 v0, v23

    #@7c2
    move/from16 v1, v17

    #@7c4
    move/from16 v2, v18

    #@7c6
    invoke-interface {v0, v11, v12, v1, v2}, Landroid/view/SurfaceHolder$Callback;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    #@7c9
    .line 1810
    add-int/lit8 v4, v4, 0x1

    #@7cb
    goto :goto_16

    #@7cc
    .line 1816
    .end local v23    # "c":Landroid/view/SurfaceHolder$Callback;
    .end local v24    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :cond_52
    const/4 v4, 0x0

    #@7cd
    move-object/from16 v0, p0

    #@7cf
    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mIsCreating:Z

    #@7d1
    .line 1835
    :cond_53
    :goto_17
    move-object/from16 v0, p0

    #@7d3
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@7d5
    iget-object v0, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    #@7d7
    move-object/from16 v37, v0

    #@7d9
    .line 1836
    .local v37, "hardwareRenderer":Landroid/view/HardwareRenderer;
    if-eqz v37, :cond_55

    #@7db
    invoke-virtual/range {v37 .. v37}, Landroid/view/HardwareRenderer;->isEnabled()Z

    #@7de
    move-result v4

    #@7df
    if-eqz v4, :cond_55

    #@7e1
    .line 1837
    if-nez v39, :cond_54

    #@7e3
    .line 1838
    move-object/from16 v0, p0

    #@7e5
    iget v4, v0, Landroid/view/ViewRootImpl;->mWidth:I

    #@7e7
    invoke-virtual/range {v37 .. v37}, Landroid/view/HardwareRenderer;->getWidth()I

    #@7ea
    move-result v10

    #@7eb
    if-eq v4, v10, :cond_67

    #@7ed
    .line 1840
    :cond_54
    :goto_18
    move-object/from16 v0, p0

    #@7ef
    iget v4, v0, Landroid/view/ViewRootImpl;->mWidth:I

    #@7f1
    move-object/from16 v0, p0

    #@7f3
    iget v10, v0, Landroid/view/ViewRootImpl;->mHeight:I

    #@7f5
    move-object/from16 v0, p0

    #@7f7
    iget-object v11, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@7f9
    .line 1841
    move-object/from16 v0, p0

    #@7fb
    iget-object v12, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@7fd
    iget-object v12, v12, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@7ff
    .line 1840
    move-object/from16 v0, v37

    #@801
    invoke-virtual {v0, v4, v10, v11, v12}, Landroid/view/HardwareRenderer;->setup(IILandroid/view/View$AttachInfo;Landroid/graphics/Rect;)V

    #@804
    .line 1842
    if-nez v39, :cond_55

    #@806
    .line 1843
    move-object/from16 v0, p0

    #@808
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    #@80a
    move-object/from16 v0, v37

    #@80c
    invoke-virtual {v0, v4}, Landroid/view/HardwareRenderer;->invalidate(Landroid/view/Surface;)V

    #@80f
    .line 1844
    const/4 v4, 0x1

    #@810
    move-object/from16 v0, p0

    #@812
    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    #@814
    .line 1849
    :cond_55
    move-object/from16 v0, p0

    #@816
    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mStopped:Z

    #@818
    if-eqz v4, :cond_56

    #@81a
    move-object/from16 v0, p0

    #@81c
    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    #@81e
    if-eqz v4, :cond_5b

    #@820
    .line 1851
    :cond_56
    and-int/lit8 v4, v52, 0x1

    #@822
    if-eqz v4, :cond_68

    #@824
    const/4 v4, 0x1

    #@825
    .line 1850
    :goto_19
    move-object/from16 v0, p0

    #@827
    invoke-direct {v0, v4}, Landroid/view/ViewRootImpl;->ensureTouchModeLocally(Z)Z

    #@82a
    move-result v34

    #@82b
    .line 1852
    .local v34, "focusChangedDueToTouchMode":Z
    if-nez v34, :cond_57

    #@82d
    move-object/from16 v0, p0

    #@82f
    iget v4, v0, Landroid/view/ViewRootImpl;->mWidth:I

    #@831
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    #@834
    move-result v10

    #@835
    if-eq v4, v10, :cond_69

    #@837
    .line 1854
    :cond_57
    :goto_1a
    move-object/from16 v0, p0

    #@839
    iget v4, v0, Landroid/view/ViewRootImpl;->mWidth:I

    #@83b
    iget v10, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    #@83d
    invoke-static {v4, v10}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    #@840
    move-result v27

    #@841
    .line 1855
    .local v27, "childWidthMeasureSpec":I
    move-object/from16 v0, p0

    #@843
    iget v4, v0, Landroid/view/ViewRootImpl;->mHeight:I

    #@845
    iget v10, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    #@847
    invoke-static {v4, v10}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    #@84a
    move-result v26

    #@84b
    .line 1864
    .local v26, "childHeightMeasureSpec":I
    move-object/from16 v0, p0

    #@84d
    move/from16 v1, v27

    #@84f
    move/from16 v2, v26

    #@851
    invoke-direct {v0, v1, v2}, Landroid/view/ViewRootImpl;->performMeasure(II)V

    #@854
    .line 1869
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    #@857
    move-result v63

    #@858
    .line 1870
    .local v63, "width":I
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    #@85b
    move-result v38

    #@85c
    .line 1871
    .local v38, "height":I
    const/16 v46, 0x0

    #@85e
    .line 1873
    .local v46, "measureAgain":Z
    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    #@860
    const/4 v10, 0x0

    #@861
    cmpl-float v4, v4, v10

    #@863
    if-lez v4, :cond_58

    #@865
    .line 1874
    move-object/from16 v0, p0

    #@867
    iget v4, v0, Landroid/view/ViewRootImpl;->mWidth:I

    #@869
    sub-int v4, v4, v63

    #@86b
    int-to-float v4, v4

    #@86c
    iget v10, v6, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    #@86e
    mul-float/2addr v4, v10

    #@86f
    float-to-int v4, v4

    #@870
    add-int v63, v63, v4

    #@872
    .line 1876
    const/high16 v4, 0x40000000    # 2.0f

    #@874
    .line 1875
    move/from16 v0, v63

    #@876
    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@879
    move-result v27

    #@87a
    .line 1877
    const/16 v46, 0x1

    #@87c
    .line 1879
    :cond_58
    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    #@87e
    const/4 v10, 0x0

    #@87f
    cmpl-float v4, v4, v10

    #@881
    if-lez v4, :cond_59

    #@883
    .line 1880
    move-object/from16 v0, p0

    #@885
    iget v4, v0, Landroid/view/ViewRootImpl;->mHeight:I

    #@887
    sub-int v4, v4, v38

    #@889
    int-to-float v4, v4

    #@88a
    iget v10, v6, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    #@88c
    mul-float/2addr v4, v10

    #@88d
    float-to-int v4, v4

    #@88e
    add-int v38, v38, v4

    #@890
    .line 1882
    const/high16 v4, 0x40000000    # 2.0f

    #@892
    .line 1881
    move/from16 v0, v38

    #@894
    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@897
    move-result v26

    #@898
    .line 1883
    const/16 v46, 0x1

    #@89a
    .line 1886
    :cond_59
    if-eqz v46, :cond_5a

    #@89c
    .line 1890
    move-object/from16 v0, p0

    #@89e
    move/from16 v1, v27

    #@8a0
    move/from16 v2, v26

    #@8a2
    invoke-direct {v0, v1, v2}, Landroid/view/ViewRootImpl;->performMeasure(II)V

    #@8a5
    .line 1893
    :cond_5a
    const/16 v45, 0x1

    #@8a7
    .line 1927
    .end local v26    # "childHeightMeasureSpec":I
    .end local v27    # "childWidthMeasureSpec":I
    .end local v30    # "contentInsetsChanged":Z
    .end local v34    # "focusChangedDueToTouchMode":Z
    .end local v36    # "hadSurface":Z
    .end local v37    # "hardwareRenderer":Landroid/view/HardwareRenderer;
    .end local v38    # "height":I
    .end local v46    # "measureAgain":Z
    .end local v63    # "width":I
    :cond_5b
    :goto_1b
    if-eqz v45, :cond_6f

    #@8a9
    move-object/from16 v0, p0

    #@8ab
    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mStopped:Z

    #@8ad
    if-eqz v4, :cond_6e

    #@8af
    move-object/from16 v0, p0

    #@8b1
    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    #@8b3
    move/from16 v31, v0

    #@8b5
    .line 1928
    :goto_1c
    if-nez v31, :cond_70

    #@8b7
    .line 1929
    move-object/from16 v0, p0

    #@8b9
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@8bb
    iget-boolean v0, v4, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    #@8bd
    move/from16 v59, v0

    #@8bf
    .line 1930
    :goto_1d
    if-eqz v31, :cond_5d

    #@8c1
    .line 1931
    move-object/from16 v0, p0

    #@8c3
    invoke-direct {v0, v6, v8, v9}, Landroid/view/ViewRootImpl;->performLayout(Landroid/view/WindowManager$LayoutParams;II)V

    #@8c6
    .line 1936
    iget v4, v5, Landroid/view/View;->mPrivateFlags:I

    #@8c8
    and-int/lit16 v4, v4, 0x200

    #@8ca
    if-eqz v4, :cond_5d

    #@8cc
    .line 1939
    move-object/from16 v0, p0

    #@8ce
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTmpLocation:[I

    #@8d0
    invoke-virtual {v5, v4}, Landroid/view/View;->getLocationInWindow([I)V

    #@8d3
    .line 1940
    move-object/from16 v0, p0

    #@8d5
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    #@8d7
    move-object/from16 v0, p0

    #@8d9
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mTmpLocation:[I

    #@8db
    const/4 v11, 0x0

    #@8dc
    aget v10, v10, v11

    #@8de
    move-object/from16 v0, p0

    #@8e0
    iget-object v11, v0, Landroid/view/ViewRootImpl;->mTmpLocation:[I

    #@8e2
    const/4 v12, 0x1

    #@8e3
    aget v11, v11, v12

    #@8e5
    .line 1941
    move-object/from16 v0, p0

    #@8e7
    iget-object v12, v0, Landroid/view/ViewRootImpl;->mTmpLocation:[I

    #@8e9
    const/16 v17, 0x0

    #@8eb
    aget v12, v12, v17

    #@8ed
    iget v0, v5, Landroid/view/View;->mRight:I

    #@8ef
    move/from16 v17, v0

    #@8f1
    add-int v12, v12, v17

    #@8f3
    iget v0, v5, Landroid/view/View;->mLeft:I

    #@8f5
    move/from16 v17, v0

    #@8f7
    sub-int v12, v12, v17

    #@8f9
    .line 1942
    move-object/from16 v0, p0

    #@8fb
    iget-object v0, v0, Landroid/view/ViewRootImpl;->mTmpLocation:[I

    #@8fd
    move-object/from16 v17, v0

    #@8ff
    const/16 v18, 0x1

    #@901
    aget v17, v17, v18

    #@903
    iget v0, v5, Landroid/view/View;->mBottom:I

    #@905
    move/from16 v18, v0

    #@907
    add-int v17, v17, v18

    #@909
    iget v0, v5, Landroid/view/View;->mTop:I

    #@90b
    move/from16 v18, v0

    #@90d
    sub-int v17, v17, v18

    #@90f
    .line 1940
    move/from16 v0, v17

    #@911
    invoke-virtual {v4, v10, v11, v12, v0}, Landroid/graphics/Region;->set(IIII)Z

    #@914
    .line 1944
    move-object/from16 v0, p0

    #@916
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    #@918
    invoke-virtual {v5, v4}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    #@91b
    .line 1945
    move-object/from16 v0, p0

    #@91d
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@91f
    if-eqz v4, :cond_5c

    #@921
    .line 1946
    move-object/from16 v0, p0

    #@923
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@925
    move-object/from16 v0, p0

    #@927
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    #@929
    invoke-virtual {v4, v10}, Landroid/content/res/CompatibilityInfo$Translator;->translateRegionInWindowToScreen(Landroid/graphics/Region;)V

    #@92c
    .line 1949
    :cond_5c
    move-object/from16 v0, p0

    #@92e
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    #@930
    move-object/from16 v0, p0

    #@932
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mPreviousTransparentRegion:Landroid/graphics/Region;

    #@934
    invoke-virtual {v4, v10}, Landroid/graphics/Region;->equals(Ljava/lang/Object;)Z

    #@937
    move-result v4

    #@938
    if-nez v4, :cond_5d

    #@93a
    .line 1950
    move-object/from16 v0, p0

    #@93c
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPreviousTransparentRegion:Landroid/graphics/Region;

    #@93e
    move-object/from16 v0, p0

    #@940
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    #@942
    invoke-virtual {v4, v10}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    #@945
    .line 1951
    const/4 v4, 0x1

    #@946
    move-object/from16 v0, p0

    #@948
    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    #@94a
    .line 1954
    :try_start_5
    move-object/from16 v0, p0

    #@94c
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    #@94e
    move-object/from16 v0, p0

    #@950
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    #@952
    move-object/from16 v0, p0

    #@954
    iget-object v11, v0, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    #@956
    invoke-interface {v4, v10, v11}, Landroid/view/IWindowSession;->setTransparentRegion(Landroid/view/IWindow;Landroid/graphics/Region;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_4

    #@959
    .line 1967
    :cond_5d
    :goto_1e
    if-eqz v59, :cond_5e

    #@95b
    .line 1968
    move-object/from16 v0, p0

    #@95d
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@95f
    const/4 v10, 0x0

    #@960
    iput-boolean v10, v4, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    #@962
    .line 1969
    move-object/from16 v0, p0

    #@964
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@966
    iget-object v4, v4, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    #@968
    invoke-virtual {v4}, Landroid/view/ViewTreeObserver;->dispatchOnGlobalLayout()V

    #@96b
    .line 1972
    :cond_5e
    if-eqz v29, :cond_5f

    #@96d
    .line 1974
    move-object/from16 v0, p0

    #@96f
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@971
    iget-object v0, v4, Landroid/view/View$AttachInfo;->mGivenInternalInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    #@973
    move-object/from16 v42, v0

    #@975
    .line 1975
    .local v42, "insets":Landroid/view/ViewTreeObserver$InternalInsetsInfo;
    invoke-virtual/range {v42 .. v42}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->reset()V

    #@978
    .line 1978
    move-object/from16 v0, p0

    #@97a
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@97c
    iget-object v4, v4, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    #@97e
    move-object/from16 v0, v42

    #@980
    invoke-virtual {v4, v0}, Landroid/view/ViewTreeObserver;->dispatchOnComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V

    #@983
    .line 1979
    move-object/from16 v0, p0

    #@985
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@987
    invoke-virtual/range {v42 .. v42}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->isEmpty()Z

    #@98a
    move-result v4

    #@98b
    if-eqz v4, :cond_71

    #@98d
    const/4 v4, 0x0

    #@98e
    :goto_1f
    iput-boolean v4, v10, Landroid/view/View$AttachInfo;->mHasNonEmptyGivenInternalInsets:Z

    #@990
    .line 1982
    if-nez v44, :cond_72

    #@992
    move-object/from16 v0, p0

    #@994
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mLastGivenInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    #@996
    move-object/from16 v0, v42

    #@998
    invoke-virtual {v4, v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->equals(Ljava/lang/Object;)Z

    #@99b
    move-result v4

    #@99c
    if-eqz v4, :cond_72

    #@99e
    .line 2007
    .end local v42    # "insets":Landroid/view/ViewTreeObserver$InternalInsetsInfo;
    :cond_5f
    :goto_20
    const/16 v55, 0x0

    #@9a0
    .line 2009
    .local v55, "skipDraw":Z
    move-object/from16 v0, p0

    #@9a2
    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mFirst:Z

    #@9a4
    if-eqz v4, :cond_74

    #@9a6
    .line 2013
    move-object/from16 v0, p0

    #@9a8
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@9aa
    if-eqz v4, :cond_60

    #@9ac
    .line 2014
    move-object/from16 v0, p0

    #@9ae
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@9b0
    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    #@9b3
    move-result v4

    #@9b4
    if-nez v4, :cond_60

    #@9b6
    .line 2015
    move-object/from16 v0, p0

    #@9b8
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@9ba
    const/4 v10, 0x2

    #@9bb
    invoke-virtual {v4, v10}, Landroid/view/View;->requestFocus(I)Z

    #@9be
    .line 2030
    :cond_60
    :goto_21
    const/4 v4, 0x0

    #@9bf
    move-object/from16 v0, p0

    #@9c1
    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mFirst:Z

    #@9c3
    .line 2031
    const/4 v4, 0x0

    #@9c4
    move-object/from16 v0, p0

    #@9c6
    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mWillDrawSoon:Z

    #@9c8
    .line 2032
    const/4 v4, 0x0

    #@9c9
    move-object/from16 v0, p0

    #@9cb
    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mNewSurfaceNeeded:Z

    #@9cd
    .line 2033
    move/from16 v0, v60

    #@9cf
    move-object/from16 v1, p0

    #@9d1
    iput v0, v1, Landroid/view/ViewRootImpl;->mViewVisibility:I

    #@9d3
    .line 2035
    move-object/from16 v0, p0

    #@9d5
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@9d7
    iget-boolean v4, v4, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    #@9d9
    if-eqz v4, :cond_61

    #@9db
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->isInLocalFocusMode()Z

    #@9de
    move-result v4

    #@9df
    if-eqz v4, :cond_76

    #@9e1
    .line 2051
    :cond_61
    :goto_22
    and-int/lit8 v4, v52, 0x2

    #@9e3
    if-eqz v4, :cond_62

    #@9e5
    .line 2052
    const/4 v4, 0x1

    #@9e6
    move-object/from16 v0, p0

    #@9e8
    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    #@9ea
    .line 2055
    :cond_62
    move-object/from16 v0, p0

    #@9ec
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@9ee
    iget-object v4, v4, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    #@9f0
    invoke-virtual {v4}, Landroid/view/ViewTreeObserver;->dispatchOnPreDraw()Z

    #@9f3
    move-result v4

    #@9f4
    if-nez v4, :cond_78

    #@9f6
    .line 2056
    if-eqz v60, :cond_79

    #@9f8
    const/16 v25, 0x1

    #@9fa
    .line 2058
    .local v25, "cancelDraw":Z
    :goto_23
    if-nez v25, :cond_63

    #@9fc
    if-eqz v47, :cond_7a

    #@9fe
    .line 2070
    :cond_63
    if-nez v60, :cond_7e

    #@a00
    .line 2072
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    #@a03
    .line 2081
    :cond_64
    :goto_24
    const/4 v4, 0x0

    #@a04
    move-object/from16 v0, p0

    #@a06
    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mIsInTraversal:Z

    #@a08
    .line 1282
    return-void

    #@a09
    .line 1817
    .end local v25    # "cancelDraw":Z
    .end local v55    # "skipDraw":Z
    .restart local v30    # "contentInsetsChanged":Z
    .restart local v36    # "hadSurface":Z
    :cond_65
    if-eqz v36, :cond_53

    #@a0b
    .line 1818
    move-object/from16 v0, p0

    #@a0d
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@a0f
    invoke-virtual {v4}, Lcom/android/internal/view/BaseSurfaceHolder;->ungetCallbacks()V

    #@a12
    .line 1819
    move-object/from16 v0, p0

    #@a14
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@a16
    invoke-virtual {v4}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    #@a19
    move-result-object v24

    #@a1a
    .line 1820
    .restart local v24    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    #@a1c
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    #@a1e
    move-object/from16 v0, p0

    #@a20
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@a22
    invoke-interface {v4, v10}, Landroid/view/SurfaceHolder$Callback2;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    #@a25
    .line 1821
    if-eqz v24, :cond_66

    #@a27
    .line 1822
    const/4 v4, 0x0

    #@a28
    move-object/from16 v0, v24

    #@a2a
    array-length v10, v0

    #@a2b
    :goto_25
    if-ge v4, v10, :cond_66

    #@a2d
    aget-object v23, v24, v4

    #@a2f
    .line 1823
    .restart local v23    # "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    #@a31
    iget-object v11, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@a33
    move-object/from16 v0, v23

    #@a35
    invoke-interface {v0, v11}, Landroid/view/SurfaceHolder$Callback;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    #@a38
    .line 1822
    add-int/lit8 v4, v4, 0x1

    #@a3a
    goto :goto_25

    #@a3b
    .line 1826
    .end local v23    # "c":Landroid/view/SurfaceHolder$Callback;
    :cond_66
    move-object/from16 v0, p0

    #@a3d
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@a3f
    iget-object v4, v4, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@a41
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@a44
    .line 1828
    :try_start_6
    move-object/from16 v0, p0

    #@a46
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@a48
    new-instance v10, Landroid/view/Surface;

    #@a4a
    invoke-direct {v10}, Landroid/view/Surface;-><init>()V

    #@a4d
    iput-object v10, v4, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@a4f
    .line 1830
    move-object/from16 v0, p0

    #@a51
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@a53
    iget-object v4, v4, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@a55
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@a58
    goto/16 :goto_17

    #@a5a
    .line 1829
    :catchall_0
    move-exception v4

    #@a5b
    .line 1830
    move-object/from16 v0, p0

    #@a5d
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@a5f
    iget-object v10, v10, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@a61
    invoke-virtual {v10}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@a64
    .line 1829
    throw v4

    #@a65
    .line 1839
    .end local v24    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .restart local v37    # "hardwareRenderer":Landroid/view/HardwareRenderer;
    :cond_67
    move-object/from16 v0, p0

    #@a67
    iget v4, v0, Landroid/view/ViewRootImpl;->mHeight:I

    #@a69
    invoke-virtual/range {v37 .. v37}, Landroid/view/HardwareRenderer;->getHeight()I

    #@a6c
    move-result v10

    #@a6d
    if-eq v4, v10, :cond_55

    #@a6f
    goto/16 :goto_18

    #@a71
    .line 1851
    :cond_68
    const/4 v4, 0x0

    #@a72
    goto/16 :goto_19

    #@a74
    .line 1853
    .restart local v34    # "focusChangedDueToTouchMode":Z
    :cond_69
    move-object/from16 v0, p0

    #@a76
    iget v4, v0, Landroid/view/ViewRootImpl;->mHeight:I

    #@a78
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    #@a7b
    move-result v10

    #@a7c
    if-ne v4, v10, :cond_57

    #@a7e
    .line 1852
    if-eqz v30, :cond_5b

    #@a80
    goto/16 :goto_1a

    #@a82
    .line 1911
    .end local v30    # "contentInsetsChanged":Z
    .end local v34    # "focusChangedDueToTouchMode":Z
    .end local v36    # "hadSurface":Z
    .end local v37    # "hardwareRenderer":Landroid/view/HardwareRenderer;
    .restart local v44    # "insetsPending":Z
    :cond_6a
    move-object/from16 v0, p0

    #@a84
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@a86
    iget v4, v4, Landroid/view/View$AttachInfo;->mWindowLeft:I

    #@a88
    move-object/from16 v0, v35

    #@a8a
    iget v10, v0, Landroid/graphics/Rect;->left:I

    #@a8c
    if-ne v4, v10, :cond_6c

    #@a8e
    .line 1912
    move-object/from16 v0, p0

    #@a90
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@a92
    iget v4, v4, Landroid/view/View$AttachInfo;->mWindowTop:I

    #@a94
    move-object/from16 v0, v35

    #@a96
    iget v10, v0, Landroid/graphics/Rect;->top:I

    #@a98
    if-eq v4, v10, :cond_6d

    #@a9a
    const/16 v64, 0x1

    #@a9c
    .line 1913
    .local v64, "windowMoved":Z
    :goto_26
    if-eqz v64, :cond_5b

    #@a9e
    .line 1914
    move-object/from16 v0, p0

    #@aa0
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@aa2
    if-eqz v4, :cond_6b

    #@aa4
    .line 1915
    move-object/from16 v0, p0

    #@aa6
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@aa8
    move-object/from16 v0, v35

    #@aaa
    invoke-virtual {v4, v0}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWinFrame(Landroid/graphics/Rect;)V

    #@aad
    .line 1917
    :cond_6b
    move-object/from16 v0, p0

    #@aaf
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@ab1
    move-object/from16 v0, v35

    #@ab3
    iget v10, v0, Landroid/graphics/Rect;->left:I

    #@ab5
    iput v10, v4, Landroid/view/View$AttachInfo;->mWindowLeft:I

    #@ab7
    .line 1918
    move-object/from16 v0, p0

    #@ab9
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@abb
    move-object/from16 v0, v35

    #@abd
    iget v10, v0, Landroid/graphics/Rect;->top:I

    #@abf
    iput v10, v4, Landroid/view/View$AttachInfo;->mWindowTop:I

    #@ac1
    .line 1921
    move-object/from16 v0, p0

    #@ac3
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@ac5
    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    #@ac7
    if-eqz v4, :cond_5b

    #@ac9
    .line 1922
    move-object/from16 v0, p0

    #@acb
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@acd
    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    #@acf
    move-object/from16 v0, p0

    #@ad1
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@ad3
    invoke-virtual {v4, v10}, Landroid/view/HardwareRenderer;->setLightCenter(Landroid/view/View$AttachInfo;)V

    #@ad6
    goto/16 :goto_1b

    #@ad8
    .line 1911
    .end local v64    # "windowMoved":Z
    :cond_6c
    const/16 v64, 0x1

    #@ada
    .restart local v64    # "windowMoved":Z
    goto :goto_26

    #@adb
    .line 1912
    .end local v64    # "windowMoved":Z
    :cond_6d
    const/16 v64, 0x0

    #@add
    .restart local v64    # "windowMoved":Z
    goto :goto_26

    #@ade
    .line 1927
    .end local v44    # "insetsPending":Z
    .end local v64    # "windowMoved":Z
    :cond_6e
    const/16 v31, 0x1

    #@ae0
    .local v31, "didLayout":Z
    goto/16 :goto_1c

    #@ae2
    .end local v31    # "didLayout":Z
    :cond_6f
    const/16 v31, 0x0

    #@ae4
    .restart local v31    # "didLayout":Z
    goto/16 :goto_1c

    #@ae6
    .line 1928
    .end local v31    # "didLayout":Z
    :cond_70
    const/16 v59, 0x1

    #@ae8
    .local v59, "triggerGlobalLayoutListener":Z
    goto/16 :goto_1d

    #@aea
    .line 1979
    .end local v59    # "triggerGlobalLayoutListener":Z
    .restart local v42    # "insets":Landroid/view/ViewTreeObserver$InternalInsetsInfo;
    :cond_71
    const/4 v4, 0x1

    #@aeb
    goto/16 :goto_1f

    #@aed
    .line 1983
    :cond_72
    move-object/from16 v0, p0

    #@aef
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mLastGivenInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    #@af1
    move-object/from16 v0, v42

    #@af3
    invoke-virtual {v4, v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->set(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V

    #@af6
    .line 1989
    move-object/from16 v0, p0

    #@af8
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@afa
    if-eqz v4, :cond_73

    #@afc
    .line 1990
    move-object/from16 v0, p0

    #@afe
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@b00
    move-object/from16 v0, v42

    #@b02
    iget-object v10, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->contentInsets:Landroid/graphics/Rect;

    #@b04
    invoke-virtual {v4, v10}, Landroid/content/res/CompatibilityInfo$Translator;->getTranslatedContentInsets(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    #@b07
    move-result-object v13

    #@b08
    .line 1991
    .local v13, "contentInsets":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    #@b0a
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@b0c
    move-object/from16 v0, v42

    #@b0e
    iget-object v10, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->visibleInsets:Landroid/graphics/Rect;

    #@b10
    invoke-virtual {v4, v10}, Landroid/content/res/CompatibilityInfo$Translator;->getTranslatedVisibleInsets(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    #@b13
    move-result-object v14

    #@b14
    .line 1992
    .local v14, "visibleInsets":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    #@b16
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@b18
    move-object/from16 v0, v42

    #@b1a
    iget-object v10, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    #@b1c
    invoke-virtual {v4, v10}, Landroid/content/res/CompatibilityInfo$Translator;->getTranslatedTouchableArea(Landroid/graphics/Region;)Landroid/graphics/Region;

    #@b1f
    move-result-object v15

    #@b20
    .line 2000
    .local v15, "touchableRegion":Landroid/graphics/Region;
    :goto_27
    :try_start_7
    move-object/from16 v0, p0

    #@b22
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    #@b24
    move-object/from16 v0, p0

    #@b26
    iget-object v11, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    #@b28
    move-object/from16 v0, v42

    #@b2a
    iget v12, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->mTouchableInsets:I

    #@b2c
    invoke-interface/range {v10 .. v15}, Landroid/view/IWindowSession;->setInsets(Landroid/view/IWindow;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Region;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_3

    #@b2f
    goto/16 :goto_20

    #@b31
    .line 2002
    :catch_3
    move-exception v32

    #@b32
    .restart local v32    # "e":Landroid/os/RemoteException;
    goto/16 :goto_20

    #@b34
    .line 1994
    .end local v13    # "contentInsets":Landroid/graphics/Rect;
    .end local v14    # "visibleInsets":Landroid/graphics/Rect;
    .end local v15    # "touchableRegion":Landroid/graphics/Region;
    .end local v32    # "e":Landroid/os/RemoteException;
    :cond_73
    move-object/from16 v0, v42

    #@b36
    iget-object v13, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->contentInsets:Landroid/graphics/Rect;

    #@b38
    .line 1995
    .restart local v13    # "contentInsets":Landroid/graphics/Rect;
    move-object/from16 v0, v42

    #@b3a
    iget-object v14, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->visibleInsets:Landroid/graphics/Rect;

    #@b3c
    .line 1996
    .restart local v14    # "visibleInsets":Landroid/graphics/Rect;
    move-object/from16 v0, v42

    #@b3e
    iget-object v15, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    #@b40
    .restart local v15    # "touchableRegion":Landroid/graphics/Region;
    goto :goto_27

    #@b41
    .line 2023
    .end local v13    # "contentInsets":Landroid/graphics/Rect;
    .end local v14    # "visibleInsets":Landroid/graphics/Rect;
    .end local v15    # "touchableRegion":Landroid/graphics/Region;
    .end local v42    # "insets":Landroid/view/ViewTreeObserver$InternalInsetsInfo;
    .restart local v55    # "skipDraw":Z
    :cond_74
    move-object/from16 v0, p0

    #@b43
    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mWindowsAnimating:Z

    #@b45
    if-eqz v4, :cond_60

    #@b47
    .line 2024
    move-object/from16 v0, p0

    #@b49
    iget v4, v0, Landroid/view/ViewRootImpl;->mRemainingFrameCount:I

    #@b4b
    if-gtz v4, :cond_75

    #@b4d
    .line 2025
    const/16 v55, 0x1

    #@b4f
    .line 2027
    :cond_75
    move-object/from16 v0, p0

    #@b51
    iget v4, v0, Landroid/view/ViewRootImpl;->mRemainingFrameCount:I

    #@b53
    add-int/lit8 v4, v4, -0x1

    #@b55
    move-object/from16 v0, p0

    #@b57
    iput v4, v0, Landroid/view/ViewRootImpl;->mRemainingFrameCount:I

    #@b59
    goto/16 :goto_21

    #@b5b
    .line 2037
    :cond_76
    move-object/from16 v0, p0

    #@b5d
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@b5f
    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@b61
    .line 2036
    invoke-static {v4}, Landroid/view/WindowManager$LayoutParams;->mayUseInputMethod(I)Z

    #@b64
    move-result v41

    #@b65
    .line 2038
    .local v41, "imTarget":Z
    move-object/from16 v0, p0

    #@b67
    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mLastWasImTarget:Z

    #@b69
    move/from16 v0, v41

    #@b6b
    if-eq v0, v4, :cond_61

    #@b6d
    .line 2039
    move/from16 v0, v41

    #@b6f
    move-object/from16 v1, p0

    #@b71
    iput-boolean v0, v1, Landroid/view/ViewRootImpl;->mLastWasImTarget:Z

    #@b73
    .line 2040
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    #@b76
    move-result-object v16

    #@b77
    .line 2041
    .local v16, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v16, :cond_61

    #@b79
    if-eqz v41, :cond_61

    #@b7b
    .line 2042
    move-object/from16 v0, p0

    #@b7d
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@b7f
    const/4 v10, 0x1

    #@b80
    move-object/from16 v0, v16

    #@b82
    invoke-virtual {v0, v4, v10}, Landroid/view/inputmethod/InputMethodManager;->onPreWindowFocus(Landroid/view/View;Z)V

    #@b85
    .line 2043
    move-object/from16 v0, p0

    #@b87
    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@b89
    move-object/from16 v17, v0

    #@b8b
    move-object/from16 v0, p0

    #@b8d
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@b8f
    invoke-virtual {v4}, Landroid/view/View;->findFocus()Landroid/view/View;

    #@b92
    move-result-object v18

    #@b93
    .line 2044
    move-object/from16 v0, p0

    #@b95
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@b97
    iget v0, v4, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    #@b99
    move/from16 v19, v0

    #@b9b
    .line 2045
    move-object/from16 v0, p0

    #@b9d
    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mHasHadWindowFocus:Z

    #@b9f
    if-eqz v4, :cond_77

    #@ba1
    const/16 v20, 0x0

    #@ba3
    :goto_28
    move-object/from16 v0, p0

    #@ba5
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@ba7
    iget v0, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@ba9
    move/from16 v21, v0

    #@bab
    .line 2043
    invoke-virtual/range {v16 .. v21}, Landroid/view/inputmethod/InputMethodManager;->onPostWindowFocus(Landroid/view/View;Landroid/view/View;IZI)V

    #@bae
    goto/16 :goto_22

    #@bb0
    .line 2045
    :cond_77
    const/16 v20, 0x1

    #@bb2
    goto :goto_28

    #@bb3
    .line 2055
    .end local v16    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v41    # "imTarget":Z
    :cond_78
    const/16 v25, 0x1

    #@bb5
    .restart local v25    # "cancelDraw":Z
    goto/16 :goto_23

    #@bb7
    .line 2056
    .end local v25    # "cancelDraw":Z
    :cond_79
    const/16 v25, 0x0

    #@bb9
    .restart local v25    # "cancelDraw":Z
    goto/16 :goto_23

    #@bbb
    .line 2059
    :cond_7a
    if-eqz v55, :cond_7b

    #@bbd
    move-object/from16 v0, p0

    #@bbf
    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    #@bc1
    if-eqz v4, :cond_64

    #@bc3
    .line 2060
    :cond_7b
    move-object/from16 v0, p0

    #@bc5
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    #@bc7
    if-eqz v4, :cond_7d

    #@bc9
    move-object/from16 v0, p0

    #@bcb
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    #@bcd
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@bd0
    move-result v4

    #@bd1
    if-lez v4, :cond_7d

    #@bd3
    .line 2061
    const/16 v40, 0x0

    #@bd5
    .restart local v40    # "i":I
    :goto_29
    move-object/from16 v0, p0

    #@bd7
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    #@bd9
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@bdc
    move-result v4

    #@bdd
    move/from16 v0, v40

    #@bdf
    if-ge v0, v4, :cond_7c

    #@be1
    .line 2062
    move-object/from16 v0, p0

    #@be3
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    #@be5
    move/from16 v0, v40

    #@be7
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@bea
    move-result-object v4

    #@beb
    check-cast v4, Landroid/animation/LayoutTransition;

    #@bed
    invoke-virtual {v4}, Landroid/animation/LayoutTransition;->startChangingAnimations()V

    #@bf0
    .line 2061
    add-int/lit8 v40, v40, 0x1

    #@bf2
    goto :goto_29

    #@bf3
    .line 2064
    :cond_7c
    move-object/from16 v0, p0

    #@bf5
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    #@bf7
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    #@bfa
    .line 2067
    .end local v40    # "i":I
    :cond_7d
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->performDraw()V

    #@bfd
    goto/16 :goto_24

    #@bff
    .line 2073
    :cond_7e
    move-object/from16 v0, p0

    #@c01
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    #@c03
    if-eqz v4, :cond_64

    #@c05
    move-object/from16 v0, p0

    #@c07
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    #@c09
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@c0c
    move-result v4

    #@c0d
    if-lez v4, :cond_64

    #@c0f
    .line 2074
    const/16 v40, 0x0

    #@c11
    .restart local v40    # "i":I
    :goto_2a
    move-object/from16 v0, p0

    #@c13
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    #@c15
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@c18
    move-result v4

    #@c19
    move/from16 v0, v40

    #@c1b
    if-ge v0, v4, :cond_7f

    #@c1d
    .line 2075
    move-object/from16 v0, p0

    #@c1f
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    #@c21
    move/from16 v0, v40

    #@c23
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@c26
    move-result-object v4

    #@c27
    check-cast v4, Landroid/animation/LayoutTransition;

    #@c29
    invoke-virtual {v4}, Landroid/animation/LayoutTransition;->endChangingAnimations()V

    #@c2c
    .line 2074
    add-int/lit8 v40, v40, 0x1

    #@c2e
    goto :goto_2a

    #@c2f
    .line 2077
    :cond_7f
    move-object/from16 v0, p0

    #@c31
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    #@c33
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    #@c36
    goto/16 :goto_24

    #@c38
    .line 1955
    .end local v25    # "cancelDraw":Z
    .end local v40    # "i":I
    .end local v55    # "skipDraw":Z
    :catch_4
    move-exception v32

    #@c39
    .restart local v32    # "e":Landroid/os/RemoteException;
    goto/16 :goto_1e
.end method

.method private postSendWindowContentChangedCallback(Landroid/view/View;I)V
    .locals 2
    .param p1, "source"    # Landroid/view/View;
    .param p2, "changeType"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 6290
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 6292
    new-instance v0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    #@7
    invoke-direct {v0, p0, v1}, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;)V

    #@a
    .line 6291
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    #@c
    .line 6294
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    #@e
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->runOrPost(Landroid/view/View;I)V

    #@11
    .line 6289
    return-void
.end method

.method private profileRendering(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 2371
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mProfileRendering:Z

    #@3
    if-eqz v0, :cond_2

    #@5
    .line 2372
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mRenderProfilingEnabled:Z

    #@7
    .line 2374
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 2375
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    #@d
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

    #@f
    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    #@12
    .line 2377
    :cond_0
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mRenderProfilingEnabled:Z

    #@14
    if-eqz v0, :cond_3

    #@16
    .line 2378
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

    #@18
    if-nez v0, :cond_1

    #@1a
    .line 2379
    new-instance v0, Landroid/view/ViewRootImpl$3;

    #@1c
    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$3;-><init>(Landroid/view/ViewRootImpl;)V

    #@1f
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

    #@21
    .line 2390
    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    #@23
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

    #@25
    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    #@28
    .line 2370
    :cond_2
    :goto_0
    return-void

    #@29
    .line 2392
    :cond_3
    iput-object v2, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

    #@2b
    goto :goto_0
.end method

.method private recycleQueuedInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .locals 2
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 5820
    iput-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    #@3
    .line 5821
    iput-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mReceiver:Landroid/view/InputEventReceiver;

    #@5
    .line 5823
    iget v0, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPoolSize:I

    #@7
    const/16 v1, 0xa

    #@9
    if-ge v0, v1, :cond_0

    #@b
    .line 5824
    iget v0, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPoolSize:I

    #@d
    add-int/lit8 v0, v0, 0x1

    #@f
    iput v0, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPoolSize:I

    #@11
    .line 5825
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPool:Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@13
    iput-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@15
    .line 5826
    iput-object p1, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPool:Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@17
    .line 5819
    :cond_0
    return-void
.end method

.method private relayoutWindow(Landroid/view/WindowManager$LayoutParams;IZ)I
    .locals 20
    .param p1, "params"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "viewVisibility"    # I
    .param p3, "insetsPending"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 5395
    move-object/from16 v0, p0

    #@2
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@4
    iget v0, v1, Landroid/view/View$AttachInfo;->mApplicationScale:F

    #@6
    move/from16 v17, v0

    #@8
    .line 5396
    .local v17, "appScale":F
    const/16 v19, 0x0

    #@a
    .line 5397
    .local v19, "restore":Z
    if-eqz p1, :cond_0

    #@c
    move-object/from16 v0, p0

    #@e
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@10
    if-eqz v1, :cond_0

    #@12
    .line 5398
    const/16 v19, 0x1

    #@14
    .line 5399
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowManager$LayoutParams;->backup()V

    #@17
    .line 5400
    move-object/from16 v0, p0

    #@19
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@1b
    move-object/from16 v0, p1

    #@1d
    invoke-virtual {v1, v0}, Landroid/content/res/CompatibilityInfo$Translator;->translateWindowLayout(Landroid/view/WindowManager$LayoutParams;)V

    #@20
    .line 5402
    :cond_0
    if-eqz p1, :cond_1

    #@22
    .line 5405
    :cond_1
    move-object/from16 v0, p0

    #@24
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mPendingConfiguration:Landroid/content/res/Configuration;

    #@26
    const/4 v2, 0x0

    #@27
    iput v2, v1, Landroid/content/res/Configuration;->seq:I

    #@29
    .line 5407
    if-eqz p1, :cond_2

    #@2b
    move-object/from16 v0, p0

    #@2d
    iget v1, v0, Landroid/view/ViewRootImpl;->mOrigWindowType:I

    #@2f
    move-object/from16 v0, p1

    #@31
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@33
    if-eq v1, v2, :cond_2

    #@35
    .line 5409
    move-object/from16 v0, p0

    #@37
    iget v1, v0, Landroid/view/ViewRootImpl;->mTargetSdkVersion:I

    #@39
    const/16 v2, 0xe

    #@3b
    if-ge v1, v2, :cond_2

    #@3d
    .line 5410
    const-string/jumbo v1, "ViewRootImpl"

    #@40
    new-instance v2, Ljava/lang/StringBuilder;

    #@42
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@45
    const-string/jumbo v3, "Window type can not be changed after the window is added; ignoring change of "

    #@48
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v2

    #@4c
    .line 5411
    move-object/from16 v0, p0

    #@4e
    iget-object v3, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@50
    .line 5410
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v2

    #@54
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v2

    #@58
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@5b
    .line 5412
    move-object/from16 v0, p0

    #@5d
    iget v1, v0, Landroid/view/ViewRootImpl;->mOrigWindowType:I

    #@5f
    move-object/from16 v0, p1

    #@61
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@63
    .line 5415
    :cond_2
    move-object/from16 v0, p0

    #@65
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    #@67
    .line 5416
    move-object/from16 v0, p0

    #@69
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    #@6b
    move-object/from16 v0, p0

    #@6d
    iget v3, v0, Landroid/view/ViewRootImpl;->mSeq:I

    #@6f
    .line 5417
    move-object/from16 v0, p0

    #@71
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@73
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    #@76
    move-result v4

    #@77
    int-to-float v4, v4

    #@78
    mul-float v4, v4, v17

    #@7a
    const/high16 v5, 0x3f000000    # 0.5f

    #@7c
    add-float/2addr v4, v5

    #@7d
    float-to-int v5, v4

    #@7e
    .line 5418
    move-object/from16 v0, p0

    #@80
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@82
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    #@85
    move-result v4

    #@86
    int-to-float v4, v4

    #@87
    mul-float v4, v4, v17

    #@89
    const/high16 v6, 0x3f000000    # 0.5f

    #@8b
    add-float/2addr v4, v6

    #@8c
    float-to-int v6, v4

    #@8d
    .line 5419
    if-eqz p3, :cond_5

    #@8f
    const/4 v8, 0x1

    #@90
    .line 5420
    :goto_0
    move-object/from16 v0, p0

    #@92
    iget-object v9, v0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    #@94
    move-object/from16 v0, p0

    #@96
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    #@98
    move-object/from16 v0, p0

    #@9a
    iget-object v11, v0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    #@9c
    move-object/from16 v0, p0

    #@9e
    iget-object v12, v0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    #@a0
    .line 5421
    move-object/from16 v0, p0

    #@a2
    iget-object v13, v0, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    #@a4
    move-object/from16 v0, p0

    #@a6
    iget-object v14, v0, Landroid/view/ViewRootImpl;->mPendingOutsets:Landroid/graphics/Rect;

    #@a8
    move-object/from16 v0, p0

    #@aa
    iget-object v15, v0, Landroid/view/ViewRootImpl;->mPendingConfiguration:Landroid/content/res/Configuration;

    #@ac
    move-object/from16 v0, p0

    #@ae
    iget-object v0, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    #@b0
    move-object/from16 v16, v0

    #@b2
    move-object/from16 v4, p1

    #@b4
    move/from16 v7, p2

    #@b6
    .line 5415
    invoke-interface/range {v1 .. v16}, Landroid/view/IWindowSession;->relayout(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;Landroid/view/Surface;)I

    #@b9
    move-result v18

    #@ba
    .line 5423
    .local v18, "relayoutResult":I
    if-eqz v19, :cond_3

    #@bc
    .line 5424
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowManager$LayoutParams;->restore()V

    #@bf
    .line 5427
    :cond_3
    move-object/from16 v0, p0

    #@c1
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@c3
    if-eqz v1, :cond_4

    #@c5
    .line 5428
    move-object/from16 v0, p0

    #@c7
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@c9
    move-object/from16 v0, p0

    #@cb
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    #@cd
    invoke-virtual {v1, v2}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWinFrame(Landroid/graphics/Rect;)V

    #@d0
    .line 5429
    move-object/from16 v0, p0

    #@d2
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@d4
    move-object/from16 v0, p0

    #@d6
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    #@d8
    invoke-virtual {v1, v2}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    #@db
    .line 5430
    move-object/from16 v0, p0

    #@dd
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@df
    move-object/from16 v0, p0

    #@e1
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    #@e3
    invoke-virtual {v1, v2}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    #@e6
    .line 5431
    move-object/from16 v0, p0

    #@e8
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@ea
    move-object/from16 v0, p0

    #@ec
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    #@ee
    invoke-virtual {v1, v2}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    #@f1
    .line 5432
    move-object/from16 v0, p0

    #@f3
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@f5
    move-object/from16 v0, p0

    #@f7
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    #@f9
    invoke-virtual {v1, v2}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    #@fc
    .line 5434
    :cond_4
    return v18

    #@fd
    .line 5419
    .end local v18    # "relayoutResult":I
    :cond_5
    const/4 v8, 0x0

    #@fe
    goto :goto_0
.end method

.method private removeSendWindowContentChangedCallback()V
    .locals 2

    #@0
    .prologue
    .line 6302
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 6303
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@6
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    #@8
    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@b
    .line 6301
    :cond_0
    return-void
.end method

.method private scheduleProcessInputEvents()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 5864
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mProcessInputEventsScheduled:Z

    #@3
    if-nez v1, :cond_0

    #@5
    .line 5865
    iput-boolean v3, p0, Landroid/view/ViewRootImpl;->mProcessInputEventsScheduled:Z

    #@7
    .line 5866
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@9
    const/16 v2, 0x13

    #@b
    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(I)Landroid/os/Message;

    #@e
    move-result-object v0

    #@f
    .line 5867
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    #@12
    .line 5868
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@14
    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    #@17
    .line 5863
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private trackFPS()V
    .locals 13

    #@0
    .prologue
    const/4 v12, 0x0

    #@1
    .line 2403
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@4
    move-result-wide v4

    #@5
    .line 2404
    .local v4, "nowTime":J
    iget-wide v8, p0, Landroid/view/ViewRootImpl;->mFpsStartTime:J

    #@7
    const-wide/16 v10, 0x0

    #@9
    cmp-long v8, v8, v10

    #@b
    if-gez v8, :cond_1

    #@d
    .line 2405
    iput-wide v4, p0, Landroid/view/ViewRootImpl;->mFpsPrevTime:J

    #@f
    iput-wide v4, p0, Landroid/view/ViewRootImpl;->mFpsStartTime:J

    #@11
    .line 2406
    iput v12, p0, Landroid/view/ViewRootImpl;->mFpsNumFrames:I

    #@13
    .line 2400
    :cond_0
    :goto_0
    return-void

    #@14
    .line 2408
    :cond_1
    iget v8, p0, Landroid/view/ViewRootImpl;->mFpsNumFrames:I

    #@16
    add-int/lit8 v8, v8, 0x1

    #@18
    iput v8, p0, Landroid/view/ViewRootImpl;->mFpsNumFrames:I

    #@1a
    .line 2409
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@1d
    move-result v8

    #@1e
    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    .line 2410
    .local v1, "thisHash":Ljava/lang/String;
    iget-wide v8, p0, Landroid/view/ViewRootImpl;->mFpsPrevTime:J

    #@24
    sub-long v2, v4, v8

    #@26
    .line 2411
    .local v2, "frameTime":J
    iget-wide v8, p0, Landroid/view/ViewRootImpl;->mFpsStartTime:J

    #@28
    sub-long v6, v4, v8

    #@2a
    .line 2412
    .local v6, "totalTime":J
    const-string/jumbo v8, "ViewRootImpl"

    #@2d
    new-instance v9, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    const-string/jumbo v10, "0x"

    #@35
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v9

    #@39
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v9

    #@3d
    const-string/jumbo v10, "\tFrame time:\t"

    #@40
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v9

    #@44
    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@47
    move-result-object v9

    #@48
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v9

    #@4c
    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@4f
    .line 2413
    iput-wide v4, p0, Landroid/view/ViewRootImpl;->mFpsPrevTime:J

    #@51
    .line 2414
    const-wide/16 v8, 0x3e8

    #@53
    cmp-long v8, v6, v8

    #@55
    if-lez v8, :cond_0

    #@57
    .line 2415
    iget v8, p0, Landroid/view/ViewRootImpl;->mFpsNumFrames:I

    #@59
    int-to-float v8, v8

    #@5a
    const/high16 v9, 0x447a0000    # 1000.0f

    #@5c
    mul-float/2addr v8, v9

    #@5d
    long-to-float v9, v6

    #@5e
    div-float v0, v8, v9

    #@60
    .line 2416
    .local v0, "fps":F
    const-string/jumbo v8, "ViewRootImpl"

    #@63
    new-instance v9, Ljava/lang/StringBuilder;

    #@65
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@68
    const-string/jumbo v10, "0x"

    #@6b
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v9

    #@6f
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v9

    #@73
    const-string/jumbo v10, "\tFPS:\t"

    #@76
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v9

    #@7a
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v9

    #@7e
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@81
    move-result-object v9

    #@82
    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@85
    .line 2417
    iput-wide v4, p0, Landroid/view/ViewRootImpl;->mFpsStartTime:J

    #@87
    .line 2418
    iput v12, p0, Landroid/view/ViewRootImpl;->mFpsNumFrames:I

    #@89
    goto :goto_0
.end method


# virtual methods
.method public bringChildToFront(Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;

    #@0
    .prologue
    .line 1028
    return-void
.end method

.method public canResolveLayoutDirection()Z
    .locals 1

    #@0
    .prologue
    .line 6478
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public canResolveTextAlignment()Z
    .locals 1

    #@0
    .prologue
    .line 6508
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public canResolveTextDirection()Z
    .locals 1

    #@0
    .prologue
    .line 6493
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public cancelInvalidate(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 6170
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-virtual {v0, v1, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeMessages(ILjava/lang/Object;)V

    #@6
    .line 6173
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@8
    const/4 v1, 0x2

    #@9
    invoke-virtual {v0, v1, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeMessages(ILjava/lang/Object;)V

    #@c
    .line 6174
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInvalidateOnAnimationRunnable:Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;

    #@e
    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->removeView(Landroid/view/View;)V

    #@11
    .line 6169
    return-void
.end method

.method changeCanvasOpacity(Z)V
    .locals 3
    .param p1, "opaque"    # Z

    #@0
    .prologue
    .line 6625
    const-string/jumbo v0, "ViewRootImpl"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "changeCanvasOpacity: opaque="

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 6626
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@1c
    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    #@1e
    if-eqz v0, :cond_0

    #@20
    .line 6627
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@22
    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    #@24
    invoke-virtual {v0, p1}, Landroid/view/HardwareRenderer;->setOpaque(Z)V

    #@27
    .line 6624
    :cond_0
    return-void
.end method

.method checkThread()V
    .locals 2

    #@0
    .prologue
    .line 6555
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mThread:Ljava/lang/Thread;

    #@2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@5
    move-result-object v1

    #@6
    if-eq v0, v1, :cond_0

    #@8
    .line 6556
    new-instance v0, Landroid/view/ViewRootImpl$CalledFromWrongThreadException;

    #@a
    .line 6557
    const-string/jumbo v1, "Only the original thread that created a view hierarchy can touch its views."

    #@d
    .line 6556
    invoke-direct {v0, v1}, Landroid/view/ViewRootImpl$CalledFromWrongThreadException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 6554
    :cond_0
    return-void
.end method

.method public childDrawableStateChanged(Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;

    #@0
    .prologue
    .line 6328
    return-void
.end method

.method public childHasTransientStateChanged(Landroid/view/View;Z)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "hasTransientState"    # Z

    #@0
    .prologue
    .line 6583
    return-void
.end method

.method public clearChildFocus(Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;

    #@0
    .prologue
    .line 3023
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    #@3
    .line 3024
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    #@6
    .line 3019
    return-void
.end method

.method public createContextMenu(Landroid/view/ContextMenu;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/ContextMenu;

    #@0
    .prologue
    .line 6324
    return-void
.end method

.method public debug()V
    .locals 1

    #@0
    .prologue
    .line 5499
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@2
    invoke-virtual {v0}, Landroid/view/View;->debug()V

    #@5
    .line 5498
    return-void
.end method

.method destroyHardwareResources()V
    .locals 2

    #@0
    .prologue
    .line 670
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@2
    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 671
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@8
    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    #@a
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@c
    invoke-virtual {v0, v1}, Landroid/view/HardwareRenderer;->destroyHardwareResources(Landroid/view/View;)V

    #@f
    .line 672
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@11
    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    #@13
    invoke-virtual {v0}, Landroid/view/HardwareRenderer;->destroy()V

    #@16
    .line 669
    :cond_0
    return-void
.end method

.method public detachFunctor(J)V
    .locals 1
    .param p1, "functor"    # J

    #@0
    .prologue
    .line 678
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mBlockResizeBuffer:Z

    #@3
    .line 679
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@5
    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 682
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@b
    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    #@d
    invoke-virtual {v0}, Landroid/view/HardwareRenderer;->stopDrawing()V

    #@10
    .line 676
    :cond_0
    return-void
.end method

.method die(Z)Z
    .locals 3
    .param p1, "immediate"    # Z

    #@0
    .prologue
    .line 5582
    if-eqz p1, :cond_0

    #@2
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mIsInTraversal:Z

    #@4
    if-eqz v0, :cond_1

    #@6
    .line 5587
    :cond_0
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mIsDrawing:Z

    #@8
    if-nez v0, :cond_2

    #@a
    .line 5588
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->destroyHardwareRenderer()V

    #@d
    .line 5593
    :goto_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@f
    const/4 v1, 0x3

    #@10
    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendEmptyMessage(I)Z

    #@13
    .line 5594
    const/4 v0, 0x1

    #@14
    return v0

    #@15
    .line 5583
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->doDie()V

    #@18
    .line 5584
    const/4 v0, 0x0

    #@19
    return v0

    #@1a
    .line 5590
    :cond_2
    const-string/jumbo v0, "ViewRootImpl"

    #@1d
    new-instance v1, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v2, "Attempting to destroy the window while drawing!\n  window="

    #@25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    .line 5591
    const-string/jumbo v2, ", title="

    #@30
    .line 5590
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    .line 5591
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@36
    invoke-virtual {v2}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    #@39
    move-result-object v2

    #@3a
    .line 5590
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v1

    #@3e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v1

    #@42
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@45
    goto :goto_0
.end method

.method public dispatchAppVisibility(Z)V
    .locals 3
    .param p1, "visible"    # Z

    #@0
    .prologue
    .line 6216
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@2
    const/16 v2, 0x8

    #@4
    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(I)Landroid/os/Message;

    #@7
    move-result-object v0

    #@8
    .line 6217
    .local v0, "msg":Landroid/os/Message;
    if-eqz p1, :cond_0

    #@a
    const/4 v1, 0x1

    #@b
    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    #@d
    .line 6218
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@f
    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    #@12
    .line 6215
    return-void

    #@13
    .line 6217
    :cond_0
    const/4 v1, 0x0

    #@14
    goto :goto_0
.end method

.method dispatchApplyInsets(Landroid/view/View;)V
    .locals 1
    .param p1, "host"    # Landroid/view/View;

    #@0
    .prologue
    .line 1279
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, v0}, Landroid/view/ViewRootImpl;->getWindowInsets(Z)Landroid/view/WindowInsets;

    #@4
    move-result-object v0

    #@5
    invoke-virtual {p1, v0}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    #@8
    .line 1278
    return-void
.end method

.method public dispatchCheckFocus()V
    .locals 2

    #@0
    .prologue
    const/16 v1, 0xd

    #@2
    .line 6277
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@4
    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->hasMessages(I)Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_0

    #@a
    .line 6279
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@c
    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendEmptyMessage(I)Z

    #@f
    .line 6276
    :cond_0
    return-void
.end method

.method public dispatchCloseSystemDialogs(Ljava/lang/String;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 6239
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    #@3
    move-result-object v0

    #@4
    .line 6240
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xe

    #@6
    iput v1, v0, Landroid/os/Message;->what:I

    #@8
    .line 6241
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@a
    .line 6242
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@c
    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    #@f
    .line 6238
    return-void
.end method

.method dispatchDetachedFromWindow()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 3066
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@7
    iget-object v1, v1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 3067
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@d
    iget-object v1, v1, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    #@f
    const/4 v2, 0x0

    #@10
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->dispatchOnWindowAttachedChange(Z)V

    #@13
    .line 3068
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@15
    invoke-virtual {v1}, Landroid/view/View;->dispatchDetachedFromWindow()V

    #@18
    .line 3071
    :cond_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    #@1a
    invoke-virtual {v1}, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->ensureNoConnection()V

    #@1d
    .line 3072
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    #@1f
    .line 3073
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    #@21
    .line 3072
    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityManager;->removeAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    #@24
    .line 3074
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    #@26
    .line 3075
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mHighContrastTextManager:Landroid/view/ViewRootImpl$HighContrastTextManager;

    #@28
    .line 3074
    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityManager;->removeHighTextContrastStateChangeListener(Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;)Z

    #@2b
    .line 3076
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->removeSendWindowContentChangedCallback()V

    #@2e
    .line 3078
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->destroyHardwareRenderer()V

    #@31
    .line 3080
    invoke-virtual {p0, v3, v3}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    #@34
    .line 3082
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@36
    invoke-virtual {v1, v3}, Landroid/view/View;->assignParent(Landroid/view/ViewParent;)V

    #@39
    .line 3083
    iput-object v3, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@3b
    .line 3084
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@3d
    iput-object v3, v1, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    #@3f
    .line 3086
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    #@41
    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    #@44
    .line 3088
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    #@46
    if-eqz v1, :cond_1

    #@48
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    #@4a
    if-eqz v1, :cond_1

    #@4c
    .line 3089
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    #@4e
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    #@50
    invoke-interface {v1, v2}, Landroid/view/InputQueue$Callback;->onInputQueueDestroyed(Landroid/view/InputQueue;)V

    #@53
    .line 3090
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    #@55
    invoke-virtual {v1}, Landroid/view/InputQueue;->dispose()V

    #@58
    .line 3091
    iput-object v3, p0, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    #@5a
    .line 3092
    iput-object v3, p0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    #@5c
    .line 3094
    :cond_1
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    #@5e
    if-eqz v1, :cond_2

    #@60
    .line 3095
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    #@62
    invoke-virtual {v1}, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->dispose()V

    #@65
    .line 3096
    iput-object v3, p0, Landroid/view/ViewRootImpl;->mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    #@67
    .line 3099
    :cond_2
    :try_start_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    #@69
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    #@6b
    invoke-interface {v1, v2}, Landroid/view/IWindowSession;->remove(Landroid/view/IWindow;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@6e
    .line 3105
    :goto_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    #@70
    if-eqz v1, :cond_3

    #@72
    .line 3106
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    #@74
    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    #@77
    .line 3107
    iput-object v3, p0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    #@79
    .line 3110
    :cond_3
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    #@7b
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    #@7d
    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    #@80
    .line 3112
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->unscheduleTraversals()V

    #@83
    .line 3065
    return-void

    #@84
    .line 3100
    :catch_0
    move-exception v0

    #@85
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/DragEvent;

    #@0
    .prologue
    .line 6247
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    #@3
    move-result v2

    #@4
    const/4 v3, 0x2

    #@5
    if-ne v2, v3, :cond_0

    #@7
    .line 6248
    const/16 v1, 0x10

    #@9
    .line 6249
    .local v1, "what":I
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@b
    invoke-virtual {v2, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeMessages(I)V

    #@e
    .line 6253
    :goto_0
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@10
    invoke-virtual {v2, v1, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@13
    move-result-object v0

    #@14
    .line 6254
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@16
    invoke-virtual {v2, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    #@19
    .line 6245
    return-void

    #@1a
    .line 6251
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "what":I
    :cond_0
    const/16 v1, 0xf

    #@1c
    .restart local v1    # "what":I
    goto :goto_0
.end method

.method public dispatchFinishInputConnection(Landroid/view/inputmethod/InputConnection;)V
    .locals 3
    .param p1, "connection"    # Landroid/view/inputmethod/InputConnection;

    #@0
    .prologue
    .line 5685
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@2
    const/16 v2, 0xc

    #@4
    invoke-virtual {v1, v2, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@7
    move-result-object v0

    #@8
    .line 5686
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@a
    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    #@d
    .line 5684
    return-void
.end method

.method public dispatchGetNewSurface()V
    .locals 3

    #@0
    .prologue
    .line 6222
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@2
    const/16 v2, 0x9

    #@4
    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(I)Landroid/os/Message;

    #@7
    move-result-object v0

    #@8
    .line 6223
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@a
    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    #@d
    .line 6221
    return-void
.end method

.method public dispatchInputEvent(Landroid/view/InputEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/InputEvent;

    #@0
    .prologue
    .line 6178
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewRootImpl;->dispatchInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;)V

    #@4
    .line 6177
    return-void
.end method

.method public dispatchInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;)V
    .locals 4
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "receiver"    # Landroid/view/InputEventReceiver;

    #@0
    .prologue
    .line 6182
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    #@3
    move-result-object v0

    #@4
    .line 6183
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@6
    .line 6184
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@8
    .line 6185
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@a
    const/4 v3, 0x7

    #@b
    invoke-virtual {v2, v3, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@e
    move-result-object v1

    #@f
    .line 6186
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x1

    #@10
    invoke-virtual {v1, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    #@13
    .line 6187
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@15
    invoke-virtual {v2, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    #@18
    .line 6181
    return-void
.end method

.method public dispatchInvalidateDelayed(Landroid/view/View;J)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "delayMilliseconds"    # J

    #@0
    .prologue
    .line 6151
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@2
    const/4 v2, 0x1

    #@3
    invoke-virtual {v1, v2, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@6
    move-result-object v0

    #@7
    .line 6152
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@9
    invoke-virtual {v1, v0, p2, p3}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@c
    .line 6150
    return-void
.end method

.method public dispatchInvalidateOnAnimation(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 6162
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInvalidateOnAnimationRunnable:Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;

    #@2
    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->addView(Landroid/view/View;)V

    #@5
    .line 6161
    return-void
.end method

.method public dispatchInvalidateRectDelayed(Landroid/view/View$AttachInfo$InvalidateInfo;J)V
    .locals 4
    .param p1, "info"    # Landroid/view/View$AttachInfo$InvalidateInfo;
    .param p2, "delayMilliseconds"    # J

    #@0
    .prologue
    .line 6157
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@2
    const/4 v2, 0x2

    #@3
    invoke-virtual {v1, v2, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@6
    move-result-object v0

    #@7
    .line 6158
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@9
    invoke-virtual {v1, v0, p2, p3}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@c
    .line 6156
    return-void
.end method

.method public dispatchInvalidateRectOnAnimation(Landroid/view/View$AttachInfo$InvalidateInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/View$AttachInfo$InvalidateInfo;

    #@0
    .prologue
    .line 6166
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInvalidateOnAnimationRunnable:Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;

    #@2
    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->addViewRect(Landroid/view/View$AttachInfo$InvalidateInfo;)V

    #@5
    .line 6165
    return-void
.end method

.method public dispatchKeyFromIme(Landroid/view/KeyEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 6197
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@2
    const/16 v2, 0xb

    #@4
    invoke-virtual {v1, v2, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@7
    move-result-object v0

    #@8
    .line 6198
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    #@9
    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    #@c
    .line 6199
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@e
    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    #@11
    .line 6196
    return-void
.end method

.method public dispatchMoved(II)V
    .locals 6
    .param p1, "newX"    # I
    .param p2, "newY"    # I

    #@0
    .prologue
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    #@2
    .line 5718
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 5719
    new-instance v1, Landroid/graphics/PointF;

    #@8
    int-to-float v2, p1

    #@9
    int-to-float v3, p2

    #@a
    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    #@d
    .line 5720
    .local v1, "point":Landroid/graphics/PointF;
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@f
    invoke-virtual {v2, v1}, Landroid/content/res/CompatibilityInfo$Translator;->translatePointInScreenToAppWindow(Landroid/graphics/PointF;)V

    #@12
    .line 5721
    iget v2, v1, Landroid/graphics/PointF;->x:F

    #@14
    float-to-double v2, v2

    #@15
    add-double/2addr v2, v4

    #@16
    double-to-int p1, v2

    #@17
    .line 5722
    iget v2, v1, Landroid/graphics/PointF;->y:F

    #@19
    float-to-double v2, v2

    #@1a
    add-double/2addr v2, v4

    #@1b
    double-to-int p2, v2

    #@1c
    .line 5724
    .end local v1    # "point":Landroid/graphics/PointF;
    :cond_0
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@1e
    const/16 v3, 0x17

    #@20
    invoke-virtual {v2, v3, p1, p2}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(III)Landroid/os/Message;

    #@23
    move-result-object v0

    #@24
    .line 5725
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@26
    invoke-virtual {v2, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    #@29
    .line 5716
    return-void
.end method

.method public dispatchResized(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/content/res/Configuration;)V
    .locals 5
    .param p1, "frame"    # Landroid/graphics/Rect;
    .param p2, "overscanInsets"    # Landroid/graphics/Rect;
    .param p3, "contentInsets"    # Landroid/graphics/Rect;
    .param p4, "visibleInsets"    # Landroid/graphics/Rect;
    .param p5, "stableInsets"    # Landroid/graphics/Rect;
    .param p6, "outsets"    # Landroid/graphics/Rect;
    .param p7, "reportDraw"    # Z
    .param p8, "newConfig"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    .line 5696
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@2
    if-eqz p7, :cond_8

    #@4
    const/4 v3, 0x5

    #@5
    :goto_0
    invoke-virtual {v4, v3}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(I)Landroid/os/Message;

    #@8
    move-result-object v1

    #@9
    .line 5697
    .local v1, "msg":Landroid/os/Message;
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@b
    if-eqz v3, :cond_0

    #@d
    .line 5698
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@f
    invoke-virtual {v3, p1}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    #@12
    .line 5699
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@14
    invoke-virtual {v3, p2}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    #@17
    .line 5700
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@19
    invoke-virtual {v3, p3}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    #@1c
    .line 5701
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@1e
    invoke-virtual {v3, p4}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    #@21
    .line 5703
    :cond_0
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    #@24
    move-result-object v0

    #@25
    .line 5704
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@28
    move-result v3

    #@29
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@2c
    move-result v4

    #@2d
    if-ne v3, v4, :cond_9

    #@2f
    const/4 v2, 0x1

    #@30
    .line 5705
    .local v2, "sameProcessCall":Z
    :goto_1
    if-eqz v2, :cond_1

    #@32
    new-instance v3, Landroid/graphics/Rect;

    #@34
    invoke-direct {v3, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    #@37
    move-object p1, v3

    #@38
    .end local p1    # "frame":Landroid/graphics/Rect;
    :cond_1
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@3a
    .line 5706
    if-eqz v2, :cond_2

    #@3c
    new-instance v3, Landroid/graphics/Rect;

    #@3e
    invoke-direct {v3, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    #@41
    move-object p3, v3

    #@42
    .end local p3    # "contentInsets":Landroid/graphics/Rect;
    :cond_2
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@44
    .line 5707
    if-eqz v2, :cond_3

    #@46
    new-instance v3, Landroid/graphics/Rect;

    #@48
    invoke-direct {v3, p4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    #@4b
    move-object p4, v3

    #@4c
    .end local p4    # "visibleInsets":Landroid/graphics/Rect;
    :cond_3
    iput-object p4, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    #@4e
    .line 5708
    if-eqz v2, :cond_4

    #@50
    if-eqz p8, :cond_4

    #@52
    new-instance v3, Landroid/content/res/Configuration;

    #@54
    invoke-direct {v3, p8}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    #@57
    move-object p8, v3

    #@58
    .end local p8    # "newConfig":Landroid/content/res/Configuration;
    :cond_4
    iput-object p8, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    #@5a
    .line 5709
    if-eqz v2, :cond_5

    #@5c
    new-instance v3, Landroid/graphics/Rect;

    #@5e
    invoke-direct {v3, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    #@61
    move-object p2, v3

    #@62
    .end local p2    # "overscanInsets":Landroid/graphics/Rect;
    :cond_5
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    #@64
    .line 5710
    if-eqz v2, :cond_6

    #@66
    new-instance v3, Landroid/graphics/Rect;

    #@68
    invoke-direct {v3, p5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    #@6b
    move-object p5, v3

    #@6c
    .end local p5    # "stableInsets":Landroid/graphics/Rect;
    :cond_6
    iput-object p5, v0, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    #@6e
    .line 5711
    if-eqz v2, :cond_7

    #@70
    new-instance v3, Landroid/graphics/Rect;

    #@72
    invoke-direct {v3, p6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    #@75
    move-object p6, v3

    #@76
    .end local p6    # "outsets":Landroid/graphics/Rect;
    :cond_7
    iput-object p6, v0, Lcom/android/internal/os/SomeArgs;->arg7:Ljava/lang/Object;

    #@78
    .line 5712
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@7a
    .line 5713
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@7c
    invoke-virtual {v3, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    #@7f
    .line 5691
    return-void

    #@80
    .line 5696
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "sameProcessCall":Z
    .restart local p1    # "frame":Landroid/graphics/Rect;
    .restart local p2    # "overscanInsets":Landroid/graphics/Rect;
    .restart local p3    # "contentInsets":Landroid/graphics/Rect;
    .restart local p4    # "visibleInsets":Landroid/graphics/Rect;
    .restart local p5    # "stableInsets":Landroid/graphics/Rect;
    .restart local p6    # "outsets":Landroid/graphics/Rect;
    .restart local p8    # "newConfig":Landroid/content/res/Configuration;
    :cond_8
    const/4 v3, 0x4

    #@81
    goto :goto_0

    #@82
    .line 5704
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .restart local v1    # "msg":Landroid/os/Message;
    :cond_9
    const/4 v2, 0x0

    #@83
    .restart local v2    # "sameProcessCall":Z
    goto :goto_1
.end method

.method public dispatchSystemUiVisibilityChanged(IIII)V
    .locals 4
    .param p1, "seq"    # I
    .param p2, "globalVisibility"    # I
    .param p3, "localValue"    # I
    .param p4, "localChanges"    # I

    #@0
    .prologue
    .line 6259
    new-instance v0, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;

    #@2
    invoke-direct {v0}, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;-><init>()V

    #@5
    .line 6260
    .local v0, "args":Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;
    iput p1, v0, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->seq:I

    #@7
    .line 6261
    iput p2, v0, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->globalVisibility:I

    #@9
    .line 6262
    iput p3, v0, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->localValue:I

    #@b
    .line 6263
    iput p4, v0, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->localChanges:I

    #@d
    .line 6264
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@f
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@11
    const/16 v3, 0x11

    #@13
    invoke-virtual {v2, v3, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    #@1a
    .line 6258
    return-void
.end method

.method public dispatchUnhandledInputEvent(Landroid/view/InputEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/InputEvent;

    #@0
    .prologue
    .line 6209
    instance-of v0, p1, Landroid/view/MotionEvent;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 6210
    check-cast p1, Landroid/view/MotionEvent;

    #@6
    .end local p1    # "event":Landroid/view/InputEvent;
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    #@9
    move-result-object p1

    #@a
    .line 6212
    .restart local p1    # "event":Landroid/view/InputEvent;
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl;->synthesizeInputEvent(Landroid/view/InputEvent;)V

    #@d
    .line 6208
    return-void
.end method

.method public dispatchWindowAnimationStarted(I)V
    .locals 3
    .param p1, "remainingFrameCount"    # I

    #@0
    .prologue
    .line 6268
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@2
    const/16 v1, 0x1b

    #@4
    .line 6269
    const/4 v2, 0x0

    #@5
    .line 6268
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(III)Landroid/os/Message;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@c
    .line 6267
    return-void
.end method

.method public dispatchWindowAnimationStopped()V
    .locals 2

    #@0
    .prologue
    .line 6273
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@2
    const/16 v1, 0x1a

    #@4
    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendEmptyMessage(I)Z

    #@7
    .line 6272
    return-void
.end method

.method public dispatchWindowShown()V
    .locals 2

    #@0
    .prologue
    .line 6235
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@2
    const/16 v1, 0x19

    #@4
    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendEmptyMessage(I)Z

    #@7
    .line 6234
    return-void
.end method

.method disposeResizeBuffer()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1036
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 1037
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    #@7
    invoke-virtual {v0}, Landroid/view/HardwareLayer;->destroy()V

    #@a
    .line 1038
    iput-object v1, p0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    #@c
    .line 1035
    :cond_0
    return-void
.end method

.method doConsumeBatchedInput(J)V
    .locals 3
    .param p1, "frameTimeNanos"    # J

    #@0
    .prologue
    .line 5993
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    #@2
    if-eqz v0, :cond_1

    #@4
    .line 5994
    const/4 v0, 0x0

    #@5
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    #@7
    .line 5995
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 5996
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    #@d
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->consumeBatchedInputEvents(J)Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_0

    #@13
    .line 5997
    const-wide/16 v0, -0x1

    #@15
    cmp-long v0, p1, v0

    #@17
    if-eqz v0, :cond_0

    #@19
    .line 6003
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleConsumeBatchedInput()V

    #@1c
    .line 6006
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->doProcessInputEvents()V

    #@1f
    .line 5992
    :cond_1
    return-void
.end method

.method doDie()V
    .locals 5

    #@0
    .prologue
    .line 5598
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    #@3
    .line 5600
    monitor-enter p0

    #@4
    .line 5601
    :try_start_0
    iget-boolean v3, p0, Landroid/view/ViewRootImpl;->mRemoved:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    if-eqz v3, :cond_0

    #@8
    monitor-exit p0

    #@9
    .line 5602
    return-void

    #@a
    .line 5604
    :cond_0
    const/4 v3, 0x1

    #@b
    :try_start_1
    iput-boolean v3, p0, Landroid/view/ViewRootImpl;->mRemoved:Z

    #@d
    .line 5605
    iget-boolean v3, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    #@f
    if-eqz v3, :cond_1

    #@11
    .line 5606
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->dispatchDetachedFromWindow()V

    #@14
    .line 5609
    :cond_1
    iget-boolean v3, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    #@16
    if-eqz v3, :cond_2

    #@18
    iget-boolean v3, p0, Landroid/view/ViewRootImpl;->mFirst:Z

    #@1a
    if-eqz v3, :cond_3

    #@1c
    .line 5632
    :cond_2
    :goto_0
    const/4 v3, 0x0

    #@1d
    iput-boolean v3, p0, Landroid/view/ViewRootImpl;->mAdded:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1f
    monitor-exit p0

    #@20
    .line 5634
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v3, p0}, Landroid/view/WindowManagerGlobal;->doRemoveView(Landroid/view/ViewRootImpl;)V

    #@27
    .line 5597
    return-void

    #@28
    .line 5610
    :cond_3
    :try_start_2
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->destroyHardwareRenderer()V

    #@2b
    .line 5612
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@2d
    if-eqz v3, :cond_2

    #@2f
    .line 5613
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@31
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    #@34
    move-result v1

    #@35
    .line 5614
    .local v1, "viewVisibility":I
    iget v3, p0, Landroid/view/ViewRootImpl;->mViewVisibility:I

    #@37
    if-eq v3, v1, :cond_6

    #@39
    const/4 v2, 0x1

    #@3a
    .line 5615
    .local v2, "viewVisibilityChanged":Z
    :goto_1
    iget-boolean v3, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3c
    if-nez v3, :cond_4

    #@3e
    if-eqz v2, :cond_5

    #@40
    .line 5620
    :cond_4
    :try_start_3
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@42
    const/4 v4, 0x0

    #@43
    invoke-direct {p0, v3, v1, v4}, Landroid/view/ViewRootImpl;->relayoutWindow(Landroid/view/WindowManager$LayoutParams;IZ)I

    #@46
    move-result v3

    #@47
    and-int/lit8 v3, v3, 0x2

    #@49
    if-eqz v3, :cond_5

    #@4b
    .line 5622
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    #@4d
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    #@4f
    invoke-interface {v3, v4}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@52
    .line 5628
    :cond_5
    :goto_2
    :try_start_4
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    #@54
    invoke-virtual {v3}, Landroid/view/Surface;->release()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@57
    goto :goto_0

    #@58
    .line 5600
    .end local v1    # "viewVisibility":I
    .end local v2    # "viewVisibilityChanged":Z
    :catchall_0
    move-exception v3

    #@59
    monitor-exit p0

    #@5a
    throw v3

    #@5b
    .line 5614
    .restart local v1    # "viewVisibility":I
    :cond_6
    const/4 v2, 0x0

    #@5c
    .restart local v2    # "viewVisibilityChanged":Z
    goto :goto_1

    #@5d
    .line 5624
    :catch_0
    move-exception v0

    #@5e
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_2
.end method

.method doProcessInputEvents()V
    .locals 12

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    const/4 v10, 0x0

    #@2
    .line 5874
    :goto_0
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mPendingInputEventHead:Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@4
    if-eqz v6, :cond_2

    #@6
    .line 5875
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mPendingInputEventHead:Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@8
    .line 5876
    .local v3, "q":Landroid/view/ViewRootImpl$QueuedInputEvent;
    iget-object v6, v3, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@a
    iput-object v6, p0, Landroid/view/ViewRootImpl;->mPendingInputEventHead:Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@c
    .line 5877
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mPendingInputEventHead:Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@e
    if-nez v6, :cond_0

    #@10
    .line 5878
    iput-object v10, p0, Landroid/view/ViewRootImpl;->mPendingInputEventTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@12
    .line 5880
    :cond_0
    iput-object v10, v3, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@14
    .line 5882
    iget v6, p0, Landroid/view/ViewRootImpl;->mPendingInputEventCount:I

    #@16
    add-int/lit8 v6, v6, -0x1

    #@18
    iput v6, p0, Landroid/view/ViewRootImpl;->mPendingInputEventCount:I

    #@1a
    .line 5883
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mPendingInputEventQueueLengthCounterName:Ljava/lang/String;

    #@1c
    .line 5884
    iget v7, p0, Landroid/view/ViewRootImpl;->mPendingInputEventCount:I

    #@1e
    .line 5883
    const-wide/16 v8, 0x4

    #@20
    invoke-static {v8, v9, v6, v7}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    #@23
    .line 5886
    iget-object v6, v3, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    #@25
    invoke-virtual {v6}, Landroid/view/InputEvent;->getEventTimeNano()J

    #@28
    move-result-wide v0

    #@29
    .line 5887
    .local v0, "eventTime":J
    move-wide v4, v0

    #@2a
    .line 5888
    .local v4, "oldestEventTime":J
    iget-object v6, v3, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    #@2c
    instance-of v6, v6, Landroid/view/MotionEvent;

    #@2e
    if-eqz v6, :cond_1

    #@30
    .line 5889
    iget-object v2, v3, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    #@32
    check-cast v2, Landroid/view/MotionEvent;

    #@34
    .line 5890
    .local v2, "me":Landroid/view/MotionEvent;
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getHistorySize()I

    #@37
    move-result v6

    #@38
    if-lez v6, :cond_1

    #@3a
    .line 5891
    invoke-virtual {v2, v11}, Landroid/view/MotionEvent;->getHistoricalEventTimeNano(I)J

    #@3d
    move-result-wide v4

    #@3e
    .line 5894
    .end local v2    # "me":Landroid/view/MotionEvent;
    :cond_1
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    #@40
    iget-object v6, v6, Landroid/view/Choreographer;->mFrameInfo:Landroid/view/FrameInfo;

    #@42
    invoke-virtual {v6, v0, v1, v4, v5}, Landroid/view/FrameInfo;->updateInputEventTime(JJ)V

    #@45
    .line 5896
    invoke-direct {p0, v3}, Landroid/view/ViewRootImpl;->deliverInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    #@48
    goto :goto_0

    #@49
    .line 5901
    .end local v0    # "eventTime":J
    .end local v3    # "q":Landroid/view/ViewRootImpl$QueuedInputEvent;
    .end local v4    # "oldestEventTime":J
    :cond_2
    iget-boolean v6, p0, Landroid/view/ViewRootImpl;->mProcessInputEventsScheduled:Z

    #@4b
    if-eqz v6, :cond_3

    #@4d
    .line 5902
    iput-boolean v11, p0, Landroid/view/ViewRootImpl;->mProcessInputEventsScheduled:Z

    #@4f
    .line 5903
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@51
    const/16 v7, 0x13

    #@53
    invoke-virtual {v6, v7}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeMessages(I)V

    #@56
    .line 5872
    :cond_3
    return-void
.end method

.method doTraversal()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1099
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    #@3
    if-eqz v0, :cond_1

    #@5
    .line 1100
    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    #@7
    .line 1101
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@9
    invoke-virtual {v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->getLooper()Landroid/os/Looper;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    #@10
    move-result-object v0

    #@11
    iget v1, p0, Landroid/view/ViewRootImpl;->mTraversalBarrier:I

    #@13
    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->removeSyncBarrier(I)V

    #@16
    .line 1103
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mProfile:Z

    #@18
    if-eqz v0, :cond_0

    #@1a
    .line 1104
    const-string/jumbo v0, "ViewAncestor"

    #@1d
    invoke-static {v0}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;)V

    #@20
    .line 1107
    :cond_0
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->performTraversals()V

    #@23
    .line 1109
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mProfile:Z

    #@25
    if-eqz v0, :cond_1

    #@27
    .line 1110
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    #@2a
    .line 1111
    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mProfile:Z

    #@2c
    .line 1098
    :cond_1
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 5503
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    move-result-object v1

    #@9
    const-string/jumbo v2, "  "

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    .line 5504
    .local v0, "innerPrefix":Ljava/lang/String;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@17
    const-string/jumbo v1, "ViewRoot:"

    #@1a
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1d
    .line 5505
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@20
    const-string/jumbo v1, "mAdded="

    #@23
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@26
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    #@28
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    #@2b
    .line 5506
    const-string/jumbo v1, " mRemoved="

    #@2e
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@31
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mRemoved:Z

    #@33
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    #@36
    .line 5507
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@39
    const-string/jumbo v1, "mConsumeBatchedInputScheduled="

    #@3c
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3f
    .line 5508
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    #@41
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    #@44
    .line 5509
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@47
    const-string/jumbo v1, "mConsumeBatchedInputImmediatelyScheduled="

    #@4a
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4d
    .line 5510
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputImmediatelyScheduled:Z

    #@4f
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    #@52
    .line 5511
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@55
    const-string/jumbo v1, "mPendingInputEventCount="

    #@58
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5b
    .line 5512
    iget v1, p0, Landroid/view/ViewRootImpl;->mPendingInputEventCount:I

    #@5d
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(I)V

    #@60
    .line 5513
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@63
    const-string/jumbo v1, "mProcessInputEventsScheduled="

    #@66
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@69
    .line 5514
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mProcessInputEventsScheduled:Z

    #@6b
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    #@6e
    .line 5515
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@71
    const-string/jumbo v1, "mTraversalScheduled="

    #@74
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@77
    .line 5516
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    #@79
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    #@7c
    .line 5517
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    #@7e
    if-eqz v1, :cond_0

    #@80
    .line 5518
    const-string/jumbo v1, " (barrier="

    #@83
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@86
    iget v1, p0, Landroid/view/ViewRootImpl;->mTraversalBarrier:I

    #@88
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    #@8b
    const-string/jumbo v1, ")"

    #@8e
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@91
    .line 5522
    :goto_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mFirstInputStage:Landroid/view/ViewRootImpl$InputStage;

    #@93
    invoke-virtual {v1, v0, p3}, Landroid/view/ViewRootImpl$InputStage;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    #@96
    .line 5524
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    #@98
    invoke-virtual {v1, p1, p3}, Landroid/view/Choreographer;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    #@9b
    .line 5526
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9e
    const-string/jumbo v1, "View Hierarchy:"

    #@a1
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@a4
    .line 5527
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@a6
    invoke-direct {p0, v0, p3, v1}, Landroid/view/ViewRootImpl;->dumpViewHierarchy(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V

    #@a9
    .line 5502
    return-void

    #@aa
    .line 5520
    :cond_0
    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V

    #@ad
    goto :goto_0
.end method

.method public dumpGfxInfo([I)V
    .locals 2
    .param p1, "info"    # [I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 5552
    const/4 v0, 0x1

    #@2
    aput v1, p1, v0

    #@4
    aput v1, p1, v1

    #@6
    .line 5553
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 5554
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@c
    invoke-static {v0, p1}, Landroid/view/ViewRootImpl;->getGfxInfo(Landroid/view/View;[I)V

    #@f
    .line 5551
    :cond_0
    return-void
.end method

.method enqueueInputEvent(Landroid/view/InputEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/InputEvent;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 5831
    const/4 v0, 0x0

    #@2
    invoke-virtual {p0, p1, v0, v1, v1}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)V

    #@5
    .line 5830
    return-void
.end method

.method enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)V
    .locals 6
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "receiver"    # Landroid/view/InputEventReceiver;
    .param p3, "flags"    # I
    .param p4, "processImmediately"    # Z

    #@0
    .prologue
    .line 5836
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->adjustInputEventForCompatibility(Landroid/view/InputEvent;)V

    #@3
    .line 5837
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewRootImpl;->obtainQueuedInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;I)Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@6
    move-result-object v1

    #@7
    .line 5844
    .local v1, "q":Landroid/view/ViewRootImpl$QueuedInputEvent;
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingInputEventTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@9
    .line 5845
    .local v0, "last":Landroid/view/ViewRootImpl$QueuedInputEvent;
    if-nez v0, :cond_0

    #@b
    .line 5846
    iput-object v1, p0, Landroid/view/ViewRootImpl;->mPendingInputEventHead:Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@d
    .line 5847
    iput-object v1, p0, Landroid/view/ViewRootImpl;->mPendingInputEventTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@f
    .line 5852
    :goto_0
    iget v2, p0, Landroid/view/ViewRootImpl;->mPendingInputEventCount:I

    #@11
    add-int/lit8 v2, v2, 0x1

    #@13
    iput v2, p0, Landroid/view/ViewRootImpl;->mPendingInputEventCount:I

    #@15
    .line 5853
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mPendingInputEventQueueLengthCounterName:Ljava/lang/String;

    #@17
    .line 5854
    iget v3, p0, Landroid/view/ViewRootImpl;->mPendingInputEventCount:I

    #@19
    .line 5853
    const-wide/16 v4, 0x4

    #@1b
    invoke-static {v4, v5, v2, v3}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    #@1e
    .line 5856
    if-eqz p4, :cond_1

    #@20
    .line 5857
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->doProcessInputEvents()V

    #@23
    .line 5835
    :goto_1
    return-void

    #@24
    .line 5849
    :cond_0
    iput-object v1, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@26
    .line 5850
    iput-object v1, p0, Landroid/view/ViewRootImpl;->mPendingInputEventTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@28
    goto :goto_0

    #@29
    .line 5859
    :cond_1
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->scheduleProcessInputEvents()V

    #@2c
    goto :goto_1
.end method

.method ensureTouchMode(Z)Z
    .locals 2
    .param p1, "inTouchMode"    # Z

    #@0
    .prologue
    .line 3505
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@2
    iget-boolean v1, v1, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    #@4
    if-ne v1, p1, :cond_0

    #@6
    const/4 v1, 0x0

    #@7
    return v1

    #@8
    .line 3509
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->isInLocalFocusMode()Z

    #@b
    move-result v1

    #@c
    if-nez v1, :cond_1

    #@e
    .line 3510
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    #@10
    invoke-interface {v1, p1}, Landroid/view/IWindowSession;->setInTouchMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    .line 3517
    :cond_1
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->ensureTouchModeLocally(Z)Z

    #@16
    move-result v1

    #@17
    return v1

    #@18
    .line 3512
    :catch_0
    move-exception v0

    #@19
    .line 3513
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@1b
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@1e
    throw v1
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 2
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    #@0
    .prologue
    .line 5491
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    #@3
    .line 5492
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@5
    instance-of v0, v0, Landroid/view/ViewGroup;

    #@7
    if-nez v0, :cond_0

    #@9
    .line 5493
    const/4 v0, 0x0

    #@a
    return-object v0

    #@b
    .line 5495
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    #@e
    move-result-object v1

    #@f
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@11
    check-cast v0, Landroid/view/ViewGroup;

    #@13
    invoke-virtual {v1, v0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    #@16
    move-result-object v0

    #@17
    return-object v0
.end method

.method public focusableViewAvailable(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    #@0
    .prologue
    .line 3034
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    #@3
    .line 3035
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@5
    if-eqz v2, :cond_0

    #@7
    .line 3036
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@9
    invoke-virtual {v2}, Landroid/view/View;->hasFocus()Z

    #@c
    move-result v2

    #@d
    if-nez v2, :cond_1

    #@f
    .line 3037
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    #@12
    .line 3033
    :cond_0
    :goto_0
    return-void

    #@13
    .line 3042
    :cond_1
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@15
    invoke-virtual {v2}, Landroid/view/View;->findFocus()Landroid/view/View;

    #@18
    move-result-object v0

    #@19
    .line 3043
    .local v0, "focused":Landroid/view/View;
    instance-of v2, v0, Landroid/view/ViewGroup;

    #@1b
    if-eqz v2, :cond_0

    #@1d
    move-object v1, v0

    #@1e
    .line 3044
    check-cast v1, Landroid/view/ViewGroup;

    #@20
    .line 3045
    .local v1, "group":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    #@23
    move-result v2

    #@24
    const/high16 v3, 0x40000

    #@26
    if-ne v2, v3, :cond_0

    #@28
    .line 3046
    invoke-static {p1, v0}, Landroid/view/ViewRootImpl;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    #@2b
    move-result v2

    #@2c
    .line 3045
    if-eqz v2, :cond_0

    #@2e
    .line 3047
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    #@31
    goto :goto_0
.end method

.method public getAccessibilityFocusedHost()Landroid/view/View;
    .locals 1

    #@0
    .prologue
    .line 2952
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    #@2
    return-object v0
.end method

.method public getAccessibilityFocusedVirtualView()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1

    #@0
    .prologue
    .line 2959
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    #@2
    return-object v0
.end method

.method public getAccessibilityInteractionController()Landroid/view/AccessibilityInteractionController;
    .locals 2

    #@0
    .prologue
    .line 5382
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 5383
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "getAccessibilityInteractionController called when there is no mView"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 5386
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionController:Landroid/view/AccessibilityInteractionController;

    #@f
    if-nez v0, :cond_1

    #@11
    .line 5387
    new-instance v0, Landroid/view/AccessibilityInteractionController;

    #@13
    invoke-direct {v0, p0}, Landroid/view/AccessibilityInteractionController;-><init>(Landroid/view/ViewRootImpl;)V

    #@16
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionController:Landroid/view/AccessibilityInteractionController;

    #@18
    .line 5389
    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionController:Landroid/view/AccessibilityInteractionController;

    #@1a
    return-object v0
.end method

.method public getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "r"    # Landroid/graphics/Rect;
    .param p3, "offset"    # Landroid/graphics/Point;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1019
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@3
    if-eq p1, v0, :cond_0

    #@5
    .line 1020
    new-instance v0, Ljava/lang/RuntimeException;

    #@7
    const-string/jumbo v1, "child is not mine, honest!"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 1024
    :cond_0
    iget v0, p0, Landroid/view/ViewRootImpl;->mWidth:I

    #@10
    iget v1, p0, Landroid/view/ViewRootImpl;->mHeight:I

    #@12
    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/Rect;->intersect(IIII)Z

    #@15
    move-result v0

    #@16
    return v0
.end method

.method public getDisplayId()I
    .locals 1

    #@0
    .prologue
    .line 662
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    #@2
    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method getHostVisibility()I
    .locals 1

    #@0
    .prologue
    .line 1032
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mAppVisible:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@6
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/16 v0, 0x8

    #@d
    goto :goto_0
.end method

.method public getLastTouchPoint(Landroid/graphics/Point;)V
    .locals 1
    .param p1, "outLocation"    # Landroid/graphics/Point;

    #@0
    .prologue
    .line 5361
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLastTouchPoint:Landroid/graphics/PointF;

    #@2
    iget v0, v0, Landroid/graphics/PointF;->x:F

    #@4
    float-to-int v0, v0

    #@5
    iput v0, p1, Landroid/graphics/Point;->x:I

    #@7
    .line 5362
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLastTouchPoint:Landroid/graphics/PointF;

    #@9
    iget v0, v0, Landroid/graphics/PointF;->y:F

    #@b
    float-to-int v0, v0

    #@c
    iput v0, p1, Landroid/graphics/Point;->y:I

    #@e
    .line 5360
    return-void
.end method

.method public getLayoutDirection()I
    .locals 1

    #@0
    .prologue
    .line 6488
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method final getLocation()Landroid/view/WindowLeaked;
    .locals 1

    #@0
    .prologue
    .line 770
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLocation:Landroid/view/WindowLeaked;

    #@2
    return-object v0
.end method

.method public getParent()Landroid/view/ViewParent;
    .locals 1

    #@0
    .prologue
    .line 1014
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getParentForAccessibility()Landroid/view/ViewParent;
    .locals 1

    #@0
    .prologue
    .line 3029
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getTextAlignment()I
    .locals 1

    #@0
    .prologue
    .line 6518
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public getTextDirection()I
    .locals 1

    #@0
    .prologue
    .line 6503
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 666
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@2
    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    #@0
    .prologue
    .line 766
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@2
    return-object v0
.end method

.method public getWindowFlags()I
    .locals 1

    #@0
    .prologue
    .line 658
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@2
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@4
    return v0
.end method

.method getWindowInsets(Z)Landroid/view/WindowInsets;
    .locals 10
    .param p1, "forceConstruct"    # Z

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 1252
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mLastWindowInsets:Landroid/view/WindowInsets;

    #@3
    if-eqz v4, :cond_0

    #@5
    if-eqz p1, :cond_4

    #@7
    .line 1253
    :cond_0
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mDispatchContentInsets:Landroid/graphics/Rect;

    #@9
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@b
    iget-object v5, v5, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    #@d
    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@10
    .line 1254
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mDispatchStableInsets:Landroid/graphics/Rect;

    #@12
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@14
    iget-object v5, v5, Landroid/view/View$AttachInfo;->mStableInsets:Landroid/graphics/Rect;

    #@16
    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@19
    .line 1255
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDispatchContentInsets:Landroid/graphics/Rect;

    #@1b
    .line 1256
    .local v0, "contentInsets":Landroid/graphics/Rect;
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mDispatchStableInsets:Landroid/graphics/Rect;

    #@1d
    .line 1259
    .local v3, "stableInsets":Landroid/graphics/Rect;
    if-nez p1, :cond_1

    #@1f
    .line 1260
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    #@21
    invoke-virtual {v4, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v4

    #@25
    if-eqz v4, :cond_5

    #@27
    .line 1261
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    #@29
    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@2c
    move-result v4

    #@2d
    if-eqz v4, :cond_5

    #@2f
    .line 1265
    :cond_1
    :goto_0
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@31
    iget-object v2, v4, Landroid/view/View$AttachInfo;->mOutsets:Landroid/graphics/Rect;

    #@33
    .line 1266
    .local v2, "outsets":Landroid/graphics/Rect;
    iget v4, v2, Landroid/graphics/Rect;->left:I

    #@35
    if-gtz v4, :cond_2

    #@37
    iget v4, v2, Landroid/graphics/Rect;->top:I

    #@39
    if-lez v4, :cond_6

    #@3b
    .line 1267
    :cond_2
    :goto_1
    new-instance v1, Landroid/graphics/Rect;

    #@3d
    iget v4, v0, Landroid/graphics/Rect;->left:I

    #@3f
    iget v5, v2, Landroid/graphics/Rect;->left:I

    #@41
    add-int/2addr v4, v5

    #@42
    .line 1268
    iget v5, v0, Landroid/graphics/Rect;->top:I

    #@44
    iget v6, v2, Landroid/graphics/Rect;->top:I

    #@46
    add-int/2addr v5, v6

    #@47
    iget v6, v0, Landroid/graphics/Rect;->right:I

    #@49
    iget v7, v2, Landroid/graphics/Rect;->right:I

    #@4b
    add-int/2addr v6, v7

    #@4c
    .line 1269
    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    #@4e
    iget v8, v2, Landroid/graphics/Rect;->bottom:I

    #@50
    add-int/2addr v7, v8

    #@51
    .line 1267
    invoke-direct {v1, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    #@54
    .end local v0    # "contentInsets":Landroid/graphics/Rect;
    .local v1, "contentInsets":Landroid/graphics/Rect;
    move-object v0, v1

    #@55
    .line 1271
    .end local v1    # "contentInsets":Landroid/graphics/Rect;
    .restart local v0    # "contentInsets":Landroid/graphics/Rect;
    :cond_3
    new-instance v4, Landroid/view/WindowInsets;

    #@57
    .line 1273
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    #@59
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@5c
    move-result-object v5

    #@5d
    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@60
    move-result-object v5

    #@61
    invoke-virtual {v5}, Landroid/content/res/Configuration;->isScreenRound()Z

    #@64
    move-result v5

    #@65
    .line 1271
    invoke-direct {v4, v0, v9, v3, v5}, Landroid/view/WindowInsets;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    #@68
    iput-object v4, p0, Landroid/view/ViewRootImpl;->mLastWindowInsets:Landroid/view/WindowInsets;

    #@6a
    .line 1275
    .end local v0    # "contentInsets":Landroid/graphics/Rect;
    .end local v2    # "outsets":Landroid/graphics/Rect;
    .end local v3    # "stableInsets":Landroid/graphics/Rect;
    :cond_4
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mLastWindowInsets:Landroid/view/WindowInsets;

    #@6c
    return-object v4

    #@6d
    .line 1262
    .restart local v0    # "contentInsets":Landroid/graphics/Rect;
    .restart local v3    # "stableInsets":Landroid/graphics/Rect;
    :cond_5
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    #@6f
    .line 1263
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    #@71
    goto :goto_0

    #@72
    .line 1266
    .restart local v2    # "outsets":Landroid/graphics/Rect;
    :cond_6
    iget v4, v2, Landroid/graphics/Rect;->right:I

    #@74
    if-gtz v4, :cond_2

    #@76
    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    #@78
    if-lez v4, :cond_3

    #@7a
    goto :goto_1
.end method

.method handleAppVisibility(Z)V
    .locals 1
    .param p1, "visible"    # Z

    #@0
    .prologue
    .line 830
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mAppVisible:Z

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 831
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mAppVisible:Z

    #@6
    .line 832
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    #@9
    .line 833
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mAppVisible:Z

    #@b
    if-nez v0, :cond_0

    #@d
    .line 834
    invoke-static {}, Landroid/view/WindowManagerGlobal;->trimForeground()V

    #@10
    .line 829
    :cond_0
    return-void
.end method

.method public handleDispatchSystemUiVisibilityChanged(Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;)V
    .locals 4
    .param p1, "args"    # Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;

    #@0
    .prologue
    .line 5320
    iget v1, p0, Landroid/view/ViewRootImpl;->mSeq:I

    #@2
    iget v2, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->seq:I

    #@4
    if-eq v1, v2, :cond_0

    #@6
    .line 5324
    iget v1, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->seq:I

    #@8
    iput v1, p0, Landroid/view/ViewRootImpl;->mSeq:I

    #@a
    .line 5325
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@c
    const/4 v2, 0x1

    #@d
    iput-boolean v2, v1, Landroid/view/View$AttachInfo;->mForceReportNewAttributes:Z

    #@f
    .line 5326
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    #@12
    .line 5328
    :cond_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@14
    if-nez v1, :cond_1

    #@16
    return-void

    #@17
    .line 5329
    :cond_1
    iget v1, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->localChanges:I

    #@19
    if-eqz v1, :cond_2

    #@1b
    .line 5330
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@1d
    iget v2, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->localValue:I

    #@1f
    iget v3, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->localChanges:I

    #@21
    invoke-virtual {v1, v2, v3}, Landroid/view/View;->updateLocalSystemUiVisibility(II)Z

    #@24
    .line 5333
    :cond_2
    iget v1, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->globalVisibility:I

    #@26
    and-int/lit8 v0, v1, 0x7

    #@28
    .line 5334
    .local v0, "visibility":I
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@2a
    iget v1, v1, Landroid/view/View$AttachInfo;->mGlobalSystemUiVisibility:I

    #@2c
    if-eq v0, v1, :cond_3

    #@2e
    .line 5335
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@30
    iput v0, v1, Landroid/view/View$AttachInfo;->mGlobalSystemUiVisibility:I

    #@32
    .line 5336
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@34
    invoke-virtual {v1, v0}, Landroid/view/View;->dispatchSystemUiVisibilityChanged(I)V

    #@37
    .line 5319
    :cond_3
    return-void
.end method

.method public handleDispatchWindowAnimationStarted(I)V
    .locals 1
    .param p1, "remainingFrameCount"    # I

    #@0
    .prologue
    .line 5341
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mDrawDuringWindowsAnimating:Z

    #@2
    if-nez v0, :cond_0

    #@4
    const/4 v0, -0x1

    #@5
    if-eq p1, v0, :cond_0

    #@7
    .line 5342
    iput p1, p0, Landroid/view/ViewRootImpl;->mRemainingFrameCount:I

    #@9
    .line 5343
    const/4 v0, 0x1

    #@a
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mWindowsAnimating:Z

    #@c
    .line 5340
    :cond_0
    return-void
.end method

.method public handleDispatchWindowAnimationStopped()V
    .locals 1

    #@0
    .prologue
    .line 5348
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mWindowsAnimating:Z

    #@2
    if-eqz v0, :cond_1

    #@4
    .line 5349
    const/4 v0, 0x0

    #@5
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mWindowsAnimating:Z

    #@7
    .line 5350
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDirty:Landroid/graphics/Rect;

    #@9
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_0

    #@f
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    #@11
    if-nez v0, :cond_0

    #@13
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    #@15
    if-eqz v0, :cond_1

    #@17
    .line 5351
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    #@1a
    .line 5347
    :cond_1
    return-void
.end method

.method public handleDispatchWindowShown()V
    .locals 1

    #@0
    .prologue
    .line 5357
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@2
    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    #@4
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->dispatchOnWindowShown()V

    #@7
    .line 5356
    return-void
.end method

.method handleGetNewSurface()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 840
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mNewSurfaceNeeded:Z

    #@3
    .line 841
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    #@5
    .line 842
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    #@8
    .line 839
    return-void
.end method

.method invalidate()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 919
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDirty:Landroid/graphics/Rect;

    #@3
    iget v1, p0, Landroid/view/ViewRootImpl;->mWidth:I

    #@5
    iget v2, p0, Landroid/view/ViewRootImpl;->mHeight:I

    #@7
    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    #@a
    .line 920
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mWillDrawSoon:Z

    #@c
    if-nez v0, :cond_0

    #@e
    .line 921
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    #@11
    .line 918
    :cond_0
    return-void
.end method

.method public invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "dirty"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 937
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0, p2}, Landroid/view/ViewRootImpl;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    #@4
    .line 936
    return-void
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 4
    .param p1, "location"    # [I
    .param p2, "dirty"    # Landroid/graphics/Rect;

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    const/4 v2, 0x0

    #@2
    const/4 v1, 0x0

    #@3
    .line 942
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    #@6
    .line 945
    if-nez p2, :cond_0

    #@8
    .line 946
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->invalidate()V

    #@b
    .line 947
    return-object v1

    #@c
    .line 948
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_1

    #@12
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    #@14
    if-eqz v0, :cond_6

    #@16
    .line 952
    :cond_1
    iget v0, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    #@18
    if-nez v0, :cond_2

    #@1a
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@1c
    if-eqz v0, :cond_5

    #@1e
    .line 953
    :cond_2
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    #@20
    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@23
    .line 954
    iget-object p2, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    #@25
    .line 955
    iget v0, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    #@27
    if-eqz v0, :cond_3

    #@29
    .line 956
    iget v0, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    #@2b
    neg-int v0, v0

    #@2c
    invoke-virtual {p2, v2, v0}, Landroid/graphics/Rect;->offset(II)V

    #@2f
    .line 958
    :cond_3
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@31
    if-eqz v0, :cond_4

    #@33
    .line 959
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@35
    invoke-virtual {v0, p2}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInAppWindowToScreen(Landroid/graphics/Rect;)V

    #@38
    .line 961
    :cond_4
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@3a
    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mScalingRequired:Z

    #@3c
    if-eqz v0, :cond_5

    #@3e
    .line 962
    invoke-virtual {p2, v3, v3}, Landroid/graphics/Rect;->inset(II)V

    #@41
    .line 966
    :cond_5
    invoke-direct {p0, p2}, Landroid/view/ViewRootImpl;->invalidateRectOnScreen(Landroid/graphics/Rect;)V

    #@44
    .line 968
    return-object v1

    #@45
    .line 949
    :cond_6
    return-object v1
.end method

.method invalidateWorld(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 926
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    #@3
    .line 927
    instance-of v2, p1, Landroid/view/ViewGroup;

    #@5
    if-eqz v2, :cond_0

    #@7
    move-object v1, p1

    #@8
    .line 928
    check-cast v1, Landroid/view/ViewGroup;

    #@a
    .line 929
    .local v1, "parent":Landroid/view/ViewGroup;
    const/4 v0, 0x0

    #@b
    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    #@e
    move-result v2

    #@f
    if-ge v0, v2, :cond_0

    #@11
    .line 930
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {p0, v2}, Landroid/view/ViewRootImpl;->invalidateWorld(Landroid/view/View;)V

    #@18
    .line 929
    add-int/lit8 v0, v0, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 925
    .end local v0    # "i":I
    .end local v1    # "parent":Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method public invokeFunctor(JZ)V
    .locals 1
    .param p1, "functor"    # J
    .param p3, "waitForCompletion"    # Z

    #@0
    .prologue
    .line 696
    invoke-static {p1, p2, p3}, Landroid/view/ThreadedRenderer;->invokeFunctor(JZ)V

    #@3
    .line 695
    return-void
.end method

.method isInLayout()Z
    .locals 1

    #@0
    .prologue
    .line 2113
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mInLayout:Z

    #@2
    return v0
.end method

.method public isLayoutDirectionResolved()Z
    .locals 1

    #@0
    .prologue
    .line 6483
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public isLayoutRequested()Z
    .locals 1

    #@0
    .prologue
    .line 915
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    #@2
    return v0
.end method

.method public isTextAlignmentResolved()Z
    .locals 1

    #@0
    .prologue
    .line 6513
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public isTextDirectionResolved()Z
    .locals 1

    #@0
    .prologue
    .line 6498
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public loadSystemProperties()V
    .locals 2

    #@0
    .prologue
    .line 5643
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@2
    new-instance v1, Landroid/view/ViewRootImpl$4;

    #@4
    invoke-direct {v1, p0}, Landroid/view/ViewRootImpl$4;-><init>(Landroid/view/ViewRootImpl;)V

    #@7
    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->post(Ljava/lang/Runnable;)Z

    #@a
    .line 5642
    return-void
.end method

.method notifyRendererOfFramePending()V
    .locals 1

    #@0
    .prologue
    .line 1070
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@2
    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1071
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@8
    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    #@a
    invoke-virtual {v0}, Landroid/view/HardwareRenderer;->notifyFramePending()V

    #@d
    .line 1069
    :cond_0
    return-void
.end method

.method public notifySubtreeAccessibilityStateChanged(Landroid/view/View;Landroid/view/View;I)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "source"    # Landroid/view/View;
    .param p3, "changeType"    # I

    #@0
    .prologue
    .line 6473
    invoke-direct {p0, p2, p3}, Landroid/view/ViewRootImpl;->postSendWindowContentChangedCallback(Landroid/view/View;I)V

    #@3
    .line 6472
    return-void
.end method

.method public onHardwarePostDraw(Landroid/view/DisplayListCanvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/view/DisplayListCanvas;

    #@0
    .prologue
    .line 2352
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 2353
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mResizePaint:Landroid/graphics/Paint;

    #@6
    iget v1, p0, Landroid/view/ViewRootImpl;->mResizeAlpha:I

    #@8
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    #@b
    .line 2354
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    #@d
    iget v1, p0, Landroid/view/ViewRootImpl;->mHardwareXOffset:I

    #@f
    int-to-float v1, v1

    #@10
    iget v2, p0, Landroid/view/ViewRootImpl;->mHardwareYOffset:I

    #@12
    int-to-float v2, v2

    #@13
    .line 2355
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mResizePaint:Landroid/graphics/Paint;

    #@15
    .line 2354
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/DisplayListCanvas;->drawHardwareLayer(Landroid/view/HardwareLayer;FFLandroid/graphics/Paint;)V

    #@18
    .line 2357
    :cond_0
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->drawAccessibilityFocusedDrawableIfNeeded(Landroid/graphics/Canvas;)V

    #@1b
    .line 2351
    return-void
.end method

.method public onHardwarePreDraw(Landroid/view/DisplayListCanvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/view/DisplayListCanvas;

    #@0
    .prologue
    .line 2347
    iget v0, p0, Landroid/view/ViewRootImpl;->mHardwareXOffset:I

    #@2
    neg-int v0, v0

    #@3
    int-to-float v0, v0

    #@4
    iget v1, p0, Landroid/view/ViewRootImpl;->mHardwareYOffset:I

    #@6
    neg-int v1, v1

    #@7
    int-to-float v1, v1

    #@8
    invoke-virtual {p1, v0, v1}, Landroid/view/DisplayListCanvas;->translate(FF)V

    #@b
    .line 2346
    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F
    .param p4, "consumed"    # Z

    #@0
    .prologue
    .line 6611
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F

    #@0
    .prologue
    .line 6616
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public onNestedPrePerformAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "args"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 6621
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 0
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dx"    # I
    .param p3, "dy"    # I
    .param p4, "consumed"    # [I

    #@0
    .prologue
    .line 6606
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 0
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I

    #@0
    .prologue
    .line 6602
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    #@0
    .prologue
    .line 6597
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    #@0
    .prologue
    .line 6589
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 0
    .param p1, "target"    # Landroid/view/View;

    #@0
    .prologue
    .line 6593
    return-void
.end method

.method outputDisplayList(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 2364
    iget-object v0, p1, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    #@2
    invoke-virtual {v0}, Landroid/view/RenderNode;->output()V

    #@5
    .line 2363
    return-void
.end method

.method public performHapticFeedback(IZ)Z
    .locals 3
    .param p1, "effectId"    # I
    .param p2, "always"    # Z

    #@0
    .prologue
    .line 5480
    :try_start_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    #@2
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    #@4
    invoke-interface {v1, v2, p1, p2}, Landroid/view/IWindowSession;->performHapticFeedback(Landroid/view/IWindow;IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result v1

    #@8
    return v1

    #@9
    .line 5481
    :catch_0
    move-exception v0

    #@a
    .line 5482
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@b
    return v1
.end method

.method public playSoundEffect(I)V
    .locals 5
    .param p1, "effectId"    # I

    #@0
    .prologue
    .line 5442
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    #@3
    .line 5445
    :try_start_0
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->getAudioManager()Landroid/media/AudioManager;

    #@6
    move-result-object v0

    #@7
    .line 5447
    .local v0, "audioManager":Landroid/media/AudioManager;
    packed-switch p1, :pswitch_data_0

    #@a
    .line 5464
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@c
    new-instance v3, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v4, "unknown effect id "

    #@14
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v3

    #@18
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v3

    #@1c
    .line 5465
    const-string/jumbo v4, " not defined in "

    #@1f
    .line 5464
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v3

    #@23
    .line 5465
    const-class v4, Landroid/view/SoundEffectConstants;

    #@25
    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    #@28
    move-result-object v4

    #@29
    .line 5464
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v3

    #@2d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v3

    #@31
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@34
    throw v2
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    #@35
    .line 5467
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    :catch_0
    move-exception v1

    #@36
    .line 5469
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v2, "ViewRootImpl"

    #@39
    new-instance v3, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    const-string/jumbo v4, "FATAL EXCEPTION when attempting to play sound effect: "

    #@41
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v3

    #@45
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v3

    #@49
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v3

    #@4d
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@50
    .line 5470
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    #@53
    .line 5441
    return-void

    #@54
    .line 5449
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    .restart local v0    # "audioManager":Landroid/media/AudioManager;
    :pswitch_0
    const/4 v2, 0x0

    #@55
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V

    #@58
    .line 5450
    return-void

    #@59
    .line 5452
    :pswitch_1
    const/4 v2, 0x2

    #@5a
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V

    #@5d
    .line 5453
    return-void

    #@5e
    .line 5455
    :pswitch_2
    const/4 v2, 0x3

    #@5f
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V

    #@62
    .line 5456
    return-void

    #@63
    .line 5458
    :pswitch_3
    const/4 v2, 0x4

    #@64
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V

    #@67
    .line 5459
    return-void

    #@68
    .line 5461
    :pswitch_4
    const/4 v2, 0x1

    #@69
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    #@6c
    .line 5462
    return-void

    #@6d
    .line 5447
    nop

    #@6e
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method pokeDrawLockIfNeeded()V
    .locals 4

    #@0
    .prologue
    .line 885
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@2
    iget v0, v2, Landroid/view/View$AttachInfo;->mDisplayState:I

    #@4
    .line 886
    .local v0, "displayState":I
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@6
    if-eqz v2, :cond_1

    #@8
    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    #@a
    if-eqz v2, :cond_1

    #@c
    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    #@e
    if-eqz v2, :cond_1

    #@10
    .line 887
    const/4 v2, 0x3

    #@11
    if-eq v0, v2, :cond_0

    #@13
    .line 888
    const/4 v2, 0x4

    #@14
    if-ne v0, v2, :cond_1

    #@16
    .line 890
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    #@18
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    #@1a
    invoke-interface {v2, v3}, Landroid/view/IWindowSession;->pokeDrawLock(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1d
    .line 884
    :cond_1
    :goto_0
    return-void

    #@1e
    .line 891
    :catch_0
    move-exception v1

    #@1f
    .local v1, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public profile()V
    .locals 1

    #@0
    .prologue
    .line 422
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mProfile:Z

    #@3
    .line 421
    return-void
.end method

.method public recomputeViewAttributes(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    #@0
    .prologue
    .line 3056
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    #@3
    .line 3057
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@5
    if-ne v0, p1, :cond_0

    #@7
    .line 3058
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@9
    const/4 v1, 0x1

    #@a
    iput-boolean v1, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    #@c
    .line 3059
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mWillDrawSoon:Z

    #@e
    if-nez v0, :cond_0

    #@10
    .line 3060
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    #@13
    .line 3055
    :cond_0
    return-void
.end method

.method public registerAnimatingRenderNode(Landroid/view/RenderNode;)V
    .locals 2
    .param p1, "animator"    # Landroid/view/RenderNode;

    #@0
    .prologue
    .line 700
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@2
    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 701
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@8
    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    #@a
    invoke-virtual {v0, p1}, Landroid/view/HardwareRenderer;->registerAnimatingRenderNode(Landroid/view/RenderNode;)V

    #@d
    .line 699
    :goto_0
    return-void

    #@e
    .line 703
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@10
    iget-object v0, v0, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    #@12
    if-nez v0, :cond_1

    #@14
    .line 704
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@16
    new-instance v1, Ljava/util/ArrayList;

    #@18
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@1b
    iput-object v1, v0, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    #@1d
    .line 706
    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@1f
    iget-object v0, v0, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    #@21
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@24
    goto :goto_0
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    #@0
    .prologue
    .line 3014
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    #@3
    .line 3015
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    #@6
    .line 3010
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rectangle"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    #@0
    .prologue
    .line 6568
    invoke-virtual {p0, p2, p3}, Landroid/view/ViewRootImpl;->scrollToRectOrFocus(Landroid/graphics/Rect;Z)Z

    #@3
    move-result v1

    #@4
    .line 6569
    .local v1, "scrolled":Z
    if-eqz p2, :cond_0

    #@6
    .line 6570
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    #@8
    invoke-virtual {v2, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@b
    .line 6571
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    #@d
    iget v3, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    #@f
    neg-int v3, v3

    #@10
    const/4 v4, 0x0

    #@11
    invoke-virtual {v2, v4, v3}, Landroid/graphics/Rect;->offset(II)V

    #@14
    .line 6572
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    #@16
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@18
    iget v3, v3, Landroid/view/View$AttachInfo;->mWindowLeft:I

    #@1a
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@1c
    iget v4, v4, Landroid/view/View$AttachInfo;->mWindowTop:I

    #@1e
    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    #@21
    .line 6574
    :try_start_0
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    #@23
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    #@25
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    #@27
    invoke-interface {v2, v3, v4}, Landroid/view/IWindowSession;->onRectangleOnScreenRequested(Landroid/os/IBinder;Landroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@2a
    .line 6579
    :cond_0
    :goto_0
    return v1

    #@2b
    .line 6575
    :catch_0
    move-exception v0

    #@2c
    .local v0, "re":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .param p1, "disallowIntercept"    # Z

    #@0
    .prologue
    .line 6562
    return-void
.end method

.method public requestFitSystemWindows()V
    .locals 1

    #@0
    .prologue
    .line 899
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    #@3
    .line 900
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mApplyInsetsRequested:Z

    #@6
    .line 901
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    #@9
    .line 898
    return-void
.end method

.method public requestLayout()V
    .locals 1

    #@0
    .prologue
    .line 906
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mHandlingLayoutInLayoutRequest:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 907
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    #@7
    .line 908
    const/4 v0, 0x1

    #@8
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    #@a
    .line 909
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    #@d
    .line 905
    :cond_0
    return-void
.end method

.method requestLayoutDuringLayout(Landroid/view/View;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 2139
    iget-object v0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    #@3
    if-eqz v0, :cond_0

    #@5
    iget-object v0, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@7
    if-nez v0, :cond_1

    #@9
    .line 2141
    :cond_0
    return v1

    #@a
    .line 2143
    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLayoutRequesters:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@f
    move-result v0

    #@10
    if-nez v0, :cond_2

    #@12
    .line 2144
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLayoutRequesters:Ljava/util/ArrayList;

    #@14
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@17
    .line 2146
    :cond_2
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mHandlingLayoutInLayoutRequest:Z

    #@19
    if-nez v0, :cond_3

    #@1b
    .line 2149
    return v1

    #@1c
    .line 2153
    :cond_3
    const/4 v0, 0x0

    #@1d
    return v0
.end method

.method public requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 10
    .param p1, "child"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 6333
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@3
    if-eqz v8, :cond_0

    #@5
    iget-boolean v8, p0, Landroid/view/ViewRootImpl;->mStopped:Z

    #@7
    if-nez v8, :cond_0

    #@9
    iget-boolean v8, p0, Landroid/view/ViewRootImpl;->mPausedForTransition:Z

    #@b
    if-eqz v8, :cond_1

    #@d
    .line 6334
    :cond_0
    const/4 v8, 0x0

    #@e
    return v8

    #@f
    .line 6338
    :cond_1
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    #@12
    move-result v1

    #@13
    .line 6339
    .local v1, "eventType":I
    sparse-switch v1, :sswitch_data_0

    #@16
    .line 6379
    :cond_2
    :goto_0
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    #@18
    invoke-virtual {v8, p2}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    #@1b
    .line 6380
    const/4 v8, 0x1

    #@1c
    return v8

    #@1d
    .line 6341
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    #@20
    move-result-wide v6

    #@21
    .line 6342
    .local v6, "sourceNodeId":J
    invoke-static {v6, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    #@24
    move-result v0

    #@25
    .line 6344
    .local v0, "accessibilityViewId":I
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@27
    invoke-virtual {v8, v0}, Landroid/view/View;->findViewByAccessibilityId(I)Landroid/view/View;

    #@2a
    move-result-object v4

    #@2b
    .line 6345
    .local v4, "source":Landroid/view/View;
    if-eqz v4, :cond_2

    #@2d
    .line 6346
    invoke-virtual {v4}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    #@30
    move-result-object v3

    #@31
    .line 6347
    .local v3, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v3, :cond_2

    #@33
    .line 6348
    invoke-static {v6, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    #@36
    move-result v5

    #@37
    .line 6351
    .local v5, "virtualNodeId":I
    const v8, 0x7fffffff

    #@3a
    if-ne v5, v8, :cond_3

    #@3c
    .line 6353
    const/4 v8, -0x1

    #@3d
    .line 6352
    invoke-virtual {v3, v8}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@40
    move-result-object v2

    #@41
    .line 6357
    .local v2, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    :goto_1
    invoke-virtual {p0, v4, v2}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    #@44
    goto :goto_0

    #@45
    .line 6355
    .end local v2    # "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_3
    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@48
    move-result-object v2

    #@49
    .restart local v2    # "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    goto :goto_1

    #@4a
    .line 6362
    .end local v0    # "accessibilityViewId":I
    .end local v2    # "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v3    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    .end local v4    # "source":Landroid/view/View;
    .end local v5    # "virtualNodeId":I
    .end local v6    # "sourceNodeId":J
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    #@4d
    move-result-wide v6

    #@4e
    .line 6363
    .restart local v6    # "sourceNodeId":J
    invoke-static {v6, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    #@51
    move-result v0

    #@52
    .line 6365
    .restart local v0    # "accessibilityViewId":I
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@54
    invoke-virtual {v8, v0}, Landroid/view/View;->findViewByAccessibilityId(I)Landroid/view/View;

    #@57
    move-result-object v4

    #@58
    .line 6366
    .restart local v4    # "source":Landroid/view/View;
    if-eqz v4, :cond_2

    #@5a
    .line 6367
    invoke-virtual {v4}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    #@5d
    move-result-object v3

    #@5e
    .line 6368
    .restart local v3    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v3, :cond_2

    #@60
    .line 6369
    invoke-virtual {p0, v9, v9}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    #@63
    goto :goto_0

    #@64
    .line 6376
    .end local v0    # "accessibilityViewId":I
    .end local v3    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    .end local v4    # "source":Landroid/view/View;
    .end local v6    # "sourceNodeId":J
    :sswitch_2
    invoke-direct {p0, p2}, Landroid/view/ViewRootImpl;->handleWindowContentChangedEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    #@67
    goto :goto_0

    #@68
    .line 6339
    :sswitch_data_0
    .sparse-switch
        0x800 -> :sswitch_2
        0x8000 -> :sswitch_0
        0x10000 -> :sswitch_1
    .end sparse-switch
.end method

.method public requestTransitionStart(Landroid/animation/LayoutTransition;)V
    .locals 1
    .param p1, "transition"    # Landroid/animation/LayoutTransition;

    #@0
    .prologue
    .line 1056
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    #@6
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 1055
    :goto_0
    return-void

    #@d
    .line 1057
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    #@f
    if-nez v0, :cond_1

    #@11
    .line 1058
    new-instance v0, Ljava/util/ArrayList;

    #@13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@16
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    #@18
    .line 1060
    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    #@1a
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1d
    goto :goto_0
.end method

.method public requestTransparentRegion(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    #@0
    .prologue
    .line 2296
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    #@3
    .line 2297
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@5
    if-ne v0, p1, :cond_0

    #@7
    .line 2298
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@9
    iget v1, v0, Landroid/view/View;->mPrivateFlags:I

    #@b
    or-int/lit16 v1, v1, 0x200

    #@d
    iput v1, v0, Landroid/view/View;->mPrivateFlags:I

    #@f
    .line 2301
    const/4 v0, 0x1

    #@10
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    #@12
    .line 2302
    const/4 v0, 0x0

    #@13
    iput v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChangesFlag:I

    #@15
    .line 2303
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->requestLayout()V

    #@18
    .line 2294
    :cond_0
    return-void
.end method

.method public requestUpdateConfiguration(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "config"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    .line 5638
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@2
    const/16 v2, 0x12

    #@4
    invoke-virtual {v1, v2, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@7
    move-result-object v0

    #@8
    .line 5639
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@a
    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    #@d
    .line 5637
    return-void
.end method

.method scheduleConsumeBatchedInput()V
    .locals 4

    #@0
    .prologue
    .line 5969
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 5970
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    #@7
    .line 5971
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    #@9
    .line 5972
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mConsumedBatchedInputRunnable:Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;

    #@b
    .line 5971
    const/4 v2, 0x0

    #@c
    .line 5972
    const/4 v3, 0x0

    #@d
    .line 5971
    invoke-virtual {v0, v2, v1, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    #@10
    .line 5968
    :cond_0
    return-void
.end method

.method scheduleConsumeBatchedInputImmediately()V
    .locals 2

    #@0
    .prologue
    .line 5985
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputImmediatelyScheduled:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 5986
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->unscheduleConsumeBatchedInput()V

    #@7
    .line 5987
    const/4 v0, 0x1

    #@8
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputImmediatelyScheduled:Z

    #@a
    .line 5988
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@c
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputImmediatelyRunnable:Landroid/view/ViewRootImpl$ConsumeBatchedInputImmediatelyRunnable;

    #@e
    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->post(Ljava/lang/Runnable;)Z

    #@11
    .line 5984
    :cond_0
    return-void
.end method

.method scheduleTraversals()V
    .locals 4

    #@0
    .prologue
    .line 1076
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    #@2
    if-nez v0, :cond_1

    #@4
    .line 1077
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    #@7
    .line 1078
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@9
    invoke-virtual {v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->getLooper()Landroid/os/Looper;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v0}, Landroid/os/MessageQueue;->postSyncBarrier()I

    #@14
    move-result v0

    #@15
    iput v0, p0, Landroid/view/ViewRootImpl;->mTraversalBarrier:I

    #@17
    .line 1079
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    #@19
    .line 1080
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTraversalRunnable:Landroid/view/ViewRootImpl$TraversalRunnable;

    #@1b
    const/4 v2, 0x2

    #@1c
    const/4 v3, 0x0

    #@1d
    .line 1079
    invoke-virtual {v0, v2, v1, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    #@20
    .line 1081
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mUnbufferedInputDispatch:Z

    #@22
    if-nez v0, :cond_0

    #@24
    .line 1082
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleConsumeBatchedInput()V

    #@27
    .line 1084
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->notifyRendererOfFramePending()V

    #@2a
    .line 1085
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->pokeDrawLockIfNeeded()V

    #@2d
    .line 1075
    :cond_1
    return-void
.end method

.method scrollToRectOrFocus(Landroid/graphics/Rect;Z)Z
    .locals 10
    .param p1, "rectangle"    # Landroid/graphics/Rect;
    .param p2, "immediate"    # Z

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    const/4 v8, 0x0

    #@2
    .line 2834
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@4
    iget-object v0, v6, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    #@6
    .line 2835
    .local v0, "ci":Landroid/graphics/Rect;
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@8
    iget-object v5, v6, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    #@a
    .line 2836
    .local v5, "vi":Landroid/graphics/Rect;
    const/4 v4, 0x0

    #@b
    .line 2837
    .local v4, "scrollY":I
    const/4 v2, 0x0

    #@c
    .line 2839
    .local v2, "handled":Z
    iget v6, v5, Landroid/graphics/Rect;->left:I

    #@e
    iget v7, v0, Landroid/graphics/Rect;->left:I

    #@10
    if-gt v6, v7, :cond_0

    #@12
    iget v6, v5, Landroid/graphics/Rect;->top:I

    #@14
    iget v7, v0, Landroid/graphics/Rect;->top:I

    #@16
    if-le v6, v7, :cond_1

    #@18
    .line 2845
    :cond_0
    iget v4, p0, Landroid/view/ViewRootImpl;->mScrollY:I

    #@1a
    .line 2852
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@1c
    invoke-virtual {v6}, Landroid/view/View;->findFocus()Landroid/view/View;

    #@1f
    move-result-object v1

    #@20
    .line 2853
    .local v1, "focus":Landroid/view/View;
    if-nez v1, :cond_6

    #@22
    .line 2854
    return v9

    #@23
    .line 2840
    .end local v1    # "focus":Landroid/view/View;
    :cond_1
    iget v6, v5, Landroid/graphics/Rect;->right:I

    #@25
    iget v7, v0, Landroid/graphics/Rect;->right:I

    #@27
    if-gt v6, v7, :cond_0

    #@29
    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    #@2b
    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    #@2d
    if-gt v6, v7, :cond_0

    #@2f
    .line 2931
    .end local p1    # "rectangle":Landroid/graphics/Rect;
    :cond_2
    :goto_0
    iget v6, p0, Landroid/view/ViewRootImpl;->mScrollY:I

    #@31
    if-eq v4, v6, :cond_5

    #@33
    .line 2934
    if-nez p2, :cond_10

    #@35
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    #@37
    if-nez v6, :cond_10

    #@39
    .line 2935
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    #@3b
    if-nez v6, :cond_3

    #@3d
    .line 2936
    new-instance v6, Landroid/widget/Scroller;

    #@3f
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@41
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@44
    move-result-object v7

    #@45
    invoke-direct {v6, v7}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    #@48
    iput-object v6, p0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    #@4a
    .line 2938
    :cond_3
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    #@4c
    iget v7, p0, Landroid/view/ViewRootImpl;->mScrollY:I

    #@4e
    iget v8, p0, Landroid/view/ViewRootImpl;->mScrollY:I

    #@50
    sub-int v8, v4, v8

    #@52
    invoke-virtual {v6, v9, v7, v9, v8}, Landroid/widget/Scroller;->startScroll(IIII)V

    #@55
    .line 2942
    :cond_4
    :goto_1
    iput v4, p0, Landroid/view/ViewRootImpl;->mScrollY:I

    #@57
    .line 2945
    :cond_5
    return v2

    #@58
    .line 2856
    .restart local v1    # "focus":Landroid/view/View;
    .restart local p1    # "rectangle":Landroid/graphics/Rect;
    :cond_6
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mLastScrolledFocus:Ljava/lang/ref/WeakReference;

    #@5a
    if-eqz v6, :cond_b

    #@5c
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mLastScrolledFocus:Ljava/lang/ref/WeakReference;

    #@5e
    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@61
    move-result-object v3

    #@62
    check-cast v3, Landroid/view/View;

    #@64
    .line 2857
    :goto_2
    if-eq v1, v3, :cond_7

    #@66
    .line 2861
    const/4 p1, 0x0

    #@67
    .line 2866
    .end local p1    # "rectangle":Landroid/graphics/Rect;
    :cond_7
    if-ne v1, v3, :cond_8

    #@69
    iget-boolean v6, p0, Landroid/view/ViewRootImpl;->mScrollMayChange:Z

    #@6b
    if-eqz v6, :cond_c

    #@6d
    .line 2876
    :cond_8
    new-instance v6, Ljava/lang/ref/WeakReference;

    #@6f
    invoke-direct {v6, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@72
    iput-object v6, p0, Landroid/view/ViewRootImpl;->mLastScrolledFocus:Ljava/lang/ref/WeakReference;

    #@74
    .line 2877
    iput-boolean v9, p0, Landroid/view/ViewRootImpl;->mScrollMayChange:Z

    #@76
    .line 2880
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mVisRect:Landroid/graphics/Rect;

    #@78
    invoke-virtual {v1, v6, v8}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    #@7b
    move-result v6

    #@7c
    if-eqz v6, :cond_2

    #@7e
    .line 2885
    if-nez p1, :cond_d

    #@80
    .line 2886
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    #@82
    invoke-virtual {v1, v6}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    #@85
    .line 2889
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@87
    instance-of v6, v6, Landroid/view/ViewGroup;

    #@89
    if-eqz v6, :cond_9

    #@8b
    .line 2890
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@8d
    check-cast v6, Landroid/view/ViewGroup;

    #@8f
    .line 2891
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    #@91
    .line 2890
    invoke-virtual {v6, v1, v7}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    #@94
    .line 2904
    :cond_9
    :goto_3
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    #@96
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mVisRect:Landroid/graphics/Rect;

    #@98
    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    #@9b
    move-result v6

    #@9c
    if-eqz v6, :cond_2

    #@9e
    .line 2908
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    #@a0
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    #@a3
    move-result v6

    #@a4
    .line 2909
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@a6
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    #@a9
    move-result v7

    #@aa
    iget v8, v5, Landroid/graphics/Rect;->top:I

    #@ac
    sub-int/2addr v7, v8

    #@ad
    iget v8, v5, Landroid/graphics/Rect;->bottom:I

    #@af
    sub-int/2addr v7, v8

    #@b0
    .line 2908
    if-le v6, v7, :cond_e

    #@b2
    .line 2925
    :cond_a
    :goto_4
    const/4 v2, 0x1

    #@b3
    goto/16 :goto_0

    #@b5
    .line 2856
    .restart local p1    # "rectangle":Landroid/graphics/Rect;
    :cond_b
    const/4 v3, 0x0

    #@b6
    .local v3, "lastScrolledFocus":Landroid/view/View;
    goto :goto_2

    #@b7
    .line 2866
    .end local v3    # "lastScrolledFocus":Landroid/view/View;
    .end local p1    # "rectangle":Landroid/graphics/Rect;
    :cond_c
    if-nez p1, :cond_8

    #@b9
    goto/16 :goto_0

    #@bb
    .line 2898
    :cond_d
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    #@bd
    invoke-virtual {v6, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@c0
    goto :goto_3

    #@c1
    .line 2914
    :cond_e
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    #@c3
    iget v6, v6, Landroid/graphics/Rect;->top:I

    #@c5
    sub-int/2addr v6, v4

    #@c6
    iget v7, v5, Landroid/graphics/Rect;->top:I

    #@c8
    if-ge v6, v7, :cond_f

    #@ca
    .line 2915
    iget v6, v5, Landroid/graphics/Rect;->top:I

    #@cc
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    #@ce
    iget v7, v7, Landroid/graphics/Rect;->top:I

    #@d0
    sub-int/2addr v7, v4

    #@d1
    sub-int/2addr v6, v7

    #@d2
    sub-int/2addr v4, v6

    #@d3
    goto :goto_4

    #@d4
    .line 2918
    :cond_f
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    #@d6
    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    #@d8
    sub-int/2addr v6, v4

    #@d9
    .line 2919
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@db
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    #@de
    move-result v7

    #@df
    iget v8, v5, Landroid/graphics/Rect;->bottom:I

    #@e1
    sub-int/2addr v7, v8

    #@e2
    .line 2918
    if-le v6, v7, :cond_a

    #@e4
    .line 2920
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    #@e6
    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    #@e8
    sub-int/2addr v6, v4

    #@e9
    .line 2921
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@eb
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    #@ee
    move-result v7

    #@ef
    iget v8, v5, Landroid/graphics/Rect;->bottom:I

    #@f1
    sub-int/2addr v7, v8

    #@f2
    .line 2920
    sub-int/2addr v6, v7

    #@f3
    add-int/2addr v4, v6

    #@f4
    goto :goto_4

    #@f5
    .line 2939
    .end local v1    # "focus":Landroid/view/View;
    :cond_10
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    #@f7
    if-eqz v6, :cond_4

    #@f9
    .line 2940
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    #@fb
    invoke-virtual {v6}, Landroid/widget/Scroller;->abortAnimation()V

    #@fe
    goto/16 :goto_1
.end method

.method setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 2965
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    #@3
    if-eqz v4, :cond_1

    #@5
    .line 2967
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    #@7
    .line 2968
    .local v1, "focusNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    #@9
    .line 2975
    .local v0, "focusHost":Landroid/view/View;
    iput-object v6, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    #@b
    .line 2976
    iput-object v6, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    #@d
    .line 2980
    invoke-virtual {v0}, Landroid/view/View;->clearAccessibilityFocusNoCallbacks()V

    #@10
    .line 2982
    invoke-virtual {v0}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    #@13
    move-result-object v2

    #@14
    .line 2983
    .local v2, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v2, :cond_0

    #@16
    .line 2985
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    #@18
    invoke-virtual {v1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInParent(Landroid/graphics/Rect;)V

    #@1b
    .line 2986
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    #@1d
    invoke-virtual {v0, v4}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    #@20
    .line 2989
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    #@23
    move-result-wide v4

    #@24
    .line 2988
    invoke-static {v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    #@27
    move-result v3

    #@28
    .line 2991
    .local v3, "virtualNodeId":I
    const/16 v4, 0x80

    #@2a
    .line 2990
    invoke-virtual {v2, v3, v4, v6}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    #@2d
    .line 2993
    .end local v3    # "virtualNodeId":I
    :cond_0
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    #@30
    .line 2995
    .end local v0    # "focusHost":Landroid/view/View;
    .end local v1    # "focusNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v2    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_1
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    #@32
    if-eqz v4, :cond_2

    #@34
    .line 2997
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    #@36
    invoke-virtual {v4}, Landroid/view/View;->clearAccessibilityFocusNoCallbacks()V

    #@39
    .line 3001
    :cond_2
    iput-object p1, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    #@3b
    .line 3002
    iput-object p2, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    #@3d
    .line 3004
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@3f
    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    #@41
    if-eqz v4, :cond_3

    #@43
    .line 3005
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@45
    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    #@47
    invoke-virtual {v4}, Landroid/view/HardwareRenderer;->invalidateRoot()V

    #@4a
    .line 2962
    :cond_3
    return-void
.end method

.method public setDragFocus(Landroid/view/View;)V
    .locals 1
    .param p1, "newDragTarget"    # Landroid/view/View;

    #@0
    .prologue
    .line 5366
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 5367
    iput-object p1, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    #@6
    .line 5365
    :cond_0
    return-void
.end method

.method public setDrawDuringWindowsAnimating(Z)V
    .locals 0
    .param p1, "value"    # Z

    #@0
    .prologue
    .line 2827
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mDrawDuringWindowsAnimating:Z

    #@2
    .line 2828
    if-eqz p1, :cond_0

    #@4
    .line 2829
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->handleDispatchWindowAnimationStopped()V

    #@7
    .line 2826
    :cond_0
    return-void
.end method

.method setLayoutParams(Landroid/view/WindowManager$LayoutParams;Z)V
    .locals 10
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "newView"    # Z

    #@0
    .prologue
    .line 774
    monitor-enter p0

    #@1
    .line 775
    :try_start_0
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@3
    iget-object v7, v7, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@5
    iget v3, v7, Landroid/graphics/Rect;->left:I

    #@7
    .line 776
    .local v3, "oldInsetLeft":I
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@9
    iget-object v7, v7, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@b
    iget v5, v7, Landroid/graphics/Rect;->top:I

    #@d
    .line 777
    .local v5, "oldInsetTop":I
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@f
    iget-object v7, v7, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@11
    iget v4, v7, Landroid/graphics/Rect;->right:I

    #@13
    .line 778
    .local v4, "oldInsetRight":I
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@15
    iget-object v7, v7, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@17
    iget v2, v7, Landroid/graphics/Rect;->bottom:I

    #@19
    .line 779
    .local v2, "oldInsetBottom":I
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@1b
    iget v6, v7, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    #@1d
    .line 780
    .local v6, "oldSoftInputMode":I
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@1f
    iget-boolean v1, v7, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    #@21
    .line 783
    .local v1, "oldHasManualSurfaceInsets":Z
    iget v7, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@23
    iput v7, p0, Landroid/view/ViewRootImpl;->mClientWindowLayoutFlags:I

    #@25
    .line 786
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@27
    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@29
    and-int/lit16 v0, v7, 0x80

    #@2b
    .line 790
    .local v0, "compatibleWindowFlag":I
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@2d
    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    #@2f
    iput v7, p1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    #@31
    .line 791
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@33
    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    #@35
    iput v7, p1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    #@37
    .line 793
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@39
    invoke-virtual {v7, p1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    #@3c
    move-result v7

    #@3d
    iput v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChangesFlag:I

    #@3f
    .line 794
    iget v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChangesFlag:I

    #@41
    .line 795
    const/high16 v8, 0x80000

    #@43
    .line 794
    and-int/2addr v7, v8

    #@44
    if-eqz v7, :cond_0

    #@46
    .line 797
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@48
    const/4 v8, 0x1

    #@49
    iput-boolean v8, v7, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    #@4b
    .line 799
    :cond_0
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@4d
    iget-object v7, v7, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    #@4f
    if-nez v7, :cond_1

    #@51
    .line 800
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@53
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mBasePackageName:Ljava/lang/String;

    #@55
    iput-object v8, v7, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    #@57
    .line 802
    :cond_1
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@59
    iget v8, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@5b
    or-int/2addr v8, v0

    #@5c
    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@5e
    .line 805
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@60
    iget-object v7, v7, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@62
    invoke-virtual {v7, v3, v5, v4, v2}, Landroid/graphics/Rect;->set(IIII)V

    #@65
    .line 807
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@67
    iput-boolean v1, v7, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    #@69
    .line 809
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@6b
    invoke-direct {p0, v7}, Landroid/view/ViewRootImpl;->applyKeepScreenOnFlag(Landroid/view/WindowManager$LayoutParams;)V

    #@6e
    .line 811
    if-eqz p2, :cond_2

    #@70
    .line 812
    iget v7, p1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    #@72
    iput v7, p0, Landroid/view/ViewRootImpl;->mSoftInputMode:I

    #@74
    .line 813
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->requestLayout()V

    #@77
    .line 817
    :cond_2
    iget v7, p1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    #@79
    and-int/lit16 v7, v7, 0xf0

    #@7b
    if-nez v7, :cond_3

    #@7d
    .line 819
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@7f
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@81
    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    #@83
    and-int/lit16 v8, v8, -0xf1

    #@85
    .line 821
    and-int/lit16 v9, v6, 0xf0

    #@87
    .line 819
    or-int/2addr v8, v9

    #@88
    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    #@8a
    .line 824
    :cond_3
    const/4 v7, 0x1

    #@8b
    iput-boolean v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    #@8d
    .line 825
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@90
    monitor-exit p0

    #@91
    .line 773
    return-void

    #@92
    .line 774
    .end local v0    # "compatibleWindowFlag":I
    .end local v1    # "oldHasManualSurfaceInsets":Z
    .end local v2    # "oldInsetBottom":I
    .end local v3    # "oldInsetLeft":I
    .end local v4    # "oldInsetRight":I
    .end local v5    # "oldInsetTop":I
    .end local v6    # "oldSoftInputMode":I
    :catchall_0
    move-exception v7

    #@93
    monitor-exit p0

    #@94
    throw v7
.end method

.method setLocalDragState(Ljava/lang/Object;)V
    .locals 0
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 5237
    iput-object p1, p0, Landroid/view/ViewRootImpl;->mLocalDragState:Ljava/lang/Object;

    #@2
    .line 5236
    return-void
.end method

.method public setPausedForTransition(Z)V
    .locals 0
    .param p1, "paused"    # Z

    #@0
    .prologue
    .line 1009
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mPausedForTransition:Z

    #@2
    .line 1008
    return-void
.end method

.method public setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/view/View;)V
    .locals 26
    .param p1, "view"    # Landroid/view/View;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "panelParentView"    # Landroid/view/View;

    #@0
    .prologue
    .line 448
    monitor-enter p0

    #@1
    .line 449
    :try_start_0
    move-object/from16 v0, p0

    #@3
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@5
    if-nez v4, :cond_13

    #@7
    .line 450
    move-object/from16 v0, p1

    #@9
    move-object/from16 v1, p0

    #@b
    iput-object v0, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@d
    .line 452
    move-object/from16 v0, p0

    #@f
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@11
    move-object/from16 v0, p0

    #@13
    iget-object v5, v0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    #@15
    invoke-virtual {v5}, Landroid/view/Display;->getState()I

    #@18
    move-result v5

    #@19
    iput v5, v4, Landroid/view/View$AttachInfo;->mDisplayState:I

    #@1b
    .line 453
    move-object/from16 v0, p0

    #@1d
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    #@1f
    move-object/from16 v0, p0

    #@21
    iget-object v5, v0, Landroid/view/ViewRootImpl;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    #@23
    move-object/from16 v0, p0

    #@25
    iget-object v6, v0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@27
    invoke-virtual {v4, v5, v6}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    #@2a
    .line 455
    move-object/from16 v0, p0

    #@2c
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@2e
    invoke-virtual {v4}, Landroid/view/View;->getRawLayoutDirection()I

    #@31
    move-result v4

    #@32
    move-object/from16 v0, p0

    #@34
    iput v4, v0, Landroid/view/ViewRootImpl;->mViewLayoutDirectionInitial:I

    #@36
    .line 456
    move-object/from16 v0, p0

    #@38
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mFallbackEventHandler:Landroid/view/FallbackEventHandler;

    #@3a
    move-object/from16 v0, p1

    #@3c
    invoke-interface {v4, v0}, Landroid/view/FallbackEventHandler;->setView(Landroid/view/View;)V

    #@3f
    .line 457
    move-object/from16 v0, p0

    #@41
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@43
    move-object/from16 v0, p2

    #@45
    invoke-virtual {v4, v0}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    #@48
    .line 458
    move-object/from16 v0, p0

    #@4a
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@4c
    iget-object v4, v4, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    #@4e
    if-nez v4, :cond_0

    #@50
    .line 459
    move-object/from16 v0, p0

    #@52
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@54
    move-object/from16 v0, p0

    #@56
    iget-object v5, v0, Landroid/view/ViewRootImpl;->mBasePackageName:Ljava/lang/String;

    #@58
    iput-object v5, v4, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    #@5a
    .line 461
    :cond_0
    move-object/from16 v0, p0

    #@5c
    iget-object v0, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@5e
    move-object/from16 p2, v0

    #@60
    .line 463
    move-object/from16 v0, p2

    #@62
    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@64
    move-object/from16 v0, p0

    #@66
    iput v4, v0, Landroid/view/ViewRootImpl;->mClientWindowLayoutFlags:I

    #@68
    .line 465
    const/4 v4, 0x0

    #@69
    const/4 v5, 0x0

    #@6a
    move-object/from16 v0, p0

    #@6c
    invoke-virtual {v0, v4, v5}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    #@6f
    .line 467
    move-object/from16 v0, p1

    #@71
    instance-of v4, v0, Lcom/android/internal/view/RootViewSurfaceTaker;

    #@73
    if-eqz v4, :cond_1

    #@75
    .line 469
    move-object/from16 v0, p1

    #@77
    check-cast v0, Lcom/android/internal/view/RootViewSurfaceTaker;

    #@79
    move-object v4, v0

    #@7a
    invoke-interface {v4}, Lcom/android/internal/view/RootViewSurfaceTaker;->willYouTakeTheSurface()Landroid/view/SurfaceHolder$Callback2;

    #@7d
    move-result-object v4

    #@7e
    .line 468
    move-object/from16 v0, p0

    #@80
    iput-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    #@82
    .line 470
    move-object/from16 v0, p0

    #@84
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    #@86
    if-eqz v4, :cond_1

    #@88
    .line 471
    new-instance v4, Landroid/view/ViewRootImpl$TakenSurfaceHolder;

    #@8a
    move-object/from16 v0, p0

    #@8c
    invoke-direct {v4, v0}, Landroid/view/ViewRootImpl$TakenSurfaceHolder;-><init>(Landroid/view/ViewRootImpl;)V

    #@8f
    move-object/from16 v0, p0

    #@91
    iput-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@93
    .line 472
    move-object/from16 v0, p0

    #@95
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@97
    const/4 v5, 0x0

    #@98
    invoke-virtual {v4, v5}, Lcom/android/internal/view/BaseSurfaceHolder;->setFormat(I)V

    #@9b
    .line 478
    :cond_1
    move-object/from16 v0, p2

    #@9d
    iget-boolean v4, v0, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    #@9f
    if-nez v4, :cond_2

    #@a1
    .line 479
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getZ()F

    #@a4
    move-result v4

    #@a5
    const/high16 v5, 0x40000000    # 2.0f

    #@a7
    mul-float/2addr v4, v5

    #@a8
    float-to-double v4, v4

    #@a9
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    #@ac
    move-result-wide v4

    #@ad
    double-to-int v0, v4

    #@ae
    move/from16 v23, v0

    #@b0
    .line 480
    .local v23, "surfaceInset":I
    move-object/from16 v0, p2

    #@b2
    iget-object v4, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@b4
    move/from16 v0, v23

    #@b6
    move/from16 v1, v23

    #@b8
    move/from16 v2, v23

    #@ba
    move/from16 v3, v23

    #@bc
    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    #@bf
    .line 483
    .end local v23    # "surfaceInset":I
    :cond_2
    move-object/from16 v0, p0

    #@c1
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    #@c3
    invoke-virtual {v4}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    #@c6
    move-result-object v14

    #@c7
    .line 484
    .local v14, "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    invoke-virtual {v14}, Landroid/content/res/CompatibilityInfo;->getTranslator()Landroid/content/res/CompatibilityInfo$Translator;

    #@ca
    move-result-object v4

    #@cb
    move-object/from16 v0, p0

    #@cd
    iput-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@cf
    .line 487
    move-object/from16 v0, p0

    #@d1
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@d3
    if-nez v4, :cond_3

    #@d5
    .line 488
    move-object/from16 v0, p0

    #@d7
    move-object/from16 v1, p2

    #@d9
    invoke-direct {v0, v1}, Landroid/view/ViewRootImpl;->enableHardwareAcceleration(Landroid/view/WindowManager$LayoutParams;)V

    #@dc
    .line 491
    :cond_3
    const/16 v22, 0x0

    #@de
    .line 492
    .local v22, "restore":Z
    move-object/from16 v0, p0

    #@e0
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@e2
    if-eqz v4, :cond_4

    #@e4
    .line 493
    move-object/from16 v0, p0

    #@e6
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    #@e8
    move-object/from16 v0, p0

    #@ea
    iget-object v5, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@ec
    invoke-virtual {v4, v5}, Landroid/view/Surface;->setCompatibilityTranslator(Landroid/content/res/CompatibilityInfo$Translator;)V

    #@ef
    .line 494
    const/16 v22, 0x1

    #@f1
    .line 495
    invoke-virtual/range {p2 .. p2}, Landroid/view/WindowManager$LayoutParams;->backup()V

    #@f4
    .line 496
    move-object/from16 v0, p0

    #@f6
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@f8
    move-object/from16 v0, p2

    #@fa
    invoke-virtual {v4, v0}, Landroid/content/res/CompatibilityInfo$Translator;->translateWindowLayout(Landroid/view/WindowManager$LayoutParams;)V

    #@fd
    .line 500
    :cond_4
    invoke-virtual {v14}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    #@100
    move-result v4

    #@101
    if-nez v4, :cond_5

    #@103
    .line 501
    move-object/from16 v0, p2

    #@105
    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@107
    or-int/lit16 v4, v4, 0x80

    #@109
    move-object/from16 v0, p2

    #@10b
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@10d
    .line 502
    const/4 v4, 0x1

    #@10e
    move-object/from16 v0, p0

    #@110
    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mLastInCompatMode:Z

    #@112
    .line 505
    :cond_5
    move-object/from16 v0, p2

    #@114
    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    #@116
    move-object/from16 v0, p0

    #@118
    iput v4, v0, Landroid/view/ViewRootImpl;->mSoftInputMode:I

    #@11a
    .line 506
    const/4 v4, 0x1

    #@11b
    move-object/from16 v0, p0

    #@11d
    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    #@11f
    .line 507
    const/4 v4, -0x1

    #@120
    move-object/from16 v0, p0

    #@122
    iput v4, v0, Landroid/view/ViewRootImpl;->mWindowAttributesChangesFlag:I

    #@124
    .line 508
    move-object/from16 v0, p0

    #@126
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@128
    move-object/from16 v0, p1

    #@12a
    iput-object v0, v4, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    #@12c
    .line 509
    move-object/from16 v0, p0

    #@12e
    iget-object v5, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@130
    move-object/from16 v0, p0

    #@132
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@134
    if-eqz v4, :cond_a

    #@136
    const/4 v4, 0x1

    #@137
    :goto_0
    iput-boolean v4, v5, Landroid/view/View$AttachInfo;->mScalingRequired:Z

    #@139
    .line 510
    move-object/from16 v0, p0

    #@13b
    iget-object v5, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@13d
    .line 511
    move-object/from16 v0, p0

    #@13f
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@141
    if-nez v4, :cond_b

    #@143
    const/high16 v4, 0x3f800000    # 1.0f

    #@145
    .line 510
    :goto_1
    iput v4, v5, Landroid/view/View$AttachInfo;->mApplicationScale:F

    #@147
    .line 512
    if-eqz p3, :cond_6

    #@149
    .line 513
    move-object/from16 v0, p0

    #@14b
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@14d
    .line 514
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    #@150
    move-result-object v5

    #@151
    .line 513
    iput-object v5, v4, Landroid/view/View$AttachInfo;->mPanelParentWindowToken:Landroid/os/IBinder;

    #@153
    .line 516
    :cond_6
    const/4 v4, 0x1

    #@154
    move-object/from16 v0, p0

    #@156
    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mAdded:Z

    #@158
    .line 522
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->requestLayout()V

    #@15b
    .line 523
    move-object/from16 v0, p0

    #@15d
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@15f
    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    #@161
    and-int/lit8 v4, v4, 0x2

    #@163
    if-nez v4, :cond_7

    #@165
    .line 525
    new-instance v4, Landroid/view/InputChannel;

    #@167
    invoke-direct {v4}, Landroid/view/InputChannel;-><init>()V

    #@16a
    move-object/from16 v0, p0

    #@16c
    iput-object v4, v0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16e
    .line 528
    :cond_7
    :try_start_1
    move-object/from16 v0, p0

    #@170
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@172
    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    #@174
    move-object/from16 v0, p0

    #@176
    iput v4, v0, Landroid/view/ViewRootImpl;->mOrigWindowType:I

    #@178
    .line 529
    move-object/from16 v0, p0

    #@17a
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@17c
    const/4 v5, 0x1

    #@17d
    iput-boolean v5, v4, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    #@17f
    .line 530
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->collectViewAttributes()Z

    #@182
    .line 531
    move-object/from16 v0, p0

    #@184
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    #@186
    move-object/from16 v0, p0

    #@188
    iget-object v5, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    #@18a
    move-object/from16 v0, p0

    #@18c
    iget v6, v0, Landroid/view/ViewRootImpl;->mSeq:I

    #@18e
    move-object/from16 v0, p0

    #@190
    iget-object v7, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@192
    .line 532
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->getHostVisibility()I

    #@195
    move-result v8

    #@196
    move-object/from16 v0, p0

    #@198
    iget-object v9, v0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    #@19a
    invoke-virtual {v9}, Landroid/view/Display;->getDisplayId()I

    #@19d
    move-result v9

    #@19e
    .line 533
    move-object/from16 v0, p0

    #@1a0
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@1a2
    iget-object v10, v10, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    #@1a4
    move-object/from16 v0, p0

    #@1a6
    iget-object v11, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@1a8
    iget-object v11, v11, Landroid/view/View$AttachInfo;->mStableInsets:Landroid/graphics/Rect;

    #@1aa
    .line 534
    move-object/from16 v0, p0

    #@1ac
    iget-object v12, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@1ae
    iget-object v12, v12, Landroid/view/View$AttachInfo;->mOutsets:Landroid/graphics/Rect;

    #@1b0
    move-object/from16 v0, p0

    #@1b2
    iget-object v13, v0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    #@1b4
    .line 531
    invoke-interface/range {v4 .. v13}, Landroid/view/IWindowSession;->addToDisplay(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/InputChannel;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@1b7
    move-result v21

    #@1b8
    .line 545
    .local v21, "res":I
    if-eqz v22, :cond_8

    #@1ba
    .line 546
    :try_start_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/WindowManager$LayoutParams;->restore()V

    #@1bd
    .line 550
    :cond_8
    move-object/from16 v0, p0

    #@1bf
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@1c1
    if-eqz v4, :cond_9

    #@1c3
    .line 551
    move-object/from16 v0, p0

    #@1c5
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@1c7
    move-object/from16 v0, p0

    #@1c9
    iget-object v5, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@1cb
    iget-object v5, v5, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    #@1cd
    invoke-virtual {v4, v5}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    #@1d0
    .line 553
    :cond_9
    move-object/from16 v0, p0

    #@1d2
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    #@1d4
    const/4 v5, 0x0

    #@1d5
    const/4 v6, 0x0

    #@1d6
    const/4 v7, 0x0

    #@1d7
    const/4 v8, 0x0

    #@1d8
    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    #@1db
    .line 554
    move-object/from16 v0, p0

    #@1dd
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    #@1df
    move-object/from16 v0, p0

    #@1e1
    iget-object v5, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@1e3
    iget-object v5, v5, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    #@1e5
    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@1e8
    .line 555
    move-object/from16 v0, p0

    #@1ea
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    #@1ec
    move-object/from16 v0, p0

    #@1ee
    iget-object v5, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@1f0
    iget-object v5, v5, Landroid/view/View$AttachInfo;->mStableInsets:Landroid/graphics/Rect;

    #@1f2
    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@1f5
    .line 556
    move-object/from16 v0, p0

    #@1f7
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    #@1f9
    const/4 v5, 0x0

    #@1fa
    const/4 v6, 0x0

    #@1fb
    const/4 v7, 0x0

    #@1fc
    const/4 v8, 0x0

    #@1fd
    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    #@200
    .line 558
    if-gez v21, :cond_d

    #@202
    .line 559
    move-object/from16 v0, p0

    #@204
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@206
    const/4 v5, 0x0

    #@207
    iput-object v5, v4, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    #@209
    .line 560
    const/4 v4, 0x0

    #@20a
    move-object/from16 v0, p0

    #@20c
    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mAdded:Z

    #@20e
    .line 561
    move-object/from16 v0, p0

    #@210
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mFallbackEventHandler:Landroid/view/FallbackEventHandler;

    #@212
    const/4 v5, 0x0

    #@213
    invoke-interface {v4, v5}, Landroid/view/FallbackEventHandler;->setView(Landroid/view/View;)V

    #@216
    .line 562
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->unscheduleTraversals()V

    #@219
    .line 563
    const/4 v4, 0x0

    #@21a
    const/4 v5, 0x0

    #@21b
    move-object/from16 v0, p0

    #@21d
    invoke-virtual {v0, v4, v5}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    #@220
    .line 564
    packed-switch v21, :pswitch_data_0

    #@223
    .line 603
    new-instance v4, Ljava/lang/RuntimeException;

    #@225
    .line 604
    new-instance v5, Ljava/lang/StringBuilder;

    #@227
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@22a
    const-string/jumbo v6, "Unable to add window -- unknown error code "

    #@22d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@230
    move-result-object v5

    #@231
    move/from16 v0, v21

    #@233
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@236
    move-result-object v5

    #@237
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23a
    move-result-object v5

    #@23b
    .line 603
    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@23e
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@23f
    .line 448
    .end local v14    # "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    .end local v21    # "res":I
    .end local v22    # "restore":Z
    :catchall_0
    move-exception v4

    #@240
    monitor-exit p0

    #@241
    throw v4

    #@242
    .line 509
    .restart local v14    # "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    .restart local v22    # "restore":Z
    :cond_a
    const/4 v4, 0x0

    #@243
    goto/16 :goto_0

    #@245
    .line 511
    :cond_b
    :try_start_3
    move-object/from16 v0, p0

    #@247
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@249
    iget v4, v4, Landroid/content/res/CompatibilityInfo$Translator;->applicationScale:F
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@24b
    goto/16 :goto_1

    #@24d
    .line 535
    :catch_0
    move-exception v16

    #@24e
    .line 536
    .local v16, "e":Landroid/os/RemoteException;
    const/4 v4, 0x0

    #@24f
    :try_start_4
    move-object/from16 v0, p0

    #@251
    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mAdded:Z

    #@253
    .line 537
    const/4 v4, 0x0

    #@254
    move-object/from16 v0, p0

    #@256
    iput-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@258
    .line 538
    move-object/from16 v0, p0

    #@25a
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@25c
    const/4 v5, 0x0

    #@25d
    iput-object v5, v4, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    #@25f
    .line 539
    const/4 v4, 0x0

    #@260
    move-object/from16 v0, p0

    #@262
    iput-object v4, v0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    #@264
    .line 540
    move-object/from16 v0, p0

    #@266
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mFallbackEventHandler:Landroid/view/FallbackEventHandler;

    #@268
    const/4 v5, 0x0

    #@269
    invoke-interface {v4, v5}, Landroid/view/FallbackEventHandler;->setView(Landroid/view/View;)V

    #@26c
    .line 541
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->unscheduleTraversals()V

    #@26f
    .line 542
    const/4 v4, 0x0

    #@270
    const/4 v5, 0x0

    #@271
    move-object/from16 v0, p0

    #@273
    invoke-virtual {v0, v4, v5}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    #@276
    .line 543
    new-instance v4, Ljava/lang/RuntimeException;

    #@278
    const-string/jumbo v5, "Adding window failed"

    #@27b
    move-object/from16 v0, v16

    #@27d
    invoke-direct {v4, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@280
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@281
    .line 544
    .end local v16    # "e":Landroid/os/RemoteException;
    :catchall_1
    move-exception v4

    #@282
    .line 545
    if-eqz v22, :cond_c

    #@284
    .line 546
    :try_start_5
    invoke-virtual/range {p2 .. p2}, Landroid/view/WindowManager$LayoutParams;->restore()V

    #@287
    .line 544
    :cond_c
    throw v4

    #@288
    .line 567
    .restart local v21    # "res":I
    :pswitch_0
    new-instance v4, Landroid/view/WindowManager$BadTokenException;

    #@28a
    .line 568
    new-instance v5, Ljava/lang/StringBuilder;

    #@28c
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@28f
    const-string/jumbo v6, "Unable to add window -- token "

    #@292
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@295
    move-result-object v5

    #@296
    move-object/from16 v0, p2

    #@298
    iget-object v6, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    #@29a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@29d
    move-result-object v5

    #@29e
    .line 569
    const-string/jumbo v6, " is not valid; is your activity running?"

    #@2a1
    .line 568
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a4
    move-result-object v5

    #@2a5
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a8
    move-result-object v5

    #@2a9
    .line 567
    invoke-direct {v4, v5}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    #@2ac
    throw v4

    #@2ad
    .line 571
    :pswitch_1
    new-instance v4, Landroid/view/WindowManager$BadTokenException;

    #@2af
    .line 572
    new-instance v5, Ljava/lang/StringBuilder;

    #@2b1
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@2b4
    const-string/jumbo v6, "Unable to add window -- token "

    #@2b7
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ba
    move-result-object v5

    #@2bb
    move-object/from16 v0, p2

    #@2bd
    iget-object v6, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    #@2bf
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2c2
    move-result-object v5

    #@2c3
    .line 573
    const-string/jumbo v6, " is not for an application"

    #@2c6
    .line 572
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c9
    move-result-object v5

    #@2ca
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2cd
    move-result-object v5

    #@2ce
    .line 571
    invoke-direct {v4, v5}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    #@2d1
    throw v4

    #@2d2
    .line 575
    :pswitch_2
    new-instance v4, Landroid/view/WindowManager$BadTokenException;

    #@2d4
    .line 576
    new-instance v5, Ljava/lang/StringBuilder;

    #@2d6
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@2d9
    const-string/jumbo v6, "Unable to add window -- app for token "

    #@2dc
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2df
    move-result-object v5

    #@2e0
    move-object/from16 v0, p2

    #@2e2
    iget-object v6, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    #@2e4
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2e7
    move-result-object v5

    #@2e8
    .line 577
    const-string/jumbo v6, " is exiting"

    #@2eb
    .line 576
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ee
    move-result-object v5

    #@2ef
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f2
    move-result-object v5

    #@2f3
    .line 575
    invoke-direct {v4, v5}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    #@2f6
    throw v4

    #@2f7
    .line 579
    :pswitch_3
    new-instance v4, Landroid/view/WindowManager$BadTokenException;

    #@2f9
    .line 580
    new-instance v5, Ljava/lang/StringBuilder;

    #@2fb
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@2fe
    const-string/jumbo v6, "Unable to add window -- window "

    #@301
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@304
    move-result-object v5

    #@305
    move-object/from16 v0, p0

    #@307
    iget-object v6, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    #@309
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@30c
    move-result-object v5

    #@30d
    .line 581
    const-string/jumbo v6, " has already been added"

    #@310
    .line 580
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@313
    move-result-object v5

    #@314
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@317
    move-result-object v5

    #@318
    .line 579
    invoke-direct {v4, v5}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    #@31b
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@31c
    :pswitch_4
    monitor-exit p0

    #@31d
    .line 585
    return-void

    #@31e
    .line 587
    :pswitch_5
    :try_start_6
    new-instance v4, Landroid/view/WindowManager$BadTokenException;

    #@320
    .line 588
    new-instance v5, Ljava/lang/StringBuilder;

    #@322
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@325
    const-string/jumbo v6, "Unable to add window "

    #@328
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32b
    move-result-object v5

    #@32c
    move-object/from16 v0, p0

    #@32e
    iget-object v6, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    #@330
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@333
    move-result-object v5

    #@334
    .line 589
    const-string/jumbo v6, " -- another window of this type already exists"

    #@337
    .line 588
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33a
    move-result-object v5

    #@33b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33e
    move-result-object v5

    #@33f
    .line 587
    invoke-direct {v4, v5}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    #@342
    throw v4

    #@343
    .line 591
    :pswitch_6
    new-instance v4, Landroid/view/WindowManager$BadTokenException;

    #@345
    .line 592
    new-instance v5, Ljava/lang/StringBuilder;

    #@347
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@34a
    const-string/jumbo v6, "Unable to add window "

    #@34d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@350
    move-result-object v5

    #@351
    move-object/from16 v0, p0

    #@353
    iget-object v6, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    #@355
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@358
    move-result-object v5

    #@359
    .line 593
    const-string/jumbo v6, " -- permission denied for this window type"

    #@35c
    .line 592
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35f
    move-result-object v5

    #@360
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@363
    move-result-object v5

    #@364
    .line 591
    invoke-direct {v4, v5}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    #@367
    throw v4

    #@368
    .line 595
    :pswitch_7
    new-instance v4, Landroid/view/WindowManager$InvalidDisplayException;

    #@36a
    .line 596
    new-instance v5, Ljava/lang/StringBuilder;

    #@36c
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@36f
    const-string/jumbo v6, "Unable to add window "

    #@372
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@375
    move-result-object v5

    #@376
    move-object/from16 v0, p0

    #@378
    iget-object v6, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    #@37a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@37d
    move-result-object v5

    #@37e
    .line 597
    const-string/jumbo v6, " -- the specified display can not be found"

    #@381
    .line 596
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@384
    move-result-object v5

    #@385
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@388
    move-result-object v5

    #@389
    .line 595
    invoke-direct {v4, v5}, Landroid/view/WindowManager$InvalidDisplayException;-><init>(Ljava/lang/String;)V

    #@38c
    throw v4

    #@38d
    .line 599
    :pswitch_8
    new-instance v4, Landroid/view/WindowManager$InvalidDisplayException;

    #@38f
    .line 600
    new-instance v5, Ljava/lang/StringBuilder;

    #@391
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@394
    const-string/jumbo v6, "Unable to add window "

    #@397
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39a
    move-result-object v5

    #@39b
    move-object/from16 v0, p0

    #@39d
    iget-object v6, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    #@39f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3a2
    move-result-object v5

    #@3a3
    .line 601
    const-string/jumbo v6, " -- the specified window type is not valid"

    #@3a6
    .line 600
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a9
    move-result-object v5

    #@3aa
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3ad
    move-result-object v5

    #@3ae
    .line 599
    invoke-direct {v4, v5}, Landroid/view/WindowManager$InvalidDisplayException;-><init>(Ljava/lang/String;)V

    #@3b1
    throw v4

    #@3b2
    .line 607
    :cond_d
    move-object/from16 v0, p1

    #@3b4
    instance-of v4, v0, Lcom/android/internal/view/RootViewSurfaceTaker;

    #@3b6
    if-eqz v4, :cond_e

    #@3b8
    .line 609
    move-object/from16 v0, p1

    #@3ba
    check-cast v0, Lcom/android/internal/view/RootViewSurfaceTaker;

    #@3bc
    move-object v4, v0

    #@3bd
    invoke-interface {v4}, Lcom/android/internal/view/RootViewSurfaceTaker;->willYouTakeTheInputQueue()Landroid/view/InputQueue$Callback;

    #@3c0
    move-result-object v4

    #@3c1
    .line 608
    move-object/from16 v0, p0

    #@3c3
    iput-object v4, v0, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    #@3c5
    .line 611
    :cond_e
    move-object/from16 v0, p0

    #@3c7
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    #@3c9
    if-eqz v4, :cond_10

    #@3cb
    .line 612
    move-object/from16 v0, p0

    #@3cd
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    #@3cf
    if-eqz v4, :cond_f

    #@3d1
    .line 613
    new-instance v4, Landroid/view/InputQueue;

    #@3d3
    invoke-direct {v4}, Landroid/view/InputQueue;-><init>()V

    #@3d6
    move-object/from16 v0, p0

    #@3d8
    iput-object v4, v0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    #@3da
    .line 614
    move-object/from16 v0, p0

    #@3dc
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    #@3de
    move-object/from16 v0, p0

    #@3e0
    iget-object v5, v0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    #@3e2
    invoke-interface {v4, v5}, Landroid/view/InputQueue$Callback;->onInputQueueCreated(Landroid/view/InputQueue;)V

    #@3e5
    .line 616
    :cond_f
    new-instance v4, Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    #@3e7
    move-object/from16 v0, p0

    #@3e9
    iget-object v5, v0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    #@3eb
    .line 617
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@3ee
    move-result-object v6

    #@3ef
    .line 616
    move-object/from16 v0, p0

    #@3f1
    invoke-direct {v4, v0, v5, v6}, Landroid/view/ViewRootImpl$WindowInputEventReceiver;-><init>(Landroid/view/ViewRootImpl;Landroid/view/InputChannel;Landroid/os/Looper;)V

    #@3f4
    move-object/from16 v0, p0

    #@3f6
    iput-object v4, v0, Landroid/view/ViewRootImpl;->mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    #@3f8
    .line 620
    :cond_10
    move-object/from16 v0, p1

    #@3fa
    move-object/from16 v1, p0

    #@3fc
    invoke-virtual {v0, v1}, Landroid/view/View;->assignParent(Landroid/view/ViewParent;)V

    #@3ff
    .line 621
    and-int/lit8 v4, v21, 0x1

    #@401
    if-eqz v4, :cond_14

    #@403
    const/4 v4, 0x1

    #@404
    :goto_2
    move-object/from16 v0, p0

    #@406
    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mAddedTouchMode:Z

    #@408
    .line 622
    and-int/lit8 v4, v21, 0x2

    #@40a
    if-eqz v4, :cond_15

    #@40c
    const/4 v4, 0x1

    #@40d
    :goto_3
    move-object/from16 v0, p0

    #@40f
    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mAppVisible:Z

    #@411
    .line 624
    move-object/from16 v0, p0

    #@413
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    #@415
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    #@418
    move-result v4

    #@419
    if-eqz v4, :cond_11

    #@41b
    .line 625
    move-object/from16 v0, p0

    #@41d
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    #@41f
    invoke-virtual {v4}, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->ensureConnection()V

    #@422
    .line 628
    :cond_11
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getImportantForAccessibility()I

    #@425
    move-result v4

    #@426
    if-nez v4, :cond_12

    #@428
    .line 629
    const/4 v4, 0x1

    #@429
    move-object/from16 v0, p1

    #@42b
    invoke-virtual {v0, v4}, Landroid/view/View;->setImportantForAccessibility(I)V

    #@42e
    .line 633
    :cond_12
    invoke-virtual/range {p2 .. p2}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    #@431
    move-result-object v15

    #@432
    .line 634
    .local v15, "counterSuffix":Ljava/lang/CharSequence;
    new-instance v4, Landroid/view/ViewRootImpl$SyntheticInputStage;

    #@434
    move-object/from16 v0, p0

    #@436
    invoke-direct {v4, v0}, Landroid/view/ViewRootImpl$SyntheticInputStage;-><init>(Landroid/view/ViewRootImpl;)V

    #@439
    move-object/from16 v0, p0

    #@43b
    iput-object v4, v0, Landroid/view/ViewRootImpl;->mSyntheticInputStage:Landroid/view/ViewRootImpl$InputStage;

    #@43d
    .line 635
    new-instance v24, Landroid/view/ViewRootImpl$ViewPostImeInputStage;

    #@43f
    move-object/from16 v0, p0

    #@441
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSyntheticInputStage:Landroid/view/ViewRootImpl$InputStage;

    #@443
    move-object/from16 v0, v24

    #@445
    move-object/from16 v1, p0

    #@447
    invoke-direct {v0, v1, v4}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;)V

    #@44a
    .line 636
    .local v24, "viewPostImeStage":Landroid/view/ViewRootImpl$InputStage;
    new-instance v19, Landroid/view/ViewRootImpl$NativePostImeInputStage;

    #@44c
    .line 637
    new-instance v4, Ljava/lang/StringBuilder;

    #@44e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@451
    const-string/jumbo v5, "aq:native-post-ime:"

    #@454
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@457
    move-result-object v4

    #@458
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@45b
    move-result-object v4

    #@45c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45f
    move-result-object v4

    #@460
    .line 636
    move-object/from16 v0, v19

    #@462
    move-object/from16 v1, p0

    #@464
    move-object/from16 v2, v24

    #@466
    invoke-direct {v0, v1, v2, v4}, Landroid/view/ViewRootImpl$NativePostImeInputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;Ljava/lang/String;)V

    #@469
    .line 638
    .local v19, "nativePostImeStage":Landroid/view/ViewRootImpl$InputStage;
    new-instance v17, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;

    #@46b
    move-object/from16 v0, v17

    #@46d
    move-object/from16 v1, p0

    #@46f
    move-object/from16 v2, v19

    #@471
    invoke-direct {v0, v1, v2}, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;)V

    #@474
    .line 639
    .local v17, "earlyPostImeStage":Landroid/view/ViewRootImpl$InputStage;
    new-instance v18, Landroid/view/ViewRootImpl$ImeInputStage;

    #@476
    .line 640
    new-instance v4, Ljava/lang/StringBuilder;

    #@478
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@47b
    const-string/jumbo v5, "aq:ime:"

    #@47e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@481
    move-result-object v4

    #@482
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@485
    move-result-object v4

    #@486
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@489
    move-result-object v4

    #@48a
    .line 639
    move-object/from16 v0, v18

    #@48c
    move-object/from16 v1, p0

    #@48e
    move-object/from16 v2, v17

    #@490
    invoke-direct {v0, v1, v2, v4}, Landroid/view/ViewRootImpl$ImeInputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;Ljava/lang/String;)V

    #@493
    .line 641
    .local v18, "imeStage":Landroid/view/ViewRootImpl$InputStage;
    new-instance v25, Landroid/view/ViewRootImpl$ViewPreImeInputStage;

    #@495
    move-object/from16 v0, v25

    #@497
    move-object/from16 v1, p0

    #@499
    move-object/from16 v2, v18

    #@49b
    invoke-direct {v0, v1, v2}, Landroid/view/ViewRootImpl$ViewPreImeInputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;)V

    #@49e
    .line 642
    .local v25, "viewPreImeStage":Landroid/view/ViewRootImpl$InputStage;
    new-instance v20, Landroid/view/ViewRootImpl$NativePreImeInputStage;

    #@4a0
    .line 643
    new-instance v4, Ljava/lang/StringBuilder;

    #@4a2
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@4a5
    const-string/jumbo v5, "aq:native-pre-ime:"

    #@4a8
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4ab
    move-result-object v4

    #@4ac
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@4af
    move-result-object v4

    #@4b0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b3
    move-result-object v4

    #@4b4
    .line 642
    move-object/from16 v0, v20

    #@4b6
    move-object/from16 v1, p0

    #@4b8
    move-object/from16 v2, v25

    #@4ba
    invoke-direct {v0, v1, v2, v4}, Landroid/view/ViewRootImpl$NativePreImeInputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;Ljava/lang/String;)V

    #@4bd
    .line 645
    .local v20, "nativePreImeStage":Landroid/view/ViewRootImpl$InputStage;
    move-object/from16 v0, v20

    #@4bf
    move-object/from16 v1, p0

    #@4c1
    iput-object v0, v1, Landroid/view/ViewRootImpl;->mFirstInputStage:Landroid/view/ViewRootImpl$InputStage;

    #@4c3
    .line 646
    move-object/from16 v0, v17

    #@4c5
    move-object/from16 v1, p0

    #@4c7
    iput-object v0, v1, Landroid/view/ViewRootImpl;->mFirstPostImeInputStage:Landroid/view/ViewRootImpl$InputStage;

    #@4c9
    .line 647
    new-instance v4, Ljava/lang/StringBuilder;

    #@4cb
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@4ce
    const-string/jumbo v5, "aq:pending:"

    #@4d1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d4
    move-result-object v4

    #@4d5
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@4d8
    move-result-object v4

    #@4d9
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4dc
    move-result-object v4

    #@4dd
    move-object/from16 v0, p0

    #@4df
    iput-object v4, v0, Landroid/view/ViewRootImpl;->mPendingInputEventQueueLengthCounterName:Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@4e1
    .end local v14    # "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    .end local v15    # "counterSuffix":Ljava/lang/CharSequence;
    .end local v17    # "earlyPostImeStage":Landroid/view/ViewRootImpl$InputStage;
    .end local v18    # "imeStage":Landroid/view/ViewRootImpl$InputStage;
    .end local v19    # "nativePostImeStage":Landroid/view/ViewRootImpl$InputStage;
    .end local v20    # "nativePreImeStage":Landroid/view/ViewRootImpl$InputStage;
    .end local v21    # "res":I
    .end local v22    # "restore":Z
    .end local v24    # "viewPostImeStage":Landroid/view/ViewRootImpl$InputStage;
    .end local v25    # "viewPreImeStage":Landroid/view/ViewRootImpl$InputStage;
    :cond_13
    monitor-exit p0

    #@4e2
    .line 447
    return-void

    #@4e3
    .line 621
    .restart local v14    # "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    .restart local v21    # "res":I
    .restart local v22    # "restore":Z
    :cond_14
    const/4 v4, 0x0

    #@4e4
    goto/16 :goto_2

    #@4e6
    .line 622
    :cond_15
    const/4 v4, 0x0

    #@4e7
    goto/16 :goto_3

    #@4e9
    .line 564
    nop

    #@4ea
    :pswitch_data_0
    .packed-switch -0xa
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method setWindowStopped(Z)V
    .locals 1
    .param p1, "stopped"    # Z

    #@0
    .prologue
    .line 994
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mStopped:Z

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 995
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mStopped:Z

    #@6
    .line 996
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mStopped:Z

    #@8
    if-nez v0, :cond_0

    #@a
    .line 997
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    #@d
    .line 993
    :cond_0
    return-void
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 1
    .param p1, "originalView"    # Landroid/view/View;

    #@0
    .prologue
    .line 6309
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .param p1, "originalView"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;

    #@0
    .prologue
    .line 6314
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 1
    .param p1, "originalView"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;
    .param p3, "type"    # I

    #@0
    .prologue
    .line 6320
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public synthesizeInputEvent(Landroid/view/InputEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/InputEvent;

    #@0
    .prologue
    .line 6191
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@2
    const/16 v2, 0x18

    #@4
    invoke-virtual {v1, v2, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@7
    move-result-object v0

    #@8
    .line 6192
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    #@9
    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    #@c
    .line 6193
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@e
    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    #@11
    .line 6190
    return-void
.end method

.method transformMatrixToGlobal(Landroid/graphics/Matrix;)V
    .locals 2
    .param p1, "m"    # Landroid/graphics/Matrix;

    #@0
    .prologue
    .line 1238
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@2
    iget v0, v0, Landroid/view/View$AttachInfo;->mWindowLeft:I

    #@4
    int-to-float v0, v0

    #@5
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@7
    iget v1, v1, Landroid/view/View$AttachInfo;->mWindowTop:I

    #@9
    int-to-float v1, v1

    #@a
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    #@d
    .line 1237
    return-void
.end method

.method transformMatrixToLocal(Landroid/graphics/Matrix;)V
    .locals 2
    .param p1, "m"    # Landroid/graphics/Matrix;

    #@0
    .prologue
    .line 1248
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@2
    iget v0, v0, Landroid/view/View$AttachInfo;->mWindowLeft:I

    #@4
    neg-int v0, v0

    #@5
    int-to-float v0, v0

    #@6
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@8
    iget v1, v1, Landroid/view/View$AttachInfo;->mWindowTop:I

    #@a
    neg-int v1, v1

    #@b
    int-to-float v1, v1

    #@c
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    #@f
    .line 1247
    return-void
.end method

.method unscheduleConsumeBatchedInput()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 5977
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 5978
    iput-boolean v3, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    #@7
    .line 5979
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    #@9
    .line 5980
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mConsumedBatchedInputRunnable:Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;

    #@b
    const/4 v2, 0x0

    #@c
    .line 5979
    invoke-virtual {v0, v3, v1, v2}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    #@f
    .line 5976
    :cond_0
    return-void
.end method

.method unscheduleTraversals()V
    .locals 4

    #@0
    .prologue
    .line 1090
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1091
    const/4 v0, 0x0

    #@5
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    #@7
    .line 1092
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@9
    invoke-virtual {v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->getLooper()Landroid/os/Looper;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    #@10
    move-result-object v0

    #@11
    iget v1, p0, Landroid/view/ViewRootImpl;->mTraversalBarrier:I

    #@13
    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->removeSyncBarrier(I)V

    #@16
    .line 1093
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    #@18
    .line 1094
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTraversalRunnable:Landroid/view/ViewRootImpl$TraversalRunnable;

    #@1a
    const/4 v2, 0x2

    #@1b
    const/4 v3, 0x0

    #@1c
    .line 1093
    invoke-virtual {v0, v2, v1, v3}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    #@1f
    .line 1089
    :cond_0
    return-void
.end method

.method updateConfiguration(Landroid/content/res/Configuration;Z)V
    .locals 7
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "force"    # Z

    #@0
    .prologue
    .line 3121
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    #@2
    invoke-virtual {v5}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    #@5
    move-result-object v0

    #@6
    .line 3122
    .local v0, "ci":Landroid/content/res/CompatibilityInfo;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    #@8
    invoke-virtual {v0, v5}, Landroid/content/res/CompatibilityInfo;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v5

    #@c
    if-nez v5, :cond_0

    #@e
    .line 3123
    new-instance v1, Landroid/content/res/Configuration;

    #@10
    invoke-direct {v1, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    #@13
    .line 3124
    .end local p1    # "config":Landroid/content/res/Configuration;
    .local v1, "config":Landroid/content/res/Configuration;
    iget v5, p0, Landroid/view/ViewRootImpl;->mNoncompatDensity:I

    #@15
    invoke-virtual {v0, v5, v1}, Landroid/content/res/CompatibilityInfo;->applyToConfiguration(ILandroid/content/res/Configuration;)V

    #@18
    move-object p1, v1

    #@19
    .line 3127
    .end local v1    # "config":Landroid/content/res/Configuration;
    .restart local p1    # "config":Landroid/content/res/Configuration;
    :cond_0
    sget-object v6, Landroid/view/ViewRootImpl;->sConfigCallbacks:Ljava/util/ArrayList;

    #@1b
    monitor-enter v6

    #@1c
    .line 3128
    :try_start_0
    sget-object v5, Landroid/view/ViewRootImpl;->sConfigCallbacks:Ljava/util/ArrayList;

    #@1e
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@21
    move-result v5

    #@22
    add-int/lit8 v3, v5, -0x1

    #@24
    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    #@26
    .line 3129
    sget-object v5, Landroid/view/ViewRootImpl;->sConfigCallbacks:Ljava/util/ArrayList;

    #@28
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2b
    move-result-object v5

    #@2c
    check-cast v5, Landroid/content/ComponentCallbacks;

    #@2e
    invoke-interface {v5, p1}, Landroid/content/ComponentCallbacks;->onConfigurationChanged(Landroid/content/res/Configuration;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@31
    .line 3128
    add-int/lit8 v3, v3, -0x1

    #@33
    goto :goto_0

    #@34
    :cond_1
    monitor-exit v6

    #@35
    .line 3132
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@37
    if-eqz v5, :cond_4

    #@39
    .line 3136
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@3b
    invoke-virtual {v5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    #@3e
    move-result-object v5

    #@3f
    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@42
    move-result-object p1

    #@43
    .line 3137
    if-nez p2, :cond_2

    #@45
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mLastConfiguration:Landroid/content/res/Configuration;

    #@47
    invoke-virtual {v5, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    #@4a
    move-result v5

    #@4b
    if-eqz v5, :cond_4

    #@4d
    .line 3138
    :cond_2
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mLastConfiguration:Landroid/content/res/Configuration;

    #@4f
    invoke-virtual {v5}, Landroid/content/res/Configuration;->getLayoutDirection()I

    #@52
    move-result v4

    #@53
    .line 3139
    .local v4, "lastLayoutDirection":I
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    #@56
    move-result v2

    #@57
    .line 3140
    .local v2, "currentLayoutDirection":I
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mLastConfiguration:Landroid/content/res/Configuration;

    #@59
    invoke-virtual {v5, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    #@5c
    .line 3141
    if-eq v4, v2, :cond_3

    #@5e
    .line 3142
    iget v5, p0, Landroid/view/ViewRootImpl;->mViewLayoutDirectionInitial:I

    #@60
    const/4 v6, 0x2

    #@61
    if-ne v5, v6, :cond_3

    #@63
    .line 3143
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@65
    invoke-virtual {v5, v2}, Landroid/view/View;->setLayoutDirection(I)V

    #@68
    .line 3145
    :cond_3
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@6a
    invoke-virtual {v5, p1}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    #@6d
    .line 3115
    .end local v2    # "currentLayoutDirection":I
    .end local v4    # "lastLayoutDirection":I
    :cond_4
    return-void

    #@6e
    .line 3127
    .end local v3    # "i":I
    :catchall_0
    move-exception v5

    #@6f
    monitor-exit v6

    #@70
    throw v5
.end method

.method public windowFocusChanged(ZZ)V
    .locals 4
    .param p1, "hasFocus"    # Z
    .param p2, "inTouchMode"    # Z

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 6227
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    #@5
    move-result-object v0

    #@6
    .line 6228
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x6

    #@7
    iput v1, v0, Landroid/os/Message;->what:I

    #@9
    .line 6229
    if-eqz p1, :cond_0

    #@b
    move v1, v2

    #@c
    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    #@e
    .line 6230
    if-eqz p2, :cond_1

    #@10
    :goto_1
    iput v2, v0, Landroid/os/Message;->arg2:I

    #@12
    .line 6231
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@14
    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    #@17
    .line 6226
    return-void

    #@18
    :cond_0
    move v1, v3

    #@19
    .line 6229
    goto :goto_0

    #@1a
    :cond_1
    move v2, v3

    #@1b
    .line 6230
    goto :goto_1
.end method

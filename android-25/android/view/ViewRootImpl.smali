.class public final Landroid/view/ViewRootImpl;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Landroid/view/ViewParent;
.implements Landroid/view/View$AttachInfo$Callbacks;
.implements Landroid/view/ThreadedRenderer$HardwareDrawCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewRootImpl$1;,
        Landroid/view/ViewRootImpl$AccessibilityInteractionConnection;,
        Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;,
        Landroid/view/ViewRootImpl$AsyncInputStage;,
        Landroid/view/ViewRootImpl$CalledFromWrongThreadException;,
        Landroid/view/ViewRootImpl$ConsumeBatchedInputImmediatelyRunnable;,
        Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;,
        Landroid/view/ViewRootImpl$EarlyPostImeInputStage;,
        Landroid/view/ViewRootImpl$HighContrastTextManager;,
        Landroid/view/ViewRootImpl$ImeInputStage;,
        Landroid/view/ViewRootImpl$InputStage;,
        Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;,
        Landroid/view/ViewRootImpl$NativePostImeInputStage;,
        Landroid/view/ViewRootImpl$NativePreImeInputStage;,
        Landroid/view/ViewRootImpl$QueuedInputEvent;,
        Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;,
        Landroid/view/ViewRootImpl$SyntheticInputStage;,
        Landroid/view/ViewRootImpl$SyntheticJoystickHandler;,
        Landroid/view/ViewRootImpl$SyntheticKeyboardHandler;,
        Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;,
        Landroid/view/ViewRootImpl$SyntheticTrackballHandler;,
        Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;,
        Landroid/view/ViewRootImpl$TakenSurfaceHolder;,
        Landroid/view/ViewRootImpl$TrackballAxis;,
        Landroid/view/ViewRootImpl$TraversalRunnable;,
        Landroid/view/ViewRootImpl$ViewPostImeInputStage;,
        Landroid/view/ViewRootImpl$ViewPreImeInputStage;,
        Landroid/view/ViewRootImpl$ViewRootHandler;,
        Landroid/view/ViewRootImpl$W;,
        Landroid/view/ViewRootImpl$WindowInputEventReceiver;
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

.field private static final DEBUG_KEEP_SCREEN_ON:Z = false

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

.field private static final MSG_DISPATCH_WINDOW_SHOWN:I = 0x19

.field private static final MSG_INVALIDATE:I = 0x1

.field private static final MSG_INVALIDATE_RECT:I = 0x2

.field private static final MSG_INVALIDATE_WORLD:I = 0x16

.field private static final MSG_PROCESS_INPUT_EVENTS:I = 0x13

.field private static final MSG_REQUEST_KEYBOARD_SHORTCUTS:I = 0x1a

.field private static final MSG_RESIZED:I = 0x4

.field private static final MSG_RESIZED_REPORT:I = 0x5

.field private static final MSG_SYNTHESIZE_INPUT_EVENT:I = 0x18

.field private static final MSG_UPDATE_CONFIGURATION:I = 0x12

.field private static final MSG_UPDATE_POINTER_ICON:I = 0x1b

.field private static final MSG_WINDOW_FOCUS_CHANGED:I = 0x6

.field private static final MSG_WINDOW_MOVED:I = 0x17

.field public static final PROPERTY_EMULATOR_WIN_OUTSET_BOTTOM_PX:Ljava/lang/String; = "ro.emu.win_outset_bottom_px"

.field private static final PROPERTY_PROFILE_RENDERING:Ljava/lang/String; = "viewroot.profile_rendering"

.field private static final TAG:Ljava/lang/String; = "ViewRootImpl"

.field private static final USE_MT_RENDERER:Z = true

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
            "Landroid/view/HandlerActionQueue;",
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

.field private mActivityRelaunched:Z

.field mAdded:Z

.field mAddedTouchMode:Z

.field mAppVisible:Z

.field mApplyInsetsRequested:Z

.field final mAttachInfo:Landroid/view/View$AttachInfo;

.field mAudioManager:Landroid/media/AudioManager;

.field final mBasePackageName:Ljava/lang/String;

.field private mCanvasOffsetX:I

.field private mCanvasOffsetY:I

.field mCapturingView:Landroid/view/View;

.field mChoreographer:Landroid/view/Choreographer;

.field mClientWindowLayoutFlags:I

.field final mConsumeBatchedInputImmediatelyRunnable:Landroid/view/ViewRootImpl$ConsumeBatchedInputImmediatelyRunnable;

.field mConsumeBatchedInputImmediatelyScheduled:Z

.field mConsumeBatchedInputScheduled:Z

.field final mConsumedBatchedInputRunnable:Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;

.field final mContext:Landroid/content/Context;

.field mCurScrollY:I

.field mCurrentDragView:Landroid/view/View;

.field private mCustomPointerIcon:Landroid/view/PointerIcon;

.field private final mDensity:I

.field mDirty:Landroid/graphics/Rect;

.field final mDispatchContentInsets:Landroid/graphics/Rect;

.field final mDispatchStableInsets:Landroid/graphics/Rect;

.field mDisplay:Landroid/view/Display;

.field private final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field mDragDescription:Landroid/content/ClipDescription;

.field final mDragPoint:Landroid/graphics/PointF;

.field private mDragResizing:Z

.field mDrawingAllowed:Z

.field mFallbackEventHandler:Landroid/view/FallbackEventHandler;

.field mFirst:Z

.field mFirstInputStage:Landroid/view/ViewRootImpl$InputStage;

.field mFirstPostImeInputStage:Landroid/view/ViewRootImpl$InputStage;

.field private mForceDecorViewVisibility:Z

.field mForceNextWindowRelayout:Z

.field private mFpsNumFrames:I

.field private mFpsPrevTime:J

.field private mFpsStartTime:J

.field mFullRedrawNeeded:Z

.field mHadWindowFocus:Z

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

.field private mInvalidateRootRequested:Z

.field mIsAmbientMode:Z

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

.field mLastTouchSource:I

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

.field mLostWindowFocus:Z

.field private mNeedsHwRendererSetup:Z

.field mNewSurfaceNeeded:Z

.field private final mNoncompatDensity:I

.field mOrigWindowType:I

.field mPausedForTransition:Z

.field mPendingAlwaysConsumeNavBar:Z

.field final mPendingBackDropFrame:Landroid/graphics/Rect;

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

.field private mPointerIconType:I

.field final mPreviousTransparentRegion:Landroid/graphics/Region;

.field mProcessInputEventsScheduled:Z

.field private mProfile:Z

.field private mProfileRendering:Z

.field private mQueuedInputEventPool:Landroid/view/ViewRootImpl$QueuedInputEvent;

.field private mQueuedInputEventPoolSize:I

.field private mRemoved:Z

.field private mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

.field private mRenderProfilingEnabled:Z

.field mReportNextDraw:Z

.field private mResizeMode:I

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

.field private mTag:Ljava/lang/String;

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

.field final mWindowCallbacks:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mWindowCallbacks"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/WindowCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field mWindowDrawCountDown:Ljava/util/concurrent/CountDownLatch;

.field final mWindowSession:Landroid/view/IWindowSession;


# direct methods
.method static synthetic -get0(Landroid/view/ViewRootImpl;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mDragResizing:Z

    #@2
    return v0
.end method

.method static synthetic -get1(Landroid/view/ViewRootImpl;)Landroid/view/Choreographer$FrameCallback;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/view/ViewRootImpl;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mRenderProfilingEnabled:Z

    #@2
    return v0
.end method

.method static synthetic -get3(Landroid/view/ViewRootImpl;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/view/ViewRootImpl;->mResizeMode:I

    #@2
    return v0
.end method

.method static synthetic -get4(Landroid/view/ViewRootImpl;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Landroid/view/ViewRootImpl;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/view/ViewRootImpl;->mPointerIconType:I

    #@2
    return p1
.end method

.method static synthetic -set1(Landroid/view/ViewRootImpl;Z)Z
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

.method static synthetic -wrap10(Landroid/view/ViewRootImpl;Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->resetPointerIcon(Landroid/view/MotionEvent;)V

    #@3
    return-void
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

.method static synthetic -wrap4(Landroid/view/ViewRootImpl;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->updatePointerIcon(Landroid/view/MotionEvent;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap5(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .locals 0
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->finishInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    #@3
    return-void
.end method

.method static synthetic -wrap6(Landroid/view/View;)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;

    #@0
    .prologue
    invoke-static {p0}, Landroid/view/ViewRootImpl;->forceLayout(Landroid/view/View;)V

    #@3
    return-void
.end method

.method static synthetic -wrap7(Landroid/view/ViewRootImpl;Landroid/view/DragEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/DragEvent;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->handleDragEvent(Landroid/view/DragEvent;)V

    #@3
    return-void
.end method

.method static synthetic -wrap8(Landroid/view/ViewRootImpl;Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "frame"    # Landroid/graphics/Rect;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->maybeHandleWindowMove(Landroid/graphics/Rect;)V

    #@3
    return-void
.end method

.method static synthetic -wrap9(Landroid/view/ViewRootImpl;Z)V
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
    .line 154
    new-instance v0, Ljava/lang/ThreadLocal;

    #@2
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    #@5
    sput-object v0, Landroid/view/ViewRootImpl;->sRunQueues:Ljava/lang/ThreadLocal;

    #@7
    .line 156
    new-instance v0, Ljava/util/ArrayList;

    #@9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@c
    sput-object v0, Landroid/view/ViewRootImpl;->sFirstDrawHandlers:Ljava/util/ArrayList;

    #@e
    .line 157
    const/4 v0, 0x0

    #@f
    sput-boolean v0, Landroid/view/ViewRootImpl;->sFirstDrawComplete:Z

    #@11
    .line 159
    new-instance v0, Ljava/util/ArrayList;

    #@13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@16
    sput-object v0, Landroid/view/ViewRootImpl;->sConfigCallbacks:Ljava/util/ArrayList;

    #@18
    .line 340
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    #@1a
    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    #@1d
    sput-object v0, Landroid/view/ViewRootImpl;->mResizeInterpolator:Landroid/view/animation/Interpolator;

    #@1f
    .line 114
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
    .line 411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    .line 166
    new-instance v0, Ljava/util/ArrayList;

    #@b
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@e
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    #@10
    .line 173
    const/4 v0, 0x2

    #@11
    new-array v0, v0, [I

    #@13
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mTmpLocation:[I

    #@15
    .line 175
    new-instance v0, Landroid/util/TypedValue;

    #@17
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    #@1a
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mTmpValue:Landroid/util/TypedValue;

    #@1c
    .line 181
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    #@1e
    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    #@21
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@23
    .line 198
    iput-boolean v4, p0, Landroid/view/ViewRootImpl;->mAppVisible:Z

    #@25
    .line 203
    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mForceDecorViewVisibility:Z

    #@27
    .line 204
    iput v3, p0, Landroid/view/ViewRootImpl;->mOrigWindowType:I

    #@29
    .line 218
    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mStopped:Z

    #@2b
    .line 222
    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mIsAmbientMode:Z

    #@2d
    .line 225
    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mPausedForTransition:Z

    #@2f
    .line 227
    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mLastInCompatMode:Z

    #@31
    .line 297
    const-string/jumbo v0, "pq"

    #@34
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPendingInputEventQueueLengthCounterName:Ljava/lang/String;

    #@36
    .line 303
    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    #@38
    .line 304
    iput v2, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChangesFlag:I

    #@3a
    .line 308
    new-instance v0, Landroid/view/Surface;

    #@3c
    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    #@3f
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    #@41
    .line 316
    new-instance v0, Landroid/graphics/Rect;

    #@43
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@46
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    #@48
    .line 317
    new-instance v0, Landroid/graphics/Rect;

    #@4a
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@4d
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    #@4f
    .line 318
    new-instance v0, Landroid/graphics/Rect;

    #@51
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@54
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    #@56
    .line 319
    new-instance v0, Landroid/graphics/Rect;

    #@58
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@5b
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    #@5d
    .line 320
    new-instance v0, Landroid/graphics/Rect;

    #@5f
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@62
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPendingOutsets:Landroid/graphics/Rect;

    #@64
    .line 321
    new-instance v0, Landroid/graphics/Rect;

    #@66
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@69
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPendingBackDropFrame:Landroid/graphics/Rect;

    #@6b
    .line 324
    new-instance v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    #@6d
    invoke-direct {v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;-><init>()V

    #@70
    .line 323
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mLastGivenInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    #@72
    .line 326
    new-instance v0, Landroid/graphics/Rect;

    #@74
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@77
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mDispatchContentInsets:Landroid/graphics/Rect;

    #@79
    .line 327
    new-instance v0, Landroid/graphics/Rect;

    #@7b
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@7e
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mDispatchStableInsets:Landroid/graphics/Rect;

    #@80
    .line 331
    new-instance v0, Landroid/content/res/Configuration;

    #@82
    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    #@85
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mLastConfiguration:Landroid/content/res/Configuration;

    #@87
    .line 332
    new-instance v0, Landroid/content/res/Configuration;

    #@89
    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    #@8c
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPendingConfiguration:Landroid/content/res/Configuration;

    #@8e
    .line 349
    new-instance v0, Landroid/graphics/PointF;

    #@90
    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    #@93
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mDragPoint:Landroid/graphics/PointF;

    #@95
    .line 350
    new-instance v0, Landroid/graphics/PointF;

    #@97
    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    #@9a
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mLastTouchPoint:Landroid/graphics/PointF;

    #@9c
    .line 358
    iput-wide v6, p0, Landroid/view/ViewRootImpl;->mFpsStartTime:J

    #@9e
    .line 359
    iput-wide v6, p0, Landroid/view/ViewRootImpl;->mFpsPrevTime:J

    #@a0
    .line 362
    iput v4, p0, Landroid/view/ViewRootImpl;->mPointerIconType:I

    #@a2
    .line 363
    iput-object v1, p0, Landroid/view/ViewRootImpl;->mCustomPointerIcon:Landroid/view/PointerIcon;

    #@a4
    .line 384
    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mInLayout:Z

    #@a6
    .line 385
    new-instance v0, Ljava/util/ArrayList;

    #@a8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@ab
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mLayoutRequesters:Ljava/util/ArrayList;

    #@ad
    .line 386
    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mHandlingLayoutInLayoutRequest:Z

    #@af
    .line 399
    invoke-static {}, Landroid/view/InputEventConsistencyVerifier;->isInstrumentationEnabled()Z

    #@b2
    move-result v0

    #@b3
    if-eqz v0, :cond_0

    #@b5
    .line 400
    new-instance v0, Landroid/view/InputEventConsistencyVerifier;

    #@b7
    invoke-direct {v0, p0, v2}, Landroid/view/InputEventConsistencyVerifier;-><init>(Ljava/lang/Object;I)V

    #@ba
    .line 398
    :goto_0
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    #@bc
    .line 409
    const-string/jumbo v0, "ViewRootImpl"

    #@bf
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    #@c1
    .line 487
    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mProfile:Z

    #@c3
    .line 986
    new-instance v0, Landroid/view/ViewRootImpl$1;

    #@c5
    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$1;-><init>(Landroid/view/ViewRootImpl;)V

    #@c8
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    #@ca
    .line 3704
    new-instance v0, Landroid/view/ViewRootImpl$ViewRootHandler;

    #@cc
    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$ViewRootHandler;-><init>(Landroid/view/ViewRootImpl;)V

    #@cf
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@d1
    .line 6340
    new-instance v0, Landroid/view/ViewRootImpl$TraversalRunnable;

    #@d3
    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$TraversalRunnable;-><init>(Landroid/view/ViewRootImpl;)V

    #@d6
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mTraversalRunnable:Landroid/view/ViewRootImpl$TraversalRunnable;

    #@d8
    .line 6376
    new-instance v0, Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;

    #@da
    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;-><init>(Landroid/view/ViewRootImpl;)V

    #@dd
    .line 6375
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mConsumedBatchedInputRunnable:Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;

    #@df
    .line 6386
    new-instance v0, Landroid/view/ViewRootImpl$ConsumeBatchedInputImmediatelyRunnable;

    #@e1
    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$ConsumeBatchedInputImmediatelyRunnable;-><init>(Landroid/view/ViewRootImpl;)V

    #@e4
    .line 6385
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputImmediatelyRunnable:Landroid/view/ViewRootImpl$ConsumeBatchedInputImmediatelyRunnable;

    #@e6
    .line 6472
    new-instance v0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;

    #@e8
    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;-><init>(Landroid/view/ViewRootImpl;)V

    #@eb
    .line 6471
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mInvalidateOnAnimationRunnable:Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;

    #@ed
    .line 412
    iput-object p1, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    #@ef
    .line 413
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    #@f2
    move-result-object v0

    #@f3
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    #@f5
    .line 414
    iput-object p2, p0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    #@f7
    .line 415
    invoke-virtual {p1}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    #@fa
    move-result-object v0

    #@fb
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mBasePackageName:Ljava/lang/String;

    #@fd
    .line 416
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@100
    move-result-object v0

    #@101
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mThread:Ljava/lang/Thread;

    #@103
    .line 417
    new-instance v0, Landroid/view/WindowLeaked;

    #@105
    invoke-direct {v0, v1}, Landroid/view/WindowLeaked;-><init>(Ljava/lang/String;)V

    #@108
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mLocation:Landroid/view/WindowLeaked;

    #@10a
    .line 418
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLocation:Landroid/view/WindowLeaked;

    #@10c
    invoke-virtual {v0}, Landroid/view/WindowLeaked;->fillInStackTrace()Ljava/lang/Throwable;

    #@10f
    .line 419
    iput v3, p0, Landroid/view/ViewRootImpl;->mWidth:I

    #@111
    .line 420
    iput v3, p0, Landroid/view/ViewRootImpl;->mHeight:I

    #@113
    .line 421
    new-instance v0, Landroid/graphics/Rect;

    #@115
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@118
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mDirty:Landroid/graphics/Rect;

    #@11a
    .line 422
    new-instance v0, Landroid/graphics/Rect;

    #@11c
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@11f
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    #@121
    .line 423
    new-instance v0, Landroid/graphics/Rect;

    #@123
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@126
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mVisRect:Landroid/graphics/Rect;

    #@128
    .line 424
    new-instance v0, Landroid/graphics/Rect;

    #@12a
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@12d
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    #@12f
    .line 425
    new-instance v0, Landroid/view/ViewRootImpl$W;

    #@131
    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$W;-><init>(Landroid/view/ViewRootImpl;)V

    #@134
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    #@136
    .line 426
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@139
    move-result-object v0

    #@13a
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@13c
    iput v0, p0, Landroid/view/ViewRootImpl;->mTargetSdkVersion:I

    #@13e
    .line 427
    const/16 v0, 0x8

    #@140
    iput v0, p0, Landroid/view/ViewRootImpl;->mViewVisibility:I

    #@142
    .line 428
    new-instance v0, Landroid/graphics/Region;

    #@144
    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    #@147
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    #@149
    .line 429
    new-instance v0, Landroid/graphics/Region;

    #@14b
    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    #@14e
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPreviousTransparentRegion:Landroid/graphics/Region;

    #@150
    .line 430
    iput-boolean v4, p0, Landroid/view/ViewRootImpl;->mFirst:Z

    #@152
    .line 431
    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    #@154
    .line 432
    new-instance v0, Landroid/view/View$AttachInfo;

    #@156
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    #@158
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    #@15a
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@15c
    move-object v3, p2

    #@15d
    move-object v4, p0

    #@15e
    move-object v6, p0

    #@15f
    invoke-direct/range {v0 .. v6}, Landroid/view/View$AttachInfo;-><init>(Landroid/view/IWindowSession;Landroid/view/IWindow;Landroid/view/Display;Landroid/view/ViewRootImpl;Landroid/os/Handler;Landroid/view/View$AttachInfo$Callbacks;)V

    #@162
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@164
    .line 433
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    #@167
    move-result-object v0

    #@168
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    #@16a
    .line 435
    new-instance v0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    #@16c
    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;-><init>(Landroid/view/ViewRootImpl;)V

    #@16f
    .line 434
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    #@171
    .line 436
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    #@173
    .line 437
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    #@175
    .line 436
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    #@178
    .line 438
    new-instance v0, Landroid/view/ViewRootImpl$HighContrastTextManager;

    #@17a
    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$HighContrastTextManager;-><init>(Landroid/view/ViewRootImpl;)V

    #@17d
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mHighContrastTextManager:Landroid/view/ViewRootImpl$HighContrastTextManager;

    #@17f
    .line 439
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    #@181
    .line 440
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHighContrastTextManager:Landroid/view/ViewRootImpl$HighContrastTextManager;

    #@183
    .line 439
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->addHighTextContrastStateChangeListener(Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;)Z

    #@186
    .line 441
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    #@189
    move-result-object v0

    #@18a
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mViewConfiguration:Landroid/view/ViewConfiguration;

    #@18c
    .line 442
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@18f
    move-result-object v0

    #@190
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@193
    move-result-object v0

    #@194
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    #@196
    iput v0, p0, Landroid/view/ViewRootImpl;->mDensity:I

    #@198
    .line 443
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@19b
    move-result-object v0

    #@19c
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@19f
    move-result-object v0

    #@1a0
    iget v0, v0, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    #@1a2
    iput v0, p0, Landroid/view/ViewRootImpl;->mNoncompatDensity:I

    #@1a4
    .line 444
    new-instance v0, Lcom/android/internal/policy/PhoneFallbackEventHandler;

    #@1a6
    invoke-direct {v0, p1}, Lcom/android/internal/policy/PhoneFallbackEventHandler;-><init>(Landroid/content/Context;)V

    #@1a9
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mFallbackEventHandler:Landroid/view/FallbackEventHandler;

    #@1ab
    .line 445
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    #@1ae
    move-result-object v0

    #@1af
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    #@1b1
    .line 446
    const-string/jumbo v0, "display"

    #@1b4
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@1b7
    move-result-object v0

    #@1b8
    check-cast v0, Landroid/hardware/display/DisplayManager;

    #@1ba
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    #@1bc
    .line 447
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->loadSystemProperties()V

    #@1bf
    .line 411
    return-void

    #@1c0
    :cond_0
    move-object v0, v1

    #@1c1
    .line 400
    goto/16 :goto_0
.end method

.method public static addConfigCallback(Landroid/content/ComponentCallbacks;)V
    .locals 2
    .param p0, "callback"    # Landroid/content/ComponentCallbacks;

    #@0
    .prologue
    .line 459
    sget-object v1, Landroid/view/ViewRootImpl;->sConfigCallbacks:Ljava/util/ArrayList;

    #@2
    monitor-enter v1

    #@3
    .line 460
    :try_start_0
    sget-object v0, Landroid/view/ViewRootImpl;->sConfigCallbacks:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 458
    return-void

    #@a
    .line 459
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
    .line 451
    sget-object v1, Landroid/view/ViewRootImpl;->sFirstDrawHandlers:Ljava/util/ArrayList;

    #@2
    monitor-enter v1

    #@3
    .line 452
    :try_start_0
    sget-boolean v0, Landroid/view/ViewRootImpl;->sFirstDrawComplete:Z

    #@5
    if-nez v0, :cond_0

    #@7
    .line 453
    sget-object v0, Landroid/view/ViewRootImpl;->sFirstDrawHandlers:Ljava/util/ArrayList;

    #@9
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    :cond_0
    monitor-exit v1

    #@d
    .line 450
    return-void

    #@e
    .line 451
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
    .line 6267
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
    .line 6268
    check-cast v3, Landroid/view/MotionEvent;

    #@d
    .line 6270
    .local v3, "motion":Landroid/view/MotionEvent;
    const/16 v2, 0x60

    #@f
    .line 6271
    .local v2, "mask":I
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getButtonState()I

    #@12
    move-result v0

    #@13
    .line 6272
    .local v0, "buttonState":I
    and-int/lit8 v4, v0, 0x60

    #@15
    shr-int/lit8 v1, v4, 0x4

    #@17
    .line 6273
    .local v1, "compatButtonState":I
    if-eqz v1, :cond_0

    #@19
    .line 6274
    or-int v4, v0, v1

    #@1b
    invoke-virtual {v3, v4}, Landroid/view/MotionEvent;->setButtonState(I)V

    #@1e
    .line 6266
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
    .line 1267
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@2
    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1268
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@8
    or-int/lit16 v0, v0, 0x80

    #@a
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@c
    .line 1263
    :goto_0
    return-void

    #@d
    .line 1270
    :cond_0
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@f
    and-int/lit16 v0, v0, -0x81

    #@11
    .line 1271
    iget v1, p0, Landroid/view/ViewRootImpl;->mClientWindowLayoutFlags:I

    #@13
    and-int/lit16 v1, v1, 0x80

    #@15
    .line 1270
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
    .line 5467
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@3
    iget-boolean v1, v1, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    #@5
    if-nez v1, :cond_0

    #@7
    .line 5468
    return v2

    #@8
    .line 5472
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    #@b
    move-result v0

    #@c
    .line 5473
    .local v0, "action":I
    if-eqz v0, :cond_1

    #@e
    const/4 v1, 0x2

    #@f
    if-eq v0, v1, :cond_1

    #@11
    .line 5474
    return v2

    #@12
    .line 5478
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    #@15
    move-result v1

    #@16
    and-int/lit8 v1, v1, 0x4

    #@18
    if-eqz v1, :cond_2

    #@1a
    .line 5479
    return v2

    #@1b
    .line 5487
    :cond_2
    invoke-static {p1}, Landroid/view/ViewRootImpl;->isNavigationKey(Landroid/view/KeyEvent;)Z

    #@1e
    move-result v1

    #@1f
    if-eqz v1, :cond_3

    #@21
    .line 5488
    invoke-virtual {p0, v2}, Landroid/view/ViewRootImpl;->ensureTouchMode(Z)Z

    #@24
    move-result v1

    #@25
    return v1

    #@26
    .line 5494
    :cond_3
    invoke-static {p1}, Landroid/view/ViewRootImpl;->isTypingKey(Landroid/view/KeyEvent;)Z

    #@29
    move-result v1

    #@2a
    if-eqz v1, :cond_4

    #@2c
    .line 5495
    invoke-virtual {p0, v2}, Landroid/view/ViewRootImpl;->ensureTouchMode(Z)Z

    #@2f
    .line 5496
    return v2

    #@30
    .line 5499
    :cond_4
    return v2
.end method

.method private collectViewAttributes()Z
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1276
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@3
    iget-boolean v2, v2, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    #@5
    if-eqz v2, :cond_2

    #@7
    .line 1278
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@9
    iput-boolean v5, v2, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    #@b
    .line 1279
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@d
    iget-boolean v0, v2, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    #@f
    .line 1280
    .local v0, "oldScreenOn":Z
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@11
    iput-boolean v5, v2, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    #@13
    .line 1281
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@15
    iput v5, v2, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    #@17
    .line 1282
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@19
    iput-boolean v5, v2, Landroid/view/View$AttachInfo;->mHasSystemUiListeners:Z

    #@1b
    .line 1283
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@1d
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@1f
    invoke-virtual {v2, v3, v5}, Landroid/view/View;->dispatchCollectViewAttributes(Landroid/view/View$AttachInfo;I)V

    #@22
    .line 1284
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
    .line 1285
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@30
    .line 1286
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
    .line 1287
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@3d
    iget-boolean v2, v2, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    #@3f
    if-ne v2, v0, :cond_0

    #@41
    .line 1288
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@43
    iget v2, v2, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    #@45
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    #@47
    if-eq v2, v3, :cond_1

    #@49
    .line 1290
    :cond_0
    invoke-direct {p0, v1}, Landroid/view/ViewRootImpl;->applyKeepScreenOnFlag(Landroid/view/WindowManager$LayoutParams;)V

    #@4c
    .line 1291
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@4e
    iget v2, v2, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    #@50
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    #@52
    .line 1292
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@54
    iget-boolean v2, v2, Landroid/view/View$AttachInfo;->mHasSystemUiListeners:Z

    #@56
    iput-boolean v2, v1, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    #@58
    .line 1293
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@5a
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@5c
    iget v3, v3, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    #@5e
    invoke-virtual {v2, v3}, Landroid/view/View;->dispatchWindowSystemUiVisiblityChanged(I)V

    #@61
    .line 1294
    const/4 v2, 0x1

    #@62
    return v2

    #@63
    .line 1289
    :cond_1
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@65
    iget-boolean v2, v2, Landroid/view/View$AttachInfo;->mHasSystemUiListeners:Z

    #@67
    iget-boolean v3, v1, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    #@69
    if-ne v2, v3, :cond_0

    #@6b
    .line 1297
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
    .line 6232
    const-string/jumbo v1, "deliverInputEvent"

    #@3
    .line 6233
    iget-object v2, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    #@5
    invoke-virtual {v2}, Landroid/view/InputEvent;->getSequenceNumber()I

    #@8
    move-result v2

    #@9
    .line 6232
    const-wide/16 v4, 0x8

    #@b
    invoke-static {v4, v5, v1, v2}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    #@e
    .line 6234
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    #@10
    if-eqz v1, :cond_0

    #@12
    .line 6235
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    #@14
    iget-object v2, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    #@16
    const/4 v3, 0x0

    #@17
    invoke-virtual {v1, v2, v3}, Landroid/view/InputEventConsistencyVerifier;->onInputEvent(Landroid/view/InputEvent;I)V

    #@1a
    .line 6239
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewRootImpl$QueuedInputEvent;->shouldSendToSynthesizer()Z

    #@1d
    move-result v1

    #@1e
    if-eqz v1, :cond_1

    #@20
    .line 6240
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSyntheticInputStage:Landroid/view/ViewRootImpl$InputStage;

    #@22
    .line 6245
    .local v0, "stage":Landroid/view/ViewRootImpl$InputStage;
    :goto_0
    if-eqz v0, :cond_3

    #@24
    .line 6246
    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl$InputStage;->deliver(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    #@27
    .line 6231
    :goto_1
    return-void

    #@28
    .line 6242
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
    .line 6248
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
    .line 5981
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@4
    iget-object v0, v1, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    #@6
    .line 5983
    .local v0, "hardwareRenderer":Landroid/view/ThreadedRenderer;
    if-eqz v0, :cond_1

    #@8
    .line 5984
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 5985
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@e
    invoke-virtual {v0, v1}, Landroid/view/ThreadedRenderer;->destroyHardwareResources(Landroid/view/View;)V

    #@11
    .line 5987
    :cond_0
    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->destroy()V

    #@14
    .line 5988
    invoke-virtual {v0, v3}, Landroid/view/ThreadedRenderer;->setRequested(Z)V

    #@17
    .line 5990
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@19
    iput-object v2, v1, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    #@1b
    .line 5991
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@1d
    iput-boolean v3, v1, Landroid/view/View$AttachInfo;->mHardwareAccelerated:Z

    #@1f
    .line 5980
    :cond_1
    return-void
.end method

.method private dipToPx(I)I
    .locals 3
    .param p1, "dip"    # I

    #@0
    .prologue
    .line 1440
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@9
    move-result-object v0

    #@a
    .line 1441
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    #@c
    int-to-float v2, p1

    #@d
    mul-float/2addr v1, v2

    #@e
    const/high16 v2, 0x3f000000    # 0.5f

    #@10
    add-float/2addr v1, v2

    #@11
    float-to-int v1, v1

    #@12
    return v1
.end method

.method private draw(Z)V
    .locals 32
    .param p1, "fullRedrawNeeded"    # Z

    #@0
    .prologue
    .line 2664
    move-object/from16 v0, p0

    #@2
    iget-object v9, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    #@4
    .line 2665
    .local v9, "surface":Landroid/view/Surface;
    invoke-virtual {v9}, Landroid/view/Surface;->isValid()Z

    #@7
    move-result v2

    #@8
    if-nez v2, :cond_0

    #@a
    .line 2666
    return-void

    #@b
    .line 2673
    :cond_0
    sget-boolean v2, Landroid/view/ViewRootImpl;->sFirstDrawComplete:Z

    #@d
    if-nez v2, :cond_2

    #@f
    .line 2674
    sget-object v3, Landroid/view/ViewRootImpl;->sFirstDrawHandlers:Ljava/util/ArrayList;

    #@11
    monitor-enter v3

    #@12
    .line 2675
    const/4 v2, 0x1

    #@13
    :try_start_0
    sput-boolean v2, Landroid/view/ViewRootImpl;->sFirstDrawComplete:Z

    #@15
    .line 2676
    sget-object v2, Landroid/view/ViewRootImpl;->sFirstDrawHandlers:Ljava/util/ArrayList;

    #@17
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@1a
    move-result v19

    #@1b
    .line 2677
    .local v19, "count":I
    const/16 v24, 0x0

    #@1d
    .local v24, "i":I
    :goto_0
    move/from16 v0, v24

    #@1f
    move/from16 v1, v19

    #@21
    if-ge v0, v1, :cond_1

    #@23
    .line 2678
    move-object/from16 v0, p0

    #@25
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@27
    sget-object v2, Landroid/view/ViewRootImpl;->sFirstDrawHandlers:Ljava/util/ArrayList;

    #@29
    move/from16 v0, v24

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
    .line 2677
    add-int/lit8 v24, v24, 0x1

    #@36
    goto :goto_0

    #@37
    :cond_1
    monitor-exit v3

    #@38
    .line 2683
    .end local v19    # "count":I
    .end local v24    # "i":I
    :cond_2
    const/4 v2, 0x0

    #@39
    const/4 v3, 0x0

    #@3a
    move-object/from16 v0, p0

    #@3c
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewRootImpl;->scrollToRectOrFocus(Landroid/graphics/Rect;Z)Z

    #@3f
    .line 2685
    move-object/from16 v0, p0

    #@41
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@43
    iget-boolean v2, v2, Landroid/view/View$AttachInfo;->mViewScrollChanged:Z

    #@45
    if-eqz v2, :cond_3

    #@47
    .line 2686
    move-object/from16 v0, p0

    #@49
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@4b
    const/4 v3, 0x0

    #@4c
    iput-boolean v3, v2, Landroid/view/View$AttachInfo;->mViewScrollChanged:Z

    #@4e
    .line 2687
    move-object/from16 v0, p0

    #@50
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@52
    iget-object v2, v2, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    #@54
    invoke-virtual {v2}, Landroid/view/ViewTreeObserver;->dispatchOnScrollChanged()V

    #@57
    .line 2690
    :cond_3
    move-object/from16 v0, p0

    #@59
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    #@5b
    if-eqz v2, :cond_6

    #@5d
    move-object/from16 v0, p0

    #@5f
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    #@61
    invoke-virtual {v2}, Landroid/widget/Scroller;->computeScrollOffset()Z

    #@64
    move-result v16

    #@65
    .line 2692
    :goto_1
    if-eqz v16, :cond_7

    #@67
    .line 2693
    move-object/from16 v0, p0

    #@69
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    #@6b
    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    #@6e
    move-result v20

    #@6f
    .line 2697
    .local v20, "curScrollY":I
    :goto_2
    move-object/from16 v0, p0

    #@71
    iget v2, v0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    #@73
    move/from16 v0, v20

    #@75
    if-eq v2, v0, :cond_4

    #@77
    .line 2698
    move/from16 v0, v20

    #@79
    move-object/from16 v1, p0

    #@7b
    iput v0, v1, Landroid/view/ViewRootImpl;->mCurScrollY:I

    #@7d
    .line 2699
    const/16 p1, 0x1

    #@7f
    .line 2700
    .local p1, "fullRedrawNeeded":Z
    move-object/from16 v0, p0

    #@81
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@83
    instance-of v2, v2, Lcom/android/internal/view/RootViewSurfaceTaker;

    #@85
    if-eqz v2, :cond_4

    #@87
    .line 2701
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
    .line 2705
    .end local p1    # "fullRedrawNeeded":Z
    :cond_4
    move-object/from16 v0, p0

    #@96
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@98
    iget v0, v2, Landroid/view/View$AttachInfo;->mApplicationScale:F

    #@9a
    move/from16 v17, v0

    #@9c
    .line 2706
    .local v17, "appScale":F
    move-object/from16 v0, p0

    #@9e
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@a0
    iget-boolean v13, v2, Landroid/view/View$AttachInfo;->mScalingRequired:Z

    #@a2
    .line 2708
    .local v13, "scalingRequired":Z
    const/16 v27, 0x0

    #@a4
    .line 2710
    .local v27, "resizeAlpha":I
    move-object/from16 v0, p0

    #@a6
    iget-object v14, v0, Landroid/view/ViewRootImpl;->mDirty:Landroid/graphics/Rect;

    #@a8
    .line 2711
    .local v14, "dirty":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    #@aa
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@ac
    if-eqz v2, :cond_8

    #@ae
    .line 2713
    invoke-virtual {v14}, Landroid/graphics/Rect;->setEmpty()V

    #@b1
    .line 2714
    if-eqz v16, :cond_5

    #@b3
    move-object/from16 v0, p0

    #@b5
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    #@b7
    if-eqz v2, :cond_5

    #@b9
    .line 2715
    move-object/from16 v0, p0

    #@bb
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    #@bd
    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    #@c0
    .line 2717
    :cond_5
    return-void

    #@c1
    .line 2674
    .end local v13    # "scalingRequired":Z
    .end local v14    # "dirty":Landroid/graphics/Rect;
    .end local v17    # "appScale":F
    .end local v20    # "curScrollY":I
    .end local v27    # "resizeAlpha":I
    .local p1, "fullRedrawNeeded":Z
    :catchall_0
    move-exception v2

    #@c2
    monitor-exit v3

    #@c3
    throw v2

    #@c4
    .line 2690
    :cond_6
    const/16 v16, 0x0

    #@c6
    .local v16, "animating":Z
    goto :goto_1

    #@c7
    .line 2695
    .end local v16    # "animating":Z
    :cond_7
    move-object/from16 v0, p0

    #@c9
    iget v0, v0, Landroid/view/ViewRootImpl;->mScrollY:I

    #@cb
    move/from16 v20, v0

    #@cd
    .restart local v20    # "curScrollY":I
    goto :goto_2

    #@ce
    .line 2720
    .end local p1    # "fullRedrawNeeded":Z
    .restart local v13    # "scalingRequired":Z
    .restart local v14    # "dirty":Landroid/graphics/Rect;
    .restart local v17    # "appScale":F
    .restart local v27    # "resizeAlpha":I
    :cond_8
    if-eqz p1, :cond_9

    #@d0
    .line 2721
    move-object/from16 v0, p0

    #@d2
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@d4
    const/4 v3, 0x1

    #@d5
    iput-boolean v3, v2, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    #@d7
    .line 2722
    move-object/from16 v0, p0

    #@d9
    iget v2, v0, Landroid/view/ViewRootImpl;->mWidth:I

    #@db
    int-to-float v2, v2

    #@dc
    mul-float v2, v2, v17

    #@de
    const/high16 v3, 0x3f000000    # 0.5f

    #@e0
    add-float/2addr v2, v3

    #@e1
    float-to-int v2, v2

    #@e2
    move-object/from16 v0, p0

    #@e4
    iget v3, v0, Landroid/view/ViewRootImpl;->mHeight:I

    #@e6
    int-to-float v3, v3

    #@e7
    mul-float v3, v3, v17

    #@e9
    const/high16 v4, 0x3f000000    # 0.5f

    #@eb
    add-float/2addr v3, v4

    #@ec
    float-to-int v3, v3

    #@ed
    const/4 v4, 0x0

    #@ee
    const/4 v5, 0x0

    #@ef
    invoke-virtual {v14, v4, v5, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    #@f2
    .line 2734
    :cond_9
    move-object/from16 v0, p0

    #@f4
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@f6
    iget-object v2, v2, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    #@f8
    invoke-virtual {v2}, Landroid/view/ViewTreeObserver;->dispatchOnDraw()V

    #@fb
    .line 2736
    move-object/from16 v0, p0

    #@fd
    iget v2, v0, Landroid/view/ViewRootImpl;->mCanvasOffsetX:I

    #@ff
    neg-int v11, v2

    #@100
    .line 2737
    .local v11, "xOffset":I
    move-object/from16 v0, p0

    #@102
    iget v2, v0, Landroid/view/ViewRootImpl;->mCanvasOffsetY:I

    #@104
    neg-int v2, v2

    #@105
    add-int v12, v2, v20

    #@107
    .line 2738
    .local v12, "yOffset":I
    move-object/from16 v0, p0

    #@109
    iget-object v0, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@10b
    move-object/from16 v26, v0

    #@10d
    .line 2739
    .local v26, "params":Landroid/view/WindowManager$LayoutParams;
    if-eqz v26, :cond_15

    #@10f
    move-object/from16 v0, v26

    #@111
    iget-object v7, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@113
    .line 2740
    .local v7, "surfaceInsets":Landroid/graphics/Rect;
    :goto_3
    if-eqz v7, :cond_a

    #@115
    .line 2741
    iget v2, v7, Landroid/graphics/Rect;->left:I

    #@117
    sub-int/2addr v11, v2

    #@118
    .line 2742
    iget v2, v7, Landroid/graphics/Rect;->top:I

    #@11a
    sub-int/2addr v12, v2

    #@11b
    .line 2745
    iget v2, v7, Landroid/graphics/Rect;->left:I

    #@11d
    iget v3, v7, Landroid/graphics/Rect;->right:I

    #@11f
    invoke-virtual {v14, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    #@122
    .line 2748
    :cond_a
    const/4 v15, 0x0

    #@123
    .line 2749
    .local v15, "accessibilityFocusDirty":Z
    move-object/from16 v0, p0

    #@125
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@127
    iget-object v0, v2, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    #@129
    move-object/from16 v21, v0

    #@12b
    .line 2750
    .local v21, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v21, :cond_c

    #@12d
    .line 2751
    move-object/from16 v0, p0

    #@12f
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@131
    iget-object v0, v2, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    #@133
    move-object/from16 v18, v0

    #@135
    .line 2752
    .local v18, "bounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    #@137
    move-object/from16 v1, v18

    #@139
    invoke-direct {v0, v1}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedRect(Landroid/graphics/Rect;)Z

    #@13c
    move-result v23

    #@13d
    .line 2753
    .local v23, "hasFocus":Z
    if-nez v23, :cond_b

    #@13f
    .line 2754
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->setEmpty()V

    #@142
    .line 2756
    :cond_b
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    #@145
    move-result-object v2

    #@146
    move-object/from16 v0, v18

    #@148
    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@14b
    move-result v2

    #@14c
    if-nez v2, :cond_c

    #@14e
    .line 2757
    const/4 v15, 0x1

    #@14f
    .line 2761
    .end local v18    # "bounds":Landroid/graphics/Rect;
    .end local v23    # "hasFocus":Z
    :cond_c
    move-object/from16 v0, p0

    #@151
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@153
    .line 2762
    move-object/from16 v0, p0

    #@155
    iget-object v3, v0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    #@157
    invoke-virtual {v3}, Landroid/view/Choreographer;->getFrameTimeNanos()J

    #@15a
    move-result-wide v4

    #@15b
    const-wide/32 v30, 0xf4240

    #@15e
    div-long v4, v4, v30

    #@160
    .line 2761
    iput-wide v4, v2, Landroid/view/View$AttachInfo;->mDrawingTime:J

    #@162
    .line 2764
    invoke-virtual {v14}, Landroid/graphics/Rect;->isEmpty()Z

    #@165
    move-result v2

    #@166
    if-eqz v2, :cond_d

    #@168
    move-object/from16 v0, p0

    #@16a
    iget-boolean v2, v0, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    #@16c
    if-nez v2, :cond_d

    #@16e
    if-eqz v15, :cond_13

    #@170
    .line 2765
    :cond_d
    move-object/from16 v0, p0

    #@172
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@174
    iget-object v2, v2, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    #@176
    if-eqz v2, :cond_17

    #@178
    move-object/from16 v0, p0

    #@17a
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@17c
    iget-object v2, v2, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    #@17e
    invoke-virtual {v2}, Landroid/view/ThreadedRenderer;->isEnabled()Z

    #@181
    move-result v2

    #@182
    if-eqz v2, :cond_17

    #@184
    .line 2767
    if-nez v15, :cond_16

    #@186
    move-object/from16 v0, p0

    #@188
    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mInvalidateRootRequested:Z

    #@18a
    move/from16 v25, v0

    #@18c
    .line 2768
    :goto_4
    const/4 v2, 0x0

    #@18d
    move-object/from16 v0, p0

    #@18f
    iput-boolean v2, v0, Landroid/view/ViewRootImpl;->mInvalidateRootRequested:Z

    #@191
    .line 2771
    const/4 v2, 0x0

    #@192
    move-object/from16 v0, p0

    #@194
    iput-boolean v2, v0, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    #@196
    .line 2773
    move-object/from16 v0, p0

    #@198
    iget v2, v0, Landroid/view/ViewRootImpl;->mHardwareYOffset:I

    #@19a
    if-ne v2, v12, :cond_e

    #@19c
    move-object/from16 v0, p0

    #@19e
    iget v2, v0, Landroid/view/ViewRootImpl;->mHardwareXOffset:I

    #@1a0
    if-eq v2, v11, :cond_f

    #@1a2
    .line 2774
    :cond_e
    move-object/from16 v0, p0

    #@1a4
    iput v12, v0, Landroid/view/ViewRootImpl;->mHardwareYOffset:I

    #@1a6
    .line 2775
    move-object/from16 v0, p0

    #@1a8
    iput v11, v0, Landroid/view/ViewRootImpl;->mHardwareXOffset:I

    #@1aa
    .line 2776
    const/16 v25, 0x1

    #@1ac
    .line 2779
    :cond_f
    if-eqz v25, :cond_10

    #@1ae
    .line 2780
    move-object/from16 v0, p0

    #@1b0
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@1b2
    iget-object v2, v2, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    #@1b4
    invoke-virtual {v2}, Landroid/view/ThreadedRenderer;->invalidateRoot()V

    #@1b7
    .line 2783
    :cond_10
    invoke-virtual {v14}, Landroid/graphics/Rect;->setEmpty()V

    #@1ba
    .line 2787
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->updateContentDrawBounds()Z

    #@1bd
    move-result v28

    #@1be
    .line 2789
    .local v28, "updated":Z
    move-object/from16 v0, p0

    #@1c0
    iget-boolean v2, v0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    #@1c2
    if-eqz v2, :cond_11

    #@1c4
    .line 2793
    move-object/from16 v0, p0

    #@1c6
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@1c8
    iget-object v2, v2, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    #@1ca
    const/4 v3, 0x0

    #@1cb
    invoke-virtual {v2, v3}, Landroid/view/ThreadedRenderer;->setStopped(Z)V

    #@1ce
    .line 2796
    :cond_11
    if-eqz v28, :cond_12

    #@1d0
    .line 2797
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->requestDrawWindow()V

    #@1d3
    .line 2800
    :cond_12
    move-object/from16 v0, p0

    #@1d5
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@1d7
    iget-object v2, v2, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    #@1d9
    move-object/from16 v0, p0

    #@1db
    iget-object v3, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@1dd
    move-object/from16 v0, p0

    #@1df
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@1e1
    move-object/from16 v0, p0

    #@1e3
    invoke-virtual {v2, v3, v4, v0}, Landroid/view/ThreadedRenderer;->draw(Landroid/view/View;Landroid/view/View$AttachInfo;Landroid/view/ThreadedRenderer$HardwareDrawCallbacks;)V

    #@1e6
    .line 2833
    .end local v28    # "updated":Z
    :cond_13
    if-eqz v16, :cond_14

    #@1e8
    .line 2834
    const/4 v2, 0x1

    #@1e9
    move-object/from16 v0, p0

    #@1eb
    iput-boolean v2, v0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    #@1ed
    .line 2835
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    #@1f0
    .line 2663
    :cond_14
    return-void

    #@1f1
    .line 2739
    .end local v7    # "surfaceInsets":Landroid/graphics/Rect;
    .end local v15    # "accessibilityFocusDirty":Z
    .end local v21    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_15
    const/4 v7, 0x0

    #@1f2
    goto/16 :goto_3

    #@1f4
    .line 2767
    .restart local v7    # "surfaceInsets":Landroid/graphics/Rect;
    .restart local v15    # "accessibilityFocusDirty":Z
    .restart local v21    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_16
    const/16 v25, 0x1

    #@1f6
    .local v25, "invalidateRoot":Z
    goto :goto_4

    #@1f7
    .line 2810
    .end local v25    # "invalidateRoot":Z
    :cond_17
    move-object/from16 v0, p0

    #@1f9
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@1fb
    iget-object v2, v2, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    #@1fd
    if-eqz v2, :cond_18

    #@1ff
    .line 2811
    move-object/from16 v0, p0

    #@201
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@203
    iget-object v2, v2, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    #@205
    invoke-virtual {v2}, Landroid/view/ThreadedRenderer;->isEnabled()Z

    #@208
    move-result v2

    #@209
    if-eqz v2, :cond_19

    #@20b
    .line 2827
    :cond_18
    move-object/from16 v0, p0

    #@20d
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@20f
    move-object/from16 v8, p0

    #@211
    invoke-direct/range {v8 .. v14}, Landroid/view/ViewRootImpl;->drawSoftware(Landroid/view/Surface;Landroid/view/View$AttachInfo;IIZLandroid/graphics/Rect;)Z

    #@214
    move-result v2

    #@215
    if-nez v2, :cond_13

    #@217
    .line 2828
    return-void

    #@218
    .line 2812
    :cond_19
    move-object/from16 v0, p0

    #@21a
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@21c
    iget-object v2, v2, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    #@21e
    invoke-virtual {v2}, Landroid/view/ThreadedRenderer;->isRequested()Z

    #@221
    move-result v2

    #@222
    .line 2810
    if-eqz v2, :cond_18

    #@224
    .line 2815
    :try_start_1
    move-object/from16 v0, p0

    #@226
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@228
    iget-object v2, v2, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    #@22a
    .line 2816
    move-object/from16 v0, p0

    #@22c
    iget v3, v0, Landroid/view/ViewRootImpl;->mWidth:I

    #@22e
    move-object/from16 v0, p0

    #@230
    iget v4, v0, Landroid/view/ViewRootImpl;->mHeight:I

    #@232
    move-object/from16 v0, p0

    #@234
    iget-object v5, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@236
    move-object/from16 v0, p0

    #@238
    iget-object v6, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    #@23a
    .line 2815
    invoke-virtual/range {v2 .. v7}, Landroid/view/ThreadedRenderer;->initializeIfNeeded(IILandroid/view/View$AttachInfo;Landroid/view/Surface;Landroid/graphics/Rect;)Z
    :try_end_1
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1 .. :try_end_1} :catch_0

    #@23d
    .line 2822
    const/4 v2, 0x1

    #@23e
    move-object/from16 v0, p0

    #@240
    iput-boolean v2, v0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    #@242
    .line 2823
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    #@245
    .line 2824
    return-void

    #@246
    .line 2817
    :catch_0
    move-exception v22

    #@247
    .line 2818
    .local v22, "e":Landroid/view/Surface$OutOfResourcesException;
    move-object/from16 v0, p0

    #@249
    move-object/from16 v1, v22

    #@24b
    invoke-direct {v0, v1}, Landroid/view/ViewRootImpl;->handleOutOfResourcesException(Landroid/view/Surface$OutOfResourcesException;)V

    #@24e
    .line 2819
    return-void
.end method

.method private drawAccessibilityFocusedDrawableIfNeeded(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2950
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@3
    iget-object v0, v2, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    #@5
    .line 2951
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-direct {p0, v0}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedRect(Landroid/graphics/Rect;)Z

    #@8
    move-result v2

    #@9
    if-eqz v2, :cond_1

    #@b
    .line 2952
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedDrawable()Landroid/graphics/drawable/Drawable;

    #@e
    move-result-object v1

    #@f
    .line 2953
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    #@11
    .line 2954
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    #@14
    .line 2955
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@17
    .line 2949
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-void

    #@18
    .line 2957
    :cond_1
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@1a
    iget-object v2, v2, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    #@1c
    if-eqz v2, :cond_0

    #@1e
    .line 2958
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
    .line 2848
    :try_start_0
    iget v4, p6, Landroid/graphics/Rect;->left:I

    #@2
    .line 2849
    .local v4, "left":I
    iget v6, p6, Landroid/graphics/Rect;->top:I

    #@4
    .line 2850
    .local v6, "top":I
    iget v5, p6, Landroid/graphics/Rect;->right:I

    #@6
    .line 2851
    .local v5, "right":I
    iget v0, p6, Landroid/graphics/Rect;->bottom:I

    #@8
    .line 2853
    .local v0, "bottom":I
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    #@a
    invoke-virtual {v7, p6}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    #@d
    move-result-object v1

    #@e
    .line 2857
    .local v1, "canvas":Landroid/graphics/Canvas;
    iget v7, p6, Landroid/graphics/Rect;->left:I

    #@10
    if-ne v4, v7, :cond_0

    #@12
    iget v7, p6, Landroid/graphics/Rect;->top:I

    #@14
    if-eq v6, v7, :cond_6

    #@16
    .line 2859
    :cond_0
    :goto_0
    const/4 v7, 0x1

    #@17
    iput-boolean v7, p2, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    #@19
    .line 2863
    :cond_1
    iget v7, p0, Landroid/view/ViewRootImpl;->mDensity:I

    #@1b
    invoke-virtual {v1, v7}, Landroid/graphics/Canvas;->setDensity(I)V
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@1e
    .line 2891
    :try_start_1
    invoke-virtual {v1}, Landroid/graphics/Canvas;->isOpaque()Z

    #@21
    move-result v7

    #@22
    if-eqz v7, :cond_2

    #@24
    if-eqz p4, :cond_7

    #@26
    .line 2892
    :cond_2
    :goto_1
    sget-object v7, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    #@28
    const/4 v8, 0x0

    #@29
    invoke-virtual {v1, v8, v7}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    #@2c
    .line 2895
    :cond_3
    invoke-virtual {p6}, Landroid/graphics/Rect;->setEmpty()V

    #@2f
    .line 2896
    const/4 v7, 0x0

    #@30
    iput-boolean v7, p0, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    #@32
    .line 2897
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
    .line 2906
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
    .line 2907
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@43
    if-eqz v7, :cond_4

    #@45
    .line 2908
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@47
    invoke-virtual {v7, v1}, Landroid/content/res/CompatibilityInfo$Translator;->translateCanvas(Landroid/graphics/Canvas;)V

    #@4a
    .line 2910
    :cond_4
    if-eqz p5, :cond_8

    #@4c
    iget v7, p0, Landroid/view/ViewRootImpl;->mNoncompatDensity:I

    #@4e
    :goto_2
    invoke-virtual {v1, v7}, Landroid/graphics/Canvas;->setScreenDensity(I)V

    #@51
    .line 2911
    const/4 v7, 0x0

    #@52
    iput-boolean v7, p2, Landroid/view/View$AttachInfo;->mSetIgnoreDirtyState:Z

    #@54
    .line 2913
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@56
    invoke-virtual {v7, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    #@59
    .line 2915
    invoke-direct {p0, v1}, Landroid/view/ViewRootImpl;->drawAccessibilityFocusedDrawableIfNeeded(Landroid/graphics/Canvas;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@5c
    .line 2917
    :try_start_3
    iget-boolean v7, p2, Landroid/view/View$AttachInfo;->mSetIgnoreDirtyState:Z

    #@5e
    if-nez v7, :cond_5

    #@60
    .line 2919
    const/4 v7, 0x0

    #@61
    iput-boolean v7, p2, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@63
    .line 2924
    :cond_5
    :try_start_4
    invoke-virtual {p1, v1}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2

    #@66
    .line 2936
    const/4 v7, 0x1

    #@67
    return v7

    #@68
    .line 2857
    :cond_6
    :try_start_5
    iget v7, p6, Landroid/graphics/Rect;->right:I

    #@6a
    if-ne v5, v7, :cond_0

    #@6c
    .line 2858
    iget v7, p6, Landroid/graphics/Rect;->bottom:I
    :try_end_5
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_0

    #@6e
    if-eq v0, v7, :cond_1

    #@70
    goto :goto_0

    #@71
    .line 2867
    .end local v0    # "bottom":I
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v4    # "left":I
    .end local v5    # "right":I
    .end local v6    # "top":I
    :catch_0
    move-exception v3

    #@72
    .line 2868
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    #@74
    const-string/jumbo v8, "Could not lock surface"

    #@77
    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@7a
    .line 2872
    const/4 v7, 0x1

    #@7b
    iput-boolean v7, p0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    #@7d
    .line 2873
    const/4 v7, 0x0

    #@7e
    return v7

    #@7f
    .line 2864
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v2

    #@80
    .line 2865
    .local v2, "e":Landroid/view/Surface$OutOfResourcesException;
    invoke-direct {p0, v2}, Landroid/view/ViewRootImpl;->handleOutOfResourcesException(Landroid/view/Surface$OutOfResourcesException;)V

    #@83
    .line 2866
    const/4 v7, 0x0

    #@84
    return v7

    #@85
    .line 2891
    .end local v2    # "e":Landroid/view/Surface$OutOfResourcesException;
    .restart local v0    # "bottom":I
    .restart local v1    # "canvas":Landroid/graphics/Canvas;
    .restart local v4    # "left":I
    .restart local v5    # "right":I
    .restart local v6    # "top":I
    :cond_7
    if-eqz p3, :cond_3

    #@87
    goto :goto_1

    #@88
    .line 2910
    :cond_8
    const/4 v7, 0x0

    #@89
    goto :goto_2

    #@8a
    .line 2916
    :catchall_0
    move-exception v7

    #@8b
    .line 2917
    :try_start_6
    iget-boolean v8, p2, Landroid/view/View$AttachInfo;->mSetIgnoreDirtyState:Z

    #@8d
    if-nez v8, :cond_9

    #@8f
    .line 2919
    const/4 v8, 0x0

    #@90
    iput-boolean v8, p2, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    #@92
    .line 2916
    :cond_9
    throw v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@93
    .line 2922
    :catchall_1
    move-exception v7

    #@94
    .line 2924
    :try_start_7
    invoke-virtual {p1, v1}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_3

    #@97
    .line 2922
    throw v7

    #@98
    .line 2925
    :catch_2
    move-exception v3

    #@99
    .line 2926
    .restart local v3    # "e":Ljava/lang/IllegalArgumentException;
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    #@9b
    const-string/jumbo v8, "Could not unlock surface"

    #@9e
    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@a1
    .line 2927
    const/4 v7, 0x1

    #@a2
    iput-boolean v7, p0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    #@a4
    .line 2929
    const/4 v7, 0x0

    #@a5
    return v7

    #@a6
    .line 2925
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v3

    #@a7
    .line 2926
    .restart local v3    # "e":Ljava/lang/IllegalArgumentException;
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    #@a9
    const-string/jumbo v8, "Could not unlock surface"

    #@ac
    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@af
    .line 2927
    const/4 v7, 0x1

    #@b0
    iput-boolean v7, p0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    #@b2
    .line 2929
    const/4 v7, 0x0

    #@b3
    return v7
.end method

.method private dumpViewHierarchy(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V
    .locals 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 5842
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3
    .line 5843
    if-nez p3, :cond_0

    #@5
    .line 5844
    const-string/jumbo v3, "null"

    #@8
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@b
    .line 5845
    return-void

    #@c
    .line 5847
    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->toString()Ljava/lang/String;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@13
    .line 5848
    instance-of v3, p3, Landroid/view/ViewGroup;

    #@15
    if-nez v3, :cond_1

    #@17
    .line 5849
    return-void

    #@18
    :cond_1
    move-object v1, p3

    #@19
    .line 5851
    check-cast v1, Landroid/view/ViewGroup;

    #@1b
    .line 5852
    .local v1, "grp":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    #@1e
    move-result v0

    #@1f
    .line 5853
    .local v0, "N":I
    if-gtz v0, :cond_2

    #@21
    .line 5854
    return-void

    #@22
    .line 5856
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
    .line 5857
    const/4 v2, 0x0

    #@37
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    #@39
    .line 5858
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@3c
    move-result-object v3

    #@3d
    invoke-direct {p0, p1, p2, v3}, Landroid/view/ViewRootImpl;->dumpViewHierarchy(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V

    #@40
    .line 5857
    add-int/lit8 v2, v2, 0x1

    #@42
    goto :goto_0

    #@43
    .line 5841
    :cond_3
    return-void
.end method

.method private enableHardwareAcceleration(Landroid/view/WindowManager$LayoutParams;)V
    .locals 9
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 834
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@4
    iput-boolean v2, v7, Landroid/view/View$AttachInfo;->mHardwareAccelerated:Z

    #@6
    .line 835
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@8
    iput-boolean v2, v7, Landroid/view/View$AttachInfo;->mHardwareAccelerationRequested:Z

    #@a
    .line 838
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@c
    if-eqz v7, :cond_0

    #@e
    return-void

    #@f
    .line 842
    :cond_0
    iget v7, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@11
    const/high16 v8, 0x1000000

    #@13
    and-int/2addr v7, v8

    #@14
    if-eqz v7, :cond_1

    #@16
    move v2, v6

    #@17
    .line 844
    .local v2, "hardwareAccelerated":Z
    :cond_1
    if-eqz v2, :cond_3

    #@19
    .line 845
    invoke-static {}, Landroid/view/ThreadedRenderer;->isAvailable()Z

    #@1c
    move-result v7

    #@1d
    if-nez v7, :cond_2

    #@1f
    .line 846
    return-void

    #@20
    .line 858
    :cond_2
    iget v7, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@22
    and-int/lit8 v7, v7, 0x1

    #@24
    if-eqz v7, :cond_4

    #@26
    const/4 v0, 0x1

    #@27
    .line 860
    .local v0, "fakeHwAccelerated":Z
    :goto_0
    iget v7, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@29
    and-int/lit8 v7, v7, 0x2

    #@2b
    if-eqz v7, :cond_5

    #@2d
    const/4 v1, 0x1

    #@2e
    .line 863
    .local v1, "forceHwAccelerated":Z
    :goto_1
    if-eqz v0, :cond_6

    #@30
    .line 867
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@32
    iput-boolean v6, v7, Landroid/view/View$AttachInfo;->mHardwareAccelerationRequested:Z

    #@34
    .line 833
    .end local v0    # "fakeHwAccelerated":Z
    .end local v1    # "forceHwAccelerated":Z
    :cond_3
    :goto_2
    return-void

    #@35
    .line 858
    :cond_4
    const/4 v0, 0x0

    #@36
    .restart local v0    # "fakeHwAccelerated":Z
    goto :goto_0

    #@37
    .line 860
    :cond_5
    const/4 v1, 0x0

    #@38
    .restart local v1    # "forceHwAccelerated":Z
    goto :goto_1

    #@39
    .line 868
    :cond_6
    sget-boolean v7, Landroid/view/ThreadedRenderer;->sRendererDisabled:Z

    #@3b
    if-eqz v7, :cond_7

    #@3d
    .line 869
    sget-boolean v7, Landroid/view/ThreadedRenderer;->sSystemRendererDisabled:Z

    #@3f
    if-eqz v7, :cond_3

    #@41
    .line 868
    if-eqz v1, :cond_3

    #@43
    .line 870
    :cond_7
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@45
    iget-object v7, v7, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    #@47
    if-eqz v7, :cond_8

    #@49
    .line 871
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@4b
    iget-object v7, v7, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    #@4d
    invoke-virtual {v7}, Landroid/view/ThreadedRenderer;->destroy()V

    #@50
    .line 874
    :cond_8
    iget-object v4, p1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@52
    .line 875
    .local v4, "insets":Landroid/graphics/Rect;
    iget v7, v4, Landroid/graphics/Rect;->left:I

    #@54
    if-nez v7, :cond_9

    #@56
    iget v7, v4, Landroid/graphics/Rect;->right:I

    #@58
    if-eqz v7, :cond_a

    #@5a
    :cond_9
    const/4 v3, 0x1

    #@5b
    .line 877
    .local v3, "hasSurfaceInsets":Z
    :goto_3
    iget v7, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    #@5d
    const/4 v8, -0x1

    #@5e
    if-ne v7, v8, :cond_c

    #@60
    move v5, v3

    #@61
    .line 878
    :goto_4
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@63
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    #@65
    invoke-static {v8, v5}, Landroid/view/ThreadedRenderer;->create(Landroid/content/Context;Z)Landroid/view/ThreadedRenderer;

    #@68
    move-result-object v8

    #@69
    iput-object v8, v7, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    #@6b
    .line 879
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@6d
    iget-object v7, v7, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    #@6f
    if-eqz v7, :cond_3

    #@71
    .line 880
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@73
    iget-object v7, v7, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    #@75
    invoke-virtual {p1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    #@78
    move-result-object v8

    #@79
    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@7c
    move-result-object v8

    #@7d
    invoke-virtual {v7, v8}, Landroid/view/ThreadedRenderer;->setName(Ljava/lang/String;)V

    #@80
    .line 881
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@82
    .line 882
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@84
    iput-boolean v6, v8, Landroid/view/View$AttachInfo;->mHardwareAccelerationRequested:Z

    #@86
    .line 881
    iput-boolean v6, v7, Landroid/view/View$AttachInfo;->mHardwareAccelerated:Z

    #@88
    goto :goto_2

    #@89
    .line 876
    .end local v3    # "hasSurfaceInsets":Z
    :cond_a
    iget v7, v4, Landroid/graphics/Rect;->top:I

    #@8b
    if-nez v7, :cond_9

    #@8d
    iget v7, v4, Landroid/graphics/Rect;->bottom:I

    #@8f
    if-eqz v7, :cond_b

    #@91
    const/4 v3, 0x1

    #@92
    .restart local v3    # "hasSurfaceInsets":Z
    goto :goto_3

    #@93
    .end local v3    # "hasSurfaceInsets":Z
    :cond_b
    const/4 v3, 0x0

    #@94
    .restart local v3    # "hasSurfaceInsets":Z
    goto :goto_3

    #@95
    .line 877
    :cond_c
    const/4 v5, 0x1

    #@96
    .local v5, "translucent":Z
    goto :goto_4
.end method

.method private endDragResizing()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 7230
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mDragResizing:Z

    #@3
    if-eqz v1, :cond_1

    #@5
    .line 7231
    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mDragResizing:Z

    #@7
    .line 7232
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    #@9
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@c
    move-result v1

    #@d
    add-int/lit8 v0, v1, -0x1

    #@f
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    #@11
    .line 7233
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    #@13
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, Landroid/view/WindowCallbacks;

    #@19
    invoke-interface {v1}, Landroid/view/WindowCallbacks;->onWindowDragResizeEnd()V

    #@1c
    .line 7232
    add-int/lit8 v0, v0, -0x1

    #@1e
    goto :goto_0

    #@1f
    .line 7235
    :cond_0
    const/4 v1, 0x1

    #@20
    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    #@22
    .line 7229
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private ensureTouchModeLocally(Z)Z
    .locals 1
    .param p1, "inTouchMode"    # Z

    #@0
    .prologue
    .line 3741
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
    .line 3743
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@a
    iput-boolean p1, v0, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    #@c
    .line 3744
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@e
    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    #@10
    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver;->dispatchOnTouchModeChanged(Z)V

    #@13
    .line 3746
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
    .line 3750
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
    .line 3754
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@11
    invoke-virtual {v2}, Landroid/view/View;->findFocus()Landroid/view/View;

    #@14
    move-result-object v1

    #@15
    .line 3755
    .local v1, "focused":Landroid/view/View;
    if-eqz v1, :cond_0

    #@17
    invoke-virtual {v1}, Landroid/view/View;->isFocusableInTouchMode()Z

    #@1a
    move-result v2

    #@1b
    if-eqz v2, :cond_1

    #@1d
    .line 3770
    .end local v1    # "focused":Landroid/view/View;
    :cond_0
    return v4

    #@1e
    .line 3756
    .restart local v1    # "focused":Landroid/view/View;
    :cond_1
    invoke-static {v1}, Landroid/view/ViewRootImpl;->findAncestorToTakeFocusInTouchMode(Landroid/view/View;)Landroid/view/ViewGroup;

    #@21
    move-result-object v0

    #@22
    .line 3757
    .local v0, "ancestorToTakeFocus":Landroid/view/ViewGroup;
    if-eqz v0, :cond_2

    #@24
    .line 3761
    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestFocus()Z

    #@27
    move-result v2

    #@28
    return v2

    #@29
    .line 3765
    :cond_2
    invoke-virtual {v1, v3, v5, v4}, Landroid/view/View;->clearFocusInternal(Landroid/view/View;ZZ)V

    #@2c
    .line 3766
    return v5
.end method

.method private static findAncestorToTakeFocusInTouchMode(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 5
    .param p0, "focused"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 3780
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@4
    move-result-object v0

    #@5
    .line 3781
    .local v0, "parent":Landroid/view/ViewParent;
    :goto_0
    instance-of v2, v0, Landroid/view/ViewGroup;

    #@7
    if-eqz v2, :cond_2

    #@9
    move-object v1, v0

    #@a
    .line 3782
    check-cast v1, Landroid/view/ViewGroup;

    #@c
    .line 3783
    .local v1, "vgParent":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    #@f
    move-result v2

    #@10
    const/high16 v3, 0x40000

    #@12
    if-ne v2, v3, :cond_0

    #@14
    .line 3784
    invoke-virtual {v1}, Landroid/view/ViewGroup;->isFocusableInTouchMode()Z

    #@17
    move-result v2

    #@18
    .line 3783
    if-eqz v2, :cond_0

    #@1a
    .line 3785
    return-object v1

    #@1b
    .line 3787
    :cond_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->isRootNamespace()Z

    #@1e
    move-result v2

    #@1f
    if-eqz v2, :cond_1

    #@21
    .line 3788
    return-object v4

    #@22
    .line 3790
    :cond_1
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    #@25
    move-result-object v0

    #@26
    goto :goto_0

    #@27
    .line 3793
    .end local v1    # "vgParent":Landroid/view/ViewGroup;
    :cond_2
    return-object v4
.end method

.method private finishInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .locals 6
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@0
    .prologue
    .line 6253
    const-string/jumbo v1, "deliverInputEvent"

    #@3
    .line 6254
    iget-object v2, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    #@5
    invoke-virtual {v2}, Landroid/view/InputEvent;->getSequenceNumber()I

    #@8
    move-result v2

    #@9
    .line 6253
    const-wide/16 v4, 0x8

    #@b
    invoke-static {v4, v5, v1, v2}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    #@e
    .line 6256
    iget-object v1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mReceiver:Landroid/view/InputEventReceiver;

    #@10
    if-eqz v1, :cond_1

    #@12
    .line 6257
    iget v1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    #@14
    and-int/lit8 v1, v1, 0x8

    #@16
    if-eqz v1, :cond_0

    #@18
    const/4 v0, 0x1

    #@19
    .line 6258
    .local v0, "handled":Z
    :goto_0
    iget-object v1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mReceiver:Landroid/view/InputEventReceiver;

    #@1b
    iget-object v2, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    #@1d
    invoke-virtual {v1, v2, v0}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    #@20
    .line 6263
    .end local v0    # "handled":Z
    :goto_1
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->recycleQueuedInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    #@23
    .line 6252
    return-void

    #@24
    .line 6257
    :cond_0
    const/4 v0, 0x0

    #@25
    .restart local v0    # "handled":Z
    goto :goto_0

    #@26
    .line 6260
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
    .line 3359
    invoke-virtual {p0}, Landroid/view/View;->forceLayout()V

    #@3
    .line 3360
    instance-of v3, p0, Landroid/view/ViewGroup;

    #@5
    if-eqz v3, :cond_0

    #@7
    move-object v1, p0

    #@8
    .line 3361
    check-cast v1, Landroid/view/ViewGroup;

    #@a
    .line 3362
    .local v1, "group":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    #@d
    move-result v0

    #@e
    .line 3363
    .local v0, "count":I
    const/4 v2, 0x0

    #@f
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    #@11
    .line 3364
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@14
    move-result-object v3

    #@15
    invoke-static {v3}, Landroid/view/ViewRootImpl;->forceLayout(Landroid/view/View;)V

    #@18
    .line 3363
    add-int/lit8 v2, v2, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 3358
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
    .line 2996
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@2
    iget-object v2, v2, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    #@4
    if-nez v2, :cond_0

    #@6
    .line 2997
    new-instance v1, Landroid/util/TypedValue;

    #@8
    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    #@b
    .line 2998
    .local v1, "value":Landroid/util/TypedValue;
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@d
    iget-object v2, v2, Landroid/view/View;->mContext:Landroid/content/Context;

    #@f
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@12
    move-result-object v2

    #@13
    .line 2999
    const v3, 0x116002f

    #@16
    const/4 v4, 0x1

    #@17
    .line 2998
    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    #@1a
    move-result v0

    #@1b
    .line 3000
    .local v0, "resolved":Z
    if-eqz v0, :cond_0

    #@1d
    .line 3001
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@1f
    .line 3002
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
    .line 3001
    iput-object v3, v2, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    #@2b
    .line 3005
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
    .line 2963
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@4
    iget-object v6, v6, Landroid/view/View;->mContext:Landroid/content/Context;

    #@6
    invoke-static {v6}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    #@9
    move-result-object v2

    #@a
    .line 2964
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
    .line 2968
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    #@18
    .line 2969
    .local v1, "host":Landroid/view/View;
    if-eqz v1, :cond_0

    #@1a
    iget-object v6, v1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@1c
    if-nez v6, :cond_2

    #@1e
    .line 2970
    :cond_0
    return v4

    #@1f
    .line 2965
    .end local v1    # "host":Landroid/view/View;
    :cond_1
    return v4

    #@20
    .line 2973
    .restart local v1    # "host":Landroid/view/View;
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    #@23
    move-result-object v3

    #@24
    .line 2974
    .local v3, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-nez v3, :cond_4

    #@26
    .line 2975
    invoke-virtual {v1, p1, v5}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;Z)V

    #@29
    .line 2983
    :goto_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@2b
    .line 2984
    .local v0, "attachInfo":Landroid/view/View$AttachInfo;
    iget-object v6, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    #@2d
    iget v6, v6, Landroid/view/ViewRootImpl;->mScrollY:I

    #@2f
    invoke-virtual {p1, v4, v6}, Landroid/graphics/Rect;->offset(II)V

    #@32
    .line 2985
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
    .line 2986
    iget-object v6, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    #@3d
    iget v6, v6, Landroid/view/ViewRootImpl;->mWidth:I

    #@3f
    .line 2987
    iget-object v7, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    #@41
    iget v7, v7, Landroid/view/ViewRootImpl;->mHeight:I

    #@43
    .line 2986
    invoke-virtual {p1, v4, v4, v6, v7}, Landroid/graphics/Rect;->intersect(IIII)Z

    #@46
    move-result v6

    #@47
    if-nez v6, :cond_3

    #@49
    .line 2989
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    #@4c
    .line 2991
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
    .line 2976
    .end local v0    # "attachInfo":Landroid/view/View$AttachInfo;
    :cond_4
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    #@55
    if-eqz v6, :cond_5

    #@57
    .line 2977
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    #@59
    invoke-virtual {v6, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    #@5c
    goto :goto_0

    #@5d
    .line 2979
    :cond_5
    return v4

    #@5e
    .restart local v0    # "attachInfo":Landroid/view/View$AttachInfo;
    :cond_6
    move v4, v5

    #@5f
    .line 2991
    goto :goto_1
.end method

.method private getAudioManager()Landroid/media/AudioManager;
    .locals 2

    #@0
    .prologue
    .line 5676
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 5677
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "getAudioManager called when there is no mView"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 5679
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAudioManager:Landroid/media/AudioManager;

    #@f
    if-nez v0, :cond_1

    #@11
    .line 5680
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
    .line 5682
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
    .line 6857
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mTempHashSet:Ljava/util/HashSet;

    #@3
    if-nez v5, :cond_0

    #@5
    .line 6858
    new-instance v5, Ljava/util/HashSet;

    #@7
    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    #@a
    iput-object v5, p0, Landroid/view/ViewRootImpl;->mTempHashSet:Ljava/util/HashSet;

    #@c
    .line 6860
    :cond_0
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mTempHashSet:Ljava/util/HashSet;

    #@e
    .line 6861
    .local v4, "seen":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/view/View;>;"
    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    #@11
    .line 6862
    move-object v0, p1

    #@12
    .line 6863
    :goto_0
    if-eqz v0, :cond_2

    #@14
    .line 6864
    invoke-virtual {v4, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@17
    .line 6865
    iget-object v1, v0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    #@19
    .line 6866
    .local v1, "firstCurrentParent":Landroid/view/ViewParent;
    instance-of v5, v1, Landroid/view/View;

    #@1b
    if-eqz v5, :cond_1

    #@1d
    move-object v0, v1

    #@1e
    .line 6867
    check-cast v0, Landroid/view/View;

    #@20
    .local v0, "firstCurrent":Landroid/view/View;
    goto :goto_0

    #@21
    .line 6869
    .end local v0    # "firstCurrent":Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    #@22
    .local v0, "firstCurrent":Landroid/view/View;
    goto :goto_0

    #@23
    .line 6872
    .end local v0    # "firstCurrent":Landroid/view/View;
    .end local v1    # "firstCurrentParent":Landroid/view/ViewParent;
    :cond_2
    move-object v2, p2

    #@24
    .line 6873
    :goto_1
    if-eqz v2, :cond_5

    #@26
    .line 6874
    invoke-virtual {v4, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@29
    move-result v5

    #@2a
    if-eqz v5, :cond_3

    #@2c
    .line 6875
    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    #@2f
    .line 6876
    return-object v2

    #@30
    .line 6878
    :cond_3
    iget-object v3, v2, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    #@32
    .line 6879
    .local v3, "secondCurrentParent":Landroid/view/ViewParent;
    instance-of v5, v3, Landroid/view/View;

    #@34
    if-eqz v5, :cond_4

    #@36
    move-object v2, v3

    #@37
    .line 6880
    check-cast v2, Landroid/view/View;

    #@39
    .local v2, "secondCurrent":Landroid/view/View;
    goto :goto_1

    #@3a
    .line 6882
    .end local v2    # "secondCurrent":Landroid/view/View;
    :cond_4
    const/4 v2, 0x0

    #@3b
    .local v2, "secondCurrent":Landroid/view/View;
    goto :goto_1

    #@3c
    .line 6885
    .end local v2    # "secondCurrent":Landroid/view/View;
    .end local v3    # "secondCurrentParent":Landroid/view/ViewParent;
    :cond_5
    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    #@3f
    .line 6886
    return-object v6
.end method

.method private static getGfxInfo(Landroid/view/View;[I)V
    .locals 7
    .param p0, "view"    # Landroid/view/View;
    .param p1, "info"    # [I

    #@0
    .prologue
    .line 5870
    iget-object v3, p0, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    #@2
    .line 5871
    .local v3, "renderNode":Landroid/view/RenderNode;
    const/4 v4, 0x0

    #@3
    aget v5, p1, v4

    #@5
    add-int/lit8 v5, v5, 0x1

    #@7
    aput v5, p1, v4

    #@9
    .line 5872
    if-eqz v3, :cond_0

    #@b
    .line 5873
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
    .line 5876
    :cond_0
    instance-of v4, p0, Landroid/view/ViewGroup;

    #@17
    if-eqz v4, :cond_1

    #@19
    move-object v1, p0

    #@1a
    .line 5877
    check-cast v1, Landroid/view/ViewGroup;

    #@1c
    .line 5879
    .local v1, "group":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    #@1f
    move-result v0

    #@20
    .line 5880
    .local v0, "count":I
    const/4 v2, 0x0

    #@21
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    #@23
    .line 5881
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@26
    move-result-object v4

    #@27
    invoke-static {v4, p1}, Landroid/view/ViewRootImpl;->getGfxInfo(Landroid/view/View;[I)V

    #@2a
    .line 5880
    add-int/lit8 v2, v2, 0x1

    #@2c
    goto :goto_0

    #@2d
    .line 5869
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
    .line 1301
    const/4 v0, 0x0

    #@1
    .line 1303
    .local v0, "vis":I
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@3
    const/high16 v2, 0x4000000

    #@5
    and-int/2addr v1, v2

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 1304
    const/16 v0, 0x500

    #@a
    .line 1306
    :cond_0
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@c
    const/high16 v2, 0x8000000

    #@e
    and-int/2addr v1, v2

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 1307
    or-int/lit16 v0, v0, 0x300

    #@13
    .line 1309
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
    .line 2497
    packed-switch p1, :pswitch_data_0

    #@5
    .line 2509
    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@8
    move-result v0

    #@9
    .line 2512
    .local v0, "measureSpec":I
    :goto_0
    return v0

    #@a
    .line 2501
    .end local v0    # "measureSpec":I
    :pswitch_0
    invoke-static {p0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@d
    move-result v0

    #@e
    .restart local v0    # "measureSpec":I
    goto :goto_0

    #@f
    .line 2505
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
    .line 2497
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static getRunQueue()Landroid/view/HandlerActionQueue;
    .locals 2

    #@0
    .prologue
    .line 7202
    sget-object v1, Landroid/view/ViewRootImpl;->sRunQueues:Ljava/lang/ThreadLocal;

    #@2
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/view/HandlerActionQueue;

    #@8
    .line 7203
    .local v0, "rq":Landroid/view/HandlerActionQueue;
    if-eqz v0, :cond_0

    #@a
    .line 7204
    return-object v0

    #@b
    .line 7206
    :cond_0
    new-instance v0, Landroid/view/HandlerActionQueue;

    #@d
    .end local v0    # "rq":Landroid/view/HandlerActionQueue;
    invoke-direct {v0}, Landroid/view/HandlerActionQueue;-><init>()V

    #@10
    .line 7207
    .restart local v0    # "rq":Landroid/view/HandlerActionQueue;
    sget-object v1, Landroid/view/ViewRootImpl;->sRunQueues:Ljava/lang/ThreadLocal;

    #@12
    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    #@15
    .line 7208
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
    .line 2420
    .local p1, "layoutRequesters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@3
    move-result v2

    #@4
    .line 2421
    .local v2, "numViewsRequestingLayout":I
    const/4 v4, 0x0

    #@5
    .line 2422
    .local v4, "validLayoutRequesters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v1, 0x0

    #@6
    .end local v4    # "validLayoutRequesters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_6

    #@8
    .line 2423
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@b
    move-result-object v5

    #@c
    check-cast v5, Landroid/view/View;

    #@e
    .line 2424
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
    .line 2425
    if-nez p2, :cond_0

    #@1a
    iget v6, v5, Landroid/view/View;->mPrivateFlags:I

    #@1c
    and-int/lit16 v6, v6, 0x1000

    #@1e
    .line 2426
    const/16 v7, 0x1000

    #@20
    .line 2425
    if-ne v6, v7, :cond_3

    #@22
    .line 2427
    :cond_0
    const/4 v0, 0x0

    #@23
    .line 2428
    .local v0, "gone":Z
    move-object v3, v5

    #@24
    .line 2430
    :goto_1
    if-eqz v3, :cond_1

    #@26
    .line 2431
    iget v6, v3, Landroid/view/View;->mViewFlags:I

    #@28
    and-int/lit8 v6, v6, 0xc

    #@2a
    const/16 v7, 0x8

    #@2c
    if-ne v6, v7, :cond_4

    #@2e
    .line 2432
    const/4 v0, 0x1

    #@2f
    .line 2441
    :cond_1
    if-nez v0, :cond_3

    #@31
    .line 2442
    if-nez v4, :cond_2

    #@33
    .line 2443
    new-instance v4, Ljava/util/ArrayList;

    #@35
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@38
    .line 2445
    :cond_2
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@3b
    .line 2422
    .end local v0    # "gone":Z
    :cond_3
    add-int/lit8 v1, v1, 0x1

    #@3d
    goto :goto_0

    #@3e
    .line 2435
    .restart local v0    # "gone":Z
    :cond_4
    iget-object v6, v3, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    #@40
    instance-of v6, v6, Landroid/view/View;

    #@42
    if-eqz v6, :cond_5

    #@44
    .line 2436
    iget-object v3, v3, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    #@46
    check-cast v3, Landroid/view/View;

    #@48
    .local v3, "parent":Landroid/view/View;
    goto :goto_1

    #@49
    .line 2438
    .end local v3    # "parent":Landroid/view/View;
    :cond_5
    const/4 v3, 0x0

    #@4a
    .local v3, "parent":Landroid/view/View;
    goto :goto_1

    #@4b
    .line 2449
    .end local v0    # "gone":Z
    .end local v3    # "parent":Landroid/view/View;
    .end local v5    # "view":Landroid/view/View;
    :cond_6
    if-nez p2, :cond_9

    #@4d
    .line 2451
    const/4 v1, 0x0

    #@4e
    :goto_2
    if-ge v1, v2, :cond_9

    #@50
    .line 2452
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@53
    move-result-object v5

    #@54
    check-cast v5, Landroid/view/View;

    #@56
    .line 2453
    :goto_3
    if-eqz v5, :cond_8

    #@58
    .line 2454
    iget v6, v5, Landroid/view/View;->mPrivateFlags:I

    #@5a
    and-int/lit16 v6, v6, 0x1000

    #@5c
    if-eqz v6, :cond_8

    #@5e
    .line 2455
    iget v6, v5, Landroid/view/View;->mPrivateFlags:I

    #@60
    and-int/lit16 v6, v6, -0x1001

    #@62
    iput v6, v5, Landroid/view/View;->mPrivateFlags:I

    #@64
    .line 2456
    iget-object v6, v5, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    #@66
    instance-of v6, v6, Landroid/view/View;

    #@68
    if-eqz v6, :cond_7

    #@6a
    .line 2457
    iget-object v5, v5, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    #@6c
    check-cast v5, Landroid/view/View;

    #@6e
    .restart local v5    # "view":Landroid/view/View;
    goto :goto_3

    #@6f
    .line 2459
    .end local v5    # "view":Landroid/view/View;
    :cond_7
    const/4 v5, 0x0

    #@70
    .local v5, "view":Landroid/view/View;
    goto :goto_3

    #@71
    .line 2451
    .end local v5    # "view":Landroid/view/View;
    :cond_8
    add-int/lit8 v1, v1, 0x1

    #@73
    goto :goto_2

    #@74
    .line 2464
    :cond_9
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    #@77
    .line 2465
    return-object v4
.end method

.method private handleDragEvent(Landroid/view/DragEvent;)V
    .locals 10
    .param p1, "event"    # Landroid/view/DragEvent;

    #@0
    .prologue
    const/4 v9, 0x3

    #@1
    const/4 v8, 0x2

    #@2
    const/4 v7, 0x0

    #@3
    .line 5511
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@5
    if-eqz v4, :cond_1

    #@7
    iget-boolean v4, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    #@9
    if-eqz v4, :cond_1

    #@b
    .line 5512
    iget v3, p1, Landroid/view/DragEvent;->mAction:I

    #@d
    .line 5516
    .local v3, "what":I
    const/4 v4, 0x1

    #@e
    if-ne v3, v4, :cond_2

    #@10
    .line 5517
    iput-object v7, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    #@12
    .line 5518
    iget-object v4, p1, Landroid/view/DragEvent;->mClipDescription:Landroid/content/ClipDescription;

    #@14
    iput-object v4, p0, Landroid/view/ViewRootImpl;->mDragDescription:Landroid/content/ClipDescription;

    #@16
    .line 5523
    :goto_0
    const/4 v4, 0x6

    #@17
    if-ne v3, v4, :cond_3

    #@19
    .line 5527
    sget-boolean v4, Landroid/view/View;->sCascadedDragDrop:Z

    #@1b
    if-eqz v4, :cond_0

    #@1d
    .line 5528
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@1f
    invoke-virtual {v4, p1}, Landroid/view/View;->dispatchDragEnterExitInPreN(Landroid/view/DragEvent;)Z

    #@22
    .line 5530
    :cond_0
    invoke-virtual {p0, v7, p1}, Landroid/view/ViewRootImpl;->setDragFocus(Landroid/view/View;Landroid/view/DragEvent;)V

    #@25
    .line 5596
    .end local v3    # "what":I
    :cond_1
    :goto_1
    invoke-virtual {p1}, Landroid/view/DragEvent;->recycle()V

    #@28
    .line 5507
    return-void

    #@29
    .line 5520
    .restart local v3    # "what":I
    :cond_2
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mDragDescription:Landroid/content/ClipDescription;

    #@2b
    iput-object v4, p1, Landroid/view/DragEvent;->mClipDescription:Landroid/content/ClipDescription;

    #@2d
    goto :goto_0

    #@2e
    .line 5533
    :cond_3
    if-eq v3, v8, :cond_4

    #@30
    if-ne v3, v9, :cond_7

    #@32
    .line 5534
    :cond_4
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mDragPoint:Landroid/graphics/PointF;

    #@34
    iget v5, p1, Landroid/view/DragEvent;->mX:F

    #@36
    iget v6, p1, Landroid/view/DragEvent;->mY:F

    #@38
    invoke-virtual {v4, v5, v6}, Landroid/graphics/PointF;->set(FF)V

    #@3b
    .line 5535
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@3d
    if-eqz v4, :cond_5

    #@3f
    .line 5536
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@41
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mDragPoint:Landroid/graphics/PointF;

    #@43
    invoke-virtual {v4, v5}, Landroid/content/res/CompatibilityInfo$Translator;->translatePointInScreenToAppWindow(Landroid/graphics/PointF;)V

    #@46
    .line 5539
    :cond_5
    iget v4, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    #@48
    if-eqz v4, :cond_6

    #@4a
    .line 5540
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mDragPoint:Landroid/graphics/PointF;

    #@4c
    const/4 v5, 0x0

    #@4d
    iget v6, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    #@4f
    int-to-float v6, v6

    #@50
    invoke-virtual {v4, v5, v6}, Landroid/graphics/PointF;->offset(FF)V

    #@53
    .line 5543
    :cond_6
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mDragPoint:Landroid/graphics/PointF;

    #@55
    iget v4, v4, Landroid/graphics/PointF;->x:F

    #@57
    iput v4, p1, Landroid/view/DragEvent;->mX:F

    #@59
    .line 5544
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mDragPoint:Landroid/graphics/PointF;

    #@5b
    iget v4, v4, Landroid/graphics/PointF;->y:F

    #@5d
    iput v4, p1, Landroid/view/DragEvent;->mY:F

    #@5f
    .line 5548
    :cond_7
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    #@61
    .line 5551
    .local v1, "prevDragView":Landroid/view/View;
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@63
    invoke-virtual {v4, p1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    #@66
    move-result v2

    #@67
    .line 5553
    .local v2, "result":Z
    if-ne v3, v8, :cond_8

    #@69
    iget-boolean v4, p1, Landroid/view/DragEvent;->mEventHandlerWasCalled:Z

    #@6b
    if-eqz v4, :cond_c

    #@6d
    .line 5560
    :cond_8
    :goto_2
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    #@6f
    if-eq v1, v4, :cond_a

    #@71
    .line 5562
    if-eqz v1, :cond_9

    #@73
    .line 5563
    :try_start_0
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    #@75
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    #@77
    invoke-interface {v4, v5}, Landroid/view/IWindowSession;->dragRecipientExited(Landroid/view/IWindow;)V

    #@7a
    .line 5565
    :cond_9
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    #@7c
    if-eqz v4, :cond_a

    #@7e
    .line 5566
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    #@80
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    #@82
    invoke-interface {v4, v5}, Landroid/view/IWindowSession;->dragRecipientEntered(Landroid/view/IWindow;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@85
    .line 5574
    :cond_a
    :goto_3
    if-ne v3, v9, :cond_b

    #@87
    .line 5575
    iput-object v7, p0, Landroid/view/ViewRootImpl;->mDragDescription:Landroid/content/ClipDescription;

    #@89
    .line 5577
    :try_start_1
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    #@8b
    new-instance v5, Ljava/lang/StringBuilder;

    #@8d
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@90
    const-string/jumbo v6, "Reporting drop result: "

    #@93
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    move-result-object v5

    #@97
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v5

    #@9b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9e
    move-result-object v5

    #@9f
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@a2
    .line 5578
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    #@a4
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    #@a6
    invoke-interface {v4, v5, v2}, Landroid/view/IWindowSession;->reportDropResult(Landroid/view/IWindow;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@a9
    .line 5585
    :cond_b
    :goto_4
    const/4 v4, 0x4

    #@aa
    if-ne v3, v4, :cond_1

    #@ac
    .line 5586
    iput-object v7, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    #@ae
    .line 5587
    invoke-virtual {p0, v7}, Landroid/view/ViewRootImpl;->setLocalDragState(Ljava/lang/Object;)V

    #@b1
    .line 5588
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@b3
    iput-object v7, v4, Landroid/view/View$AttachInfo;->mDragToken:Landroid/os/IBinder;

    #@b5
    .line 5589
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@b7
    iget-object v4, v4, Landroid/view/View$AttachInfo;->mDragSurface:Landroid/view/Surface;

    #@b9
    if-eqz v4, :cond_1

    #@bb
    .line 5590
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@bd
    iget-object v4, v4, Landroid/view/View$AttachInfo;->mDragSurface:Landroid/view/Surface;

    #@bf
    invoke-virtual {v4}, Landroid/view/Surface;->release()V

    #@c2
    .line 5591
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@c4
    iput-object v7, v4, Landroid/view/View$AttachInfo;->mDragSurface:Landroid/view/Surface;

    #@c6
    goto/16 :goto_1

    #@c8
    .line 5556
    :cond_c
    invoke-virtual {p0, v7, p1}, Landroid/view/ViewRootImpl;->setDragFocus(Landroid/view/View;Landroid/view/DragEvent;)V

    #@cb
    goto :goto_2

    #@cc
    .line 5568
    :catch_0
    move-exception v0

    #@cd
    .line 5569
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    #@cf
    const-string/jumbo v5, "Unable to note drag target change"

    #@d2
    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@d5
    goto :goto_3

    #@d6
    .line 5579
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    #@d7
    .line 5580
    .restart local v0    # "e":Landroid/os/RemoteException;
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    #@d9
    const-string/jumbo v5, "Unable to report drop result"

    #@dc
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@df
    goto :goto_4
.end method

.method private handleOutOfResourcesException(Landroid/view/Surface$OutOfResourcesException;)V
    .locals 3
    .param p1, "e"    # Landroid/view/Surface$OutOfResourcesException;

    #@0
    .prologue
    .line 2260
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    #@2
    const-string/jumbo v2, "OutOfResourcesException initializing HW surface"

    #@5
    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@8
    .line 2262
    :try_start_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    #@a
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    #@c
    invoke-interface {v1, v2}, Landroid/view/IWindowSession;->outOfMemory(Landroid/view/IWindow;)Z

    #@f
    move-result v1

    #@10
    if-nez v1, :cond_0

    #@12
    .line 2263
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@15
    move-result v1

    #@16
    const/16 v2, 0x3e8

    #@18
    if-eq v1, v2, :cond_0

    #@1a
    .line 2264
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    #@1c
    const-string/jumbo v2, "No processes killed for memory; killing self"

    #@1f
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    .line 2265
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@25
    move-result v1

    #@26
    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@29
    .line 2269
    :cond_0
    :goto_0
    const/4 v1, 0x1

    #@2a
    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    #@2c
    .line 2259
    return-void

    #@2d
    .line 2267
    :catch_0
    move-exception v0

    #@2e
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private handleWindowContentChangedEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 18
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    #@0
    .prologue
    .line 6728
    move-object/from16 v0, p0

    #@2
    iget-object v7, v0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    #@4
    .line 6729
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
    .line 6731
    :cond_0
    return-void

    #@f
    .line 6734
    :cond_1
    invoke-virtual {v7}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    #@12
    move-result-object v14

    #@13
    .line 6735
    .local v14, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-nez v14, :cond_2

    #@15
    .line 6737
    const/16 v16, 0x0

    #@17
    move-object/from16 v0, v16

    #@19
    move-object/from16 v1, p0

    #@1b
    iput-object v0, v1, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    #@1d
    .line 6738
    const/16 v16, 0x0

    #@1f
    move-object/from16 v0, v16

    #@21
    move-object/from16 v1, p0

    #@23
    iput-object v0, v1, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    #@25
    .line 6739
    const/16 v16, 0x0

    #@27
    move/from16 v0, v16

    #@29
    invoke-virtual {v7, v0}, Landroid/view/View;->clearAccessibilityFocusNoCallbacks(I)V

    #@2c
    .line 6740
    return-void

    #@2d
    .line 6745
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityEvent;->getContentChangeTypes()I

    #@30
    move-result v3

    #@31
    .line 6746
    .local v3, "changes":I
    and-int/lit8 v16, v3, 0x1

    #@33
    if-nez v16, :cond_3

    #@35
    .line 6747
    if-eqz v3, :cond_3

    #@37
    .line 6748
    return-void

    #@38
    .line 6751
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    #@3b
    move-result-wide v4

    #@3c
    .line 6752
    .local v4, "eventSourceNodeId":J
    invoke-static {v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    #@3f
    move-result v2

    #@40
    .line 6755
    .local v2, "changedViewId":I
    const/4 v10, 0x0

    #@41
    .line 6756
    .local v10, "hostInSubtree":Z
    move-object/from16 v0, p0

    #@43
    iget-object v15, v0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    #@45
    .line 6757
    :goto_0
    if-eqz v15, :cond_4

    #@47
    if-eqz v10, :cond_5

    #@49
    .line 6771
    :cond_4
    if-nez v10, :cond_8

    #@4b
    .line 6772
    return-void

    #@4c
    .line 6758
    :cond_5
    invoke-virtual {v15}, Landroid/view/View;->getAccessibilityViewId()I

    #@4f
    move-result v16

    #@50
    move/from16 v0, v16

    #@52
    if-ne v2, v0, :cond_6

    #@54
    .line 6759
    const/4 v10, 0x1

    #@55
    goto :goto_0

    #@56
    .line 6761
    :cond_6
    invoke-virtual {v15}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@59
    move-result-object v13

    #@5a
    .line 6762
    .local v13, "parent":Landroid/view/ViewParent;
    instance-of v0, v13, Landroid/view/View;

    #@5c
    move/from16 v16, v0

    #@5e
    if-eqz v16, :cond_7

    #@60
    move-object v15, v13

    #@61
    .line 6763
    check-cast v15, Landroid/view/View;

    #@63
    .local v15, "root":Landroid/view/View;
    goto :goto_0

    #@64
    .line 6765
    .end local v15    # "root":Landroid/view/View;
    :cond_7
    const/4 v15, 0x0

    #@65
    .local v15, "root":Landroid/view/View;
    goto :goto_0

    #@66
    .line 6775
    .end local v13    # "parent":Landroid/view/ViewParent;
    .end local v15    # "root":Landroid/view/View;
    :cond_8
    move-object/from16 v0, p0

    #@68
    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    #@6a
    move-object/from16 v16, v0

    #@6c
    invoke-virtual/range {v16 .. v16}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    #@6f
    move-result-wide v8

    #@70
    .line 6776
    .local v8, "focusedSourceNodeId":J
    invoke-static {v8, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    #@73
    move-result v6

    #@74
    .line 6777
    .local v6, "focusedChildId":I
    const v16, 0x7fffffff

    #@77
    move/from16 v0, v16

    #@79
    if-ne v6, v0, :cond_9

    #@7b
    .line 6779
    const/4 v6, -0x1

    #@7c
    .line 6783
    :cond_9
    move-object/from16 v0, p0

    #@7e
    iget-object v12, v0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    #@80
    .line 6784
    .local v12, "oldBounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    #@82
    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    #@84
    move-object/from16 v16, v0

    #@86
    move-object/from16 v0, v16

    #@88
    invoke-virtual {v0, v12}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    #@8b
    .line 6785
    invoke-virtual {v14, v6}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@8e
    move-result-object v16

    #@8f
    move-object/from16 v0, v16

    #@91
    move-object/from16 v1, p0

    #@93
    iput-object v0, v1, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    #@95
    .line 6786
    move-object/from16 v0, p0

    #@97
    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    #@99
    move-object/from16 v16, v0

    #@9b
    if-nez v16, :cond_b

    #@9d
    .line 6788
    const/16 v16, 0x0

    #@9f
    move-object/from16 v0, v16

    #@a1
    move-object/from16 v1, p0

    #@a3
    iput-object v0, v1, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    #@a5
    .line 6789
    const/16 v16, 0x0

    #@a7
    move/from16 v0, v16

    #@a9
    invoke-virtual {v7, v0}, Landroid/view/View;->clearAccessibilityFocusNoCallbacks(I)V

    #@ac
    .line 6794
    sget-object v16, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLEAR_ACCESSIBILITY_FOCUS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    #@ae
    invoke-virtual/range {v16 .. v16}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    #@b1
    move-result v16

    #@b2
    const/16 v17, 0x0

    #@b4
    .line 6793
    move/from16 v0, v16

    #@b6
    move-object/from16 v1, v17

    #@b8
    invoke-virtual {v14, v6, v0, v1}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    #@bb
    .line 6795
    move-object/from16 v0, p0

    #@bd
    invoke-direct {v0, v12}, Landroid/view/ViewRootImpl;->invalidateRectOnScreen(Landroid/graphics/Rect;)V

    #@c0
    .line 6727
    :cond_a
    :goto_1
    return-void

    #@c1
    .line 6798
    :cond_b
    move-object/from16 v0, p0

    #@c3
    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    #@c5
    move-object/from16 v16, v0

    #@c7
    invoke-virtual/range {v16 .. v16}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen()Landroid/graphics/Rect;

    #@ca
    move-result-object v11

    #@cb
    .line 6799
    .local v11, "newBounds":Landroid/graphics/Rect;
    invoke-virtual {v12, v11}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@ce
    move-result v16

    #@cf
    if-nez v16, :cond_a

    #@d1
    .line 6800
    invoke-virtual {v12, v11}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    #@d4
    .line 6801
    move-object/from16 v0, p0

    #@d6
    invoke-direct {v0, v12}, Landroid/view/ViewRootImpl;->invalidateRectOnScreen(Landroid/graphics/Rect;)V

    #@d9
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
    .line 1113
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mDirty:Landroid/graphics/Rect;

    #@6
    .line 1114
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
    .line 1120
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
    .line 1123
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@1f
    iget v0, v3, Landroid/view/View$AttachInfo;->mApplicationScale:F

    #@21
    .line 1125
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
    .line 1124
    invoke-virtual {v2, v8, v8, v3, v4}, Landroid/graphics/Rect;->intersect(IIII)Z

    #@30
    move-result v1

    #@31
    .line 1126
    .local v1, "intersected":Z
    if-nez v1, :cond_1

    #@33
    .line 1127
    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    #@36
    .line 1129
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
    .line 1130
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    #@43
    .line 1112
    :cond_3
    return-void

    #@44
    .line 1115
    .end local v0    # "appScale":F
    .end local v1    # "intersected":Z
    :cond_4
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@46
    iput-boolean v4, v3, Landroid/view/View$AttachInfo;->mSetIgnoreDirtyState:Z

    #@48
    .line 1116
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@4a
    iput-boolean v4, v3, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    #@4c
    goto :goto_0
.end method

.method public static invokeFunctor(JZ)V
    .locals 0
    .param p0, "functor"    # J
    .param p2, "waitForCompletion"    # Z

    #@0
    .prologue
    .line 812
    invoke-static {p0, p1, p2}, Landroid/view/ThreadedRenderer;->invokeFunctor(JZ)V

    #@3
    .line 811
    return-void
.end method

.method private isInLocalFocusMode()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 772
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
    .line 506
    invoke-static {}, Landroid/view/WindowManagerGlobal;->peekWindowSession()Landroid/view/IWindowSession;

    #@3
    move-result-object v1

    #@4
    .line 507
    .local v1, "windowSession":Landroid/view/IWindowSession;
    if-eqz v1, :cond_0

    #@6
    .line 509
    :try_start_0
    invoke-interface {v1}, Landroid/view/IWindowSession;->getInTouchMode()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v2

    #@a
    return v2

    #@b
    .line 510
    :catch_0
    move-exception v0

    #@c
    .line 513
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
    .line 5432
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCode()I

    #@3
    move-result v0

    #@4
    sparse-switch v0, :sswitch_data_0

    #@7
    .line 5447
    const/4 v0, 0x0

    #@8
    return v0

    #@9
    .line 5445
    :sswitch_0
    const/4 v0, 0x1

    #@a
    return v0

    #@b
    .line 5432
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
    .line 6280
    instance-of v5, p0, Landroid/view/KeyEvent;

    #@4
    if-eqz v5, :cond_1

    #@6
    move-object v1, p0

    #@7
    .line 6281
    check-cast v1, Landroid/view/KeyEvent;

    #@9
    .line 6282
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
    .line 6284
    check-cast v2, Landroid/view/MotionEvent;

    #@15
    .line 6285
    .local v2, "motionEvent":Landroid/view/MotionEvent;
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    #@18
    move-result v0

    #@19
    .line 6286
    .local v0, "action":I
    if-eq v0, v3, :cond_2

    #@1b
    .line 6287
    const/4 v5, 0x3

    #@1c
    if-ne v0, v5, :cond_3

    #@1e
    .line 6286
    :cond_2
    :goto_1
    return v3

    #@1f
    .line 6288
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
    .line 5456
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
    .line 3350
    if-ne p0, p1, :cond_0

    #@2
    .line 3351
    const/4 v1, 0x1

    #@3
    return v1

    #@4
    .line 3354
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@7
    move-result-object v0

    #@8
    .line 3355
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
    .line 3797
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@6
    if-eqz v2, :cond_2

    #@8
    .line 3798
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@a
    invoke-virtual {v2}, Landroid/view/View;->hasFocus()Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_1

    #@10
    .line 3799
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@12
    invoke-virtual {v2}, Landroid/view/View;->findFocus()Landroid/view/View;

    #@15
    move-result-object v1

    #@16
    .line 3800
    .local v1, "focusedView":Landroid/view/View;
    instance-of v2, v1, Landroid/view/ViewGroup;

    #@18
    if-nez v2, :cond_0

    #@1a
    .line 3802
    return v4

    #@1b
    .line 3803
    :cond_0
    check-cast v1, Landroid/view/ViewGroup;

    #@1d
    .end local v1    # "focusedView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    #@20
    move-result v2

    #@21
    .line 3804
    const/high16 v3, 0x40000

    #@23
    .line 3803
    if-eq v2, v3, :cond_1

    #@25
    .line 3807
    return v4

    #@26
    .line 3813
    :cond_1
    invoke-virtual {p0, v5, v6}, Landroid/view/ViewRootImpl;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    #@29
    move-result-object v0

    #@2a
    .line 3814
    .local v0, "focused":Landroid/view/View;
    if-eqz v0, :cond_2

    #@2c
    .line 3815
    invoke-virtual {v0, v6}, Landroid/view/View;->requestFocus(I)Z

    #@2f
    move-result v2

    #@30
    return v2

    #@31
    .line 3818
    .end local v0    # "focused":Landroid/view/View;
    :cond_2
    return v4
.end method

.method private maybeHandleWindowMove(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "frame"    # Landroid/graphics/Rect;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 2241
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@4
    iget v2, v2, Landroid/view/View$AttachInfo;->mWindowLeft:I

    #@6
    iget v3, p1, Landroid/graphics/Rect;->left:I

    #@8
    if-ne v2, v3, :cond_0

    #@a
    .line 2242
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@c
    iget v2, v2, Landroid/view/View$AttachInfo;->mWindowTop:I

    #@e
    iget v3, p1, Landroid/graphics/Rect;->top:I

    #@10
    if-eq v2, v3, :cond_6

    #@12
    .line 2243
    .local v0, "windowMoved":Z
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    #@14
    .line 2244
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@16
    if-eqz v2, :cond_1

    #@18
    .line 2245
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@1a
    invoke-virtual {v2, p1}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWinFrame(Landroid/graphics/Rect;)V

    #@1d
    .line 2247
    :cond_1
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@1f
    iget v3, p1, Landroid/graphics/Rect;->left:I

    #@21
    iput v3, v2, Landroid/view/View$AttachInfo;->mWindowLeft:I

    #@23
    .line 2248
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@25
    iget v3, p1, Landroid/graphics/Rect;->top:I

    #@27
    iput v3, v2, Landroid/view/View$AttachInfo;->mWindowTop:I

    #@29
    .line 2250
    :cond_2
    if-nez v0, :cond_3

    #@2b
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@2d
    iget-boolean v2, v2, Landroid/view/View$AttachInfo;->mNeedsUpdateLightCenter:Z

    #@2f
    if-eqz v2, :cond_5

    #@31
    .line 2252
    :cond_3
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@33
    iget-object v2, v2, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    #@35
    if-eqz v2, :cond_4

    #@37
    .line 2253
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@39
    iget-object v2, v2, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    #@3b
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@3d
    invoke-virtual {v2, v3}, Landroid/view/ThreadedRenderer;->setLightCenter(Landroid/view/View$AttachInfo;)V

    #@40
    .line 2255
    :cond_4
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@42
    iput-boolean v1, v2, Landroid/view/View$AttachInfo;->mNeedsUpdateLightCenter:Z

    #@44
    .line 2231
    :cond_5
    return-void

    #@45
    .end local v0    # "windowMoved":Z
    :cond_6
    move v0, v1

    #@46
    .line 2242
    goto :goto_0
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
    .line 1316
    const/4 v5, 0x0

    #@3
    .line 1322
    .local v5, "windowSizeMayChange":Z
    const/4 v3, 0x0

    #@4
    .line 1323
    .local v3, "goodMeasure":Z
    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    #@6
    const/4 v7, -0x2

    #@7
    if-ne v6, v7, :cond_1

    #@9
    .line 1328
    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@c
    move-result-object v4

    #@d
    .line 1329
    .local v4, "packageMetrics":Landroid/util/DisplayMetrics;
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTmpValue:Landroid/util/TypedValue;

    #@f
    const v7, 0x1050010

    #@12
    const/4 v8, 0x1

    #@13
    invoke-virtual {p3, v7, v6, v8}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    #@16
    .line 1330
    const/4 v0, 0x0

    #@17
    .line 1331
    .local v0, "baseSize":I
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTmpValue:Landroid/util/TypedValue;

    #@19
    iget v6, v6, Landroid/util/TypedValue;->type:I

    #@1b
    const/4 v7, 0x5

    #@1c
    if-ne v6, v7, :cond_0

    #@1e
    .line 1332
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTmpValue:Landroid/util/TypedValue;

    #@20
    invoke-virtual {v6, v4}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    #@23
    move-result v6

    #@24
    float-to-int v0, v6

    #@25
    .line 1336
    :cond_0
    if-eqz v0, :cond_1

    #@27
    if-le p4, v0, :cond_1

    #@29
    .line 1337
    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    #@2b
    invoke-static {v0, v6}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    #@2e
    move-result v2

    #@2f
    .line 1338
    .local v2, "childWidthMeasureSpec":I
    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    #@31
    invoke-static {p5, v6}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    #@34
    move-result v1

    #@35
    .line 1339
    .local v1, "childHeightMeasureSpec":I
    invoke-direct {p0, v2, v1}, Landroid/view/ViewRootImpl;->performMeasure(II)V

    #@38
    .line 1344
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidthAndState()I

    #@3b
    move-result v6

    #@3c
    and-int/2addr v6, v9

    #@3d
    if-nez v6, :cond_4

    #@3f
    .line 1345
    const/4 v3, 0x1

    #@40
    .line 1363
    .end local v0    # "baseSize":I
    .end local v1    # "childHeightMeasureSpec":I
    .end local v2    # "childWidthMeasureSpec":I
    .end local v4    # "packageMetrics":Landroid/util/DisplayMetrics;
    :cond_1
    :goto_0
    if-nez v3, :cond_3

    #@42
    .line 1364
    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    #@44
    invoke-static {p4, v6}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    #@47
    move-result v2

    #@48
    .line 1365
    .restart local v2    # "childWidthMeasureSpec":I
    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    #@4a
    invoke-static {p5, v6}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    #@4d
    move-result v1

    #@4e
    .line 1366
    .restart local v1    # "childHeightMeasureSpec":I
    invoke-direct {p0, v2, v1}, Landroid/view/ViewRootImpl;->performMeasure(II)V

    #@51
    .line 1367
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
    .line 1368
    :cond_2
    const/4 v5, 0x1

    #@62
    .line 1378
    .end local v1    # "childHeightMeasureSpec":I
    .end local v2    # "childWidthMeasureSpec":I
    :cond_3
    return v5

    #@63
    .line 1348
    .restart local v0    # "baseSize":I
    .restart local v1    # "childHeightMeasureSpec":I
    .restart local v2    # "childWidthMeasureSpec":I
    .restart local v4    # "packageMetrics":Landroid/util/DisplayMetrics;
    :cond_4
    add-int v6, v0, p4

    #@65
    div-int/lit8 v0, v6, 0x2

    #@67
    .line 1351
    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    #@69
    invoke-static {v0, v6}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    #@6c
    move-result v2

    #@6d
    .line 1352
    invoke-direct {p0, v2, v1}, Landroid/view/ViewRootImpl;->performMeasure(II)V

    #@70
    .line 1355
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidthAndState()I

    #@73
    move-result v6

    #@74
    and-int/2addr v6, v9

    #@75
    if-nez v6, :cond_1

    #@77
    .line 1357
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
    .line 6128
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPool:Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@3
    .line 6129
    .local v0, "q":Landroid/view/ViewRootImpl$QueuedInputEvent;
    if-eqz v0, :cond_0

    #@5
    .line 6130
    iget v1, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPoolSize:I

    #@7
    add-int/lit8 v1, v1, -0x1

    #@9
    iput v1, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPoolSize:I

    #@b
    .line 6131
    iget-object v1, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@d
    iput-object v1, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPool:Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@f
    .line 6132
    iput-object v2, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@11
    .line 6137
    :goto_0
    iput-object p1, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    #@13
    .line 6138
    iput-object p2, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mReceiver:Landroid/view/InputEventReceiver;

    #@15
    .line 6139
    iput p3, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    #@17
    .line 6140
    return-object v0

    #@18
    .line 6134
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
    .locals 14

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    const-wide/16 v12, 0x8

    #@3
    const/4 v8, 0x0

    #@4
    const/4 v10, 0x0

    #@5
    .line 2598
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@7
    iget v7, v7, Landroid/view/View$AttachInfo;->mDisplayState:I

    #@9
    if-ne v7, v9, :cond_0

    #@b
    iget-boolean v7, p0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    #@d
    if-eqz v7, :cond_1

    #@f
    .line 2602
    :cond_0
    iget-boolean v5, p0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    #@11
    .line 2603
    .local v5, "fullRedrawNeeded":Z
    iput-boolean v8, p0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    #@13
    .line 2605
    iput-boolean v9, p0, Landroid/view/ViewRootImpl;->mIsDrawing:Z

    #@15
    .line 2606
    const-string/jumbo v7, "draw"

    #@18
    invoke-static {v12, v13, v7}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@1b
    .line 2608
    :try_start_0
    invoke-direct {p0, v5}, Landroid/view/ViewRootImpl;->draw(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    .line 2610
    iput-boolean v8, p0, Landroid/view/ViewRootImpl;->mIsDrawing:Z

    #@20
    .line 2611
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    #@23
    .line 2616
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@25
    iget-object v7, v7, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    #@27
    if-eqz v7, :cond_3

    #@29
    .line 2617
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@2b
    iget-object v7, v7, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    #@2d
    invoke-interface {v7}, Ljava/util/List;->size()I

    #@30
    move-result v2

    #@31
    .line 2618
    .local v2, "count":I
    const/4 v6, 0x0

    #@32
    .local v6, "i":I
    :goto_0
    if-ge v6, v2, :cond_2

    #@34
    .line 2619
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@36
    iget-object v7, v7, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    #@38
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@3b
    move-result-object v7

    #@3c
    check-cast v7, Landroid/view/RenderNode;

    #@3e
    invoke-virtual {v7}, Landroid/view/RenderNode;->endAllAnimators()V

    #@41
    .line 2618
    add-int/lit8 v6, v6, 0x1

    #@43
    goto :goto_0

    #@44
    .line 2599
    .end local v2    # "count":I
    .end local v5    # "fullRedrawNeeded":Z
    .end local v6    # "i":I
    :cond_1
    return-void

    #@45
    .line 2609
    .restart local v5    # "fullRedrawNeeded":Z
    :catchall_0
    move-exception v7

    #@46
    .line 2610
    iput-boolean v8, p0, Landroid/view/ViewRootImpl;->mIsDrawing:Z

    #@48
    .line 2611
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    #@4b
    .line 2609
    throw v7

    #@4c
    .line 2621
    .restart local v2    # "count":I
    .restart local v6    # "i":I
    :cond_2
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@4e
    iget-object v7, v7, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    #@50
    invoke-interface {v7}, Ljava/util/List;->clear()V

    #@53
    .line 2624
    .end local v2    # "count":I
    .end local v6    # "i":I
    :cond_3
    iget-boolean v7, p0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    #@55
    if-eqz v7, :cond_8

    #@57
    .line 2625
    iput-boolean v8, p0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    #@59
    .line 2628
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowDrawCountDown:Ljava/util/concurrent/CountDownLatch;

    #@5b
    if-eqz v7, :cond_4

    #@5d
    .line 2630
    :try_start_1
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowDrawCountDown:Ljava/util/concurrent/CountDownLatch;

    #@5f
    invoke-virtual {v7}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    #@62
    .line 2634
    :goto_1
    iput-object v10, p0, Landroid/view/ViewRootImpl;->mWindowDrawCountDown:Ljava/util/concurrent/CountDownLatch;

    #@64
    .line 2637
    :cond_4
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@66
    iget-object v7, v7, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    #@68
    if-eqz v7, :cond_5

    #@6a
    .line 2638
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@6c
    iget-object v7, v7, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    #@6e
    invoke-virtual {v7}, Landroid/view/ThreadedRenderer;->fence()V

    #@71
    .line 2639
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@73
    iget-object v7, v7, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    #@75
    iget-boolean v9, p0, Landroid/view/ViewRootImpl;->mStopped:Z

    #@77
    invoke-virtual {v7, v9}, Landroid/view/ThreadedRenderer;->setStopped(Z)V

    #@7a
    .line 2645
    :cond_5
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@7c
    if-eqz v7, :cond_7

    #@7e
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    #@80
    invoke-virtual {v7}, Landroid/view/Surface;->isValid()Z

    #@83
    move-result v7

    #@84
    if-eqz v7, :cond_7

    #@86
    .line 2646
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    #@88
    iget-object v9, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@8a
    invoke-interface {v7, v9}, Landroid/view/SurfaceHolder$Callback2;->surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V

    #@8d
    .line 2647
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@8f
    invoke-virtual {v7}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    #@92
    move-result-object v1

    #@93
    .line 2648
    .local v1, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    if-eqz v1, :cond_7

    #@95
    .line 2649
    array-length v9, v1

    #@96
    move v7, v8

    #@97
    :goto_2
    if-ge v7, v9, :cond_7

    #@99
    aget-object v0, v1, v7

    #@9b
    .line 2650
    .local v0, "c":Landroid/view/SurfaceHolder$Callback;
    instance-of v8, v0, Landroid/view/SurfaceHolder$Callback2;

    #@9d
    if-eqz v8, :cond_6

    #@9f
    .line 2651
    check-cast v0, Landroid/view/SurfaceHolder$Callback2;

    #@a1
    .end local v0    # "c":Landroid/view/SurfaceHolder$Callback;
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@a3
    invoke-interface {v0, v8}, Landroid/view/SurfaceHolder$Callback2;->surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V

    #@a6
    .line 2649
    :cond_6
    add-int/lit8 v7, v7, 0x1

    #@a8
    goto :goto_2

    #@a9
    .line 2631
    .end local v1    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :catch_0
    move-exception v4

    #@aa
    .line 2632
    .local v4, "e":Ljava/lang/InterruptedException;
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    #@ac
    const-string/jumbo v9, "Window redraw count down interruped!"

    #@af
    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@b2
    goto :goto_1

    #@b3
    .line 2657
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :cond_7
    :try_start_2
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    #@b5
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    #@b7
    invoke-interface {v7, v8}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    #@ba
    .line 2597
    :cond_8
    :goto_3
    return-void

    #@bb
    .line 2658
    :catch_1
    move-exception v3

    #@bc
    .local v3, "e":Landroid/os/RemoteException;
    goto :goto_3
.end method

.method private performLayout(Landroid/view/WindowManager$LayoutParams;II)V
    .locals 12
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "desiredWindowWidth"    # I
    .param p3, "desiredWindowHeight"    # I

    #@0
    .prologue
    .line 2334
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    #@3
    .line 2335
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mScrollMayChange:Z

    #@6
    .line 2336
    const/4 v0, 0x1

    #@7
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mInLayout:Z

    #@9
    .line 2338
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@b
    .line 2344
    .local v1, "host":Landroid/view/View;
    const-string/jumbo v0, "layout"

    #@e
    const-wide/16 v2, 0x8

    #@10
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@13
    .line 2346
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
    .line 2348
    const/4 v0, 0x0

    #@21
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mInLayout:Z

    #@23
    .line 2349
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLayoutRequesters:Ljava/util/ArrayList;

    #@25
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@28
    move-result v9

    #@29
    .line 2350
    .local v9, "numViewsRequestingLayout":I
    if-lez v9, :cond_1

    #@2b
    .line 2355
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLayoutRequesters:Ljava/util/ArrayList;

    #@2d
    .line 2356
    const/4 v2, 0x0

    #@2e
    .line 2355
    invoke-direct {p0, v0, v2}, Landroid/view/ViewRootImpl;->getValidLayoutRequesters(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    #@31
    move-result-object v10

    #@32
    .line 2357
    .local v10, "validLayoutRequesters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz v10, :cond_1

    #@34
    .line 2361
    const/4 v0, 0x1

    #@35
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mHandlingLayoutInLayoutRequest:Z

    #@37
    .line 2364
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    #@3a
    move-result v8

    #@3b
    .line 2365
    .local v8, "numValidRequests":I
    const/4 v7, 0x0

    #@3c
    .local v7, "i":I
    :goto_0
    if-ge v7, v8, :cond_0

    #@3e
    .line 2366
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@41
    move-result-object v11

    #@42
    check-cast v11, Landroid/view/View;

    #@44
    .line 2367
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
    .line 2368
    const-string/jumbo v3, " during layout: running second layout pass"

    #@5a
    .line 2367
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
    .line 2369
    invoke-virtual {v11}, Landroid/view/View;->requestLayout()V

    #@68
    .line 2365
    add-int/lit8 v7, v7, 0x1

    #@6a
    goto :goto_0

    #@6b
    .line 2371
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
    .line 2373
    const/4 v0, 0x1

    #@7d
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mInLayout:Z

    #@7f
    .line 2374
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
    .line 2376
    const/4 v0, 0x0

    #@8d
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mHandlingLayoutInLayoutRequest:Z

    #@8f
    .line 2380
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLayoutRequesters:Ljava/util/ArrayList;

    #@91
    const/4 v2, 0x1

    #@92
    invoke-direct {p0, v0, v2}, Landroid/view/ViewRootImpl;->getValidLayoutRequesters(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    #@95
    move-result-object v10

    #@96
    .line 2381
    if-eqz v10, :cond_1

    #@98
    .line 2382
    move-object v6, v10

    #@99
    .line 2384
    .local v6, "finalRequesters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-static {}, Landroid/view/ViewRootImpl;->getRunQueue()Landroid/view/HandlerActionQueue;

    #@9c
    move-result-object v0

    #@9d
    new-instance v2, Landroid/view/ViewRootImpl$2;

    #@9f
    invoke-direct {v2, p0, v10}, Landroid/view/ViewRootImpl$2;-><init>(Landroid/view/ViewRootImpl;Ljava/util/ArrayList;)V

    #@a2
    invoke-virtual {v0, v2}, Landroid/view/HandlerActionQueue;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a5
    .line 2401
    .end local v6    # "finalRequesters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v7    # "i":I
    .end local v8    # "numValidRequests":I
    .end local v10    # "validLayoutRequesters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_1
    const-wide/16 v2, 0x8

    #@a7
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    #@aa
    .line 2403
    const/4 v0, 0x0

    #@ab
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mInLayout:Z

    #@ad
    .line 2333
    return-void

    #@ae
    .line 2400
    .end local v9    # "numViewsRequestingLayout":I
    :catchall_0
    move-exception v0

    #@af
    .line 2401
    const-wide/16 v2, 0x8

    #@b1
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    #@b4
    .line 2400
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
    .line 2273
    const-string/jumbo v0, "measure"

    #@5
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@8
    .line 2275
    :try_start_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@a
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    .line 2277
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    #@10
    .line 2272
    return-void

    #@11
    .line 2276
    :catchall_0
    move-exception v0

    #@12
    .line 2277
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    #@15
    .line 2276
    throw v0
.end method

.method private performTraversals()V
    .locals 77

    #@0
    .prologue
    .line 1446
    move-object/from16 v0, p0

    #@2
    iget-object v5, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@4
    .line 1454
    .local v5, "host":Landroid/view/View;
    if-eqz v5, :cond_f

    #@6
    move-object/from16 v0, p0

    #@8
    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mAdded:Z

    #@a
    if-eqz v4, :cond_f

    #@c
    .line 1457
    const/4 v4, 0x1

    #@d
    move-object/from16 v0, p0

    #@f
    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mIsInTraversal:Z

    #@11
    .line 1458
    const/4 v4, 0x1

    #@12
    move-object/from16 v0, p0

    #@14
    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mWillDrawSoon:Z

    #@16
    .line 1459
    const/16 v76, 0x0

    #@18
    .line 1460
    .local v76, "windowSizeMayChange":Z
    const/16 v56, 0x0

    #@1a
    .line 1461
    .local v56, "newSurface":Z
    const/16 v65, 0x0

    #@1c
    .line 1462
    .local v65, "surfaceChanged":Z
    move-object/from16 v0, p0

    #@1e
    iget-object v6, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@20
    .line 1467
    .local v6, "lp":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->getHostVisibility()I

    #@23
    move-result v71

    #@24
    .line 1468
    .local v71, "viewVisibility":I
    move-object/from16 v0, p0

    #@26
    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mFirst:Z

    #@28
    if-nez v4, :cond_11

    #@2a
    .line 1469
    move-object/from16 v0, p0

    #@2c
    iget v4, v0, Landroid/view/ViewRootImpl;->mViewVisibility:I

    #@2e
    move/from16 v0, v71

    #@30
    if-ne v4, v0, :cond_10

    #@32
    move-object/from16 v0, p0

    #@34
    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mNewSurfaceNeeded:Z

    #@36
    move/from16 v72, v0

    #@38
    .line 1470
    :goto_0
    move-object/from16 v0, p0

    #@3a
    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mFirst:Z

    #@3c
    if-nez v4, :cond_15

    #@3e
    .line 1471
    move-object/from16 v0, p0

    #@40
    iget v4, v0, Landroid/view/ViewRootImpl;->mViewVisibility:I

    #@42
    if-nez v4, :cond_12

    #@44
    const/4 v4, 0x1

    #@45
    move v10, v4

    #@46
    :goto_1
    if-nez v71, :cond_13

    #@48
    const/4 v4, 0x1

    #@49
    :goto_2
    if-eq v10, v4, :cond_14

    #@4b
    const/16 v70, 0x1

    #@4d
    .line 1473
    .local v70, "viewUserVisibilityChanged":Z
    :goto_3
    const/16 v59, 0x0

    #@4f
    .line 1474
    .local v59, "params":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, p0

    #@51
    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    #@53
    if-eqz v4, :cond_0

    #@55
    .line 1475
    const/4 v4, 0x0

    #@56
    move-object/from16 v0, p0

    #@58
    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    #@5a
    .line 1476
    const/16 v65, 0x1

    #@5c
    .line 1477
    move-object/from16 v59, v6

    #@5e
    .line 1480
    .end local v59    # "params":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    move-object/from16 v0, p0

    #@60
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    #@62
    invoke-virtual {v4}, Landroid/view/Display;->getDisplayAdjustments()Landroid/view/DisplayAdjustments;

    #@65
    move-result-object v4

    #@66
    invoke-virtual {v4}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    #@69
    move-result-object v30

    #@6a
    .line 1481
    .local v30, "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    invoke-virtual/range {v30 .. v30}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    #@6d
    move-result v4

    #@6e
    move-object/from16 v0, p0

    #@70
    iget-boolean v10, v0, Landroid/view/ViewRootImpl;->mLastInCompatMode:Z

    #@72
    if-ne v4, v10, :cond_1

    #@74
    .line 1482
    move-object/from16 v59, v6

    #@76
    .line 1483
    .local v59, "params":Landroid/view/WindowManager$LayoutParams;
    const/4 v4, 0x1

    #@77
    move-object/from16 v0, p0

    #@79
    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    #@7b
    .line 1484
    const/4 v4, 0x1

    #@7c
    move-object/from16 v0, p0

    #@7e
    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    #@80
    .line 1485
    move-object/from16 v0, p0

    #@82
    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mLastInCompatMode:Z

    #@84
    if-eqz v4, :cond_16

    #@86
    .line 1486
    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@88
    and-int/lit16 v4, v4, -0x81

    #@8a
    iput v4, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@8c
    .line 1487
    const/4 v4, 0x0

    #@8d
    move-object/from16 v0, p0

    #@8f
    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mLastInCompatMode:Z

    #@91
    .line 1494
    .end local v59    # "params":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    :goto_4
    const/4 v4, 0x0

    #@92
    move-object/from16 v0, p0

    #@94
    iput v4, v0, Landroid/view/ViewRootImpl;->mWindowAttributesChangesFlag:I

    #@96
    .line 1496
    move-object/from16 v0, p0

    #@98
    iget-object v0, v0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    #@9a
    move-object/from16 v40, v0

    #@9c
    .line 1497
    .local v40, "frame":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    #@9e
    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mFirst:Z

    #@a0
    if-eqz v4, :cond_18

    #@a2
    .line 1498
    const/4 v4, 0x1

    #@a3
    move-object/from16 v0, p0

    #@a5
    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    #@a7
    .line 1499
    const/4 v4, 0x1

    #@a8
    move-object/from16 v0, p0

    #@aa
    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    #@ac
    .line 1501
    invoke-static {v6}, Landroid/view/ViewRootImpl;->shouldUseDisplaySize(Landroid/view/WindowManager$LayoutParams;)Z

    #@af
    move-result v4

    #@b0
    if-eqz v4, :cond_17

    #@b2
    .line 1503
    new-instance v63, Landroid/graphics/Point;

    #@b4
    invoke-direct/range {v63 .. v63}, Landroid/graphics/Point;-><init>()V

    #@b7
    .line 1504
    .local v63, "size":Landroid/graphics/Point;
    move-object/from16 v0, p0

    #@b9
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    #@bb
    move-object/from16 v0, v63

    #@bd
    invoke-virtual {v4, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    #@c0
    .line 1505
    move-object/from16 v0, v63

    #@c2
    iget v8, v0, Landroid/graphics/Point;->x:I

    #@c4
    .line 1506
    .local v8, "desiredWindowWidth":I
    move-object/from16 v0, v63

    #@c6
    iget v9, v0, Landroid/graphics/Point;->y:I

    #@c8
    .line 1516
    .end local v63    # "size":Landroid/graphics/Point;
    .local v9, "desiredWindowHeight":I
    :goto_5
    move-object/from16 v0, p0

    #@ca
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@cc
    const/4 v10, 0x1

    #@cd
    iput-boolean v10, v4, Landroid/view/View$AttachInfo;->mUse32BitDrawingCache:Z

    #@cf
    .line 1517
    move-object/from16 v0, p0

    #@d1
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@d3
    const/4 v10, 0x0

    #@d4
    iput-boolean v10, v4, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    #@d6
    .line 1518
    move-object/from16 v0, p0

    #@d8
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@da
    move/from16 v0, v71

    #@dc
    iput v0, v4, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    #@de
    .line 1519
    move-object/from16 v0, p0

    #@e0
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@e2
    const/4 v10, 0x0

    #@e3
    iput-boolean v10, v4, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    #@e5
    .line 1520
    move-object/from16 v0, p0

    #@e7
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mLastConfiguration:Landroid/content/res/Configuration;

    #@e9
    invoke-virtual {v5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    #@ec
    move-result-object v10

    #@ed
    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@f0
    move-result-object v10

    #@f1
    invoke-virtual {v4, v10}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    #@f4
    .line 1521
    move-object/from16 v0, p0

    #@f6
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@f8
    iget v4, v4, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    #@fa
    move-object/from16 v0, p0

    #@fc
    iput v4, v0, Landroid/view/ViewRootImpl;->mLastSystemUiVisibility:I

    #@fe
    .line 1523
    move-object/from16 v0, p0

    #@100
    iget v4, v0, Landroid/view/ViewRootImpl;->mViewLayoutDirectionInitial:I

    #@102
    const/4 v10, 0x2

    #@103
    if-ne v4, v10, :cond_2

    #@105
    .line 1524
    move-object/from16 v0, p0

    #@107
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mLastConfiguration:Landroid/content/res/Configuration;

    #@109
    invoke-virtual {v4}, Landroid/content/res/Configuration;->getLayoutDirection()I

    #@10c
    move-result v4

    #@10d
    invoke-virtual {v5, v4}, Landroid/view/View;->setLayoutDirection(I)V

    #@110
    .line 1526
    :cond_2
    move-object/from16 v0, p0

    #@112
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@114
    const/4 v10, 0x0

    #@115
    invoke-virtual {v5, v4, v10}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    #@118
    .line 1527
    move-object/from16 v0, p0

    #@11a
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@11c
    iget-object v4, v4, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    #@11e
    const/4 v10, 0x1

    #@11f
    invoke-virtual {v4, v10}, Landroid/view/ViewTreeObserver;->dispatchOnWindowAttachedChange(Z)V

    #@122
    .line 1528
    move-object/from16 v0, p0

    #@124
    invoke-virtual {v0, v5}, Landroid/view/ViewRootImpl;->dispatchApplyInsets(Landroid/view/View;)V

    #@127
    .line 1542
    :cond_3
    :goto_6
    if-eqz v72, :cond_7

    #@129
    .line 1543
    move-object/from16 v0, p0

    #@12b
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@12d
    move/from16 v0, v71

    #@12f
    iput v0, v4, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    #@131
    .line 1544
    move/from16 v0, v71

    #@133
    invoke-virtual {v5, v0}, Landroid/view/View;->dispatchWindowVisibilityChanged(I)V

    #@136
    .line 1545
    if-eqz v70, :cond_4

    #@138
    .line 1546
    if-nez v71, :cond_1a

    #@13a
    const/4 v4, 0x1

    #@13b
    :goto_7
    invoke-virtual {v5, v4}, Landroid/view/View;->dispatchVisibilityAggregated(Z)Z

    #@13e
    .line 1548
    :cond_4
    if-nez v71, :cond_5

    #@140
    move-object/from16 v0, p0

    #@142
    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mNewSurfaceNeeded:Z

    #@144
    if-eqz v4, :cond_6

    #@146
    .line 1549
    :cond_5
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->endDragResizing()V

    #@149
    .line 1550
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->destroyHardwareResources()V

    #@14c
    .line 1552
    :cond_6
    const/16 v4, 0x8

    #@14e
    move/from16 v0, v71

    #@150
    if-ne v0, v4, :cond_7

    #@152
    .line 1555
    const/4 v4, 0x0

    #@153
    move-object/from16 v0, p0

    #@155
    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mHasHadWindowFocus:Z

    #@157
    .line 1560
    :cond_7
    move-object/from16 v0, p0

    #@159
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@15b
    iget v4, v4, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    #@15d
    if-eqz v4, :cond_8

    #@15f
    .line 1561
    invoke-virtual {v5}, Landroid/view/View;->clearAccessibilityFocus()V

    #@162
    .line 1565
    :cond_8
    invoke-static {}, Landroid/view/ViewRootImpl;->getRunQueue()Landroid/view/HandlerActionQueue;

    #@165
    move-result-object v4

    #@166
    move-object/from16 v0, p0

    #@168
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@16a
    iget-object v10, v10, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    #@16c
    invoke-virtual {v4, v10}, Landroid/view/HandlerActionQueue;->executeActions(Landroid/os/Handler;)V

    #@16f
    .line 1567
    const/16 v50, 0x0

    #@171
    .line 1569
    .local v50, "insetsChanged":Z
    move-object/from16 v0, p0

    #@173
    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    #@175
    if-eqz v4, :cond_1c

    #@177
    move-object/from16 v0, p0

    #@179
    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mStopped:Z

    #@17b
    if-eqz v4, :cond_1b

    #@17d
    move-object/from16 v0, p0

    #@17f
    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    #@181
    move/from16 v54, v0

    #@183
    .line 1570
    .local v54, "layoutRequested":Z
    :goto_8
    if-eqz v54, :cond_a

    #@185
    .line 1572
    move-object/from16 v0, p0

    #@187
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@189
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@18c
    move-result-object v4

    #@18d
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@190
    move-result-object v7

    #@191
    .line 1574
    .local v7, "res":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    #@193
    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mFirst:Z

    #@195
    if-eqz v4, :cond_1e

    #@197
    .line 1577
    move-object/from16 v0, p0

    #@199
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@19b
    move-object/from16 v0, p0

    #@19d
    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mAddedTouchMode:Z

    #@19f
    if-eqz v4, :cond_1d

    #@1a1
    const/4 v4, 0x0

    #@1a2
    :goto_9
    iput-boolean v4, v10, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    #@1a4
    .line 1578
    move-object/from16 v0, p0

    #@1a6
    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mAddedTouchMode:Z

    #@1a8
    move-object/from16 v0, p0

    #@1aa
    invoke-direct {v0, v4}, Landroid/view/ViewRootImpl;->ensureTouchModeLocally(Z)Z

    #@1ad
    :cond_9
    :goto_a
    move-object/from16 v4, p0

    #@1af
    .line 1619
    invoke-direct/range {v4 .. v9}, Landroid/view/ViewRootImpl;->measureHierarchy(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/content/res/Resources;II)Z

    #@1b2
    move-result v4

    #@1b3
    or-int v76, v76, v4

    #@1b5
    .line 1623
    .end local v7    # "res":Landroid/content/res/Resources;
    .end local v76    # "windowSizeMayChange":Z
    :cond_a
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->collectViewAttributes()Z

    #@1b8
    move-result v4

    #@1b9
    if-eqz v4, :cond_b

    #@1bb
    .line 1624
    move-object/from16 v59, v6

    #@1bd
    .line 1626
    :cond_b
    move-object/from16 v0, p0

    #@1bf
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@1c1
    iget-boolean v4, v4, Landroid/view/View$AttachInfo;->mForceReportNewAttributes:Z

    #@1c3
    if-eqz v4, :cond_c

    #@1c5
    .line 1627
    move-object/from16 v0, p0

    #@1c7
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@1c9
    const/4 v10, 0x0

    #@1ca
    iput-boolean v10, v4, Landroid/view/View$AttachInfo;->mForceReportNewAttributes:Z

    #@1cc
    .line 1628
    move-object/from16 v59, v6

    #@1ce
    .line 1631
    :cond_c
    move-object/from16 v0, p0

    #@1d0
    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mFirst:Z

    #@1d2
    if-nez v4, :cond_d

    #@1d4
    move-object/from16 v0, p0

    #@1d6
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@1d8
    iget-boolean v4, v4, Landroid/view/View$AttachInfo;->mViewVisibilityChanged:Z

    #@1da
    if-eqz v4, :cond_29

    #@1dc
    .line 1632
    :cond_d
    move-object/from16 v0, p0

    #@1de
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@1e0
    const/4 v10, 0x0

    #@1e1
    iput-boolean v10, v4, Landroid/view/View$AttachInfo;->mViewVisibilityChanged:Z

    #@1e3
    .line 1633
    move-object/from16 v0, p0

    #@1e5
    iget v4, v0, Landroid/view/ViewRootImpl;->mSoftInputMode:I

    #@1e7
    and-int/lit16 v0, v4, 0xf0

    #@1e9
    move/from16 v62, v0

    #@1eb
    .line 1637
    .local v62, "resizeMode":I
    if-nez v62, :cond_29

    #@1ed
    .line 1638
    move-object/from16 v0, p0

    #@1ef
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@1f1
    iget-object v4, v4, Landroid/view/View$AttachInfo;->mScrollContainers:Ljava/util/ArrayList;

    #@1f3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@1f6
    move-result v22

    #@1f7
    .line 1639
    .local v22, "N":I
    const/16 v47, 0x0

    #@1f9
    .local v47, "i":I
    :goto_b
    move/from16 v0, v47

    #@1fb
    move/from16 v1, v22

    #@1fd
    if-ge v0, v1, :cond_27

    #@1ff
    .line 1640
    move-object/from16 v0, p0

    #@201
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@203
    iget-object v4, v4, Landroid/view/View$AttachInfo;->mScrollContainers:Ljava/util/ArrayList;

    #@205
    move/from16 v0, v47

    #@207
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@20a
    move-result-object v4

    #@20b
    check-cast v4, Landroid/view/View;

    #@20d
    invoke-virtual {v4}, Landroid/view/View;->isShown()Z

    #@210
    move-result v4

    #@211
    if-eqz v4, :cond_e

    #@213
    .line 1641
    const/16 v62, 0x10

    #@215
    .line 1639
    :cond_e
    add-int/lit8 v47, v47, 0x1

    #@217
    goto :goto_b

    #@218
    .line 1455
    .end local v6    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v8    # "desiredWindowWidth":I
    .end local v9    # "desiredWindowHeight":I
    .end local v22    # "N":I
    .end local v30    # "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    .end local v40    # "frame":Landroid/graphics/Rect;
    .end local v47    # "i":I
    .end local v50    # "insetsChanged":Z
    .end local v54    # "layoutRequested":Z
    .end local v56    # "newSurface":Z
    .end local v62    # "resizeMode":I
    .end local v65    # "surfaceChanged":Z
    .end local v70    # "viewUserVisibilityChanged":Z
    .end local v71    # "viewVisibility":I
    :cond_f
    return-void

    #@219
    .line 1469
    .restart local v6    # "lp":Landroid/view/WindowManager$LayoutParams;
    .restart local v56    # "newSurface":Z
    .restart local v65    # "surfaceChanged":Z
    .restart local v71    # "viewVisibility":I
    .restart local v76    # "windowSizeMayChange":Z
    :cond_10
    const/16 v72, 0x1

    #@21b
    .local v72, "viewVisibilityChanged":Z
    goto/16 :goto_0

    #@21d
    .line 1468
    .end local v72    # "viewVisibilityChanged":Z
    :cond_11
    const/16 v72, 0x0

    #@21f
    .restart local v72    # "viewVisibilityChanged":Z
    goto/16 :goto_0

    #@221
    .line 1471
    .end local v72    # "viewVisibilityChanged":Z
    :cond_12
    const/4 v4, 0x0

    #@222
    move v10, v4

    #@223
    goto/16 :goto_1

    #@225
    :cond_13
    const/4 v4, 0x0

    #@226
    goto/16 :goto_2

    #@228
    :cond_14
    const/16 v70, 0x0

    #@22a
    .restart local v70    # "viewUserVisibilityChanged":Z
    goto/16 :goto_3

    #@22c
    .line 1470
    .end local v70    # "viewUserVisibilityChanged":Z
    :cond_15
    const/16 v70, 0x0

    #@22e
    .restart local v70    # "viewUserVisibilityChanged":Z
    goto/16 :goto_3

    #@230
    .line 1489
    .restart local v30    # "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    .restart local v59    # "params":Landroid/view/WindowManager$LayoutParams;
    :cond_16
    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@232
    or-int/lit16 v4, v4, 0x80

    #@234
    iput v4, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@236
    .line 1490
    const/4 v4, 0x1

    #@237
    move-object/from16 v0, p0

    #@239
    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mLastInCompatMode:Z

    #@23b
    goto/16 :goto_4

    #@23d
    .line 1508
    .end local v59    # "params":Landroid/view/WindowManager$LayoutParams;
    .restart local v40    # "frame":Landroid/graphics/Rect;
    :cond_17
    move-object/from16 v0, p0

    #@23f
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    #@241
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@244
    move-result-object v4

    #@245
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@248
    move-result-object v32

    #@249
    .line 1509
    .local v32, "config":Landroid/content/res/Configuration;
    move-object/from16 v0, v32

    #@24b
    iget v4, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    #@24d
    move-object/from16 v0, p0

    #@24f
    invoke-direct {v0, v4}, Landroid/view/ViewRootImpl;->dipToPx(I)I

    #@252
    move-result v8

    #@253
    .line 1510
    .restart local v8    # "desiredWindowWidth":I
    move-object/from16 v0, v32

    #@255
    iget v4, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    #@257
    move-object/from16 v0, p0

    #@259
    invoke-direct {v0, v4}, Landroid/view/ViewRootImpl;->dipToPx(I)I

    #@25c
    move-result v9

    #@25d
    .restart local v9    # "desiredWindowHeight":I
    goto/16 :goto_5

    #@25f
    .line 1532
    .end local v8    # "desiredWindowWidth":I
    .end local v9    # "desiredWindowHeight":I
    .end local v32    # "config":Landroid/content/res/Configuration;
    :cond_18
    invoke-virtual/range {v40 .. v40}, Landroid/graphics/Rect;->width()I

    #@262
    move-result v8

    #@263
    .line 1533
    .restart local v8    # "desiredWindowWidth":I
    invoke-virtual/range {v40 .. v40}, Landroid/graphics/Rect;->height()I

    #@266
    move-result v9

    #@267
    .line 1534
    .restart local v9    # "desiredWindowHeight":I
    move-object/from16 v0, p0

    #@269
    iget v4, v0, Landroid/view/ViewRootImpl;->mWidth:I

    #@26b
    if-ne v8, v4, :cond_19

    #@26d
    move-object/from16 v0, p0

    #@26f
    iget v4, v0, Landroid/view/ViewRootImpl;->mHeight:I

    #@271
    if-eq v9, v4, :cond_3

    #@273
    .line 1536
    :cond_19
    const/4 v4, 0x1

    #@274
    move-object/from16 v0, p0

    #@276
    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    #@278
    .line 1537
    const/4 v4, 0x1

    #@279
    move-object/from16 v0, p0

    #@27b
    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    #@27d
    .line 1538
    const/16 v76, 0x1

    #@27f
    goto/16 :goto_6

    #@281
    .line 1546
    :cond_1a
    const/4 v4, 0x0

    #@282
    goto/16 :goto_7

    #@284
    .line 1569
    .restart local v50    # "insetsChanged":Z
    :cond_1b
    const/16 v54, 0x1

    #@286
    goto/16 :goto_8

    #@288
    :cond_1c
    const/16 v54, 0x0

    #@28a
    goto/16 :goto_8

    #@28c
    .line 1577
    .restart local v7    # "res":Landroid/content/res/Resources;
    .restart local v54    # "layoutRequested":Z
    :cond_1d
    const/4 v4, 0x1

    #@28d
    goto/16 :goto_9

    #@28f
    .line 1580
    :cond_1e
    move-object/from16 v0, p0

    #@291
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    #@293
    move-object/from16 v0, p0

    #@295
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@297
    iget-object v10, v10, Landroid/view/View$AttachInfo;->mOverscanInsets:Landroid/graphics/Rect;

    #@299
    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@29c
    move-result v4

    #@29d
    if-nez v4, :cond_1f

    #@29f
    .line 1581
    const/16 v50, 0x1

    #@2a1
    .line 1583
    :cond_1f
    move-object/from16 v0, p0

    #@2a3
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    #@2a5
    move-object/from16 v0, p0

    #@2a7
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@2a9
    iget-object v10, v10, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    #@2ab
    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@2ae
    move-result v4

    #@2af
    if-nez v4, :cond_20

    #@2b1
    .line 1584
    const/16 v50, 0x1

    #@2b3
    .line 1586
    :cond_20
    move-object/from16 v0, p0

    #@2b5
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    #@2b7
    move-object/from16 v0, p0

    #@2b9
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@2bb
    iget-object v10, v10, Landroid/view/View$AttachInfo;->mStableInsets:Landroid/graphics/Rect;

    #@2bd
    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@2c0
    move-result v4

    #@2c1
    if-nez v4, :cond_21

    #@2c3
    .line 1587
    const/16 v50, 0x1

    #@2c5
    .line 1589
    :cond_21
    move-object/from16 v0, p0

    #@2c7
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    #@2c9
    move-object/from16 v0, p0

    #@2cb
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@2cd
    iget-object v10, v10, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    #@2cf
    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@2d2
    move-result v4

    #@2d3
    if-nez v4, :cond_22

    #@2d5
    .line 1590
    move-object/from16 v0, p0

    #@2d7
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@2d9
    iget-object v4, v4, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    #@2db
    move-object/from16 v0, p0

    #@2dd
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    #@2df
    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@2e2
    .line 1594
    :cond_22
    move-object/from16 v0, p0

    #@2e4
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingOutsets:Landroid/graphics/Rect;

    #@2e6
    move-object/from16 v0, p0

    #@2e8
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@2ea
    iget-object v10, v10, Landroid/view/View$AttachInfo;->mOutsets:Landroid/graphics/Rect;

    #@2ec
    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@2ef
    move-result v4

    #@2f0
    if-nez v4, :cond_23

    #@2f2
    .line 1595
    const/16 v50, 0x1

    #@2f4
    .line 1597
    :cond_23
    move-object/from16 v0, p0

    #@2f6
    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mPendingAlwaysConsumeNavBar:Z

    #@2f8
    move-object/from16 v0, p0

    #@2fa
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@2fc
    iget-boolean v10, v10, Landroid/view/View$AttachInfo;->mAlwaysConsumeNavBar:Z

    #@2fe
    if-eq v4, v10, :cond_24

    #@300
    .line 1598
    const/16 v50, 0x1

    #@302
    .line 1600
    :cond_24
    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    #@304
    const/4 v10, -0x2

    #@305
    if-eq v4, v10, :cond_25

    #@307
    .line 1601
    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    #@309
    const/4 v10, -0x2

    #@30a
    if-ne v4, v10, :cond_9

    #@30c
    .line 1602
    :cond_25
    const/16 v76, 0x1

    #@30e
    .line 1604
    invoke-static {v6}, Landroid/view/ViewRootImpl;->shouldUseDisplaySize(Landroid/view/WindowManager$LayoutParams;)Z

    #@311
    move-result v4

    #@312
    if-eqz v4, :cond_26

    #@314
    .line 1606
    new-instance v63, Landroid/graphics/Point;

    #@316
    invoke-direct/range {v63 .. v63}, Landroid/graphics/Point;-><init>()V

    #@319
    .line 1607
    .restart local v63    # "size":Landroid/graphics/Point;
    move-object/from16 v0, p0

    #@31b
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    #@31d
    move-object/from16 v0, v63

    #@31f
    invoke-virtual {v4, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    #@322
    .line 1608
    move-object/from16 v0, v63

    #@324
    iget v8, v0, Landroid/graphics/Point;->x:I

    #@326
    .line 1609
    move-object/from16 v0, v63

    #@328
    iget v9, v0, Landroid/graphics/Point;->y:I

    #@32a
    goto/16 :goto_a

    #@32c
    .line 1611
    .end local v63    # "size":Landroid/graphics/Point;
    :cond_26
    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@32f
    move-result-object v32

    #@330
    .line 1612
    .restart local v32    # "config":Landroid/content/res/Configuration;
    move-object/from16 v0, v32

    #@332
    iget v4, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    #@334
    move-object/from16 v0, p0

    #@336
    invoke-direct {v0, v4}, Landroid/view/ViewRootImpl;->dipToPx(I)I

    #@339
    move-result v8

    #@33a
    .line 1613
    move-object/from16 v0, v32

    #@33c
    iget v4, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    #@33e
    move-object/from16 v0, p0

    #@340
    invoke-direct {v0, v4}, Landroid/view/ViewRootImpl;->dipToPx(I)I

    #@343
    move-result v9

    #@344
    goto/16 :goto_a

    #@346
    .line 1644
    .end local v7    # "res":Landroid/content/res/Resources;
    .end local v32    # "config":Landroid/content/res/Configuration;
    .end local v76    # "windowSizeMayChange":Z
    .restart local v22    # "N":I
    .restart local v47    # "i":I
    .restart local v62    # "resizeMode":I
    :cond_27
    if-nez v62, :cond_28

    #@348
    .line 1645
    const/16 v62, 0x20

    #@34a
    .line 1647
    :cond_28
    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    #@34c
    and-int/lit16 v4, v4, 0xf0

    #@34e
    move/from16 v0, v62

    #@350
    if-eq v4, v0, :cond_29

    #@352
    .line 1649
    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    #@354
    and-int/lit16 v4, v4, -0xf1

    #@356
    or-int v4, v4, v62

    #@358
    iput v4, v6, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    #@35a
    .line 1652
    move-object/from16 v59, v6

    #@35c
    .line 1657
    .end local v22    # "N":I
    .end local v47    # "i":I
    .end local v62    # "resizeMode":I
    :cond_29
    if-eqz v59, :cond_2b

    #@35e
    .line 1658
    iget v4, v5, Landroid/view/View;->mPrivateFlags:I

    #@360
    and-int/lit16 v4, v4, 0x200

    #@362
    if-eqz v4, :cond_2a

    #@364
    .line 1659
    move-object/from16 v0, v59

    #@366
    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    #@368
    invoke-static {v4}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    #@36b
    move-result v4

    #@36c
    if-nez v4, :cond_2a

    #@36e
    .line 1660
    const/4 v4, -0x3

    #@36f
    move-object/from16 v0, v59

    #@371
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    #@373
    .line 1663
    :cond_2a
    move-object/from16 v0, p0

    #@375
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@377
    move-object/from16 v0, v59

    #@379
    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@37b
    .line 1664
    const/high16 v11, 0x2000000

    #@37d
    .line 1663
    and-int/2addr v4, v11

    #@37e
    if-eqz v4, :cond_41

    #@380
    const/4 v4, 0x1

    #@381
    :goto_c
    iput-boolean v4, v10, Landroid/view/View$AttachInfo;->mOverscanRequested:Z

    #@383
    .line 1667
    :cond_2b
    move-object/from16 v0, p0

    #@385
    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mApplyInsetsRequested:Z

    #@387
    if-eqz v4, :cond_2c

    #@389
    .line 1668
    const/4 v4, 0x0

    #@38a
    move-object/from16 v0, p0

    #@38c
    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mApplyInsetsRequested:Z

    #@38e
    .line 1669
    move-object/from16 v0, p0

    #@390
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@392
    iget-boolean v4, v4, Landroid/view/View$AttachInfo;->mOverscanRequested:Z

    #@394
    move-object/from16 v0, p0

    #@396
    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mLastOverscanRequested:Z

    #@398
    .line 1670
    move-object/from16 v0, p0

    #@39a
    invoke-virtual {v0, v5}, Landroid/view/ViewRootImpl;->dispatchApplyInsets(Landroid/view/View;)V

    #@39d
    .line 1671
    move-object/from16 v0, p0

    #@39f
    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    #@3a1
    if-eqz v4, :cond_2c

    #@3a3
    .line 1676
    move-object/from16 v0, p0

    #@3a5
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@3a7
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@3aa
    move-result-object v4

    #@3ab
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3ae
    move-result-object v13

    #@3af
    move-object/from16 v10, p0

    #@3b1
    move-object v11, v5

    #@3b2
    move-object v12, v6

    #@3b3
    move v14, v8

    #@3b4
    move v15, v9

    #@3b5
    .line 1675
    invoke-direct/range {v10 .. v15}, Landroid/view/ViewRootImpl;->measureHierarchy(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/content/res/Resources;II)Z

    #@3b8
    move-result v4

    #@3b9
    or-int v76, v76, v4

    #@3bb
    .line 1681
    :cond_2c
    if-eqz v54, :cond_2d

    #@3bd
    .line 1685
    const/4 v4, 0x0

    #@3be
    move-object/from16 v0, p0

    #@3c0
    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    #@3c2
    .line 1688
    :cond_2d
    if-eqz v54, :cond_46

    #@3c4
    if-eqz v76, :cond_46

    #@3c6
    .line 1689
    move-object/from16 v0, p0

    #@3c8
    iget v4, v0, Landroid/view/ViewRootImpl;->mWidth:I

    #@3ca
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    #@3cd
    move-result v10

    #@3ce
    if-ne v4, v10, :cond_2e

    #@3d0
    move-object/from16 v0, p0

    #@3d2
    iget v4, v0, Landroid/view/ViewRootImpl;->mHeight:I

    #@3d4
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    #@3d7
    move-result v10

    #@3d8
    if-eq v4, v10, :cond_42

    #@3da
    :cond_2e
    const/16 v75, 0x1

    #@3dc
    .line 1694
    .local v75, "windowShouldResize":Z
    :goto_d
    move-object/from16 v0, p0

    #@3de
    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mDragResizing:Z

    #@3e0
    if-eqz v4, :cond_47

    #@3e2
    move-object/from16 v0, p0

    #@3e4
    iget v4, v0, Landroid/view/ViewRootImpl;->mResizeMode:I

    #@3e6
    if-nez v4, :cond_47

    #@3e8
    const/4 v4, 0x1

    #@3e9
    :goto_e
    or-int v75, v75, v4

    #@3eb
    .line 1699
    .local v75, "windowShouldResize":Z
    move-object/from16 v0, p0

    #@3ed
    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mActivityRelaunched:Z

    #@3ef
    or-int v75, v75, v4

    #@3f1
    .line 1705
    move-object/from16 v0, p0

    #@3f3
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@3f5
    iget-object v4, v4, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    #@3f7
    invoke-virtual {v4}, Landroid/view/ViewTreeObserver;->hasComputeInternalInsetsListeners()Z

    #@3fa
    move-result v4

    #@3fb
    if-nez v4, :cond_48

    #@3fd
    .line 1706
    move-object/from16 v0, p0

    #@3ff
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@401
    iget-boolean v0, v4, Landroid/view/View$AttachInfo;->mHasNonEmptyGivenInternalInsets:Z

    #@403
    move/from16 v31, v0

    #@405
    .line 1708
    :goto_f
    const/16 v51, 0x0

    #@407
    .line 1709
    .local v51, "insetsPending":Z
    const/16 v61, 0x0

    #@409
    .line 1710
    .local v61, "relayoutResult":I
    const/16 v69, 0x0

    #@40b
    .line 1712
    .local v69, "updatedConfiguration":Z
    move-object/from16 v0, p0

    #@40d
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    #@40f
    invoke-virtual {v4}, Landroid/view/Surface;->getGenerationId()I

    #@412
    move-result v66

    #@413
    .line 1714
    .local v66, "surfaceGenerationId":I
    if-nez v71, :cond_49

    #@415
    const/16 v53, 0x1

    #@417
    .line 1715
    .local v53, "isViewVisible":Z
    :goto_10
    move-object/from16 v0, p0

    #@419
    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mFirst:Z

    #@41b
    if-nez v4, :cond_2f

    #@41d
    if-nez v75, :cond_2f

    #@41f
    if-nez v50, :cond_2f

    #@421
    if-nez v72, :cond_2f

    #@423
    .line 1716
    if-eqz v59, :cond_4a

    #@425
    .line 1717
    :cond_2f
    const/4 v4, 0x0

    #@426
    move-object/from16 v0, p0

    #@428
    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mForceNextWindowRelayout:Z

    #@42a
    .line 1719
    if-eqz v53, :cond_30

    #@42c
    .line 1729
    if-eqz v31, :cond_5a

    #@42e
    move-object/from16 v0, p0

    #@430
    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mFirst:Z

    #@432
    if-nez v4, :cond_59

    #@434
    move/from16 v51, v72

    #@436
    .line 1732
    .end local v51    # "insetsPending":Z
    :cond_30
    :goto_11
    move-object/from16 v0, p0

    #@438
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@43a
    if-eqz v4, :cond_31

    #@43c
    .line 1733
    move-object/from16 v0, p0

    #@43e
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@440
    iget-object v4, v4, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@442
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@445
    .line 1734
    const/4 v4, 0x1

    #@446
    move-object/from16 v0, p0

    #@448
    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mDrawingAllowed:Z

    #@44a
    .line 1737
    :cond_31
    const/16 v46, 0x0

    #@44c
    .line 1738
    .local v46, "hwInitialized":Z
    const/16 v33, 0x0

    #@44e
    .line 1739
    .local v33, "contentInsetsChanged":Z
    move-object/from16 v0, p0

    #@450
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    #@452
    invoke-virtual {v4}, Landroid/view/Surface;->isValid()Z

    #@455
    move-result v42

    #@456
    .line 1747
    .local v42, "hadSurface":Z
    :try_start_0
    move-object/from16 v0, p0

    #@458
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@45a
    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    #@45c
    if-eqz v4, :cond_33

    #@45e
    .line 1751
    move-object/from16 v0, p0

    #@460
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@462
    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    #@464
    move-object/from16 v0, p0

    #@466
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    #@468
    invoke-virtual {v4, v10}, Landroid/view/ThreadedRenderer;->pauseSurface(Landroid/view/Surface;)Z

    #@46b
    move-result v4

    #@46c
    if-eqz v4, :cond_32

    #@46e
    .line 1754
    move-object/from16 v0, p0

    #@470
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mDirty:Landroid/graphics/Rect;

    #@472
    move-object/from16 v0, p0

    #@474
    iget v10, v0, Landroid/view/ViewRootImpl;->mWidth:I

    #@476
    move-object/from16 v0, p0

    #@478
    iget v11, v0, Landroid/view/ViewRootImpl;->mHeight:I

    #@47a
    const/4 v12, 0x0

    #@47b
    const/16 v17, 0x0

    #@47d
    move/from16 v0, v17

    #@47f
    invoke-virtual {v4, v12, v0, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    #@482
    .line 1756
    :cond_32
    move-object/from16 v0, p0

    #@484
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    #@486
    iget-object v4, v4, Landroid/view/Choreographer;->mFrameInfo:Landroid/view/FrameInfo;

    #@488
    const-wide/16 v10, 0x1

    #@48a
    invoke-virtual {v4, v10, v11}, Landroid/view/FrameInfo;->addFlags(J)V

    #@48d
    .line 1758
    :cond_33
    move-object/from16 v0, p0

    #@48f
    move-object/from16 v1, v59

    #@491
    move/from16 v2, v71

    #@493
    move/from16 v3, v51

    #@495
    invoke-direct {v0, v1, v2, v3}, Landroid/view/ViewRootImpl;->relayoutWindow(Landroid/view/WindowManager$LayoutParams;IZ)I

    #@498
    move-result v61

    #@499
    .line 1768
    move-object/from16 v0, p0

    #@49b
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingConfiguration:Landroid/content/res/Configuration;

    #@49d
    iget v4, v4, Landroid/content/res/Configuration;->seq:I

    #@49f
    if-eqz v4, :cond_34

    #@4a1
    .line 1771
    new-instance v10, Landroid/content/res/Configuration;

    #@4a3
    move-object/from16 v0, p0

    #@4a5
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingConfiguration:Landroid/content/res/Configuration;

    #@4a7
    invoke-direct {v10, v4}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    #@4aa
    move-object/from16 v0, p0

    #@4ac
    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mFirst:Z

    #@4ae
    if-eqz v4, :cond_5b

    #@4b0
    const/4 v4, 0x0

    #@4b1
    :goto_12
    move-object/from16 v0, p0

    #@4b3
    invoke-virtual {v0, v10, v4}, Landroid/view/ViewRootImpl;->updateConfiguration(Landroid/content/res/Configuration;Z)V

    #@4b6
    .line 1772
    move-object/from16 v0, p0

    #@4b8
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingConfiguration:Landroid/content/res/Configuration;

    #@4ba
    const/4 v10, 0x0

    #@4bb
    iput v10, v4, Landroid/content/res/Configuration;->seq:I

    #@4bd
    .line 1773
    const/16 v69, 0x1

    #@4bf
    .line 1776
    :cond_34
    move-object/from16 v0, p0

    #@4c1
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    #@4c3
    .line 1777
    move-object/from16 v0, p0

    #@4c5
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@4c7
    iget-object v10, v10, Landroid/view/View$AttachInfo;->mOverscanInsets:Landroid/graphics/Rect;

    #@4c9
    .line 1776
    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@4cc
    move-result v4

    #@4cd
    if-eqz v4, :cond_5c

    #@4cf
    const/16 v58, 0x0

    #@4d1
    .line 1778
    .local v58, "overscanInsetsChanged":Z
    :goto_13
    move-object/from16 v0, p0

    #@4d3
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    #@4d5
    .line 1779
    move-object/from16 v0, p0

    #@4d7
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@4d9
    iget-object v10, v10, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    #@4db
    .line 1778
    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@4de
    move-result v4

    #@4df
    if-eqz v4, :cond_5d

    #@4e1
    const/16 v33, 0x0

    #@4e3
    .line 1780
    :goto_14
    move-object/from16 v0, p0

    #@4e5
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    #@4e7
    .line 1781
    move-object/from16 v0, p0

    #@4e9
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@4eb
    iget-object v10, v10, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    #@4ed
    .line 1780
    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@4f0
    move-result v4

    #@4f1
    if-eqz v4, :cond_5e

    #@4f3
    const/16 v73, 0x0

    #@4f5
    .line 1782
    .local v73, "visibleInsetsChanged":Z
    :goto_15
    move-object/from16 v0, p0

    #@4f7
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    #@4f9
    .line 1783
    move-object/from16 v0, p0

    #@4fb
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@4fd
    iget-object v10, v10, Landroid/view/View$AttachInfo;->mStableInsets:Landroid/graphics/Rect;

    #@4ff
    .line 1782
    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@502
    move-result v4

    #@503
    if-eqz v4, :cond_5f

    #@505
    const/16 v64, 0x0

    #@507
    .line 1784
    .local v64, "stableInsetsChanged":Z
    :goto_16
    move-object/from16 v0, p0

    #@509
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingOutsets:Landroid/graphics/Rect;

    #@50b
    move-object/from16 v0, p0

    #@50d
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@50f
    iget-object v10, v10, Landroid/view/View$AttachInfo;->mOutsets:Landroid/graphics/Rect;

    #@511
    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@514
    move-result v4

    #@515
    if-eqz v4, :cond_60

    #@517
    const/16 v57, 0x0

    #@519
    .line 1785
    .local v57, "outsetsChanged":Z
    :goto_17
    and-int/lit8 v4, v61, 0x20

    #@51b
    if-eqz v4, :cond_61

    #@51d
    const/16 v67, 0x1

    #@51f
    .line 1788
    .local v67, "surfaceSizeChanged":Z
    :goto_18
    move-object/from16 v0, p0

    #@521
    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mPendingAlwaysConsumeNavBar:Z

    #@523
    move-object/from16 v0, p0

    #@525
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@527
    iget-boolean v10, v10, Landroid/view/View$AttachInfo;->mAlwaysConsumeNavBar:Z

    #@529
    if-eq v4, v10, :cond_62

    #@52b
    const/16 v23, 0x1

    #@52d
    .line 1789
    .local v23, "alwaysConsumeNavBarChanged":Z
    :goto_19
    if-eqz v33, :cond_35

    #@52f
    .line 1790
    move-object/from16 v0, p0

    #@531
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@533
    iget-object v4, v4, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    #@535
    move-object/from16 v0, p0

    #@537
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    #@539
    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@53c
    .line 1794
    :cond_35
    if-eqz v58, :cond_36

    #@53e
    .line 1795
    move-object/from16 v0, p0

    #@540
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@542
    iget-object v4, v4, Landroid/view/View$AttachInfo;->mOverscanInsets:Landroid/graphics/Rect;

    #@544
    move-object/from16 v0, p0

    #@546
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    #@548
    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@54b
    .line 1799
    const/16 v33, 0x1

    #@54d
    .line 1801
    :cond_36
    if-eqz v64, :cond_37

    #@54f
    .line 1802
    move-object/from16 v0, p0

    #@551
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@553
    iget-object v4, v4, Landroid/view/View$AttachInfo;->mStableInsets:Landroid/graphics/Rect;

    #@555
    move-object/from16 v0, p0

    #@557
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    #@559
    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@55c
    .line 1806
    const/16 v33, 0x1

    #@55e
    .line 1808
    :cond_37
    if-eqz v23, :cond_38

    #@560
    .line 1809
    move-object/from16 v0, p0

    #@562
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@564
    move-object/from16 v0, p0

    #@566
    iget-boolean v10, v0, Landroid/view/ViewRootImpl;->mPendingAlwaysConsumeNavBar:Z

    #@568
    iput-boolean v10, v4, Landroid/view/View$AttachInfo;->mAlwaysConsumeNavBar:Z

    #@56a
    .line 1810
    const/16 v33, 0x1

    #@56c
    .line 1812
    :cond_38
    if-nez v33, :cond_39

    #@56e
    move-object/from16 v0, p0

    #@570
    iget v4, v0, Landroid/view/ViewRootImpl;->mLastSystemUiVisibility:I

    #@572
    .line 1813
    move-object/from16 v0, p0

    #@574
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@576
    iget v10, v10, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    #@578
    .line 1812
    if-eq v4, v10, :cond_63

    #@57a
    .line 1816
    :cond_39
    :goto_1a
    move-object/from16 v0, p0

    #@57c
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@57e
    iget v4, v4, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    #@580
    move-object/from16 v0, p0

    #@582
    iput v4, v0, Landroid/view/ViewRootImpl;->mLastSystemUiVisibility:I

    #@584
    .line 1817
    move-object/from16 v0, p0

    #@586
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@588
    iget-boolean v4, v4, Landroid/view/View$AttachInfo;->mOverscanRequested:Z

    #@58a
    move-object/from16 v0, p0

    #@58c
    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mLastOverscanRequested:Z

    #@58e
    .line 1818
    move-object/from16 v0, p0

    #@590
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@592
    iget-object v4, v4, Landroid/view/View$AttachInfo;->mOutsets:Landroid/graphics/Rect;

    #@594
    move-object/from16 v0, p0

    #@596
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mPendingOutsets:Landroid/graphics/Rect;

    #@598
    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@59b
    .line 1819
    const/4 v4, 0x0

    #@59c
    move-object/from16 v0, p0

    #@59e
    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mApplyInsetsRequested:Z

    #@5a0
    .line 1820
    move-object/from16 v0, p0

    #@5a2
    invoke-virtual {v0, v5}, Landroid/view/ViewRootImpl;->dispatchApplyInsets(Landroid/view/View;)V

    #@5a5
    .line 1822
    :cond_3a
    if-eqz v73, :cond_3b

    #@5a7
    .line 1823
    move-object/from16 v0, p0

    #@5a9
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@5ab
    iget-object v4, v4, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    #@5ad
    move-object/from16 v0, p0

    #@5af
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    #@5b1
    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@5b4
    .line 1828
    :cond_3b
    if-nez v42, :cond_64

    #@5b6
    .line 1829
    move-object/from16 v0, p0

    #@5b8
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    #@5ba
    invoke-virtual {v4}, Landroid/view/Surface;->isValid()Z

    #@5bd
    move-result v4

    #@5be
    if-eqz v4, :cond_3c

    #@5c0
    .line 1837
    const/16 v56, 0x1

    #@5c2
    .line 1838
    const/4 v4, 0x1

    #@5c3
    move-object/from16 v0, p0

    #@5c5
    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    #@5c7
    .line 1839
    move-object/from16 v0, p0

    #@5c9
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPreviousTransparentRegion:Landroid/graphics/Region;

    #@5cb
    invoke-virtual {v4}, Landroid/graphics/Region;->setEmpty()V

    #@5ce
    .line 1844
    move-object/from16 v0, p0

    #@5d0
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@5d2
    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    #@5d4
    if-eqz v4, :cond_3c

    #@5d6
    .line 1846
    :try_start_1
    move-object/from16 v0, p0

    #@5d8
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@5da
    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    #@5dc
    .line 1847
    move-object/from16 v0, p0

    #@5de
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    #@5e0
    .line 1846
    invoke-virtual {v4, v10}, Landroid/view/ThreadedRenderer;->initialize(Landroid/view/Surface;)Z

    #@5e3
    move-result v46

    #@5e4
    .line 1848
    .local v46, "hwInitialized":Z
    if-eqz v46, :cond_3c

    #@5e6
    iget v4, v5, Landroid/view/View;->mPrivateFlags:I

    #@5e8
    and-int/lit16 v4, v4, 0x200

    #@5ea
    if-nez v4, :cond_3c

    #@5ec
    .line 1852
    move-object/from16 v0, p0

    #@5ee
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    #@5f0
    invoke-virtual {v4}, Landroid/view/Surface;->allocateBuffers()V
    :try_end_1
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@5f3
    .line 1899
    .end local v46    # "hwInitialized":Z
    :cond_3c
    :goto_1b
    and-int/lit8 v4, v61, 0x10

    #@5f5
    if-eqz v4, :cond_6a

    #@5f7
    const/16 v41, 0x1

    #@5f9
    .line 1901
    .local v41, "freeformResizing":Z
    :goto_1c
    and-int/lit8 v4, v61, 0x8

    #@5fb
    if-eqz v4, :cond_6b

    #@5fd
    const/16 v35, 0x1

    #@5ff
    .line 1903
    .local v35, "dockedResizing":Z
    :goto_1d
    if-nez v41, :cond_6c

    #@601
    move/from16 v36, v35

    #@603
    .line 1904
    :goto_1e
    :try_start_2
    move-object/from16 v0, p0

    #@605
    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mDragResizing:Z

    #@607
    move/from16 v0, v36

    #@609
    if-eq v4, v0, :cond_3d

    #@60b
    .line 1905
    if-eqz v36, :cond_6e

    #@60d
    .line 1906
    if-eqz v41, :cond_6d

    #@60f
    .line 1907
    const/4 v4, 0x0

    #@610
    .line 1906
    :goto_1f
    move-object/from16 v0, p0

    #@612
    iput v4, v0, Landroid/view/ViewRootImpl;->mResizeMode:I

    #@614
    .line 1909
    move-object/from16 v0, p0

    #@616
    iget-object v11, v0, Landroid/view/ViewRootImpl;->mPendingBackDropFrame:Landroid/graphics/Rect;

    #@618
    .line 1910
    move-object/from16 v0, p0

    #@61a
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    #@61c
    move-object/from16 v0, p0

    #@61e
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mPendingBackDropFrame:Landroid/graphics/Rect;

    #@620
    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@623
    move-result v12

    #@624
    move-object/from16 v0, p0

    #@626
    iget-object v13, v0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    #@628
    .line 1911
    move-object/from16 v0, p0

    #@62a
    iget-object v14, v0, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    #@62c
    move-object/from16 v0, p0

    #@62e
    iget v15, v0, Landroid/view/ViewRootImpl;->mResizeMode:I

    #@630
    move-object/from16 v10, p0

    #@632
    .line 1909
    invoke-direct/range {v10 .. v15}, Landroid/view/ViewRootImpl;->startDragResizing(Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Rect;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    #@635
    .line 1931
    .end local v23    # "alwaysConsumeNavBarChanged":Z
    .end local v35    # "dockedResizing":Z
    .end local v41    # "freeformResizing":Z
    .end local v57    # "outsetsChanged":Z
    .end local v58    # "overscanInsetsChanged":Z
    .end local v64    # "stableInsetsChanged":Z
    .end local v67    # "surfaceSizeChanged":Z
    .end local v73    # "visibleInsetsChanged":Z
    :cond_3d
    :goto_20
    move-object/from16 v0, p0

    #@637
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@639
    move-object/from16 v0, v40

    #@63b
    iget v10, v0, Landroid/graphics/Rect;->left:I

    #@63d
    iput v10, v4, Landroid/view/View$AttachInfo;->mWindowLeft:I

    #@63f
    .line 1932
    move-object/from16 v0, p0

    #@641
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@643
    move-object/from16 v0, v40

    #@645
    iget v10, v0, Landroid/graphics/Rect;->top:I

    #@647
    iput v10, v4, Landroid/view/View$AttachInfo;->mWindowTop:I

    #@649
    .line 1937
    move-object/from16 v0, p0

    #@64b
    iget v4, v0, Landroid/view/ViewRootImpl;->mWidth:I

    #@64d
    invoke-virtual/range {v40 .. v40}, Landroid/graphics/Rect;->width()I

    #@650
    move-result v10

    #@651
    if-ne v4, v10, :cond_3e

    #@653
    move-object/from16 v0, p0

    #@655
    iget v4, v0, Landroid/view/ViewRootImpl;->mHeight:I

    #@657
    invoke-virtual/range {v40 .. v40}, Landroid/graphics/Rect;->height()I

    #@65a
    move-result v10

    #@65b
    if-eq v4, v10, :cond_3f

    #@65d
    .line 1938
    :cond_3e
    invoke-virtual/range {v40 .. v40}, Landroid/graphics/Rect;->width()I

    #@660
    move-result v4

    #@661
    move-object/from16 v0, p0

    #@663
    iput v4, v0, Landroid/view/ViewRootImpl;->mWidth:I

    #@665
    .line 1939
    invoke-virtual/range {v40 .. v40}, Landroid/graphics/Rect;->height()I

    #@668
    move-result v4

    #@669
    move-object/from16 v0, p0

    #@66b
    iput v4, v0, Landroid/view/ViewRootImpl;->mHeight:I

    #@66d
    .line 1942
    :cond_3f
    move-object/from16 v0, p0

    #@66f
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@671
    if-eqz v4, :cond_73

    #@673
    .line 1944
    move-object/from16 v0, p0

    #@675
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    #@677
    invoke-virtual {v4}, Landroid/view/Surface;->isValid()Z

    #@67a
    move-result v4

    #@67b
    if-eqz v4, :cond_40

    #@67d
    .line 1947
    move-object/from16 v0, p0

    #@67f
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@681
    move-object/from16 v0, p0

    #@683
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    #@685
    iput-object v10, v4, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;

    #@687
    .line 1949
    :cond_40
    move-object/from16 v0, p0

    #@689
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@68b
    move-object/from16 v0, p0

    #@68d
    iget v10, v0, Landroid/view/ViewRootImpl;->mWidth:I

    #@68f
    move-object/from16 v0, p0

    #@691
    iget v11, v0, Landroid/view/ViewRootImpl;->mHeight:I

    #@693
    invoke-virtual {v4, v10, v11}, Lcom/android/internal/view/BaseSurfaceHolder;->setSurfaceFrameSize(II)V

    #@696
    .line 1950
    move-object/from16 v0, p0

    #@698
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@69a
    iget-object v4, v4, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@69c
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@69f
    .line 1951
    move-object/from16 v0, p0

    #@6a1
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    #@6a3
    invoke-virtual {v4}, Landroid/view/Surface;->isValid()Z

    #@6a6
    move-result v4

    #@6a7
    if-eqz v4, :cond_7b

    #@6a9
    .line 1952
    if-nez v42, :cond_70

    #@6ab
    .line 1953
    move-object/from16 v0, p0

    #@6ad
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@6af
    invoke-virtual {v4}, Lcom/android/internal/view/BaseSurfaceHolder;->ungetCallbacks()V

    #@6b2
    .line 1955
    const/4 v4, 0x1

    #@6b3
    move-object/from16 v0, p0

    #@6b5
    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mIsCreating:Z

    #@6b7
    .line 1956
    move-object/from16 v0, p0

    #@6b9
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    #@6bb
    move-object/from16 v0, p0

    #@6bd
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@6bf
    invoke-interface {v4, v10}, Landroid/view/SurfaceHolder$Callback2;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    #@6c2
    .line 1957
    move-object/from16 v0, p0

    #@6c4
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@6c6
    invoke-virtual {v4}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    #@6c9
    move-result-object v25

    #@6ca
    .line 1958
    .local v25, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    if-eqz v25, :cond_6f

    #@6cc
    .line 1959
    const/4 v4, 0x0

    #@6cd
    move-object/from16 v0, v25

    #@6cf
    array-length v10, v0

    #@6d0
    :goto_21
    if-ge v4, v10, :cond_6f

    #@6d2
    aget-object v24, v25, v4

    #@6d4
    .line 1960
    .local v24, "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    #@6d6
    iget-object v11, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@6d8
    move-object/from16 v0, v24

    #@6da
    invoke-interface {v0, v11}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    #@6dd
    .line 1959
    add-int/lit8 v4, v4, 0x1

    #@6df
    goto :goto_21

    #@6e0
    .line 1663
    .end local v24    # "c":Landroid/view/SurfaceHolder$Callback;
    .end local v25    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .end local v33    # "contentInsetsChanged":Z
    .end local v42    # "hadSurface":Z
    .end local v53    # "isViewVisible":Z
    .end local v61    # "relayoutResult":I
    .end local v66    # "surfaceGenerationId":I
    .end local v69    # "updatedConfiguration":Z
    .end local v75    # "windowShouldResize":Z
    :cond_41
    const/4 v4, 0x0

    #@6e1
    goto/16 :goto_c

    #@6e3
    .line 1690
    :cond_42
    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    #@6e5
    const/4 v10, -0x2

    #@6e6
    if-ne v4, v10, :cond_43

    #@6e8
    .line 1691
    invoke-virtual/range {v40 .. v40}, Landroid/graphics/Rect;->width()I

    #@6eb
    move-result v4

    #@6ec
    if-ge v4, v8, :cond_43

    #@6ee
    invoke-virtual/range {v40 .. v40}, Landroid/graphics/Rect;->width()I

    #@6f1
    move-result v4

    #@6f2
    move-object/from16 v0, p0

    #@6f4
    iget v10, v0, Landroid/view/ViewRootImpl;->mWidth:I

    #@6f6
    if-ne v4, v10, :cond_2e

    #@6f8
    .line 1692
    :cond_43
    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    #@6fa
    const/4 v10, -0x2

    #@6fb
    if-ne v4, v10, :cond_45

    #@6fd
    .line 1693
    invoke-virtual/range {v40 .. v40}, Landroid/graphics/Rect;->height()I

    #@700
    move-result v4

    #@701
    if-ge v4, v9, :cond_45

    #@703
    invoke-virtual/range {v40 .. v40}, Landroid/graphics/Rect;->height()I

    #@706
    move-result v4

    #@707
    move-object/from16 v0, p0

    #@709
    iget v10, v0, Landroid/view/ViewRootImpl;->mHeight:I

    #@70b
    if-eq v4, v10, :cond_44

    #@70d
    const/16 v75, 0x1

    #@70f
    .local v75, "windowShouldResize":Z
    goto/16 :goto_d

    #@711
    .end local v75    # "windowShouldResize":Z
    :cond_44
    const/16 v75, 0x0

    #@713
    .restart local v75    # "windowShouldResize":Z
    goto/16 :goto_d

    #@715
    .line 1692
    .end local v75    # "windowShouldResize":Z
    :cond_45
    const/16 v75, 0x0

    #@717
    .restart local v75    # "windowShouldResize":Z
    goto/16 :goto_d

    #@719
    .line 1688
    .end local v75    # "windowShouldResize":Z
    :cond_46
    const/16 v75, 0x0

    #@71b
    .restart local v75    # "windowShouldResize":Z
    goto/16 :goto_d

    #@71d
    .line 1694
    :cond_47
    const/4 v4, 0x0

    #@71e
    goto/16 :goto_e

    #@720
    .line 1705
    .local v75, "windowShouldResize":Z
    :cond_48
    const/16 v31, 0x1

    #@722
    .local v31, "computesInternalInsets":Z
    goto/16 :goto_f

    #@724
    .line 1714
    .end local v31    # "computesInternalInsets":Z
    .restart local v51    # "insetsPending":Z
    .restart local v61    # "relayoutResult":I
    .restart local v66    # "surfaceGenerationId":I
    .restart local v69    # "updatedConfiguration":Z
    :cond_49
    const/16 v53, 0x0

    #@726
    .restart local v53    # "isViewVisible":Z
    goto/16 :goto_10

    #@728
    .line 1716
    :cond_4a
    move-object/from16 v0, p0

    #@72a
    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mForceNextWindowRelayout:Z

    #@72c
    .line 1715
    if-nez v4, :cond_2f

    #@72e
    .line 2061
    move-object/from16 v0, p0

    #@730
    move-object/from16 v1, v40

    #@732
    invoke-direct {v0, v1}, Landroid/view/ViewRootImpl;->maybeHandleWindowMove(Landroid/graphics/Rect;)V

    #@735
    .line 2064
    .end local v51    # "insetsPending":Z
    .end local v54    # "layoutRequested":Z
    :cond_4b
    :goto_22
    if-eqz v54, :cond_81

    #@737
    move-object/from16 v0, p0

    #@739
    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mStopped:Z

    #@73b
    if-eqz v4, :cond_80

    #@73d
    move-object/from16 v0, p0

    #@73f
    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    #@741
    move/from16 v34, v0

    #@743
    .line 2065
    .local v34, "didLayout":Z
    :goto_23
    if-nez v34, :cond_82

    #@745
    .line 2066
    move-object/from16 v0, p0

    #@747
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@749
    iget-boolean v0, v4, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    #@74b
    move/from16 v68, v0

    #@74d
    .line 2067
    :goto_24
    if-eqz v34, :cond_4d

    #@74f
    .line 2068
    move-object/from16 v0, p0

    #@751
    iget v4, v0, Landroid/view/ViewRootImpl;->mWidth:I

    #@753
    move-object/from16 v0, p0

    #@755
    iget v10, v0, Landroid/view/ViewRootImpl;->mHeight:I

    #@757
    move-object/from16 v0, p0

    #@759
    invoke-direct {v0, v6, v4, v10}, Landroid/view/ViewRootImpl;->performLayout(Landroid/view/WindowManager$LayoutParams;II)V

    #@75c
    .line 2073
    iget v4, v5, Landroid/view/View;->mPrivateFlags:I

    #@75e
    and-int/lit16 v4, v4, 0x200

    #@760
    if-eqz v4, :cond_4d

    #@762
    .line 2076
    move-object/from16 v0, p0

    #@764
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTmpLocation:[I

    #@766
    invoke-virtual {v5, v4}, Landroid/view/View;->getLocationInWindow([I)V

    #@769
    .line 2077
    move-object/from16 v0, p0

    #@76b
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    #@76d
    move-object/from16 v0, p0

    #@76f
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mTmpLocation:[I

    #@771
    const/4 v11, 0x0

    #@772
    aget v10, v10, v11

    #@774
    move-object/from16 v0, p0

    #@776
    iget-object v11, v0, Landroid/view/ViewRootImpl;->mTmpLocation:[I

    #@778
    const/4 v12, 0x1

    #@779
    aget v11, v11, v12

    #@77b
    .line 2078
    move-object/from16 v0, p0

    #@77d
    iget-object v12, v0, Landroid/view/ViewRootImpl;->mTmpLocation:[I

    #@77f
    const/16 v17, 0x0

    #@781
    aget v12, v12, v17

    #@783
    iget v0, v5, Landroid/view/View;->mRight:I

    #@785
    move/from16 v17, v0

    #@787
    add-int v12, v12, v17

    #@789
    iget v0, v5, Landroid/view/View;->mLeft:I

    #@78b
    move/from16 v17, v0

    #@78d
    sub-int v12, v12, v17

    #@78f
    .line 2079
    move-object/from16 v0, p0

    #@791
    iget-object v0, v0, Landroid/view/ViewRootImpl;->mTmpLocation:[I

    #@793
    move-object/from16 v17, v0

    #@795
    const/16 v18, 0x1

    #@797
    aget v17, v17, v18

    #@799
    iget v0, v5, Landroid/view/View;->mBottom:I

    #@79b
    move/from16 v18, v0

    #@79d
    add-int v17, v17, v18

    #@79f
    iget v0, v5, Landroid/view/View;->mTop:I

    #@7a1
    move/from16 v18, v0

    #@7a3
    sub-int v17, v17, v18

    #@7a5
    .line 2077
    move/from16 v0, v17

    #@7a7
    invoke-virtual {v4, v10, v11, v12, v0}, Landroid/graphics/Region;->set(IIII)Z

    #@7aa
    .line 2081
    move-object/from16 v0, p0

    #@7ac
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    #@7ae
    invoke-virtual {v5, v4}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    #@7b1
    .line 2082
    move-object/from16 v0, p0

    #@7b3
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@7b5
    if-eqz v4, :cond_4c

    #@7b7
    .line 2083
    move-object/from16 v0, p0

    #@7b9
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@7bb
    move-object/from16 v0, p0

    #@7bd
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    #@7bf
    invoke-virtual {v4, v10}, Landroid/content/res/CompatibilityInfo$Translator;->translateRegionInWindowToScreen(Landroid/graphics/Region;)V

    #@7c2
    .line 2086
    :cond_4c
    move-object/from16 v0, p0

    #@7c4
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    #@7c6
    move-object/from16 v0, p0

    #@7c8
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mPreviousTransparentRegion:Landroid/graphics/Region;

    #@7ca
    invoke-virtual {v4, v10}, Landroid/graphics/Region;->equals(Ljava/lang/Object;)Z

    #@7cd
    move-result v4

    #@7ce
    if-nez v4, :cond_4d

    #@7d0
    .line 2087
    move-object/from16 v0, p0

    #@7d2
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPreviousTransparentRegion:Landroid/graphics/Region;

    #@7d4
    move-object/from16 v0, p0

    #@7d6
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    #@7d8
    invoke-virtual {v4, v10}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    #@7db
    .line 2088
    const/4 v4, 0x1

    #@7dc
    move-object/from16 v0, p0

    #@7de
    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    #@7e0
    .line 2091
    :try_start_3
    move-object/from16 v0, p0

    #@7e2
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    #@7e4
    move-object/from16 v0, p0

    #@7e6
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    #@7e8
    move-object/from16 v0, p0

    #@7ea
    iget-object v11, v0, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    #@7ec
    invoke-interface {v4, v10, v11}, Landroid/view/IWindowSession;->setTransparentRegion(Landroid/view/IWindow;Landroid/graphics/Region;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_4

    #@7ef
    .line 2104
    :cond_4d
    :goto_25
    if-eqz v68, :cond_4e

    #@7f1
    .line 2105
    move-object/from16 v0, p0

    #@7f3
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@7f5
    const/4 v10, 0x0

    #@7f6
    iput-boolean v10, v4, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    #@7f8
    .line 2106
    move-object/from16 v0, p0

    #@7fa
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@7fc
    iget-object v4, v4, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    #@7fe
    invoke-virtual {v4}, Landroid/view/ViewTreeObserver;->dispatchOnGlobalLayout()V

    #@801
    .line 2109
    :cond_4e
    if-eqz v31, :cond_4f

    #@803
    .line 2111
    move-object/from16 v0, p0

    #@805
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@807
    iget-object v0, v4, Landroid/view/View$AttachInfo;->mGivenInternalInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    #@809
    move-object/from16 v49, v0

    #@80b
    .line 2112
    .local v49, "insets":Landroid/view/ViewTreeObserver$InternalInsetsInfo;
    invoke-virtual/range {v49 .. v49}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->reset()V

    #@80e
    .line 2115
    move-object/from16 v0, p0

    #@810
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@812
    iget-object v4, v4, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    #@814
    move-object/from16 v0, v49

    #@816
    invoke-virtual {v4, v0}, Landroid/view/ViewTreeObserver;->dispatchOnComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V

    #@819
    .line 2116
    move-object/from16 v0, p0

    #@81b
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@81d
    invoke-virtual/range {v49 .. v49}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->isEmpty()Z

    #@820
    move-result v4

    #@821
    if-eqz v4, :cond_83

    #@823
    const/4 v4, 0x0

    #@824
    :goto_26
    iput-boolean v4, v10, Landroid/view/View$AttachInfo;->mHasNonEmptyGivenInternalInsets:Z

    #@826
    .line 2119
    if-nez v51, :cond_84

    #@828
    move-object/from16 v0, p0

    #@82a
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mLastGivenInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    #@82c
    move-object/from16 v0, v49

    #@82e
    invoke-virtual {v4, v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->equals(Ljava/lang/Object;)Z

    #@831
    move-result v4

    #@832
    if-eqz v4, :cond_84

    #@834
    .line 2144
    .end local v49    # "insets":Landroid/view/ViewTreeObserver$InternalInsetsInfo;
    :cond_4f
    :goto_27
    move-object/from16 v0, p0

    #@836
    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mFirst:Z

    #@838
    if-eqz v4, :cond_50

    #@83a
    .line 2148
    move-object/from16 v0, p0

    #@83c
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@83e
    if-eqz v4, :cond_50

    #@840
    .line 2149
    move-object/from16 v0, p0

    #@842
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@844
    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    #@847
    move-result v4

    #@848
    if-nez v4, :cond_50

    #@84a
    .line 2150
    move-object/from16 v0, p0

    #@84c
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@84e
    const/4 v10, 0x2

    #@84f
    invoke-virtual {v4, v10}, Landroid/view/View;->requestFocus(I)Z

    #@852
    .line 2160
    :cond_50
    if-nez v72, :cond_51

    #@854
    move-object/from16 v0, p0

    #@856
    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mFirst:Z

    #@858
    if-eqz v4, :cond_86

    #@85a
    :cond_51
    move/from16 v27, v53

    #@85c
    .line 2161
    :goto_28
    move-object/from16 v0, p0

    #@85e
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@860
    iget-boolean v4, v4, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    #@862
    if-eqz v4, :cond_87

    #@864
    move/from16 v44, v53

    #@866
    .line 2162
    .local v44, "hasWindowFocus":Z
    :goto_29
    if-eqz v44, :cond_88

    #@868
    move-object/from16 v0, p0

    #@86a
    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mLostWindowFocus:Z

    #@86c
    move/from16 v60, v0

    #@86e
    .line 2163
    .local v60, "regainedFocus":Z
    :goto_2a
    if-eqz v60, :cond_89

    #@870
    .line 2164
    const/4 v4, 0x0

    #@871
    move-object/from16 v0, p0

    #@873
    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mLostWindowFocus:Z

    #@875
    .line 2169
    :cond_52
    :goto_2b
    if-nez v27, :cond_53

    #@877
    if-eqz v60, :cond_54

    #@879
    .line 2171
    :cond_53
    move-object/from16 v0, p0

    #@87b
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@87d
    if-nez v4, :cond_8a

    #@87f
    const/16 v52, 0x0

    #@881
    .line 2173
    .local v52, "isToast":Z
    :goto_2c
    if-nez v52, :cond_54

    #@883
    .line 2174
    const/16 v4, 0x20

    #@885
    invoke-virtual {v5, v4}, Landroid/view/View;->sendAccessibilityEvent(I)V

    #@888
    .line 2178
    .end local v52    # "isToast":Z
    :cond_54
    const/4 v4, 0x0

    #@889
    move-object/from16 v0, p0

    #@88b
    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mFirst:Z

    #@88d
    .line 2179
    const/4 v4, 0x0

    #@88e
    move-object/from16 v0, p0

    #@890
    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mWillDrawSoon:Z

    #@892
    .line 2180
    const/4 v4, 0x0

    #@893
    move-object/from16 v0, p0

    #@895
    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mNewSurfaceNeeded:Z

    #@897
    .line 2181
    const/4 v4, 0x0

    #@898
    move-object/from16 v0, p0

    #@89a
    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mActivityRelaunched:Z

    #@89c
    .line 2182
    move/from16 v0, v71

    #@89e
    move-object/from16 v1, p0

    #@8a0
    iput v0, v1, Landroid/view/ViewRootImpl;->mViewVisibility:I

    #@8a2
    .line 2183
    move/from16 v0, v44

    #@8a4
    move-object/from16 v1, p0

    #@8a6
    iput-boolean v0, v1, Landroid/view/ViewRootImpl;->mHadWindowFocus:Z

    #@8a8
    .line 2185
    if-eqz v44, :cond_55

    #@8aa
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->isInLocalFocusMode()Z

    #@8ad
    move-result v4

    #@8ae
    if-eqz v4, :cond_8c

    #@8b0
    .line 2201
    :cond_55
    :goto_2d
    and-int/lit8 v4, v61, 0x2

    #@8b2
    if-eqz v4, :cond_56

    #@8b4
    .line 2202
    const/4 v4, 0x1

    #@8b5
    move-object/from16 v0, p0

    #@8b7
    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    #@8b9
    .line 2205
    :cond_56
    move-object/from16 v0, p0

    #@8bb
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@8bd
    iget-object v4, v4, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    #@8bf
    invoke-virtual {v4}, Landroid/view/ViewTreeObserver;->dispatchOnPreDraw()Z

    #@8c2
    move-result v4

    #@8c3
    if-nez v4, :cond_8e

    #@8c5
    if-eqz v53, :cond_8e

    #@8c7
    const/16 v26, 0x0

    #@8c9
    .line 2207
    .local v26, "cancelDraw":Z
    :goto_2e
    if-nez v26, :cond_57

    #@8cb
    if-eqz v56, :cond_8f

    #@8cd
    .line 2217
    :cond_57
    if-eqz v53, :cond_92

    #@8cf
    .line 2219
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    #@8d2
    .line 2228
    :cond_58
    :goto_2f
    const/4 v4, 0x0

    #@8d3
    move-object/from16 v0, p0

    #@8d5
    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mIsInTraversal:Z

    #@8d7
    .line 1444
    return-void

    #@8d8
    .line 1729
    .end local v26    # "cancelDraw":Z
    .end local v34    # "didLayout":Z
    .end local v44    # "hasWindowFocus":Z
    .end local v60    # "regainedFocus":Z
    .restart local v51    # "insetsPending":Z
    .restart local v54    # "layoutRequested":Z
    :cond_59
    const/16 v51, 0x1

    #@8da
    goto/16 :goto_11

    #@8dc
    :cond_5a
    const/16 v51, 0x0

    #@8de
    goto/16 :goto_11

    #@8e0
    .line 1771
    .end local v51    # "insetsPending":Z
    .restart local v33    # "contentInsetsChanged":Z
    .restart local v42    # "hadSurface":Z
    .local v46, "hwInitialized":Z
    :cond_5b
    const/4 v4, 0x1

    #@8e1
    goto/16 :goto_12

    #@8e3
    .line 1776
    :cond_5c
    const/16 v58, 0x1

    #@8e5
    .restart local v58    # "overscanInsetsChanged":Z
    goto/16 :goto_13

    #@8e7
    .line 1778
    :cond_5d
    const/16 v33, 0x1

    #@8e9
    goto/16 :goto_14

    #@8eb
    .line 1780
    :cond_5e
    const/16 v73, 0x1

    #@8ed
    .restart local v73    # "visibleInsetsChanged":Z
    goto/16 :goto_15

    #@8ef
    .line 1782
    :cond_5f
    const/16 v64, 0x1

    #@8f1
    .restart local v64    # "stableInsetsChanged":Z
    goto/16 :goto_16

    #@8f3
    .line 1784
    :cond_60
    const/16 v57, 0x1

    #@8f5
    .restart local v57    # "outsetsChanged":Z
    goto/16 :goto_17

    #@8f7
    .line 1785
    :cond_61
    const/16 v67, 0x0

    #@8f9
    .restart local v67    # "surfaceSizeChanged":Z
    goto/16 :goto_18

    #@8fb
    .line 1788
    :cond_62
    const/16 v23, 0x0

    #@8fd
    .restart local v23    # "alwaysConsumeNavBarChanged":Z
    goto/16 :goto_19

    #@8ff
    .line 1813
    :cond_63
    :try_start_4
    move-object/from16 v0, p0

    #@901
    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mApplyInsetsRequested:Z

    #@903
    .line 1812
    if-nez v4, :cond_39

    #@905
    .line 1814
    move-object/from16 v0, p0

    #@907
    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mLastOverscanRequested:Z

    #@909
    move-object/from16 v0, p0

    #@90b
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@90d
    iget-boolean v10, v10, Landroid/view/View$AttachInfo;->mOverscanRequested:Z

    #@90f
    if-ne v4, v10, :cond_39

    #@911
    .line 1812
    if-eqz v57, :cond_3a

    #@913
    goto/16 :goto_1a

    #@915
    .line 1854
    .end local v46    # "hwInitialized":Z
    :catch_0
    move-exception v38

    #@916
    .line 1855
    .local v38, "e":Landroid/view/Surface$OutOfResourcesException;
    move-object/from16 v0, p0

    #@918
    move-object/from16 v1, v38

    #@91a
    invoke-direct {v0, v1}, Landroid/view/ViewRootImpl;->handleOutOfResourcesException(Landroid/view/Surface$OutOfResourcesException;)V

    #@91d
    .line 1856
    return-void

    #@91e
    .line 1860
    .end local v38    # "e":Landroid/view/Surface$OutOfResourcesException;
    .restart local v46    # "hwInitialized":Z
    :cond_64
    move-object/from16 v0, p0

    #@920
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    #@922
    invoke-virtual {v4}, Landroid/view/Surface;->isValid()Z

    #@925
    move-result v4

    #@926
    if-nez v4, :cond_68

    #@928
    .line 1863
    move-object/from16 v0, p0

    #@92a
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mLastScrolledFocus:Ljava/lang/ref/WeakReference;

    #@92c
    if-eqz v4, :cond_65

    #@92e
    .line 1864
    move-object/from16 v0, p0

    #@930
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mLastScrolledFocus:Ljava/lang/ref/WeakReference;

    #@932
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->clear()V

    #@935
    .line 1866
    :cond_65
    const/4 v4, 0x0

    #@936
    move-object/from16 v0, p0

    #@938
    iput v4, v0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    #@93a
    const/4 v4, 0x0

    #@93b
    move-object/from16 v0, p0

    #@93d
    iput v4, v0, Landroid/view/ViewRootImpl;->mScrollY:I

    #@93f
    .line 1867
    move-object/from16 v0, p0

    #@941
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@943
    instance-of v4, v4, Lcom/android/internal/view/RootViewSurfaceTaker;

    #@945
    if-eqz v4, :cond_66

    #@947
    .line 1868
    move-object/from16 v0, p0

    #@949
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@94b
    check-cast v4, Lcom/android/internal/view/RootViewSurfaceTaker;

    #@94d
    move-object/from16 v0, p0

    #@94f
    iget v10, v0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    #@951
    invoke-interface {v4, v10}, Lcom/android/internal/view/RootViewSurfaceTaker;->onRootViewScrollYChanged(I)V

    #@954
    .line 1870
    :cond_66
    move-object/from16 v0, p0

    #@956
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    #@958
    if-eqz v4, :cond_67

    #@95a
    .line 1871
    move-object/from16 v0, p0

    #@95c
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    #@95e
    invoke-virtual {v4}, Landroid/widget/Scroller;->abortAnimation()V

    #@961
    .line 1874
    :cond_67
    move-object/from16 v0, p0

    #@963
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@965
    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    #@967
    if-eqz v4, :cond_3c

    #@969
    .line 1875
    move-object/from16 v0, p0

    #@96b
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@96d
    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    #@96f
    invoke-virtual {v4}, Landroid/view/ThreadedRenderer;->isEnabled()Z

    #@972
    move-result v4

    #@973
    .line 1874
    if-eqz v4, :cond_3c

    #@975
    .line 1876
    move-object/from16 v0, p0

    #@977
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@979
    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    #@97b
    invoke-virtual {v4}, Landroid/view/ThreadedRenderer;->destroy()V

    #@97e
    goto/16 :goto_1b

    #@980
    .line 1925
    .end local v23    # "alwaysConsumeNavBarChanged":Z
    .end local v46    # "hwInitialized":Z
    .end local v57    # "outsetsChanged":Z
    .end local v58    # "overscanInsetsChanged":Z
    .end local v64    # "stableInsetsChanged":Z
    .end local v67    # "surfaceSizeChanged":Z
    .end local v73    # "visibleInsetsChanged":Z
    :catch_1
    move-exception v37

    #@981
    .local v37, "e":Landroid/os/RemoteException;
    goto/16 :goto_20

    #@983
    .line 1878
    .end local v37    # "e":Landroid/os/RemoteException;
    .restart local v23    # "alwaysConsumeNavBarChanged":Z
    .restart local v46    # "hwInitialized":Z
    .restart local v57    # "outsetsChanged":Z
    .restart local v58    # "overscanInsetsChanged":Z
    .restart local v64    # "stableInsetsChanged":Z
    .restart local v67    # "surfaceSizeChanged":Z
    .restart local v73    # "visibleInsetsChanged":Z
    :cond_68
    move-object/from16 v0, p0

    #@985
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    #@987
    invoke-virtual {v4}, Landroid/view/Surface;->getGenerationId()I

    #@98a
    move-result v4

    #@98b
    move/from16 v0, v66

    #@98d
    if-ne v0, v4, :cond_69

    #@98f
    if-eqz v67, :cond_3c

    #@991
    .line 1880
    :cond_69
    move-object/from16 v0, p0

    #@993
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@995
    if-nez v4, :cond_3c

    #@997
    .line 1881
    move-object/from16 v0, p0

    #@999
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@99b
    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    #@99d
    if-eqz v4, :cond_3c

    #@99f
    .line 1882
    const/4 v4, 0x1

    #@9a0
    move-object/from16 v0, p0

    #@9a2
    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    #@9a4
    .line 1892
    :try_start_5
    move-object/from16 v0, p0

    #@9a6
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@9a8
    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    #@9aa
    move-object/from16 v0, p0

    #@9ac
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    #@9ae
    invoke-virtual {v4, v10}, Landroid/view/ThreadedRenderer;->updateSurface(Landroid/view/Surface;)V
    :try_end_5
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    #@9b1
    goto/16 :goto_1b

    #@9b3
    .line 1893
    :catch_2
    move-exception v38

    #@9b4
    .line 1894
    .restart local v38    # "e":Landroid/view/Surface$OutOfResourcesException;
    :try_start_6
    move-object/from16 v0, p0

    #@9b6
    move-object/from16 v1, v38

    #@9b8
    invoke-direct {v0, v1}, Landroid/view/ViewRootImpl;->handleOutOfResourcesException(Landroid/view/Surface$OutOfResourcesException;)V

    #@9bb
    .line 1895
    return-void

    #@9bc
    .line 1899
    .end local v38    # "e":Landroid/view/Surface$OutOfResourcesException;
    .end local v46    # "hwInitialized":Z
    :cond_6a
    const/16 v41, 0x0

    #@9be
    .restart local v41    # "freeformResizing":Z
    goto/16 :goto_1c

    #@9c0
    .line 1901
    :cond_6b
    const/16 v35, 0x0

    #@9c2
    .restart local v35    # "dockedResizing":Z
    goto/16 :goto_1d

    #@9c4
    .line 1903
    :cond_6c
    const/16 v36, 0x1

    #@9c6
    .local v36, "dragResizing":Z
    goto/16 :goto_1e

    #@9c8
    .line 1908
    .end local v36    # "dragResizing":Z
    :cond_6d
    const/4 v4, 0x1

    #@9c9
    goto/16 :goto_1f

    #@9cb
    .line 1914
    :cond_6e
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->endDragResizing()V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    #@9ce
    goto/16 :goto_20

    #@9d0
    .line 1963
    .end local v23    # "alwaysConsumeNavBarChanged":Z
    .end local v35    # "dockedResizing":Z
    .end local v41    # "freeformResizing":Z
    .end local v57    # "outsetsChanged":Z
    .end local v58    # "overscanInsetsChanged":Z
    .end local v64    # "stableInsetsChanged":Z
    .end local v67    # "surfaceSizeChanged":Z
    .end local v73    # "visibleInsetsChanged":Z
    .restart local v25    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :cond_6f
    const/16 v65, 0x1

    #@9d2
    .line 1965
    .end local v25    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :cond_70
    if-nez v65, :cond_71

    #@9d4
    move-object/from16 v0, p0

    #@9d6
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    #@9d8
    invoke-virtual {v4}, Landroid/view/Surface;->getGenerationId()I

    #@9db
    move-result v4

    #@9dc
    move/from16 v0, v66

    #@9de
    if-eq v0, v4, :cond_72

    #@9e0
    .line 1966
    :cond_71
    move-object/from16 v0, p0

    #@9e2
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    #@9e4
    move-object/from16 v0, p0

    #@9e6
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@9e8
    .line 1967
    iget v11, v6, Landroid/view/WindowManager$LayoutParams;->format:I

    #@9ea
    move-object/from16 v0, p0

    #@9ec
    iget v12, v0, Landroid/view/ViewRootImpl;->mWidth:I

    #@9ee
    move-object/from16 v0, p0

    #@9f0
    iget v0, v0, Landroid/view/ViewRootImpl;->mHeight:I

    #@9f2
    move/from16 v17, v0

    #@9f4
    .line 1966
    move/from16 v0, v17

    #@9f6
    invoke-interface {v4, v10, v11, v12, v0}, Landroid/view/SurfaceHolder$Callback2;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    #@9f9
    .line 1968
    move-object/from16 v0, p0

    #@9fb
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@9fd
    invoke-virtual {v4}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    #@a00
    move-result-object v25

    #@a01
    .line 1969
    .restart local v25    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    if-eqz v25, :cond_72

    #@a03
    .line 1970
    const/4 v4, 0x0

    #@a04
    move-object/from16 v0, v25

    #@a06
    array-length v10, v0

    #@a07
    :goto_30
    if-ge v4, v10, :cond_72

    #@a09
    aget-object v24, v25, v4

    #@a0b
    .line 1971
    .restart local v24    # "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    #@a0d
    iget-object v11, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@a0f
    iget v12, v6, Landroid/view/WindowManager$LayoutParams;->format:I

    #@a11
    .line 1972
    move-object/from16 v0, p0

    #@a13
    iget v0, v0, Landroid/view/ViewRootImpl;->mWidth:I

    #@a15
    move/from16 v17, v0

    #@a17
    move-object/from16 v0, p0

    #@a19
    iget v0, v0, Landroid/view/ViewRootImpl;->mHeight:I

    #@a1b
    move/from16 v18, v0

    #@a1d
    .line 1971
    move-object/from16 v0, v24

    #@a1f
    move/from16 v1, v17

    #@a21
    move/from16 v2, v18

    #@a23
    invoke-interface {v0, v11, v12, v1, v2}, Landroid/view/SurfaceHolder$Callback;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    #@a26
    .line 1970
    add-int/lit8 v4, v4, 0x1

    #@a28
    goto :goto_30

    #@a29
    .line 1976
    .end local v24    # "c":Landroid/view/SurfaceHolder$Callback;
    .end local v25    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :cond_72
    const/4 v4, 0x0

    #@a2a
    move-object/from16 v0, p0

    #@a2c
    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mIsCreating:Z

    #@a2e
    .line 1995
    :cond_73
    :goto_31
    move-object/from16 v0, p0

    #@a30
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@a32
    iget-object v0, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    #@a34
    move-object/from16 v43, v0

    #@a36
    .line 1996
    .local v43, "hardwareRenderer":Landroid/view/ThreadedRenderer;
    if-eqz v43, :cond_75

    #@a38
    invoke-virtual/range {v43 .. v43}, Landroid/view/ThreadedRenderer;->isEnabled()Z

    #@a3b
    move-result v4

    #@a3c
    if-eqz v4, :cond_75

    #@a3e
    .line 1997
    if-nez v46, :cond_74

    #@a40
    .line 1998
    move-object/from16 v0, p0

    #@a42
    iget v4, v0, Landroid/view/ViewRootImpl;->mWidth:I

    #@a44
    invoke-virtual/range {v43 .. v43}, Landroid/view/ThreadedRenderer;->getWidth()I

    #@a47
    move-result v10

    #@a48
    if-eq v4, v10, :cond_7d

    #@a4a
    .line 2001
    :cond_74
    :goto_32
    move-object/from16 v0, p0

    #@a4c
    iget v4, v0, Landroid/view/ViewRootImpl;->mWidth:I

    #@a4e
    move-object/from16 v0, p0

    #@a50
    iget v10, v0, Landroid/view/ViewRootImpl;->mHeight:I

    #@a52
    move-object/from16 v0, p0

    #@a54
    iget-object v11, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@a56
    .line 2002
    move-object/from16 v0, p0

    #@a58
    iget-object v12, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@a5a
    iget-object v12, v12, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@a5c
    .line 2001
    move-object/from16 v0, v43

    #@a5e
    invoke-virtual {v0, v4, v10, v11, v12}, Landroid/view/ThreadedRenderer;->setup(IILandroid/view/View$AttachInfo;Landroid/graphics/Rect;)V

    #@a61
    .line 2003
    const/4 v4, 0x0

    #@a62
    move-object/from16 v0, p0

    #@a64
    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mNeedsHwRendererSetup:Z

    #@a66
    .line 2007
    :cond_75
    move-object/from16 v0, p0

    #@a68
    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mStopped:Z

    #@a6a
    if-eqz v4, :cond_76

    #@a6c
    move-object/from16 v0, p0

    #@a6e
    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    #@a70
    if-eqz v4, :cond_4b

    #@a72
    .line 2009
    :cond_76
    and-int/lit8 v4, v61, 0x1

    #@a74
    if-eqz v4, :cond_7e

    #@a76
    const/4 v4, 0x1

    #@a77
    .line 2008
    :goto_33
    move-object/from16 v0, p0

    #@a79
    invoke-direct {v0, v4}, Landroid/view/ViewRootImpl;->ensureTouchModeLocally(Z)Z

    #@a7c
    move-result v39

    #@a7d
    .line 2010
    .local v39, "focusChangedDueToTouchMode":Z
    if-nez v39, :cond_77

    #@a7f
    move-object/from16 v0, p0

    #@a81
    iget v4, v0, Landroid/view/ViewRootImpl;->mWidth:I

    #@a83
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    #@a86
    move-result v10

    #@a87
    if-eq v4, v10, :cond_7f

    #@a89
    .line 2013
    :cond_77
    :goto_34
    move-object/from16 v0, p0

    #@a8b
    iget v4, v0, Landroid/view/ViewRootImpl;->mWidth:I

    #@a8d
    iget v10, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    #@a8f
    invoke-static {v4, v10}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    #@a92
    move-result v29

    #@a93
    .line 2014
    .local v29, "childWidthMeasureSpec":I
    move-object/from16 v0, p0

    #@a95
    iget v4, v0, Landroid/view/ViewRootImpl;->mHeight:I

    #@a97
    iget v10, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    #@a99
    invoke-static {v4, v10}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    #@a9c
    move-result v28

    #@a9d
    .line 2023
    .local v28, "childHeightMeasureSpec":I
    move-object/from16 v0, p0

    #@a9f
    move/from16 v1, v29

    #@aa1
    move/from16 v2, v28

    #@aa3
    invoke-direct {v0, v1, v2}, Landroid/view/ViewRootImpl;->performMeasure(II)V

    #@aa6
    .line 2028
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    #@aa9
    move-result v74

    #@aaa
    .line 2029
    .local v74, "width":I
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    #@aad
    move-result v45

    #@aae
    .line 2030
    .local v45, "height":I
    const/16 v55, 0x0

    #@ab0
    .line 2032
    .local v55, "measureAgain":Z
    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    #@ab2
    const/4 v10, 0x0

    #@ab3
    cmpl-float v4, v4, v10

    #@ab5
    if-lez v4, :cond_78

    #@ab7
    .line 2033
    move-object/from16 v0, p0

    #@ab9
    iget v4, v0, Landroid/view/ViewRootImpl;->mWidth:I

    #@abb
    sub-int v4, v4, v74

    #@abd
    int-to-float v4, v4

    #@abe
    iget v10, v6, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    #@ac0
    mul-float/2addr v4, v10

    #@ac1
    float-to-int v4, v4

    #@ac2
    add-int v74, v74, v4

    #@ac4
    .line 2035
    const/high16 v4, 0x40000000    # 2.0f

    #@ac6
    .line 2034
    move/from16 v0, v74

    #@ac8
    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@acb
    move-result v29

    #@acc
    .line 2036
    const/16 v55, 0x1

    #@ace
    .line 2038
    :cond_78
    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    #@ad0
    const/4 v10, 0x0

    #@ad1
    cmpl-float v4, v4, v10

    #@ad3
    if-lez v4, :cond_79

    #@ad5
    .line 2039
    move-object/from16 v0, p0

    #@ad7
    iget v4, v0, Landroid/view/ViewRootImpl;->mHeight:I

    #@ad9
    sub-int v4, v4, v45

    #@adb
    int-to-float v4, v4

    #@adc
    iget v10, v6, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    #@ade
    mul-float/2addr v4, v10

    #@adf
    float-to-int v4, v4

    #@ae0
    add-int v45, v45, v4

    #@ae2
    .line 2041
    const/high16 v4, 0x40000000    # 2.0f

    #@ae4
    .line 2040
    move/from16 v0, v45

    #@ae6
    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@ae9
    move-result v28

    #@aea
    .line 2042
    const/16 v55, 0x1

    #@aec
    .line 2045
    :cond_79
    if-eqz v55, :cond_7a

    #@aee
    .line 2049
    move-object/from16 v0, p0

    #@af0
    move/from16 v1, v29

    #@af2
    move/from16 v2, v28

    #@af4
    invoke-direct {v0, v1, v2}, Landroid/view/ViewRootImpl;->performMeasure(II)V

    #@af7
    .line 2052
    :cond_7a
    const/16 v54, 0x1

    #@af9
    .local v54, "layoutRequested":Z
    goto/16 :goto_22

    #@afb
    .line 1977
    .end local v28    # "childHeightMeasureSpec":I
    .end local v29    # "childWidthMeasureSpec":I
    .end local v39    # "focusChangedDueToTouchMode":Z
    .end local v43    # "hardwareRenderer":Landroid/view/ThreadedRenderer;
    .end local v45    # "height":I
    .end local v55    # "measureAgain":Z
    .end local v74    # "width":I
    .local v54, "layoutRequested":Z
    :cond_7b
    if-eqz v42, :cond_73

    #@afd
    .line 1978
    move-object/from16 v0, p0

    #@aff
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@b01
    invoke-virtual {v4}, Lcom/android/internal/view/BaseSurfaceHolder;->ungetCallbacks()V

    #@b04
    .line 1979
    move-object/from16 v0, p0

    #@b06
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@b08
    invoke-virtual {v4}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    #@b0b
    move-result-object v25

    #@b0c
    .line 1980
    .restart local v25    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    #@b0e
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    #@b10
    move-object/from16 v0, p0

    #@b12
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@b14
    invoke-interface {v4, v10}, Landroid/view/SurfaceHolder$Callback2;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    #@b17
    .line 1981
    if-eqz v25, :cond_7c

    #@b19
    .line 1982
    const/4 v4, 0x0

    #@b1a
    move-object/from16 v0, v25

    #@b1c
    array-length v10, v0

    #@b1d
    :goto_35
    if-ge v4, v10, :cond_7c

    #@b1f
    aget-object v24, v25, v4

    #@b21
    .line 1983
    .restart local v24    # "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    #@b23
    iget-object v11, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@b25
    move-object/from16 v0, v24

    #@b27
    invoke-interface {v0, v11}, Landroid/view/SurfaceHolder$Callback;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    #@b2a
    .line 1982
    add-int/lit8 v4, v4, 0x1

    #@b2c
    goto :goto_35

    #@b2d
    .line 1986
    .end local v24    # "c":Landroid/view/SurfaceHolder$Callback;
    :cond_7c
    move-object/from16 v0, p0

    #@b2f
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@b31
    iget-object v4, v4, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@b33
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@b36
    .line 1988
    :try_start_7
    move-object/from16 v0, p0

    #@b38
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@b3a
    new-instance v10, Landroid/view/Surface;

    #@b3c
    invoke-direct {v10}, Landroid/view/Surface;-><init>()V

    #@b3f
    iput-object v10, v4, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@b41
    .line 1990
    move-object/from16 v0, p0

    #@b43
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@b45
    iget-object v4, v4, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@b47
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@b4a
    goto/16 :goto_31

    #@b4c
    .line 1989
    :catchall_0
    move-exception v4

    #@b4d
    .line 1990
    move-object/from16 v0, p0

    #@b4f
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@b51
    iget-object v10, v10, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@b53
    invoke-virtual {v10}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@b56
    .line 1989
    throw v4

    #@b57
    .line 1999
    .end local v25    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .restart local v43    # "hardwareRenderer":Landroid/view/ThreadedRenderer;
    :cond_7d
    move-object/from16 v0, p0

    #@b59
    iget v4, v0, Landroid/view/ViewRootImpl;->mHeight:I

    #@b5b
    invoke-virtual/range {v43 .. v43}, Landroid/view/ThreadedRenderer;->getHeight()I

    #@b5e
    move-result v10

    #@b5f
    if-ne v4, v10, :cond_74

    #@b61
    .line 2000
    move-object/from16 v0, p0

    #@b63
    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mNeedsHwRendererSetup:Z

    #@b65
    .line 1997
    if-eqz v4, :cond_75

    #@b67
    goto/16 :goto_32

    #@b69
    .line 2009
    :cond_7e
    const/4 v4, 0x0

    #@b6a
    goto/16 :goto_33

    #@b6c
    .line 2011
    .restart local v39    # "focusChangedDueToTouchMode":Z
    :cond_7f
    move-object/from16 v0, p0

    #@b6e
    iget v4, v0, Landroid/view/ViewRootImpl;->mHeight:I

    #@b70
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    #@b73
    move-result v10

    #@b74
    if-ne v4, v10, :cond_77

    #@b76
    .line 2010
    if-nez v33, :cond_77

    #@b78
    if-eqz v69, :cond_4b

    #@b7a
    goto/16 :goto_34

    #@b7c
    .line 2064
    .end local v33    # "contentInsetsChanged":Z
    .end local v39    # "focusChangedDueToTouchMode":Z
    .end local v42    # "hadSurface":Z
    .end local v43    # "hardwareRenderer":Landroid/view/ThreadedRenderer;
    .end local v54    # "layoutRequested":Z
    :cond_80
    const/16 v34, 0x1

    #@b7e
    goto/16 :goto_23

    #@b80
    :cond_81
    const/16 v34, 0x0

    #@b82
    goto/16 :goto_23

    #@b84
    .line 2065
    .restart local v34    # "didLayout":Z
    :cond_82
    const/16 v68, 0x1

    #@b86
    .local v68, "triggerGlobalLayoutListener":Z
    goto/16 :goto_24

    #@b88
    .line 2116
    .end local v68    # "triggerGlobalLayoutListener":Z
    .restart local v49    # "insets":Landroid/view/ViewTreeObserver$InternalInsetsInfo;
    :cond_83
    const/4 v4, 0x1

    #@b89
    goto/16 :goto_26

    #@b8b
    .line 2120
    :cond_84
    move-object/from16 v0, p0

    #@b8d
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mLastGivenInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    #@b8f
    move-object/from16 v0, v49

    #@b91
    invoke-virtual {v4, v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->set(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V

    #@b94
    .line 2126
    move-object/from16 v0, p0

    #@b96
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@b98
    if-eqz v4, :cond_85

    #@b9a
    .line 2127
    move-object/from16 v0, p0

    #@b9c
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@b9e
    move-object/from16 v0, v49

    #@ba0
    iget-object v10, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->contentInsets:Landroid/graphics/Rect;

    #@ba2
    invoke-virtual {v4, v10}, Landroid/content/res/CompatibilityInfo$Translator;->getTranslatedContentInsets(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    #@ba5
    move-result-object v13

    #@ba6
    .line 2128
    .local v13, "contentInsets":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    #@ba8
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@baa
    move-object/from16 v0, v49

    #@bac
    iget-object v10, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->visibleInsets:Landroid/graphics/Rect;

    #@bae
    invoke-virtual {v4, v10}, Landroid/content/res/CompatibilityInfo$Translator;->getTranslatedVisibleInsets(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    #@bb1
    move-result-object v14

    #@bb2
    .line 2129
    .local v14, "visibleInsets":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    #@bb4
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@bb6
    move-object/from16 v0, v49

    #@bb8
    iget-object v10, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    #@bba
    invoke-virtual {v4, v10}, Landroid/content/res/CompatibilityInfo$Translator;->getTranslatedTouchableArea(Landroid/graphics/Region;)Landroid/graphics/Region;

    #@bbd
    move-result-object v15

    #@bbe
    .line 2137
    .local v15, "touchableRegion":Landroid/graphics/Region;
    :goto_36
    :try_start_8
    move-object/from16 v0, p0

    #@bc0
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    #@bc2
    move-object/from16 v0, p0

    #@bc4
    iget-object v11, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    #@bc6
    move-object/from16 v0, v49

    #@bc8
    iget v12, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->mTouchableInsets:I

    #@bca
    invoke-interface/range {v10 .. v15}, Landroid/view/IWindowSession;->setInsets(Landroid/view/IWindow;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Region;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_3

    #@bcd
    goto/16 :goto_27

    #@bcf
    .line 2139
    :catch_3
    move-exception v37

    #@bd0
    .restart local v37    # "e":Landroid/os/RemoteException;
    goto/16 :goto_27

    #@bd2
    .line 2131
    .end local v13    # "contentInsets":Landroid/graphics/Rect;
    .end local v14    # "visibleInsets":Landroid/graphics/Rect;
    .end local v15    # "touchableRegion":Landroid/graphics/Region;
    .end local v37    # "e":Landroid/os/RemoteException;
    :cond_85
    move-object/from16 v0, v49

    #@bd4
    iget-object v13, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->contentInsets:Landroid/graphics/Rect;

    #@bd6
    .line 2132
    .restart local v13    # "contentInsets":Landroid/graphics/Rect;
    move-object/from16 v0, v49

    #@bd8
    iget-object v14, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->visibleInsets:Landroid/graphics/Rect;

    #@bda
    .line 2133
    .restart local v14    # "visibleInsets":Landroid/graphics/Rect;
    move-object/from16 v0, v49

    #@bdc
    iget-object v15, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    #@bde
    .restart local v15    # "touchableRegion":Landroid/graphics/Region;
    goto :goto_36

    #@bdf
    .line 2160
    .end local v13    # "contentInsets":Landroid/graphics/Rect;
    .end local v14    # "visibleInsets":Landroid/graphics/Rect;
    .end local v15    # "touchableRegion":Landroid/graphics/Region;
    .end local v49    # "insets":Landroid/view/ViewTreeObserver$InternalInsetsInfo;
    :cond_86
    const/16 v27, 0x0

    #@be1
    .local v27, "changedVisibility":Z
    goto/16 :goto_28

    #@be3
    .line 2161
    .end local v27    # "changedVisibility":Z
    :cond_87
    const/16 v44, 0x0

    #@be5
    goto/16 :goto_29

    #@be7
    .line 2162
    .restart local v44    # "hasWindowFocus":Z
    :cond_88
    const/16 v60, 0x0

    #@be9
    goto/16 :goto_2a

    #@beb
    .line 2165
    .restart local v60    # "regainedFocus":Z
    :cond_89
    if-nez v44, :cond_52

    #@bed
    move-object/from16 v0, p0

    #@bef
    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mHadWindowFocus:Z

    #@bf1
    if-eqz v4, :cond_52

    #@bf3
    .line 2166
    const/4 v4, 0x1

    #@bf4
    move-object/from16 v0, p0

    #@bf6
    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mLostWindowFocus:Z

    #@bf8
    goto/16 :goto_2b

    #@bfa
    .line 2172
    :cond_8a
    move-object/from16 v0, p0

    #@bfc
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@bfe
    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    #@c00
    const/16 v10, 0x7d5

    #@c02
    if-ne v4, v10, :cond_8b

    #@c04
    const/16 v52, 0x1

    #@c06
    goto/16 :goto_2c

    #@c08
    :cond_8b
    const/16 v52, 0x0

    #@c0a
    goto/16 :goto_2c

    #@c0c
    .line 2187
    :cond_8c
    move-object/from16 v0, p0

    #@c0e
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@c10
    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@c12
    .line 2186
    invoke-static {v4}, Landroid/view/WindowManager$LayoutParams;->mayUseInputMethod(I)Z

    #@c15
    move-result v48

    #@c16
    .line 2188
    .local v48, "imTarget":Z
    move-object/from16 v0, p0

    #@c18
    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mLastWasImTarget:Z

    #@c1a
    move/from16 v0, v48

    #@c1c
    if-eq v0, v4, :cond_55

    #@c1e
    .line 2189
    move/from16 v0, v48

    #@c20
    move-object/from16 v1, p0

    #@c22
    iput-boolean v0, v1, Landroid/view/ViewRootImpl;->mLastWasImTarget:Z

    #@c24
    .line 2190
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    #@c27
    move-result-object v16

    #@c28
    .line 2191
    .local v16, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v16, :cond_55

    #@c2a
    if-eqz v48, :cond_55

    #@c2c
    .line 2192
    move-object/from16 v0, p0

    #@c2e
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@c30
    move-object/from16 v0, v16

    #@c32
    move/from16 v1, v44

    #@c34
    invoke-virtual {v0, v4, v1}, Landroid/view/inputmethod/InputMethodManager;->onPreWindowFocus(Landroid/view/View;Z)V

    #@c37
    .line 2193
    move-object/from16 v0, p0

    #@c39
    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@c3b
    move-object/from16 v17, v0

    #@c3d
    move-object/from16 v0, p0

    #@c3f
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@c41
    invoke-virtual {v4}, Landroid/view/View;->findFocus()Landroid/view/View;

    #@c44
    move-result-object v18

    #@c45
    .line 2194
    move-object/from16 v0, p0

    #@c47
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@c49
    iget v0, v4, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    #@c4b
    move/from16 v19, v0

    #@c4d
    .line 2195
    move-object/from16 v0, p0

    #@c4f
    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mHasHadWindowFocus:Z

    #@c51
    if-eqz v4, :cond_8d

    #@c53
    const/16 v20, 0x0

    #@c55
    :goto_37
    move-object/from16 v0, p0

    #@c57
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@c59
    iget v0, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@c5b
    move/from16 v21, v0

    #@c5d
    .line 2193
    invoke-virtual/range {v16 .. v21}, Landroid/view/inputmethod/InputMethodManager;->onPostWindowFocus(Landroid/view/View;Landroid/view/View;IZI)V

    #@c60
    goto/16 :goto_2d

    #@c62
    .line 2195
    :cond_8d
    const/16 v20, 0x1

    #@c64
    goto :goto_37

    #@c65
    .line 2205
    .end local v16    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v48    # "imTarget":Z
    :cond_8e
    const/16 v26, 0x1

    #@c67
    goto/16 :goto_2e

    #@c69
    .line 2208
    .restart local v26    # "cancelDraw":Z
    :cond_8f
    move-object/from16 v0, p0

    #@c6b
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    #@c6d
    if-eqz v4, :cond_91

    #@c6f
    move-object/from16 v0, p0

    #@c71
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    #@c73
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@c76
    move-result v4

    #@c77
    if-lez v4, :cond_91

    #@c79
    .line 2209
    const/16 v47, 0x0

    #@c7b
    .restart local v47    # "i":I
    :goto_38
    move-object/from16 v0, p0

    #@c7d
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    #@c7f
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@c82
    move-result v4

    #@c83
    move/from16 v0, v47

    #@c85
    if-ge v0, v4, :cond_90

    #@c87
    .line 2210
    move-object/from16 v0, p0

    #@c89
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    #@c8b
    move/from16 v0, v47

    #@c8d
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@c90
    move-result-object v4

    #@c91
    check-cast v4, Landroid/animation/LayoutTransition;

    #@c93
    invoke-virtual {v4}, Landroid/animation/LayoutTransition;->startChangingAnimations()V

    #@c96
    .line 2209
    add-int/lit8 v47, v47, 0x1

    #@c98
    goto :goto_38

    #@c99
    .line 2212
    :cond_90
    move-object/from16 v0, p0

    #@c9b
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    #@c9d
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    #@ca0
    .line 2215
    .end local v47    # "i":I
    :cond_91
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->performDraw()V

    #@ca3
    goto/16 :goto_2f

    #@ca5
    .line 2220
    :cond_92
    move-object/from16 v0, p0

    #@ca7
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    #@ca9
    if-eqz v4, :cond_58

    #@cab
    move-object/from16 v0, p0

    #@cad
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    #@caf
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@cb2
    move-result v4

    #@cb3
    if-lez v4, :cond_58

    #@cb5
    .line 2221
    const/16 v47, 0x0

    #@cb7
    .restart local v47    # "i":I
    :goto_39
    move-object/from16 v0, p0

    #@cb9
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    #@cbb
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@cbe
    move-result v4

    #@cbf
    move/from16 v0, v47

    #@cc1
    if-ge v0, v4, :cond_93

    #@cc3
    .line 2222
    move-object/from16 v0, p0

    #@cc5
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    #@cc7
    move/from16 v0, v47

    #@cc9
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@ccc
    move-result-object v4

    #@ccd
    check-cast v4, Landroid/animation/LayoutTransition;

    #@ccf
    invoke-virtual {v4}, Landroid/animation/LayoutTransition;->endChangingAnimations()V

    #@cd2
    .line 2221
    add-int/lit8 v47, v47, 0x1

    #@cd4
    goto :goto_39

    #@cd5
    .line 2224
    :cond_93
    move-object/from16 v0, p0

    #@cd7
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    #@cd9
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    #@cdc
    goto/16 :goto_2f

    #@cde
    .line 2092
    .end local v26    # "cancelDraw":Z
    .end local v44    # "hasWindowFocus":Z
    .end local v47    # "i":I
    .end local v60    # "regainedFocus":Z
    :catch_4
    move-exception v37

    #@cdf
    .restart local v37    # "e":Landroid/os/RemoteException;
    goto/16 :goto_25
.end method

.method private postSendWindowContentChangedCallback(Landroid/view/View;I)V
    .locals 2
    .param p1, "source"    # Landroid/view/View;
    .param p2, "changeType"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 6620
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 6622
    new-instance v0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    #@7
    invoke-direct {v0, p0, v1}, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;)V

    #@a
    .line 6621
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    #@c
    .line 6624
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    #@e
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->runOrPost(Landroid/view/View;I)V

    #@11
    .line 6619
    return-void
.end method

.method private profileRendering(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 2545
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mProfileRendering:Z

    #@3
    if-eqz v0, :cond_2

    #@5
    .line 2546
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mRenderProfilingEnabled:Z

    #@7
    .line 2548
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 2549
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    #@d
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

    #@f
    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    #@12
    .line 2551
    :cond_0
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mRenderProfilingEnabled:Z

    #@14
    if-eqz v0, :cond_3

    #@16
    .line 2552
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

    #@18
    if-nez v0, :cond_1

    #@1a
    .line 2553
    new-instance v0, Landroid/view/ViewRootImpl$3;

    #@1c
    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$3;-><init>(Landroid/view/ViewRootImpl;)V

    #@1f
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

    #@21
    .line 2564
    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    #@23
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

    #@25
    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    #@28
    .line 2544
    :cond_2
    :goto_0
    return-void

    #@29
    .line 2566
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
    .line 6144
    iput-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    #@3
    .line 6145
    iput-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mReceiver:Landroid/view/InputEventReceiver;

    #@5
    .line 6147
    iget v0, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPoolSize:I

    #@7
    const/16 v1, 0xa

    #@9
    if-ge v0, v1, :cond_0

    #@b
    .line 6148
    iget v0, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPoolSize:I

    #@d
    add-int/lit8 v0, v0, 0x1

    #@f
    iput v0, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPoolSize:I

    #@11
    .line 6149
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPool:Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@13
    iput-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@15
    .line 6150
    iput-object p1, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPool:Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@17
    .line 6143
    :cond_0
    return-void
.end method

.method private relayoutWindow(Landroid/view/WindowManager$LayoutParams;IZ)I
    .locals 21
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
    .line 5699
    move-object/from16 v0, p0

    #@2
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@4
    iget v0, v1, Landroid/view/View$AttachInfo;->mApplicationScale:F

    #@6
    move/from16 v18, v0

    #@8
    .line 5700
    .local v18, "appScale":F
    const/16 v20, 0x0

    #@a
    .line 5701
    .local v20, "restore":Z
    if-eqz p1, :cond_0

    #@c
    move-object/from16 v0, p0

    #@e
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@10
    if-eqz v1, :cond_0

    #@12
    .line 5702
    const/16 v20, 0x1

    #@14
    .line 5703
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowManager$LayoutParams;->backup()V

    #@17
    .line 5704
    move-object/from16 v0, p0

    #@19
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@1b
    move-object/from16 v0, p1

    #@1d
    invoke-virtual {v1, v0}, Landroid/content/res/CompatibilityInfo$Translator;->translateWindowLayout(Landroid/view/WindowManager$LayoutParams;)V

    #@20
    .line 5706
    :cond_0
    if-eqz p1, :cond_1

    #@22
    .line 5709
    :cond_1
    move-object/from16 v0, p0

    #@24
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mPendingConfiguration:Landroid/content/res/Configuration;

    #@26
    const/4 v2, 0x0

    #@27
    iput v2, v1, Landroid/content/res/Configuration;->seq:I

    #@29
    .line 5711
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
    .line 5713
    move-object/from16 v0, p0

    #@37
    iget v1, v0, Landroid/view/ViewRootImpl;->mTargetSdkVersion:I

    #@39
    const/16 v2, 0xe

    #@3b
    if-ge v1, v2, :cond_2

    #@3d
    .line 5714
    move-object/from16 v0, p0

    #@3f
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    #@41
    new-instance v2, Ljava/lang/StringBuilder;

    #@43
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@46
    const-string/jumbo v3, "Window type can not be changed after the window is added; ignoring change of "

    #@49
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v2

    #@4d
    .line 5715
    move-object/from16 v0, p0

    #@4f
    iget-object v3, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@51
    .line 5714
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v2

    #@55
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v2

    #@59
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@5c
    .line 5716
    move-object/from16 v0, p0

    #@5e
    iget v1, v0, Landroid/view/ViewRootImpl;->mOrigWindowType:I

    #@60
    move-object/from16 v0, p1

    #@62
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@64
    .line 5719
    :cond_2
    move-object/from16 v0, p0

    #@66
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    #@68
    .line 5720
    move-object/from16 v0, p0

    #@6a
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    #@6c
    move-object/from16 v0, p0

    #@6e
    iget v3, v0, Landroid/view/ViewRootImpl;->mSeq:I

    #@70
    .line 5721
    move-object/from16 v0, p0

    #@72
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@74
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    #@77
    move-result v4

    #@78
    int-to-float v4, v4

    #@79
    mul-float v4, v4, v18

    #@7b
    const/high16 v5, 0x3f000000    # 0.5f

    #@7d
    add-float/2addr v4, v5

    #@7e
    float-to-int v5, v4

    #@7f
    .line 5722
    move-object/from16 v0, p0

    #@81
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@83
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    #@86
    move-result v4

    #@87
    int-to-float v4, v4

    #@88
    mul-float v4, v4, v18

    #@8a
    const/high16 v6, 0x3f000000    # 0.5f

    #@8c
    add-float/2addr v4, v6

    #@8d
    float-to-int v6, v4

    #@8e
    .line 5723
    if-eqz p3, :cond_5

    #@90
    const/4 v8, 0x1

    #@91
    .line 5724
    :goto_0
    move-object/from16 v0, p0

    #@93
    iget-object v9, v0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    #@95
    move-object/from16 v0, p0

    #@97
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    #@99
    move-object/from16 v0, p0

    #@9b
    iget-object v11, v0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    #@9d
    move-object/from16 v0, p0

    #@9f
    iget-object v12, v0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    #@a1
    .line 5725
    move-object/from16 v0, p0

    #@a3
    iget-object v13, v0, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    #@a5
    move-object/from16 v0, p0

    #@a7
    iget-object v14, v0, Landroid/view/ViewRootImpl;->mPendingOutsets:Landroid/graphics/Rect;

    #@a9
    move-object/from16 v0, p0

    #@ab
    iget-object v15, v0, Landroid/view/ViewRootImpl;->mPendingBackDropFrame:Landroid/graphics/Rect;

    #@ad
    move-object/from16 v0, p0

    #@af
    iget-object v0, v0, Landroid/view/ViewRootImpl;->mPendingConfiguration:Landroid/content/res/Configuration;

    #@b1
    move-object/from16 v16, v0

    #@b3
    .line 5726
    move-object/from16 v0, p0

    #@b5
    iget-object v0, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    #@b7
    move-object/from16 v17, v0

    #@b9
    move-object/from16 v4, p1

    #@bb
    move/from16 v7, p2

    #@bd
    .line 5719
    invoke-interface/range {v1 .. v17}, Landroid/view/IWindowSession;->relayout(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;Landroid/view/Surface;)I

    #@c0
    move-result v19

    #@c1
    .line 5729
    .local v19, "relayoutResult":I
    and-int/lit8 v1, v19, 0x40

    #@c3
    if-eqz v1, :cond_6

    #@c5
    const/4 v1, 0x1

    #@c6
    .line 5728
    :goto_1
    move-object/from16 v0, p0

    #@c8
    iput-boolean v1, v0, Landroid/view/ViewRootImpl;->mPendingAlwaysConsumeNavBar:Z

    #@ca
    .line 5732
    if-eqz v20, :cond_3

    #@cc
    .line 5733
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowManager$LayoutParams;->restore()V

    #@cf
    .line 5736
    :cond_3
    move-object/from16 v0, p0

    #@d1
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@d3
    if-eqz v1, :cond_4

    #@d5
    .line 5737
    move-object/from16 v0, p0

    #@d7
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@d9
    move-object/from16 v0, p0

    #@db
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    #@dd
    invoke-virtual {v1, v2}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWinFrame(Landroid/graphics/Rect;)V

    #@e0
    .line 5738
    move-object/from16 v0, p0

    #@e2
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@e4
    move-object/from16 v0, p0

    #@e6
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    #@e8
    invoke-virtual {v1, v2}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    #@eb
    .line 5739
    move-object/from16 v0, p0

    #@ed
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@ef
    move-object/from16 v0, p0

    #@f1
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    #@f3
    invoke-virtual {v1, v2}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    #@f6
    .line 5740
    move-object/from16 v0, p0

    #@f8
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@fa
    move-object/from16 v0, p0

    #@fc
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    #@fe
    invoke-virtual {v1, v2}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    #@101
    .line 5741
    move-object/from16 v0, p0

    #@103
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@105
    move-object/from16 v0, p0

    #@107
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    #@109
    invoke-virtual {v1, v2}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    #@10c
    .line 5743
    :cond_4
    return v19

    #@10d
    .line 5723
    .end local v19    # "relayoutResult":I
    :cond_5
    const/4 v8, 0x0

    #@10e
    goto :goto_0

    #@10f
    .line 5729
    .restart local v19    # "relayoutResult":I
    :cond_6
    const/4 v1, 0x0

    #@110
    goto :goto_1
.end method

.method private removeSendWindowContentChangedCallback()V
    .locals 2

    #@0
    .prologue
    .line 6632
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 6633
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@6
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    #@8
    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@b
    .line 6631
    :cond_0
    return-void
.end method

.method private requestDrawWindow()V
    .locals 3

    #@0
    .prologue
    .line 7251
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 7252
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    #@6
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@b
    move-result v2

    #@c
    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    #@f
    iput-object v1, p0, Landroid/view/ViewRootImpl;->mWindowDrawCountDown:Ljava/util/concurrent/CountDownLatch;

    #@11
    .line 7254
    :cond_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    #@13
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@16
    move-result v1

    #@17
    add-int/lit8 v0, v1, -0x1

    #@19
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    #@1b
    .line 7255
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    #@1d
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@20
    move-result-object v1

    #@21
    check-cast v1, Landroid/view/WindowCallbacks;

    #@23
    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    #@25
    invoke-interface {v1, v2}, Landroid/view/WindowCallbacks;->onRequestDraw(Z)V

    #@28
    .line 7254
    add-int/lit8 v0, v0, -0x1

    #@2a
    goto :goto_0

    #@2b
    .line 7250
    :cond_1
    return-void
.end method

.method private resetPointerIcon(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 4489
    const/4 v0, 0x1

    #@1
    iput v0, p0, Landroid/view/ViewRootImpl;->mPointerIconType:I

    #@3
    .line 4490
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->updatePointerIcon(Landroid/view/MotionEvent;)Z

    #@6
    .line 4488
    return-void
.end method

.method private scheduleProcessInputEvents()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 6188
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mProcessInputEventsScheduled:Z

    #@3
    if-nez v1, :cond_0

    #@5
    .line 6189
    iput-boolean v3, p0, Landroid/view/ViewRootImpl;->mProcessInputEventsScheduled:Z

    #@7
    .line 6190
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@9
    const/16 v2, 0x13

    #@b
    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(I)Landroid/os/Message;

    #@e
    move-result-object v0

    #@f
    .line 6191
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    #@12
    .line 6192
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@14
    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    #@17
    .line 6187
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private setTag()V
    .locals 3

    #@0
    .prologue
    .line 764
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@2
    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    const-string/jumbo v2, "\\."

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    .line 765
    .local v0, "split":[Ljava/lang/String;
    array-length v1, v0

    #@12
    if-lez v1, :cond_0

    #@14
    .line 766
    new-instance v1, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v2, "ViewRootImpl["

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    array-length v2, v0

    #@21
    add-int/lit8 v2, v2, -0x1

    #@23
    aget-object v2, v0, v2

    #@25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    const-string/jumbo v2, "]"

    #@2c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v1

    #@34
    iput-object v1, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    #@36
    .line 763
    :cond_0
    return-void
.end method

.method private static shouldUseDisplaySize(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 3
    .param p0, "lp"    # Landroid/view/WindowManager$LayoutParams;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 1434
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@3
    const/16 v2, 0x7de

    #@5
    if-eq v1, v2, :cond_0

    #@7
    .line 1435
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@9
    const/16 v2, 0x7db

    #@b
    if-ne v1, v2, :cond_1

    #@d
    .line 1434
    :cond_0
    :goto_0
    return v0

    #@e
    .line 1436
    :cond_1
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@10
    const/16 v2, 0x7e4

    #@12
    if-eq v1, v2, :cond_0

    #@14
    const/4 v0, 0x0

    #@15
    goto :goto_0
.end method

.method private startDragResizing(Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 8
    .param p1, "initialBounds"    # Landroid/graphics/Rect;
    .param p2, "fullscreen"    # Z
    .param p3, "systemInsets"    # Landroid/graphics/Rect;
    .param p4, "stableInsets"    # Landroid/graphics/Rect;
    .param p5, "resizeMode"    # I

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    .line 7216
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mDragResizing:Z

    #@3
    if-nez v0, :cond_1

    #@5
    .line 7217
    iput-boolean v7, p0, Landroid/view/ViewRootImpl;->mDragResizing:Z

    #@7
    .line 7218
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    #@9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@c
    move-result v0

    #@d
    add-int/lit8 v6, v0, -0x1

    #@f
    .local v6, "i":I
    :goto_0
    if-ltz v6, :cond_0

    #@11
    .line 7219
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    #@13
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Landroid/view/WindowCallbacks;

    #@19
    move-object v1, p1

    #@1a
    move v2, p2

    #@1b
    move-object v3, p3

    #@1c
    move-object v4, p4

    #@1d
    move v5, p5

    #@1e
    invoke-interface/range {v0 .. v5}, Landroid/view/WindowCallbacks;->onWindowDragResizeStart(Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    #@21
    .line 7218
    add-int/lit8 v6, v6, -0x1

    #@23
    goto :goto_0

    #@24
    .line 7222
    :cond_0
    iput-boolean v7, p0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    #@26
    .line 7215
    .end local v6    # "i":I
    :cond_1
    return-void
.end method

.method private trackFPS()V
    .locals 13

    #@0
    .prologue
    const/4 v12, 0x0

    #@1
    .line 2577
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@4
    move-result-wide v4

    #@5
    .line 2578
    .local v4, "nowTime":J
    iget-wide v8, p0, Landroid/view/ViewRootImpl;->mFpsStartTime:J

    #@7
    const-wide/16 v10, 0x0

    #@9
    cmp-long v8, v8, v10

    #@b
    if-gez v8, :cond_1

    #@d
    .line 2579
    iput-wide v4, p0, Landroid/view/ViewRootImpl;->mFpsPrevTime:J

    #@f
    iput-wide v4, p0, Landroid/view/ViewRootImpl;->mFpsStartTime:J

    #@11
    .line 2580
    iput v12, p0, Landroid/view/ViewRootImpl;->mFpsNumFrames:I

    #@13
    .line 2574
    :cond_0
    :goto_0
    return-void

    #@14
    .line 2582
    :cond_1
    iget v8, p0, Landroid/view/ViewRootImpl;->mFpsNumFrames:I

    #@16
    add-int/lit8 v8, v8, 0x1

    #@18
    iput v8, p0, Landroid/view/ViewRootImpl;->mFpsNumFrames:I

    #@1a
    .line 2583
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@1d
    move-result v8

    #@1e
    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    .line 2584
    .local v1, "thisHash":Ljava/lang/String;
    iget-wide v8, p0, Landroid/view/ViewRootImpl;->mFpsPrevTime:J

    #@24
    sub-long v2, v4, v8

    #@26
    .line 2585
    .local v2, "frameTime":J
    iget-wide v8, p0, Landroid/view/ViewRootImpl;->mFpsStartTime:J

    #@28
    sub-long v6, v4, v8

    #@2a
    .line 2586
    .local v6, "totalTime":J
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    #@2c
    new-instance v9, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@31
    const-string/jumbo v10, "0x"

    #@34
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v9

    #@38
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v9

    #@3c
    const-string/jumbo v10, "\tFrame time:\t"

    #@3f
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v9

    #@43
    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@46
    move-result-object v9

    #@47
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v9

    #@4b
    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@4e
    .line 2587
    iput-wide v4, p0, Landroid/view/ViewRootImpl;->mFpsPrevTime:J

    #@50
    .line 2588
    const-wide/16 v8, 0x3e8

    #@52
    cmp-long v8, v6, v8

    #@54
    if-lez v8, :cond_0

    #@56
    .line 2589
    iget v8, p0, Landroid/view/ViewRootImpl;->mFpsNumFrames:I

    #@58
    int-to-float v8, v8

    #@59
    const/high16 v9, 0x447a0000    # 1000.0f

    #@5b
    mul-float/2addr v8, v9

    #@5c
    long-to-float v9, v6

    #@5d
    div-float v0, v8, v9

    #@5f
    .line 2590
    .local v0, "fps":F
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    #@61
    new-instance v9, Ljava/lang/StringBuilder;

    #@63
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@66
    const-string/jumbo v10, "0x"

    #@69
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v9

    #@6d
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v9

    #@71
    const-string/jumbo v10, "\tFPS:\t"

    #@74
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v9

    #@78
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v9

    #@7c
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7f
    move-result-object v9

    #@80
    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@83
    .line 2591
    iput-wide v4, p0, Landroid/view/ViewRootImpl;->mFpsStartTime:J

    #@85
    .line 2592
    iput v12, p0, Landroid/view/ViewRootImpl;->mFpsNumFrames:I

    #@87
    goto :goto_0
.end method

.method private updateContentDrawBounds()Z
    .locals 8

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 7240
    const/4 v1, 0x0

    #@2
    .line 7241
    .local v1, "updated":Z
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v2

    #@8
    add-int/lit8 v0, v2, -0x1

    #@a
    .end local v1    # "updated":Z
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    #@c
    .line 7242
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v2

    #@12
    check-cast v2, Landroid/view/WindowCallbacks;

    #@14
    .line 7243
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@16
    iget-object v4, v4, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@18
    iget v4, v4, Landroid/graphics/Rect;->left:I

    #@1a
    .line 7244
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@1c
    iget-object v5, v5, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@1e
    iget v5, v5, Landroid/graphics/Rect;->top:I

    #@20
    .line 7245
    iget v6, p0, Landroid/view/ViewRootImpl;->mWidth:I

    #@22
    iget v7, p0, Landroid/view/ViewRootImpl;->mHeight:I

    #@24
    .line 7242
    invoke-interface {v2, v4, v5, v6, v7}, Landroid/view/WindowCallbacks;->onContentDrawn(IIII)Z

    #@27
    move-result v2

    #@28
    or-int/2addr v1, v2

    #@29
    .line 7241
    .local v1, "updated":Z
    add-int/lit8 v0, v0, -0x1

    #@2b
    goto :goto_0

    #@2c
    .line 7247
    .end local v1    # "updated":Z
    :cond_0
    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mDragResizing:Z

    #@2e
    if-eqz v2, :cond_1

    #@30
    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    #@32
    :goto_1
    or-int/2addr v2, v1

    #@33
    return v2

    #@34
    :cond_1
    move v2, v3

    #@35
    goto :goto_1
.end method

.method private updatePointerIcon(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v10, 0x1

    #@1
    const/4 v9, -0x1

    #@2
    const/4 v8, 0x0

    #@3
    const/4 v6, 0x0

    #@4
    const/4 v7, 0x0

    #@5
    .line 4494
    const/4 v1, 0x0

    #@6
    .line 4495
    .local v1, "pointerIndex":I
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    #@9
    move-result v3

    #@a
    .line 4496
    .local v3, "x":F
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    #@d
    move-result v4

    #@e
    .line 4497
    .local v4, "y":F
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@10
    if-nez v5, :cond_0

    #@12
    .line 4499
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    #@14
    const-string/jumbo v6, "updatePointerIcon called after view was removed"

    #@17
    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 4500
    return v7

    #@1b
    .line 4502
    :cond_0
    cmpg-float v5, v3, v8

    #@1d
    if-ltz v5, :cond_1

    #@1f
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@21
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    #@24
    move-result v5

    #@25
    int-to-float v5, v5

    #@26
    cmpl-float v5, v3, v5

    #@28
    if-ltz v5, :cond_2

    #@2a
    .line 4504
    :cond_1
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    #@2c
    const-string/jumbo v6, "updatePointerIcon called with position out of bounds"

    #@2f
    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@32
    .line 4505
    return v7

    #@33
    .line 4502
    :cond_2
    cmpg-float v5, v4, v8

    #@35
    if-ltz v5, :cond_1

    #@37
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@39
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    #@3c
    move-result v5

    #@3d
    int-to-float v5, v5

    #@3e
    cmpl-float v5, v4, v5

    #@40
    if-gez v5, :cond_1

    #@42
    .line 4507
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@44
    invoke-virtual {v5, p1, v7}, Landroid/view/View;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    #@47
    move-result-object v0

    #@48
    .line 4508
    .local v0, "pointerIcon":Landroid/view/PointerIcon;
    if-eqz v0, :cond_3

    #@4a
    .line 4509
    invoke-virtual {v0}, Landroid/view/PointerIcon;->getType()I

    #@4d
    move-result v2

    #@4e
    .line 4511
    .local v2, "pointerType":I
    :goto_0
    iget v5, p0, Landroid/view/ViewRootImpl;->mPointerIconType:I

    #@50
    if-eq v5, v2, :cond_4

    #@52
    .line 4512
    iput v2, p0, Landroid/view/ViewRootImpl;->mPointerIconType:I

    #@54
    .line 4513
    iget v5, p0, Landroid/view/ViewRootImpl;->mPointerIconType:I

    #@56
    if-eq v5, v9, :cond_4

    #@58
    .line 4514
    iput-object v6, p0, Landroid/view/ViewRootImpl;->mCustomPointerIcon:Landroid/view/PointerIcon;

    #@5a
    .line 4515
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    #@5d
    move-result-object v5

    #@5e
    invoke-virtual {v5, v2}, Landroid/hardware/input/InputManager;->setPointerIconType(I)V

    #@61
    .line 4516
    return v10

    #@62
    .line 4509
    .end local v2    # "pointerType":I
    :cond_3
    const/16 v2, 0x3e8

    #@64
    .restart local v2    # "pointerType":I
    goto :goto_0

    #@65
    .line 4519
    :cond_4
    iget v5, p0, Landroid/view/ViewRootImpl;->mPointerIconType:I

    #@67
    if-ne v5, v9, :cond_5

    #@69
    .line 4520
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mCustomPointerIcon:Landroid/view/PointerIcon;

    #@6b
    invoke-virtual {v0, v5}, Landroid/view/PointerIcon;->equals(Ljava/lang/Object;)Z

    #@6e
    move-result v5

    #@6f
    if-eqz v5, :cond_6

    #@71
    .line 4524
    :cond_5
    :goto_1
    return v10

    #@72
    .line 4521
    :cond_6
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mCustomPointerIcon:Landroid/view/PointerIcon;

    #@74
    .line 4522
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    #@77
    move-result-object v5

    #@78
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mCustomPointerIcon:Landroid/view/PointerIcon;

    #@7a
    invoke-virtual {v5, v6}, Landroid/hardware/input/InputManager;->setCustomPointerIcon(Landroid/view/PointerIcon;)V

    #@7d
    goto :goto_1
.end method


# virtual methods
.method public addWindowCallbacks(Landroid/view/WindowCallbacks;)V
    .locals 2
    .param p1, "callback"    # Landroid/view/WindowCallbacks;

    #@0
    .prologue
    .line 466
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    #@2
    monitor-enter v1

    #@3
    .line 467
    :try_start_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 464
    return-void

    #@a
    .line 466
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method public bringChildToFront(Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;

    #@0
    .prologue
    .line 1182
    return-void
.end method

.method public canResolveLayoutDirection()Z
    .locals 1

    #@0
    .prologue
    .line 6813
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public canResolveTextAlignment()Z
    .locals 1

    #@0
    .prologue
    .line 6843
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public canResolveTextDirection()Z
    .locals 1

    #@0
    .prologue
    .line 6828
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public cancelInvalidate(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 6494
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-virtual {v0, v1, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeMessages(ILjava/lang/Object;)V

    #@6
    .line 6497
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@8
    const/4 v1, 0x2

    #@9
    invoke-virtual {v0, v1, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeMessages(ILjava/lang/Object;)V

    #@c
    .line 6498
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInvalidateOnAnimationRunnable:Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;

    #@e
    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->removeView(Landroid/view/View;)V

    #@11
    .line 6493
    return-void
.end method

.method changeCanvasOpacity(Z)V
    .locals 3
    .param p1, "opaque"    # Z

    #@0
    .prologue
    .line 6976
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "changeCanvasOpacity: opaque="

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@19
    .line 6977
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@1b
    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    #@1d
    if-eqz v0, :cond_0

    #@1f
    .line 6978
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@21
    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    #@23
    invoke-virtual {v0, p1}, Landroid/view/ThreadedRenderer;->setOpaque(Z)V

    #@26
    .line 6975
    :cond_0
    return-void
.end method

.method checkThread()V
    .locals 2

    #@0
    .prologue
    .line 6890
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mThread:Ljava/lang/Thread;

    #@2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@5
    move-result-object v1

    #@6
    if-eq v0, v1, :cond_0

    #@8
    .line 6891
    new-instance v0, Landroid/view/ViewRootImpl$CalledFromWrongThreadException;

    #@a
    .line 6892
    const-string/jumbo v1, "Only the original thread that created a view hierarchy can touch its views."

    #@d
    .line 6891
    invoke-direct {v0, v1}, Landroid/view/ViewRootImpl$CalledFromWrongThreadException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 6889
    :cond_0
    return-void
.end method

.method public childDrawableStateChanged(Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;

    #@0
    .prologue
    .line 6663
    return-void
.end method

.method public childHasTransientStateChanged(Landroid/view/View;Z)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "hasTransientState"    # Z

    #@0
    .prologue
    .line 6921
    return-void
.end method

.method public clearChildFocus(Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;

    #@0
    .prologue
    .line 3214
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    #@3
    .line 3215
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    #@6
    .line 3210
    return-void
.end method

.method public createContextMenu(Landroid/view/ContextMenu;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/ContextMenu;

    #@0
    .prologue
    .line 6659
    return-void
.end method

.method public debug()V
    .locals 1

    #@0
    .prologue
    .line 5808
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@2
    invoke-virtual {v0}, Landroid/view/View;->debug()V

    #@5
    .line 5807
    return-void
.end method

.method destroyHardwareResources()V
    .locals 2

    #@0
    .prologue
    .line 788
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@2
    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 789
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@8
    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    #@a
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@c
    invoke-virtual {v0, v1}, Landroid/view/ThreadedRenderer;->destroyHardwareResources(Landroid/view/View;)V

    #@f
    .line 790
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@11
    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    #@13
    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->destroy()V

    #@16
    .line 787
    :cond_0
    return-void
.end method

.method public detachFunctor(J)V
    .locals 1
    .param p1, "functor"    # J

    #@0
    .prologue
    .line 795
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@2
    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 798
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@8
    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    #@a
    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->stopDrawing()V

    #@d
    .line 794
    :cond_0
    return-void
.end method

.method die(Z)Z
    .locals 3
    .param p1, "immediate"    # Z

    #@0
    .prologue
    .line 5893
    if-eqz p1, :cond_0

    #@2
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mIsInTraversal:Z

    #@4
    if-eqz v0, :cond_1

    #@6
    .line 5898
    :cond_0
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mIsDrawing:Z

    #@8
    if-nez v0, :cond_2

    #@a
    .line 5899
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->destroyHardwareRenderer()V

    #@d
    .line 5904
    :goto_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@f
    const/4 v1, 0x3

    #@10
    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendEmptyMessage(I)Z

    #@13
    .line 5905
    const/4 v0, 0x1

    #@14
    return v0

    #@15
    .line 5894
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->doDie()V

    #@18
    .line 5895
    const/4 v0, 0x0

    #@19
    return v0

    #@1a
    .line 5901
    :cond_2
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    #@1c
    new-instance v1, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v2, "Attempting to destroy the window while drawing!\n  window="

    #@24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    .line 5902
    const-string/jumbo v2, ", title="

    #@2f
    .line 5901
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    .line 5902
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@35
    invoke-virtual {v2}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    #@38
    move-result-object v2

    #@39
    .line 5901
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v1

    #@3d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v1

    #@41
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@44
    goto :goto_0
.end method

.method public dispatchAppVisibility(Z)V
    .locals 3
    .param p1, "visible"    # Z

    #@0
    .prologue
    .line 6540
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@2
    const/16 v2, 0x8

    #@4
    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(I)Landroid/os/Message;

    #@7
    move-result-object v0

    #@8
    .line 6541
    .local v0, "msg":Landroid/os/Message;
    if-eqz p1, :cond_0

    #@a
    const/4 v1, 0x1

    #@b
    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    #@d
    .line 6542
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@f
    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    #@12
    .line 6539
    return-void

    #@13
    .line 6541
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
    .line 1430
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, v0}, Landroid/view/ViewRootImpl;->getWindowInsets(Z)Landroid/view/WindowInsets;

    #@4
    move-result-object v0

    #@5
    invoke-virtual {p1, v0}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    #@8
    .line 1429
    return-void
.end method

.method public dispatchCheckFocus()V
    .locals 2

    #@0
    .prologue
    const/16 v1, 0xd

    #@2
    .line 6602
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@4
    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->hasMessages(I)Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_0

    #@a
    .line 6604
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@c
    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendEmptyMessage(I)Z

    #@f
    .line 6601
    :cond_0
    return-void
.end method

.method public dispatchCloseSystemDialogs(Ljava/lang/String;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 6563
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    #@3
    move-result-object v0

    #@4
    .line 6564
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xe

    #@6
    iput v1, v0, Landroid/os/Message;->what:I

    #@8
    .line 6565
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@a
    .line 6566
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@c
    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    #@f
    .line 6562
    return-void
.end method

.method dispatchDetachedFromWindow()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 3257
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
    .line 3258
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@d
    iget-object v1, v1, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    #@f
    const/4 v2, 0x0

    #@10
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->dispatchOnWindowAttachedChange(Z)V

    #@13
    .line 3259
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@15
    invoke-virtual {v1}, Landroid/view/View;->dispatchDetachedFromWindow()V

    #@18
    .line 3262
    :cond_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    #@1a
    invoke-virtual {v1}, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->ensureNoConnection()V

    #@1d
    .line 3263
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    #@1f
    .line 3264
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    #@21
    .line 3263
    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityManager;->removeAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    #@24
    .line 3265
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    #@26
    .line 3266
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mHighContrastTextManager:Landroid/view/ViewRootImpl$HighContrastTextManager;

    #@28
    .line 3265
    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityManager;->removeHighTextContrastStateChangeListener(Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;)Z

    #@2b
    .line 3267
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->removeSendWindowContentChangedCallback()V

    #@2e
    .line 3269
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->destroyHardwareRenderer()V

    #@31
    .line 3271
    invoke-virtual {p0, v3, v3}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    #@34
    .line 3273
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@36
    invoke-virtual {v1, v3}, Landroid/view/View;->assignParent(Landroid/view/ViewParent;)V

    #@39
    .line 3274
    iput-object v3, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@3b
    .line 3275
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@3d
    iput-object v3, v1, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    #@3f
    .line 3277
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    #@41
    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    #@44
    .line 3279
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    #@46
    if-eqz v1, :cond_1

    #@48
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    #@4a
    if-eqz v1, :cond_1

    #@4c
    .line 3280
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    #@4e
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    #@50
    invoke-interface {v1, v2}, Landroid/view/InputQueue$Callback;->onInputQueueDestroyed(Landroid/view/InputQueue;)V

    #@53
    .line 3281
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    #@55
    invoke-virtual {v1}, Landroid/view/InputQueue;->dispose()V

    #@58
    .line 3282
    iput-object v3, p0, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    #@5a
    .line 3283
    iput-object v3, p0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    #@5c
    .line 3285
    :cond_1
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    #@5e
    if-eqz v1, :cond_2

    #@60
    .line 3286
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    #@62
    invoke-virtual {v1}, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->dispose()V

    #@65
    .line 3287
    iput-object v3, p0, Landroid/view/ViewRootImpl;->mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    #@67
    .line 3290
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
    .line 3296
    :goto_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    #@70
    if-eqz v1, :cond_3

    #@72
    .line 3297
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    #@74
    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    #@77
    .line 3298
    iput-object v3, p0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    #@79
    .line 3301
    :cond_3
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    #@7b
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    #@7d
    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    #@80
    .line 3303
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->unscheduleTraversals()V

    #@83
    .line 3256
    return-void

    #@84
    .line 3291
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
    .line 6571
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    #@3
    move-result v2

    #@4
    const/4 v3, 0x2

    #@5
    if-ne v2, v3, :cond_0

    #@7
    .line 6572
    const/16 v1, 0x10

    #@9
    .line 6573
    .local v1, "what":I
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@b
    invoke-virtual {v2, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeMessages(I)V

    #@e
    .line 6577
    :goto_0
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@10
    invoke-virtual {v2, v1, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@13
    move-result-object v0

    #@14
    .line 6578
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@16
    invoke-virtual {v2, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    #@19
    .line 6569
    return-void

    #@1a
    .line 6575
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "what":I
    :cond_0
    const/16 v1, 0xf

    #@1c
    .restart local v1    # "what":I
    goto :goto_0
.end method

.method public dispatchGetNewSurface()V
    .locals 3

    #@0
    .prologue
    .line 6546
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@2
    const/16 v2, 0x9

    #@4
    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(I)Landroid/os/Message;

    #@7
    move-result-object v0

    #@8
    .line 6547
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@a
    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    #@d
    .line 6545
    return-void
.end method

.method public dispatchInputEvent(Landroid/view/InputEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/InputEvent;

    #@0
    .prologue
    .line 6502
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewRootImpl;->dispatchInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;)V

    #@4
    .line 6501
    return-void
.end method

.method public dispatchInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;)V
    .locals 4
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "receiver"    # Landroid/view/InputEventReceiver;

    #@0
    .prologue
    .line 6506
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    #@3
    move-result-object v0

    #@4
    .line 6507
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@6
    .line 6508
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@8
    .line 6509
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@a
    const/4 v3, 0x7

    #@b
    invoke-virtual {v2, v3, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@e
    move-result-object v1

    #@f
    .line 6510
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x1

    #@10
    invoke-virtual {v1, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    #@13
    .line 6511
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@15
    invoke-virtual {v2, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    #@18
    .line 6505
    return-void
.end method

.method public dispatchInvalidateDelayed(Landroid/view/View;J)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "delayMilliseconds"    # J

    #@0
    .prologue
    .line 6475
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@2
    const/4 v2, 0x1

    #@3
    invoke-virtual {v1, v2, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@6
    move-result-object v0

    #@7
    .line 6476
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@9
    invoke-virtual {v1, v0, p2, p3}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@c
    .line 6474
    return-void
.end method

.method public dispatchInvalidateOnAnimation(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 6486
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInvalidateOnAnimationRunnable:Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;

    #@2
    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->addView(Landroid/view/View;)V

    #@5
    .line 6485
    return-void
.end method

.method public dispatchInvalidateRectDelayed(Landroid/view/View$AttachInfo$InvalidateInfo;J)V
    .locals 4
    .param p1, "info"    # Landroid/view/View$AttachInfo$InvalidateInfo;
    .param p2, "delayMilliseconds"    # J

    #@0
    .prologue
    .line 6481
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@2
    const/4 v2, 0x2

    #@3
    invoke-virtual {v1, v2, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@6
    move-result-object v0

    #@7
    .line 6482
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@9
    invoke-virtual {v1, v0, p2, p3}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@c
    .line 6480
    return-void
.end method

.method public dispatchInvalidateRectOnAnimation(Landroid/view/View$AttachInfo$InvalidateInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/View$AttachInfo$InvalidateInfo;

    #@0
    .prologue
    .line 6490
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInvalidateOnAnimationRunnable:Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;

    #@2
    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->addViewRect(Landroid/view/View$AttachInfo$InvalidateInfo;)V

    #@5
    .line 6489
    return-void
.end method

.method public dispatchKeyFromIme(Landroid/view/KeyEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 6521
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@2
    const/16 v2, 0xb

    #@4
    invoke-virtual {v1, v2, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@7
    move-result-object v0

    #@8
    .line 6522
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    #@9
    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    #@c
    .line 6523
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@e
    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    #@11
    .line 6520
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
    .line 6042
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 6043
    new-instance v1, Landroid/graphics/PointF;

    #@8
    int-to-float v2, p1

    #@9
    int-to-float v3, p2

    #@a
    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    #@d
    .line 6044
    .local v1, "point":Landroid/graphics/PointF;
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@f
    invoke-virtual {v2, v1}, Landroid/content/res/CompatibilityInfo$Translator;->translatePointInScreenToAppWindow(Landroid/graphics/PointF;)V

    #@12
    .line 6045
    iget v2, v1, Landroid/graphics/PointF;->x:F

    #@14
    float-to-double v2, v2

    #@15
    add-double/2addr v2, v4

    #@16
    double-to-int p1, v2

    #@17
    .line 6046
    iget v2, v1, Landroid/graphics/PointF;->y:F

    #@19
    float-to-double v2, v2

    #@1a
    add-double/2addr v2, v4

    #@1b
    double-to-int p2, v2

    #@1c
    .line 6048
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
    .line 6049
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@26
    invoke-virtual {v2, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    #@29
    .line 6040
    return-void
.end method

.method public dispatchRequestKeyboardShortcuts(Lcom/android/internal/os/IResultReceiver;I)V
    .locals 3
    .param p1, "receiver"    # Lcom/android/internal/os/IResultReceiver;
    .param p2, "deviceId"    # I

    #@0
    .prologue
    .line 6609
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@2
    .line 6610
    const/16 v1, 0x1a

    #@4
    const/4 v2, 0x0

    #@5
    .line 6609
    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@c
    .line 6608
    return-void
.end method

.method public dispatchResized(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/content/res/Configuration;Landroid/graphics/Rect;ZZ)V
    .locals 8
    .param p1, "frame"    # Landroid/graphics/Rect;
    .param p2, "overscanInsets"    # Landroid/graphics/Rect;
    .param p3, "contentInsets"    # Landroid/graphics/Rect;
    .param p4, "visibleInsets"    # Landroid/graphics/Rect;
    .param p5, "stableInsets"    # Landroid/graphics/Rect;
    .param p6, "outsets"    # Landroid/graphics/Rect;
    .param p7, "reportDraw"    # Z
    .param p8, "newConfig"    # Landroid/content/res/Configuration;
    .param p9, "backDropFrame"    # Landroid/graphics/Rect;
    .param p10, "forceLayout"    # Z
    .param p11, "alwaysConsumeNavBar"    # Z

    #@0
    .prologue
    .line 6007
    iget-boolean v6, p0, Landroid/view/ViewRootImpl;->mDragResizing:Z

    #@2
    if-eqz v6, :cond_1

    #@4
    .line 6008
    move-object/from16 v0, p9

    #@6
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@9
    move-result v2

    #@a
    .line 6009
    .local v2, "fullscreen":Z
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    #@c
    monitor-enter v7

    #@d
    .line 6010
    :try_start_0
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    #@f
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@12
    move-result v6

    #@13
    add-int/lit8 v3, v6, -0x1

    #@15
    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_0

    #@17
    .line 6011
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    #@19
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1c
    move-result-object v6

    #@1d
    check-cast v6, Landroid/view/WindowCallbacks;

    #@1f
    move-object/from16 v0, p9

    #@21
    invoke-interface {v6, v0, v2, p4, p5}, Landroid/view/WindowCallbacks;->onWindowSizeIsChanging(Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Rect;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    .line 6010
    add-int/lit8 v3, v3, -0x1

    #@26
    goto :goto_0

    #@27
    :cond_0
    monitor-exit v7

    #@28
    .line 6017
    .end local v2    # "fullscreen":Z
    .end local v3    # "i":I
    :cond_1
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@2a
    if-eqz p7, :cond_b

    #@2c
    const/4 v6, 0x5

    #@2d
    :goto_1
    invoke-virtual {v7, v6}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(I)Landroid/os/Message;

    #@30
    move-result-object v4

    #@31
    .line 6018
    .local v4, "msg":Landroid/os/Message;
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@33
    if-eqz v6, :cond_2

    #@35
    .line 6019
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@37
    invoke-virtual {v6, p1}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    #@3a
    .line 6020
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@3c
    invoke-virtual {v6, p2}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    #@3f
    .line 6021
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@41
    invoke-virtual {v6, p3}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    #@44
    .line 6022
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@46
    invoke-virtual {v6, p4}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    #@49
    .line 6024
    :cond_2
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    #@4c
    move-result-object v1

    #@4d
    .line 6025
    .local v1, "args":Lcom/android/internal/os/SomeArgs;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@50
    move-result v6

    #@51
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@54
    move-result v7

    #@55
    if-ne v6, v7, :cond_c

    #@57
    const/4 v5, 0x1

    #@58
    .line 6026
    .local v5, "sameProcessCall":Z
    :goto_2
    if-eqz v5, :cond_3

    #@5a
    new-instance v6, Landroid/graphics/Rect;

    #@5c
    invoke-direct {v6, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    #@5f
    move-object p1, v6

    #@60
    .end local p1    # "frame":Landroid/graphics/Rect;
    :cond_3
    iput-object p1, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@62
    .line 6027
    if-eqz v5, :cond_4

    #@64
    new-instance v6, Landroid/graphics/Rect;

    #@66
    invoke-direct {v6, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    #@69
    move-object p3, v6

    #@6a
    .end local p3    # "contentInsets":Landroid/graphics/Rect;
    :cond_4
    iput-object p3, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@6c
    .line 6028
    if-eqz v5, :cond_5

    #@6e
    new-instance v6, Landroid/graphics/Rect;

    #@70
    invoke-direct {v6, p4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    #@73
    move-object p4, v6

    #@74
    .end local p4    # "visibleInsets":Landroid/graphics/Rect;
    :cond_5
    iput-object p4, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    #@76
    .line 6029
    if-eqz v5, :cond_6

    #@78
    if-eqz p8, :cond_6

    #@7a
    new-instance v6, Landroid/content/res/Configuration;

    #@7c
    move-object/from16 v0, p8

    #@7e
    invoke-direct {v6, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    #@81
    move-object/from16 p8, v6

    #@83
    .end local p8    # "newConfig":Landroid/content/res/Configuration;
    :cond_6
    move-object/from16 v0, p8

    #@85
    iput-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    #@87
    .line 6030
    if-eqz v5, :cond_7

    #@89
    new-instance v6, Landroid/graphics/Rect;

    #@8b
    invoke-direct {v6, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    #@8e
    move-object p2, v6

    #@8f
    .end local p2    # "overscanInsets":Landroid/graphics/Rect;
    :cond_7
    iput-object p2, v1, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    #@91
    .line 6031
    if-eqz v5, :cond_8

    #@93
    new-instance v6, Landroid/graphics/Rect;

    #@95
    invoke-direct {v6, p5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    #@98
    move-object p5, v6

    #@99
    .end local p5    # "stableInsets":Landroid/graphics/Rect;
    :cond_8
    iput-object p5, v1, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    #@9b
    .line 6032
    if-eqz v5, :cond_9

    #@9d
    new-instance v6, Landroid/graphics/Rect;

    #@9f
    invoke-direct {v6, p6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    #@a2
    move-object p6, v6

    #@a3
    .end local p6    # "outsets":Landroid/graphics/Rect;
    :cond_9
    iput-object p6, v1, Lcom/android/internal/os/SomeArgs;->arg7:Ljava/lang/Object;

    #@a5
    .line 6033
    if-eqz v5, :cond_a

    #@a7
    new-instance v6, Landroid/graphics/Rect;

    #@a9
    move-object/from16 v0, p9

    #@ab
    invoke-direct {v6, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    #@ae
    move-object/from16 p9, v6

    #@b0
    .end local p9    # "backDropFrame":Landroid/graphics/Rect;
    :cond_a
    move-object/from16 v0, p9

    #@b2
    iput-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg8:Ljava/lang/Object;

    #@b4
    .line 6034
    if-eqz p10, :cond_d

    #@b6
    const/4 v6, 0x1

    #@b7
    :goto_3
    iput v6, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    #@b9
    .line 6035
    if-eqz p11, :cond_e

    #@bb
    const/4 v6, 0x1

    #@bc
    :goto_4
    iput v6, v1, Lcom/android/internal/os/SomeArgs;->argi2:I

    #@be
    .line 6036
    iput-object v1, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@c0
    .line 6037
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@c2
    invoke-virtual {v6, v4}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    #@c5
    .line 5998
    return-void

    #@c6
    .line 6009
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v4    # "msg":Landroid/os/Message;
    .end local v5    # "sameProcessCall":Z
    .restart local v2    # "fullscreen":Z
    .restart local p1    # "frame":Landroid/graphics/Rect;
    .restart local p2    # "overscanInsets":Landroid/graphics/Rect;
    .restart local p3    # "contentInsets":Landroid/graphics/Rect;
    .restart local p4    # "visibleInsets":Landroid/graphics/Rect;
    .restart local p5    # "stableInsets":Landroid/graphics/Rect;
    .restart local p6    # "outsets":Landroid/graphics/Rect;
    .restart local p8    # "newConfig":Landroid/content/res/Configuration;
    .restart local p9    # "backDropFrame":Landroid/graphics/Rect;
    :catchall_0
    move-exception v6

    #@c7
    monitor-exit v7

    #@c8
    throw v6

    #@c9
    .line 6017
    .end local v2    # "fullscreen":Z
    :cond_b
    const/4 v6, 0x4

    #@ca
    goto/16 :goto_1

    #@cc
    .line 6025
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    .restart local v4    # "msg":Landroid/os/Message;
    :cond_c
    const/4 v5, 0x0

    #@cd
    .restart local v5    # "sameProcessCall":Z
    goto :goto_2

    #@ce
    .line 6034
    .end local p1    # "frame":Landroid/graphics/Rect;
    .end local p2    # "overscanInsets":Landroid/graphics/Rect;
    .end local p3    # "contentInsets":Landroid/graphics/Rect;
    .end local p4    # "visibleInsets":Landroid/graphics/Rect;
    .end local p5    # "stableInsets":Landroid/graphics/Rect;
    .end local p6    # "outsets":Landroid/graphics/Rect;
    .end local p8    # "newConfig":Landroid/content/res/Configuration;
    .end local p9    # "backDropFrame":Landroid/graphics/Rect;
    :cond_d
    const/4 v6, 0x0

    #@cf
    goto :goto_3

    #@d0
    .line 6035
    :cond_e
    const/4 v6, 0x0

    #@d1
    goto :goto_4
.end method

.method public dispatchSystemUiVisibilityChanged(IIII)V
    .locals 4
    .param p1, "seq"    # I
    .param p2, "globalVisibility"    # I
    .param p3, "localValue"    # I
    .param p4, "localChanges"    # I

    #@0
    .prologue
    .line 6593
    new-instance v0, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;

    #@2
    invoke-direct {v0}, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;-><init>()V

    #@5
    .line 6594
    .local v0, "args":Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;
    iput p1, v0, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->seq:I

    #@7
    .line 6595
    iput p2, v0, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->globalVisibility:I

    #@9
    .line 6596
    iput p3, v0, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->localValue:I

    #@b
    .line 6597
    iput p4, v0, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->localChanges:I

    #@d
    .line 6598
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
    .line 6592
    return-void
.end method

.method public dispatchUnhandledInputEvent(Landroid/view/InputEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/InputEvent;

    #@0
    .prologue
    .line 6533
    instance-of v0, p1, Landroid/view/MotionEvent;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 6534
    check-cast p1, Landroid/view/MotionEvent;

    #@6
    .end local p1    # "event":Landroid/view/InputEvent;
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    #@9
    move-result-object p1

    #@a
    .line 6536
    .restart local p1    # "event":Landroid/view/InputEvent;
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl;->synthesizeInputEvent(Landroid/view/InputEvent;)V

    #@d
    .line 6532
    return-void
.end method

.method public dispatchWindowShown()V
    .locals 2

    #@0
    .prologue
    .line 6559
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@2
    const/16 v1, 0x19

    #@4
    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendEmptyMessage(I)Z

    #@7
    .line 6558
    return-void
.end method

.method doConsumeBatchedInput(J)V
    .locals 3
    .param p1, "frameTimeNanos"    # J

    #@0
    .prologue
    .line 6317
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    #@2
    if-eqz v0, :cond_1

    #@4
    .line 6318
    const/4 v0, 0x0

    #@5
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    #@7
    .line 6319
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 6320
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    #@d
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->consumeBatchedInputEvents(J)Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_0

    #@13
    .line 6321
    const-wide/16 v0, -0x1

    #@15
    cmp-long v0, p1, v0

    #@17
    if-eqz v0, :cond_0

    #@19
    .line 6327
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleConsumeBatchedInput()V

    #@1c
    .line 6330
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->doProcessInputEvents()V

    #@1f
    .line 6316
    :cond_1
    return-void
.end method

.method doDie()V
    .locals 5

    #@0
    .prologue
    .line 5909
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    #@3
    .line 5911
    monitor-enter p0

    #@4
    .line 5912
    :try_start_0
    iget-boolean v3, p0, Landroid/view/ViewRootImpl;->mRemoved:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    if-eqz v3, :cond_0

    #@8
    monitor-exit p0

    #@9
    .line 5913
    return-void

    #@a
    .line 5915
    :cond_0
    const/4 v3, 0x1

    #@b
    :try_start_1
    iput-boolean v3, p0, Landroid/view/ViewRootImpl;->mRemoved:Z

    #@d
    .line 5916
    iget-boolean v3, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    #@f
    if-eqz v3, :cond_1

    #@11
    .line 5917
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->dispatchDetachedFromWindow()V

    #@14
    .line 5920
    :cond_1
    iget-boolean v3, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    #@16
    if-eqz v3, :cond_2

    #@18
    iget-boolean v3, p0, Landroid/view/ViewRootImpl;->mFirst:Z

    #@1a
    if-eqz v3, :cond_3

    #@1c
    .line 5943
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
    .line 5945
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v3, p0}, Landroid/view/WindowManagerGlobal;->doRemoveView(Landroid/view/ViewRootImpl;)V

    #@27
    .line 5908
    return-void

    #@28
    .line 5921
    :cond_3
    :try_start_2
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->destroyHardwareRenderer()V

    #@2b
    .line 5923
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@2d
    if-eqz v3, :cond_2

    #@2f
    .line 5924
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@31
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    #@34
    move-result v1

    #@35
    .line 5925
    .local v1, "viewVisibility":I
    iget v3, p0, Landroid/view/ViewRootImpl;->mViewVisibility:I

    #@37
    if-eq v3, v1, :cond_6

    #@39
    const/4 v2, 0x1

    #@3a
    .line 5926
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
    .line 5931
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
    .line 5933
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    #@4d
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    #@4f
    invoke-interface {v3, v4}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@52
    .line 5939
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
    .line 5911
    .end local v1    # "viewVisibility":I
    .end local v2    # "viewVisibilityChanged":Z
    :catchall_0
    move-exception v3

    #@59
    monitor-exit p0

    #@5a
    throw v3

    #@5b
    .line 5925
    .restart local v1    # "viewVisibility":I
    :cond_6
    const/4 v2, 0x0

    #@5c
    .restart local v2    # "viewVisibilityChanged":Z
    goto :goto_1

    #@5d
    .line 5935
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
    .line 6198
    :goto_0
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mPendingInputEventHead:Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@4
    if-eqz v6, :cond_2

    #@6
    .line 6199
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mPendingInputEventHead:Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@8
    .line 6200
    .local v3, "q":Landroid/view/ViewRootImpl$QueuedInputEvent;
    iget-object v6, v3, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@a
    iput-object v6, p0, Landroid/view/ViewRootImpl;->mPendingInputEventHead:Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@c
    .line 6201
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mPendingInputEventHead:Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@e
    if-nez v6, :cond_0

    #@10
    .line 6202
    iput-object v10, p0, Landroid/view/ViewRootImpl;->mPendingInputEventTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@12
    .line 6204
    :cond_0
    iput-object v10, v3, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@14
    .line 6206
    iget v6, p0, Landroid/view/ViewRootImpl;->mPendingInputEventCount:I

    #@16
    add-int/lit8 v6, v6, -0x1

    #@18
    iput v6, p0, Landroid/view/ViewRootImpl;->mPendingInputEventCount:I

    #@1a
    .line 6207
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mPendingInputEventQueueLengthCounterName:Ljava/lang/String;

    #@1c
    .line 6208
    iget v7, p0, Landroid/view/ViewRootImpl;->mPendingInputEventCount:I

    #@1e
    .line 6207
    const-wide/16 v8, 0x4

    #@20
    invoke-static {v8, v9, v6, v7}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    #@23
    .line 6210
    iget-object v6, v3, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    #@25
    invoke-virtual {v6}, Landroid/view/InputEvent;->getEventTimeNano()J

    #@28
    move-result-wide v0

    #@29
    .line 6211
    .local v0, "eventTime":J
    move-wide v4, v0

    #@2a
    .line 6212
    .local v4, "oldestEventTime":J
    iget-object v6, v3, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    #@2c
    instance-of v6, v6, Landroid/view/MotionEvent;

    #@2e
    if-eqz v6, :cond_1

    #@30
    .line 6213
    iget-object v2, v3, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    #@32
    check-cast v2, Landroid/view/MotionEvent;

    #@34
    .line 6214
    .local v2, "me":Landroid/view/MotionEvent;
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getHistorySize()I

    #@37
    move-result v6

    #@38
    if-lez v6, :cond_1

    #@3a
    .line 6215
    invoke-virtual {v2, v11}, Landroid/view/MotionEvent;->getHistoricalEventTimeNano(I)J

    #@3d
    move-result-wide v4

    #@3e
    .line 6218
    .end local v2    # "me":Landroid/view/MotionEvent;
    :cond_1
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    #@40
    iget-object v6, v6, Landroid/view/Choreographer;->mFrameInfo:Landroid/view/FrameInfo;

    #@42
    invoke-virtual {v6, v0, v1, v4, v5}, Landroid/view/FrameInfo;->updateInputEventTime(JJ)V

    #@45
    .line 6220
    invoke-direct {p0, v3}, Landroid/view/ViewRootImpl;->deliverInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    #@48
    goto :goto_0

    #@49
    .line 6225
    .end local v0    # "eventTime":J
    .end local v3    # "q":Landroid/view/ViewRootImpl$QueuedInputEvent;
    .end local v4    # "oldestEventTime":J
    :cond_2
    iget-boolean v6, p0, Landroid/view/ViewRootImpl;->mProcessInputEventsScheduled:Z

    #@4b
    if-eqz v6, :cond_3

    #@4d
    .line 6226
    iput-boolean v11, p0, Landroid/view/ViewRootImpl;->mProcessInputEventsScheduled:Z

    #@4f
    .line 6227
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@51
    const/16 v7, 0x13

    #@53
    invoke-virtual {v6, v7}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeMessages(I)V

    #@56
    .line 6196
    :cond_3
    return-void
.end method

.method doTraversal()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1246
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    #@3
    if-eqz v0, :cond_1

    #@5
    .line 1247
    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    #@7
    .line 1248
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
    .line 1250
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mProfile:Z

    #@18
    if-eqz v0, :cond_0

    #@1a
    .line 1251
    const-string/jumbo v0, "ViewAncestor"

    #@1d
    invoke-static {v0}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;)V

    #@20
    .line 1254
    :cond_0
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->performTraversals()V

    #@23
    .line 1256
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mProfile:Z

    #@25
    if-eqz v0, :cond_1

    #@27
    .line 1257
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    #@2a
    .line 1258
    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mProfile:Z

    #@2c
    .line 1245
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
    .line 5812
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
    .line 5813
    .local v0, "innerPrefix":Ljava/lang/String;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@17
    const-string/jumbo v1, "ViewRoot:"

    #@1a
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1d
    .line 5814
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
    .line 5815
    const-string/jumbo v1, " mRemoved="

    #@2e
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@31
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mRemoved:Z

    #@33
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    #@36
    .line 5816
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@39
    const-string/jumbo v1, "mConsumeBatchedInputScheduled="

    #@3c
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3f
    .line 5817
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    #@41
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    #@44
    .line 5818
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@47
    const-string/jumbo v1, "mConsumeBatchedInputImmediatelyScheduled="

    #@4a
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4d
    .line 5819
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputImmediatelyScheduled:Z

    #@4f
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    #@52
    .line 5820
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@55
    const-string/jumbo v1, "mPendingInputEventCount="

    #@58
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5b
    .line 5821
    iget v1, p0, Landroid/view/ViewRootImpl;->mPendingInputEventCount:I

    #@5d
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(I)V

    #@60
    .line 5822
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@63
    const-string/jumbo v1, "mProcessInputEventsScheduled="

    #@66
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@69
    .line 5823
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mProcessInputEventsScheduled:Z

    #@6b
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    #@6e
    .line 5824
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@71
    const-string/jumbo v1, "mTraversalScheduled="

    #@74
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@77
    .line 5825
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    #@79
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    #@7c
    .line 5826
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7f
    const-string/jumbo v1, "mIsAmbientMode="

    #@82
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@85
    .line 5827
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mIsAmbientMode:Z

    #@87
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    #@8a
    .line 5828
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    #@8c
    if-eqz v1, :cond_0

    #@8e
    .line 5829
    const-string/jumbo v1, " (barrier="

    #@91
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@94
    iget v1, p0, Landroid/view/ViewRootImpl;->mTraversalBarrier:I

    #@96
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    #@99
    const-string/jumbo v1, ")"

    #@9c
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@9f
    .line 5833
    :goto_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mFirstInputStage:Landroid/view/ViewRootImpl$InputStage;

    #@a1
    invoke-virtual {v1, v0, p3}, Landroid/view/ViewRootImpl$InputStage;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    #@a4
    .line 5835
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    #@a6
    invoke-virtual {v1, p1, p3}, Landroid/view/Choreographer;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    #@a9
    .line 5837
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ac
    const-string/jumbo v1, "View Hierarchy:"

    #@af
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@b2
    .line 5838
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@b4
    invoke-direct {p0, v0, p3, v1}, Landroid/view/ViewRootImpl;->dumpViewHierarchy(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V

    #@b7
    .line 5811
    return-void

    #@b8
    .line 5831
    :cond_0
    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V

    #@bb
    goto :goto_0
.end method

.method public dumpGfxInfo([I)V
    .locals 2
    .param p1, "info"    # [I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 5863
    const/4 v0, 0x1

    #@2
    aput v1, p1, v0

    #@4
    aput v1, p1, v1

    #@6
    .line 5864
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 5865
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@c
    invoke-static {v0, p1}, Landroid/view/ViewRootImpl;->getGfxInfo(Landroid/view/View;[I)V

    #@f
    .line 5862
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
    .line 6155
    const/4 v0, 0x0

    #@2
    invoke-virtual {p0, p1, v0, v1, v1}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)V

    #@5
    .line 6154
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
    .line 6160
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->adjustInputEventForCompatibility(Landroid/view/InputEvent;)V

    #@3
    .line 6161
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewRootImpl;->obtainQueuedInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;I)Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@6
    move-result-object v1

    #@7
    .line 6168
    .local v1, "q":Landroid/view/ViewRootImpl$QueuedInputEvent;
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingInputEventTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@9
    .line 6169
    .local v0, "last":Landroid/view/ViewRootImpl$QueuedInputEvent;
    if-nez v0, :cond_0

    #@b
    .line 6170
    iput-object v1, p0, Landroid/view/ViewRootImpl;->mPendingInputEventHead:Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@d
    .line 6171
    iput-object v1, p0, Landroid/view/ViewRootImpl;->mPendingInputEventTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@f
    .line 6176
    :goto_0
    iget v2, p0, Landroid/view/ViewRootImpl;->mPendingInputEventCount:I

    #@11
    add-int/lit8 v2, v2, 0x1

    #@13
    iput v2, p0, Landroid/view/ViewRootImpl;->mPendingInputEventCount:I

    #@15
    .line 6177
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mPendingInputEventQueueLengthCounterName:Ljava/lang/String;

    #@17
    .line 6178
    iget v3, p0, Landroid/view/ViewRootImpl;->mPendingInputEventCount:I

    #@19
    .line 6177
    const-wide/16 v4, 0x4

    #@1b
    invoke-static {v4, v5, v2, v3}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    #@1e
    .line 6180
    if-eqz p4, :cond_1

    #@20
    .line 6181
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->doProcessInputEvents()V

    #@23
    .line 6159
    :goto_1
    return-void

    #@24
    .line 6173
    :cond_0
    iput-object v1, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@26
    .line 6174
    iput-object v1, p0, Landroid/view/ViewRootImpl;->mPendingInputEventTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@28
    goto :goto_0

    #@29
    .line 6183
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
    .line 3718
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
    .line 3722
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    #@a
    invoke-interface {v1, p1}, Landroid/view/IWindowSession;->setInTouchMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 3728
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->ensureTouchModeLocally(Z)Z

    #@10
    move-result v1

    #@11
    return v1

    #@12
    .line 3723
    :catch_0
    move-exception v0

    #@13
    .line 3724
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@15
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@18
    throw v1
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 2
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    #@0
    .prologue
    .line 5800
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    #@3
    .line 5801
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@5
    instance-of v0, v0, Landroid/view/ViewGroup;

    #@7
    if-nez v0, :cond_0

    #@9
    .line 5802
    const/4 v0, 0x0

    #@a
    return-object v0

    #@b
    .line 5804
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
    .line 3225
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    #@3
    .line 3226
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@5
    if-eqz v2, :cond_0

    #@7
    .line 3227
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@9
    invoke-virtual {v2}, Landroid/view/View;->hasFocus()Z

    #@c
    move-result v2

    #@d
    if-nez v2, :cond_1

    #@f
    .line 3228
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    #@12
    .line 3224
    :cond_0
    :goto_0
    return-void

    #@13
    .line 3233
    :cond_1
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@15
    invoke-virtual {v2}, Landroid/view/View;->findFocus()Landroid/view/View;

    #@18
    move-result-object v0

    #@19
    .line 3234
    .local v0, "focused":Landroid/view/View;
    instance-of v2, v0, Landroid/view/ViewGroup;

    #@1b
    if-eqz v2, :cond_0

    #@1d
    move-object v1, v0

    #@1e
    .line 3235
    check-cast v1, Landroid/view/ViewGroup;

    #@20
    .line 3236
    .local v1, "group":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    #@23
    move-result v2

    #@24
    const/high16 v3, 0x40000

    #@26
    if-ne v2, v3, :cond_0

    #@28
    .line 3237
    invoke-static {p1, v0}, Landroid/view/ViewRootImpl;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    #@2b
    move-result v2

    #@2c
    .line 3236
    if-eqz v2, :cond_0

    #@2e
    .line 3238
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    #@31
    goto :goto_0
.end method

.method public getAccessibilityFocusedHost()Landroid/view/View;
    .locals 1

    #@0
    .prologue
    .line 3141
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    #@2
    return-object v0
.end method

.method public getAccessibilityFocusedVirtualView()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1

    #@0
    .prologue
    .line 3148
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    #@2
    return-object v0
.end method

.method public getAccessibilityInteractionController()Landroid/view/AccessibilityInteractionController;
    .locals 2

    #@0
    .prologue
    .line 5686
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 5687
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "getAccessibilityInteractionController called when there is no mView"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 5690
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionController:Landroid/view/AccessibilityInteractionController;

    #@f
    if-nez v0, :cond_1

    #@11
    .line 5691
    new-instance v0, Landroid/view/AccessibilityInteractionController;

    #@13
    invoke-direct {v0, p0}, Landroid/view/AccessibilityInteractionController;-><init>(Landroid/view/ViewRootImpl;)V

    #@16
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionController:Landroid/view/AccessibilityInteractionController;

    #@18
    .line 5693
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
    .line 1173
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@3
    if-eq p1, v0, :cond_0

    #@5
    .line 1174
    new-instance v0, Ljava/lang/RuntimeException;

    #@7
    const-string/jumbo v1, "child is not mine, honest!"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 1178
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
    .line 780
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
    .line 1186
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mAppVisible:Z

    #@2
    if-nez v0, :cond_0

    #@4
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mForceDecorViewVisibility:Z

    #@6
    if-eqz v0, :cond_1

    #@8
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@a
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    #@d
    move-result v0

    #@e
    :goto_0
    return v0

    #@f
    :cond_1
    const/16 v0, 0x8

    #@11
    goto :goto_0
.end method

.method public getLastTouchPoint(Landroid/graphics/Point;)V
    .locals 1
    .param p1, "outLocation"    # Landroid/graphics/Point;

    #@0
    .prologue
    .line 5638
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLastTouchPoint:Landroid/graphics/PointF;

    #@2
    iget v0, v0, Landroid/graphics/PointF;->x:F

    #@4
    float-to-int v0, v0

    #@5
    iput v0, p1, Landroid/graphics/Point;->x:I

    #@7
    .line 5639
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLastTouchPoint:Landroid/graphics/PointF;

    #@9
    iget v0, v0, Landroid/graphics/PointF;->y:F

    #@b
    float-to-int v0, v0

    #@c
    iput v0, p1, Landroid/graphics/Point;->y:I

    #@e
    .line 5637
    return-void
.end method

.method public getLastTouchSource()I
    .locals 1

    #@0
    .prologue
    .line 5643
    iget v0, p0, Landroid/view/ViewRootImpl;->mLastTouchSource:I

    #@2
    return v0
.end method

.method public getLayoutDirection()I
    .locals 1

    #@0
    .prologue
    .line 6823
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method final getLocation()Landroid/view/WindowLeaked;
    .locals 1

    #@0
    .prologue
    .line 893
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLocation:Landroid/view/WindowLeaked;

    #@2
    return-object v0
.end method

.method public getParent()Landroid/view/ViewParent;
    .locals 1

    #@0
    .prologue
    .line 1168
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getParentForAccessibility()Landroid/view/ViewParent;
    .locals 1

    #@0
    .prologue
    .line 3220
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getTextAlignment()I
    .locals 1

    #@0
    .prologue
    .line 6853
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public getTextDirection()I
    .locals 1

    #@0
    .prologue
    .line 6838
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 784
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
    .line 889
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@2
    return-object v0
.end method

.method public getWindowFlags()I
    .locals 1

    #@0
    .prologue
    .line 776
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
    const/4 v2, 0x0

    #@1
    .line 1402
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLastWindowInsets:Landroid/view/WindowInsets;

    #@3
    if-eqz v0, :cond_0

    #@5
    if-eqz p1, :cond_4

    #@7
    .line 1403
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDispatchContentInsets:Landroid/graphics/Rect;

    #@9
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@b
    iget-object v4, v4, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    #@d
    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@10
    .line 1404
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDispatchStableInsets:Landroid/graphics/Rect;

    #@12
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@14
    iget-object v4, v4, Landroid/view/View$AttachInfo;->mStableInsets:Landroid/graphics/Rect;

    #@16
    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@19
    .line 1405
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mDispatchContentInsets:Landroid/graphics/Rect;

    #@1b
    .line 1406
    .local v1, "contentInsets":Landroid/graphics/Rect;
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mDispatchStableInsets:Landroid/graphics/Rect;

    #@1d
    .line 1409
    .local v3, "stableInsets":Landroid/graphics/Rect;
    if-nez p1, :cond_1

    #@1f
    .line 1410
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    #@21
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v0

    #@25
    if-eqz v0, :cond_5

    #@27
    .line 1411
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    #@29
    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@2c
    move-result v0

    #@2d
    if-eqz v0, :cond_5

    #@2f
    .line 1415
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@31
    iget-object v7, v0, Landroid/view/View$AttachInfo;->mOutsets:Landroid/graphics/Rect;

    #@33
    .line 1416
    .local v7, "outsets":Landroid/graphics/Rect;
    iget v0, v7, Landroid/graphics/Rect;->left:I

    #@35
    if-gtz v0, :cond_2

    #@37
    iget v0, v7, Landroid/graphics/Rect;->top:I

    #@39
    if-lez v0, :cond_6

    #@3b
    .line 1417
    :cond_2
    :goto_1
    new-instance v6, Landroid/graphics/Rect;

    #@3d
    iget v0, v1, Landroid/graphics/Rect;->left:I

    #@3f
    iget v4, v7, Landroid/graphics/Rect;->left:I

    #@41
    add-int/2addr v0, v4

    #@42
    .line 1418
    iget v4, v1, Landroid/graphics/Rect;->top:I

    #@44
    iget v5, v7, Landroid/graphics/Rect;->top:I

    #@46
    add-int/2addr v4, v5

    #@47
    iget v5, v1, Landroid/graphics/Rect;->right:I

    #@49
    iget v8, v7, Landroid/graphics/Rect;->right:I

    #@4b
    add-int/2addr v5, v8

    #@4c
    .line 1419
    iget v8, v1, Landroid/graphics/Rect;->bottom:I

    #@4e
    iget v9, v7, Landroid/graphics/Rect;->bottom:I

    #@50
    add-int/2addr v8, v9

    #@51
    .line 1417
    invoke-direct {v6, v0, v4, v5, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    #@54
    .end local v1    # "contentInsets":Landroid/graphics/Rect;
    .local v6, "contentInsets":Landroid/graphics/Rect;
    move-object v1, v6

    #@55
    .line 1421
    .end local v6    # "contentInsets":Landroid/graphics/Rect;
    .restart local v1    # "contentInsets":Landroid/graphics/Rect;
    :cond_3
    new-instance v0, Landroid/view/WindowInsets;

    #@57
    .line 1423
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    #@59
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@5c
    move-result-object v4

    #@5d
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@60
    move-result-object v4

    #@61
    invoke-virtual {v4}, Landroid/content/res/Configuration;->isScreenRound()Z

    #@64
    move-result v4

    #@65
    .line 1424
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@67
    iget-boolean v5, v5, Landroid/view/View$AttachInfo;->mAlwaysConsumeNavBar:Z

    #@69
    .line 1421
    invoke-direct/range {v0 .. v5}, Landroid/view/WindowInsets;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V

    #@6c
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mLastWindowInsets:Landroid/view/WindowInsets;

    #@6e
    .line 1426
    .end local v1    # "contentInsets":Landroid/graphics/Rect;
    .end local v3    # "stableInsets":Landroid/graphics/Rect;
    .end local v7    # "outsets":Landroid/graphics/Rect;
    :cond_4
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLastWindowInsets:Landroid/view/WindowInsets;

    #@70
    return-object v0

    #@71
    .line 1412
    .restart local v1    # "contentInsets":Landroid/graphics/Rect;
    .restart local v3    # "stableInsets":Landroid/graphics/Rect;
    :cond_5
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    #@73
    .line 1413
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    #@75
    goto :goto_0

    #@76
    .line 1416
    .restart local v7    # "outsets":Landroid/graphics/Rect;
    :cond_6
    iget v0, v7, Landroid/graphics/Rect;->right:I

    #@78
    if-gtz v0, :cond_2

    #@7a
    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    #@7c
    if-lez v0, :cond_3

    #@7e
    goto :goto_1
.end method

.method handleAppVisibility(Z)V
    .locals 1
    .param p1, "visible"    # Z

    #@0
    .prologue
    .line 971
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mAppVisible:Z

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 972
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mAppVisible:Z

    #@6
    .line 973
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    #@9
    .line 974
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mAppVisible:Z

    #@b
    if-nez v0, :cond_0

    #@d
    .line 975
    invoke-static {}, Landroid/view/WindowManagerGlobal;->trimForeground()V

    #@10
    .line 970
    :cond_0
    return-void
.end method

.method public handleDispatchSystemUiVisibilityChanged(Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;)V
    .locals 4
    .param p1, "args"    # Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;

    #@0
    .prologue
    .line 5600
    iget v1, p0, Landroid/view/ViewRootImpl;->mSeq:I

    #@2
    iget v2, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->seq:I

    #@4
    if-eq v1, v2, :cond_0

    #@6
    .line 5604
    iget v1, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->seq:I

    #@8
    iput v1, p0, Landroid/view/ViewRootImpl;->mSeq:I

    #@a
    .line 5605
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@c
    const/4 v2, 0x1

    #@d
    iput-boolean v2, v1, Landroid/view/View$AttachInfo;->mForceReportNewAttributes:Z

    #@f
    .line 5606
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    #@12
    .line 5608
    :cond_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@14
    if-nez v1, :cond_1

    #@16
    return-void

    #@17
    .line 5609
    :cond_1
    iget v1, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->localChanges:I

    #@19
    if-eqz v1, :cond_2

    #@1b
    .line 5610
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@1d
    iget v2, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->localValue:I

    #@1f
    iget v3, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->localChanges:I

    #@21
    invoke-virtual {v1, v2, v3}, Landroid/view/View;->updateLocalSystemUiVisibility(II)Z

    #@24
    .line 5613
    :cond_2
    iget v1, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->globalVisibility:I

    #@26
    and-int/lit8 v0, v1, 0x7

    #@28
    .line 5614
    .local v0, "visibility":I
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@2a
    iget v1, v1, Landroid/view/View$AttachInfo;->mGlobalSystemUiVisibility:I

    #@2c
    if-eq v0, v1, :cond_3

    #@2e
    .line 5615
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@30
    iput v0, v1, Landroid/view/View$AttachInfo;->mGlobalSystemUiVisibility:I

    #@32
    .line 5616
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@34
    invoke-virtual {v1, v0}, Landroid/view/View;->dispatchSystemUiVisibilityChanged(I)V

    #@37
    .line 5599
    :cond_3
    return-void
.end method

.method public handleDispatchWindowShown()V
    .locals 1

    #@0
    .prologue
    .line 5621
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@2
    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    #@4
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->dispatchOnWindowShown()V

    #@7
    .line 5620
    return-void
.end method

.method handleGetNewSurface()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 981
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mNewSurfaceNeeded:Z

    #@3
    .line 982
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    #@5
    .line 983
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    #@8
    .line 980
    return-void
.end method

.method public handleRequestKeyboardShortcuts(Lcom/android/internal/os/IResultReceiver;I)V
    .locals 4
    .param p1, "receiver"    # Lcom/android/internal/os/IResultReceiver;
    .param p2, "deviceId"    # I

    #@0
    .prologue
    .line 5625
    new-instance v0, Landroid/os/Bundle;

    #@2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@5
    .line 5626
    .local v0, "data":Landroid/os/Bundle;
    new-instance v2, Ljava/util/ArrayList;

    #@7
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@a
    .line 5627
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/KeyboardShortcutGroup;>;"
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@c
    if-eqz v3, :cond_0

    #@e
    .line 5628
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@10
    invoke-virtual {v3, v2, p2}, Landroid/view/View;->requestKeyboardShortcuts(Ljava/util/List;I)V

    #@13
    .line 5630
    :cond_0
    const-string/jumbo v3, "shortcuts_array"

    #@16
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    #@19
    .line 5632
    const/4 v3, 0x0

    #@1a
    :try_start_0
    invoke-interface {p1, v3, v0}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1d
    .line 5624
    :goto_0
    return-void

    #@1e
    .line 5633
    :catch_0
    move-exception v1

    #@1f
    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method invalidate()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1060
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDirty:Landroid/graphics/Rect;

    #@3
    iget v1, p0, Landroid/view/ViewRootImpl;->mWidth:I

    #@5
    iget v2, p0, Landroid/view/ViewRootImpl;->mHeight:I

    #@7
    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    #@a
    .line 1061
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mWillDrawSoon:Z

    #@c
    if-nez v0, :cond_0

    #@e
    .line 1062
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    #@11
    .line 1059
    :cond_0
    return-void
.end method

.method public invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "dirty"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 1078
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0, p2}, Landroid/view/ViewRootImpl;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    #@4
    .line 1077
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
    .line 1083
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    #@6
    .line 1086
    if-nez p2, :cond_0

    #@8
    .line 1087
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->invalidate()V

    #@b
    .line 1088
    return-object v1

    #@c
    .line 1089
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
    .line 1093
    :cond_1
    iget v0, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    #@18
    if-nez v0, :cond_2

    #@1a
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@1c
    if-eqz v0, :cond_5

    #@1e
    .line 1094
    :cond_2
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    #@20
    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@23
    .line 1095
    iget-object p2, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    #@25
    .line 1096
    iget v0, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    #@27
    if-eqz v0, :cond_3

    #@29
    .line 1097
    iget v0, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    #@2b
    neg-int v0, v0

    #@2c
    invoke-virtual {p2, v2, v0}, Landroid/graphics/Rect;->offset(II)V

    #@2f
    .line 1099
    :cond_3
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@31
    if-eqz v0, :cond_4

    #@33
    .line 1100
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@35
    invoke-virtual {v0, p2}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInAppWindowToScreen(Landroid/graphics/Rect;)V

    #@38
    .line 1102
    :cond_4
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@3a
    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mScalingRequired:Z

    #@3c
    if-eqz v0, :cond_5

    #@3e
    .line 1103
    invoke-virtual {p2, v3, v3}, Landroid/graphics/Rect;->inset(II)V

    #@41
    .line 1107
    :cond_5
    invoke-direct {p0, p2}, Landroid/view/ViewRootImpl;->invalidateRectOnScreen(Landroid/graphics/Rect;)V

    #@44
    .line 1109
    return-object v1

    #@45
    .line 1090
    :cond_6
    return-object v1
.end method

.method invalidateWorld(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 1067
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    #@3
    .line 1068
    instance-of v2, p1, Landroid/view/ViewGroup;

    #@5
    if-eqz v2, :cond_0

    #@7
    move-object v1, p1

    #@8
    .line 1069
    check-cast v1, Landroid/view/ViewGroup;

    #@a
    .line 1070
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
    .line 1071
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {p0, v2}, Landroid/view/ViewRootImpl;->invalidateWorld(Landroid/view/View;)V

    #@18
    .line 1070
    add-int/lit8 v0, v0, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 1066
    .end local v0    # "i":I
    .end local v1    # "parent":Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method isInLayout()Z
    .locals 1

    #@0
    .prologue
    .line 2288
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mInLayout:Z

    #@2
    return v0
.end method

.method public isLayoutDirectionResolved()Z
    .locals 1

    #@0
    .prologue
    .line 6818
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public isLayoutRequested()Z
    .locals 1

    #@0
    .prologue
    .line 1056
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    #@2
    return v0
.end method

.method public isTextAlignmentResolved()Z
    .locals 1

    #@0
    .prologue
    .line 6848
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public isTextDirectionResolved()Z
    .locals 1

    #@0
    .prologue
    .line 6833
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public loadSystemProperties()V
    .locals 2

    #@0
    .prologue
    .line 5954
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@2
    new-instance v1, Landroid/view/ViewRootImpl$4;

    #@4
    invoke-direct {v1, p0}, Landroid/view/ViewRootImpl$4;-><init>(Landroid/view/ViewRootImpl;)V

    #@7
    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->post(Ljava/lang/Runnable;)Z

    #@a
    .line 5953
    return-void
.end method

.method public notifyChildRebuilt()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 526
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@3
    instance-of v0, v0, Lcom/android/internal/view/RootViewSurfaceTaker;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 528
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@9
    check-cast v0, Lcom/android/internal/view/RootViewSurfaceTaker;

    #@b
    invoke-interface {v0}, Lcom/android/internal/view/RootViewSurfaceTaker;->willYouTakeTheSurface()Landroid/view/SurfaceHolder$Callback2;

    #@e
    move-result-object v0

    #@f
    .line 527
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    #@11
    .line 529
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    #@13
    if-eqz v0, :cond_1

    #@15
    .line 530
    new-instance v0, Landroid/view/ViewRootImpl$TakenSurfaceHolder;

    #@17
    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$TakenSurfaceHolder;-><init>(Landroid/view/ViewRootImpl;)V

    #@1a
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@1c
    .line 531
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@1e
    const/4 v1, 0x0

    #@1f
    invoke-virtual {v0, v1}, Lcom/android/internal/view/BaseSurfaceHolder;->setFormat(I)V

    #@22
    .line 537
    :goto_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@24
    check-cast v0, Lcom/android/internal/view/RootViewSurfaceTaker;

    #@26
    invoke-interface {v0}, Lcom/android/internal/view/RootViewSurfaceTaker;->willYouTakeTheInputQueue()Landroid/view/InputQueue$Callback;

    #@29
    move-result-object v0

    #@2a
    .line 536
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    #@2c
    .line 538
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    #@2e
    if-eqz v0, :cond_0

    #@30
    .line 539
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    #@32
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    #@34
    invoke-interface {v0, v1}, Landroid/view/InputQueue$Callback;->onInputQueueCreated(Landroid/view/InputQueue;)V

    #@37
    .line 525
    :cond_0
    return-void

    #@38
    .line 533
    :cond_1
    iput-object v1, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@3a
    goto :goto_0
.end method

.method notifyRendererOfFramePending()V
    .locals 1

    #@0
    .prologue
    .line 1217
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@2
    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1218
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@8
    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    #@a
    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->notifyFramePending()V

    #@d
    .line 1216
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
    .line 6808
    invoke-direct {p0, p2, p3}, Landroid/view/ViewRootImpl;->postSendWindowContentChangedCallback(Landroid/view/View;I)V

    #@3
    .line 6807
    return-void
.end method

.method public onHardwarePostDraw(Landroid/view/DisplayListCanvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/view/DisplayListCanvas;

    #@0
    .prologue
    .line 2525
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->drawAccessibilityFocusedDrawableIfNeeded(Landroid/graphics/Canvas;)V

    #@3
    .line 2526
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@8
    move-result v1

    #@9
    add-int/lit8 v0, v1, -0x1

    #@b
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    #@d
    .line 2527
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    #@f
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    check-cast v1, Landroid/view/WindowCallbacks;

    #@15
    invoke-interface {v1, p1}, Landroid/view/WindowCallbacks;->onPostDraw(Landroid/view/DisplayListCanvas;)V

    #@18
    .line 2526
    add-int/lit8 v0, v0, -0x1

    #@1a
    goto :goto_0

    #@1b
    .line 2524
    :cond_0
    return-void
.end method

.method public onHardwarePreDraw(Landroid/view/DisplayListCanvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/view/DisplayListCanvas;

    #@0
    .prologue
    .line 2520
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
    .line 2519
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
    .line 6949
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
    .line 6954
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
    .line 6959
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
    .line 6944
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
    .line 6940
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    #@0
    .prologue
    .line 6935
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    #@0
    .prologue
    .line 6927
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 0
    .param p1, "target"    # Landroid/view/View;

    #@0
    .prologue
    .line 6931
    return-void
.end method

.method outputDisplayList(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 2535
    iget-object v0, p1, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    #@2
    invoke-virtual {v0}, Landroid/view/RenderNode;->output()V

    #@5
    .line 2536
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@7
    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 2537
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@d
    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    #@f
    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->serializeDisplayListTree()V

    #@12
    .line 2534
    :cond_0
    return-void
.end method

.method public performHapticFeedback(IZ)Z
    .locals 3
    .param p1, "effectId"    # I
    .param p2, "always"    # Z

    #@0
    .prologue
    .line 5789
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
    .line 5790
    :catch_0
    move-exception v0

    #@a
    .line 5791
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
    .line 5751
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    #@3
    .line 5754
    :try_start_0
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->getAudioManager()Landroid/media/AudioManager;

    #@6
    move-result-object v0

    #@7
    .line 5756
    .local v0, "audioManager":Landroid/media/AudioManager;
    packed-switch p1, :pswitch_data_0

    #@a
    .line 5773
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
    .line 5774
    const-string/jumbo v4, " not defined in "

    #@1f
    .line 5773
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v3

    #@23
    .line 5774
    const-class v4, Landroid/view/SoundEffectConstants;

    #@25
    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    #@28
    move-result-object v4

    #@29
    .line 5773
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
    .line 5776
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    :catch_0
    move-exception v1

    #@36
    .line 5778
    .local v1, "e":Ljava/lang/IllegalStateException;
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    #@38
    new-instance v3, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    const-string/jumbo v4, "FATAL EXCEPTION when attempting to play sound effect: "

    #@40
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v3

    #@44
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v3

    #@48
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v3

    #@4c
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@4f
    .line 5779
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    #@52
    .line 5750
    return-void

    #@53
    .line 5758
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    .restart local v0    # "audioManager":Landroid/media/AudioManager;
    :pswitch_0
    const/4 v2, 0x0

    #@54
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V

    #@57
    .line 5759
    return-void

    #@58
    .line 5761
    :pswitch_1
    const/4 v2, 0x2

    #@59
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V

    #@5c
    .line 5762
    return-void

    #@5d
    .line 5764
    :pswitch_2
    const/4 v2, 0x3

    #@5e
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V

    #@61
    .line 5765
    return-void

    #@62
    .line 5767
    :pswitch_3
    const/4 v2, 0x4

    #@63
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V

    #@66
    .line 5768
    return-void

    #@67
    .line 5770
    :pswitch_4
    const/4 v2, 0x1

    #@68
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    #@6b
    .line 5771
    return-void

    #@6c
    .line 5756
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
    .line 1026
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@2
    iget v0, v2, Landroid/view/View$AttachInfo;->mDisplayState:I

    #@4
    .line 1027
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
    .line 1028
    const/4 v2, 0x3

    #@11
    if-eq v0, v2, :cond_0

    #@13
    .line 1029
    const/4 v2, 0x4

    #@14
    if-ne v0, v2, :cond_1

    #@16
    .line 1031
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
    .line 1025
    :cond_1
    :goto_0
    return-void

    #@1e
    .line 1032
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
    .line 494
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mProfile:Z

    #@3
    .line 493
    return-void
.end method

.method public recomputeViewAttributes(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    #@0
    .prologue
    .line 3247
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    #@3
    .line 3248
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@5
    if-ne v0, p1, :cond_0

    #@7
    .line 3249
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@9
    const/4 v1, 0x1

    #@a
    iput-boolean v1, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    #@c
    .line 3250
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mWillDrawSoon:Z

    #@e
    if-nez v0, :cond_0

    #@10
    .line 3251
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    #@13
    .line 3246
    :cond_0
    return-void
.end method

.method public registerAnimatingRenderNode(Landroid/view/RenderNode;)V
    .locals 2
    .param p1, "animator"    # Landroid/view/RenderNode;

    #@0
    .prologue
    .line 816
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@2
    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 817
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@8
    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    #@a
    invoke-virtual {v0, p1}, Landroid/view/ThreadedRenderer;->registerAnimatingRenderNode(Landroid/view/RenderNode;)V

    #@d
    .line 815
    :goto_0
    return-void

    #@e
    .line 819
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@10
    iget-object v0, v0, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    #@12
    if-nez v0, :cond_1

    #@14
    .line 820
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@16
    new-instance v1, Ljava/util/ArrayList;

    #@18
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@1b
    iput-object v1, v0, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    #@1d
    .line 822
    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@1f
    iget-object v0, v0, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    #@21
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@24
    goto :goto_0
.end method

.method public registerVectorDrawableAnimator(Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;)V
    .locals 1
    .param p1, "animator"    # Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;

    #@0
    .prologue
    .line 828
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@2
    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 829
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@8
    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    #@a
    invoke-virtual {v0, p1}, Landroid/view/ThreadedRenderer;->registerVectorDrawableAnimator(Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;)V

    #@d
    .line 827
    :cond_0
    return-void
.end method

.method public removeWindowCallbacks(Landroid/view/WindowCallbacks;)V
    .locals 2
    .param p1, "callback"    # Landroid/view/WindowCallbacks;

    #@0
    .prologue
    .line 474
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    #@2
    monitor-enter v1

    #@3
    .line 475
    :try_start_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 472
    return-void

    #@a
    .line 474
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method public reportActivityRelaunched()V
    .locals 1

    #@0
    .prologue
    .line 7265
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mActivityRelaunched:Z

    #@3
    .line 7264
    return-void
.end method

.method public reportDrawFinish()V
    .locals 1

    #@0
    .prologue
    .line 481
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowDrawCountDown:Ljava/util/concurrent/CountDownLatch;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 482
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowDrawCountDown:Ljava/util/concurrent/CountDownLatch;

    #@6
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    #@9
    .line 480
    :cond_0
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    #@0
    .prologue
    .line 3205
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    #@3
    .line 3206
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    #@6
    .line 3201
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rectangle"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 6903
    if-nez p2, :cond_0

    #@3
    .line 6904
    invoke-virtual {p0, v2, p3}, Landroid/view/ViewRootImpl;->scrollToRectOrFocus(Landroid/graphics/Rect;Z)Z

    #@6
    move-result v2

    #@7
    return v2

    #@8
    .line 6906
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    #@b
    move-result v2

    #@c
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    #@f
    move-result v3

    #@10
    sub-int/2addr v2, v3

    #@11
    .line 6907
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    #@14
    move-result v3

    #@15
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    #@18
    move-result v4

    #@19
    sub-int/2addr v3, v4

    #@1a
    .line 6906
    invoke-virtual {p2, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    #@1d
    .line 6908
    invoke-virtual {p0, p2, p3}, Landroid/view/ViewRootImpl;->scrollToRectOrFocus(Landroid/graphics/Rect;Z)Z

    #@20
    move-result v1

    #@21
    .line 6909
    .local v1, "scrolled":Z
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    #@23
    invoke-virtual {v2, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@26
    .line 6910
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    #@28
    iget v3, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    #@2a
    neg-int v3, v3

    #@2b
    const/4 v4, 0x0

    #@2c
    invoke-virtual {v2, v4, v3}, Landroid/graphics/Rect;->offset(II)V

    #@2f
    .line 6911
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    #@31
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@33
    iget v3, v3, Landroid/view/View$AttachInfo;->mWindowLeft:I

    #@35
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@37
    iget v4, v4, Landroid/view/View$AttachInfo;->mWindowTop:I

    #@39
    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    #@3c
    .line 6913
    :try_start_0
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    #@3e
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    #@40
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    #@42
    invoke-interface {v2, v3, v4}, Landroid/view/IWindowSession;->onRectangleOnScreenRequested(Landroid/os/IBinder;Landroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@45
    .line 6917
    :goto_0
    return v1

    #@46
    .line 6914
    :catch_0
    move-exception v0

    #@47
    .local v0, "re":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .param p1, "disallowIntercept"    # Z

    #@0
    .prologue
    .line 6897
    return-void
.end method

.method public requestFitSystemWindows()V
    .locals 1

    #@0
    .prologue
    .line 1040
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    #@3
    .line 1041
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mApplyInsetsRequested:Z

    #@6
    .line 1042
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    #@9
    .line 1039
    return-void
.end method

.method public requestInvalidateRootRenderNode()V
    .locals 1

    #@0
    .prologue
    .line 3013
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mInvalidateRootRequested:Z

    #@3
    .line 3012
    return-void
.end method

.method public requestLayout()V
    .locals 1

    #@0
    .prologue
    .line 1047
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mHandlingLayoutInLayoutRequest:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1048
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    #@7
    .line 1049
    const/4 v0, 0x1

    #@8
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    #@a
    .line 1050
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    #@d
    .line 1046
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
    .line 2314
    iget-object v0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    #@3
    if-eqz v0, :cond_0

    #@5
    iget-object v0, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@7
    if-nez v0, :cond_1

    #@9
    .line 2316
    :cond_0
    return v1

    #@a
    .line 2318
    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLayoutRequesters:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@f
    move-result v0

    #@10
    if-nez v0, :cond_2

    #@12
    .line 2319
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLayoutRequesters:Ljava/util/ArrayList;

    #@14
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@17
    .line 2321
    :cond_2
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mHandlingLayoutInLayoutRequest:Z

    #@19
    if-nez v0, :cond_3

    #@1b
    .line 2324
    return v1

    #@1c
    .line 2328
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
    .line 6668
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
    .line 6669
    :cond_0
    const/4 v8, 0x0

    #@e
    return v8

    #@f
    .line 6673
    :cond_1
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    #@12
    move-result v1

    #@13
    .line 6674
    .local v1, "eventType":I
    sparse-switch v1, :sswitch_data_0

    #@16
    .line 6714
    :cond_2
    :goto_0
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    #@18
    invoke-virtual {v8, p2}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    #@1b
    .line 6715
    const/4 v8, 0x1

    #@1c
    return v8

    #@1d
    .line 6676
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    #@20
    move-result-wide v6

    #@21
    .line 6677
    .local v6, "sourceNodeId":J
    invoke-static {v6, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    #@24
    move-result v0

    #@25
    .line 6679
    .local v0, "accessibilityViewId":I
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@27
    invoke-virtual {v8, v0}, Landroid/view/View;->findViewByAccessibilityId(I)Landroid/view/View;

    #@2a
    move-result-object v4

    #@2b
    .line 6680
    .local v4, "source":Landroid/view/View;
    if-eqz v4, :cond_2

    #@2d
    .line 6681
    invoke-virtual {v4}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    #@30
    move-result-object v3

    #@31
    .line 6682
    .local v3, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v3, :cond_2

    #@33
    .line 6683
    invoke-static {v6, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    #@36
    move-result v5

    #@37
    .line 6686
    .local v5, "virtualNodeId":I
    const v8, 0x7fffffff

    #@3a
    if-ne v5, v8, :cond_3

    #@3c
    .line 6688
    const/4 v8, -0x1

    #@3d
    .line 6687
    invoke-virtual {v3, v8}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@40
    move-result-object v2

    #@41
    .line 6692
    .local v2, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    :goto_1
    invoke-virtual {p0, v4, v2}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    #@44
    goto :goto_0

    #@45
    .line 6690
    .end local v2    # "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_3
    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@48
    move-result-object v2

    #@49
    .restart local v2    # "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    goto :goto_1

    #@4a
    .line 6697
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
    .line 6698
    .restart local v6    # "sourceNodeId":J
    invoke-static {v6, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    #@51
    move-result v0

    #@52
    .line 6700
    .restart local v0    # "accessibilityViewId":I
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@54
    invoke-virtual {v8, v0}, Landroid/view/View;->findViewByAccessibilityId(I)Landroid/view/View;

    #@57
    move-result-object v4

    #@58
    .line 6701
    .restart local v4    # "source":Landroid/view/View;
    if-eqz v4, :cond_2

    #@5a
    .line 6702
    invoke-virtual {v4}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    #@5d
    move-result-object v3

    #@5e
    .line 6703
    .restart local v3    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v3, :cond_2

    #@60
    .line 6704
    invoke-virtual {p0, v9, v9}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    #@63
    goto :goto_0

    #@64
    .line 6711
    .end local v0    # "accessibilityViewId":I
    .end local v3    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    .end local v4    # "source":Landroid/view/View;
    .end local v6    # "sourceNodeId":J
    :sswitch_2
    invoke-direct {p0, p2}, Landroid/view/ViewRootImpl;->handleWindowContentChangedEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    #@67
    goto :goto_0

    #@68
    .line 6674
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
    .line 1203
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
    .line 1202
    :goto_0
    return-void

    #@d
    .line 1204
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    #@f
    if-nez v0, :cond_1

    #@11
    .line 1205
    new-instance v0, Ljava/util/ArrayList;

    #@13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@16
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    #@18
    .line 1207
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
    .line 2471
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    #@3
    .line 2472
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@5
    if-ne v0, p1, :cond_0

    #@7
    .line 2473
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@9
    iget v1, v0, Landroid/view/View;->mPrivateFlags:I

    #@b
    or-int/lit16 v1, v1, 0x200

    #@d
    iput v1, v0, Landroid/view/View;->mPrivateFlags:I

    #@f
    .line 2476
    const/4 v0, 0x1

    #@10
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    #@12
    .line 2477
    const/4 v0, 0x0

    #@13
    iput v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChangesFlag:I

    #@15
    .line 2478
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->requestLayout()V

    #@18
    .line 2469
    :cond_0
    return-void
.end method

.method public requestUpdateConfiguration(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "config"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    .line 5949
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@2
    const/16 v2, 0x12

    #@4
    invoke-virtual {v1, v2, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@7
    move-result-object v0

    #@8
    .line 5950
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@a
    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    #@d
    .line 5948
    return-void
.end method

.method scheduleConsumeBatchedInput()V
    .locals 4

    #@0
    .prologue
    .line 6293
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 6294
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    #@7
    .line 6295
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    #@9
    .line 6296
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mConsumedBatchedInputRunnable:Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;

    #@b
    .line 6295
    const/4 v2, 0x0

    #@c
    .line 6296
    const/4 v3, 0x0

    #@d
    .line 6295
    invoke-virtual {v0, v2, v1, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    #@10
    .line 6292
    :cond_0
    return-void
.end method

.method scheduleConsumeBatchedInputImmediately()V
    .locals 2

    #@0
    .prologue
    .line 6309
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputImmediatelyScheduled:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 6310
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->unscheduleConsumeBatchedInput()V

    #@7
    .line 6311
    const/4 v0, 0x1

    #@8
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputImmediatelyScheduled:Z

    #@a
    .line 6312
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@c
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputImmediatelyRunnable:Landroid/view/ViewRootImpl$ConsumeBatchedInputImmediatelyRunnable;

    #@e
    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->post(Ljava/lang/Runnable;)Z

    #@11
    .line 6308
    :cond_0
    return-void
.end method

.method scheduleTraversals()V
    .locals 4

    #@0
    .prologue
    .line 1223
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    #@2
    if-nez v0, :cond_1

    #@4
    .line 1224
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    #@7
    .line 1225
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
    .line 1226
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    #@19
    .line 1227
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTraversalRunnable:Landroid/view/ViewRootImpl$TraversalRunnable;

    #@1b
    const/4 v2, 0x2

    #@1c
    const/4 v3, 0x0

    #@1d
    .line 1226
    invoke-virtual {v0, v2, v1, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    #@20
    .line 1228
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mUnbufferedInputDispatch:Z

    #@22
    if-nez v0, :cond_0

    #@24
    .line 1229
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleConsumeBatchedInput()V

    #@27
    .line 1231
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->notifyRendererOfFramePending()V

    #@2a
    .line 1232
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->pokeDrawLockIfNeeded()V

    #@2d
    .line 1222
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
    const/4 v7, 0x0

    #@2
    .line 3017
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@4
    iget-object v0, v6, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    #@6
    .line 3018
    .local v0, "ci":Landroid/graphics/Rect;
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@8
    iget-object v5, v6, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    #@a
    .line 3019
    .local v5, "vi":Landroid/graphics/Rect;
    const/4 v4, 0x0

    #@b
    .line 3020
    .local v4, "scrollY":I
    const/4 v2, 0x0

    #@c
    .line 3022
    .local v2, "handled":Z
    iget v6, v5, Landroid/graphics/Rect;->left:I

    #@e
    iget v8, v0, Landroid/graphics/Rect;->left:I

    #@10
    if-gt v6, v8, :cond_0

    #@12
    iget v6, v5, Landroid/graphics/Rect;->top:I

    #@14
    iget v8, v0, Landroid/graphics/Rect;->top:I

    #@16
    if-le v6, v8, :cond_1

    #@18
    .line 3028
    :cond_0
    iget v4, p0, Landroid/view/ViewRootImpl;->mScrollY:I

    #@1a
    .line 3035
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@1c
    invoke-virtual {v6}, Landroid/view/View;->findFocus()Landroid/view/View;

    #@1f
    move-result-object v1

    #@20
    .line 3036
    .local v1, "focus":Landroid/view/View;
    if-nez v1, :cond_6

    #@22
    .line 3037
    return v9

    #@23
    .line 3023
    .end local v1    # "focus":Landroid/view/View;
    :cond_1
    iget v6, v5, Landroid/graphics/Rect;->right:I

    #@25
    iget v8, v0, Landroid/graphics/Rect;->right:I

    #@27
    if-gt v6, v8, :cond_0

    #@29
    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    #@2b
    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    #@2d
    if-gt v6, v8, :cond_0

    #@2f
    .line 3120
    .end local p1    # "rectangle":Landroid/graphics/Rect;
    :cond_2
    :goto_0
    iget v6, p0, Landroid/view/ViewRootImpl;->mScrollY:I

    #@31
    if-eq v4, v6, :cond_5

    #@33
    .line 3123
    if-nez p2, :cond_10

    #@35
    .line 3124
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    #@37
    if-nez v6, :cond_3

    #@39
    .line 3125
    new-instance v6, Landroid/widget/Scroller;

    #@3b
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@3d
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@40
    move-result-object v7

    #@41
    invoke-direct {v6, v7}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    #@44
    iput-object v6, p0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    #@46
    .line 3127
    :cond_3
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    #@48
    iget v7, p0, Landroid/view/ViewRootImpl;->mScrollY:I

    #@4a
    iget v8, p0, Landroid/view/ViewRootImpl;->mScrollY:I

    #@4c
    sub-int v8, v4, v8

    #@4e
    invoke-virtual {v6, v9, v7, v9, v8}, Landroid/widget/Scroller;->startScroll(IIII)V

    #@51
    .line 3131
    :cond_4
    :goto_1
    iput v4, p0, Landroid/view/ViewRootImpl;->mScrollY:I

    #@53
    .line 3134
    :cond_5
    return v2

    #@54
    .line 3039
    .restart local v1    # "focus":Landroid/view/View;
    .restart local p1    # "rectangle":Landroid/graphics/Rect;
    :cond_6
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mLastScrolledFocus:Ljava/lang/ref/WeakReference;

    #@56
    if-eqz v6, :cond_a

    #@58
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mLastScrolledFocus:Ljava/lang/ref/WeakReference;

    #@5a
    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5d
    move-result-object v6

    #@5e
    check-cast v6, Landroid/view/View;

    #@60
    move-object v3, v6

    #@61
    .line 3040
    .local v3, "lastScrolledFocus":Landroid/view/View;
    :goto_2
    if-eq v1, v3, :cond_7

    #@63
    .line 3044
    const/4 p1, 0x0

    #@64
    .line 3049
    .end local p1    # "rectangle":Landroid/graphics/Rect;
    :cond_7
    if-ne v1, v3, :cond_8

    #@66
    iget-boolean v6, p0, Landroid/view/ViewRootImpl;->mScrollMayChange:Z

    #@68
    if-eqz v6, :cond_b

    #@6a
    .line 3059
    :cond_8
    new-instance v6, Ljava/lang/ref/WeakReference;

    #@6c
    invoke-direct {v6, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@6f
    iput-object v6, p0, Landroid/view/ViewRootImpl;->mLastScrolledFocus:Ljava/lang/ref/WeakReference;

    #@71
    .line 3060
    iput-boolean v9, p0, Landroid/view/ViewRootImpl;->mScrollMayChange:Z

    #@73
    .line 3063
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mVisRect:Landroid/graphics/Rect;

    #@75
    invoke-virtual {v1, v6, v7}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    #@78
    move-result v6

    #@79
    if-eqz v6, :cond_2

    #@7b
    .line 3068
    if-nez p1, :cond_c

    #@7d
    .line 3069
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    #@7f
    invoke-virtual {v1, v6}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    #@82
    .line 3072
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@84
    instance-of v6, v6, Landroid/view/ViewGroup;

    #@86
    if-eqz v6, :cond_9

    #@88
    .line 3073
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@8a
    check-cast v6, Landroid/view/ViewGroup;

    #@8c
    .line 3074
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    #@8e
    .line 3073
    invoke-virtual {v6, v1, v7}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    #@91
    .line 3087
    :cond_9
    :goto_3
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    #@93
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mVisRect:Landroid/graphics/Rect;

    #@95
    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    #@98
    move-result v6

    #@99
    if-eqz v6, :cond_2

    #@9b
    .line 3091
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    #@9d
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    #@a0
    move-result v6

    #@a1
    .line 3092
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@a3
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    #@a6
    move-result v7

    #@a7
    iget v8, v5, Landroid/graphics/Rect;->top:I

    #@a9
    sub-int/2addr v7, v8

    #@aa
    iget v8, v5, Landroid/graphics/Rect;->bottom:I

    #@ac
    sub-int/2addr v7, v8

    #@ad
    .line 3091
    if-le v6, v7, :cond_d

    #@af
    .line 3114
    :goto_4
    const/4 v2, 0x1

    #@b0
    goto/16 :goto_0

    #@b2
    .end local v3    # "lastScrolledFocus":Landroid/view/View;
    .restart local p1    # "rectangle":Landroid/graphics/Rect;
    :cond_a
    move-object v3, v7

    #@b3
    .line 3039
    goto :goto_2

    #@b4
    .line 3049
    .end local p1    # "rectangle":Landroid/graphics/Rect;
    .restart local v3    # "lastScrolledFocus":Landroid/view/View;
    :cond_b
    if-nez p1, :cond_8

    #@b6
    goto/16 :goto_0

    #@b8
    .line 3081
    :cond_c
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    #@ba
    invoke-virtual {v6, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@bd
    goto :goto_3

    #@be
    .line 3103
    :cond_d
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    #@c0
    iget v6, v6, Landroid/graphics/Rect;->top:I

    #@c2
    iget v7, v5, Landroid/graphics/Rect;->top:I

    #@c4
    if-ge v6, v7, :cond_e

    #@c6
    .line 3104
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    #@c8
    iget v6, v6, Landroid/graphics/Rect;->top:I

    #@ca
    iget v7, v5, Landroid/graphics/Rect;->top:I

    #@cc
    sub-int v4, v6, v7

    #@ce
    goto :goto_4

    #@cf
    .line 3107
    :cond_e
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    #@d1
    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    #@d3
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@d5
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    #@d8
    move-result v7

    #@d9
    iget v8, v5, Landroid/graphics/Rect;->bottom:I

    #@db
    sub-int/2addr v7, v8

    #@dc
    if-le v6, v7, :cond_f

    #@de
    .line 3108
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    #@e0
    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    #@e2
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@e4
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    #@e7
    move-result v7

    #@e8
    iget v8, v5, Landroid/graphics/Rect;->bottom:I

    #@ea
    sub-int/2addr v7, v8

    #@eb
    sub-int v4, v6, v7

    #@ed
    goto :goto_4

    #@ee
    .line 3112
    :cond_f
    const/4 v4, 0x0

    #@ef
    goto :goto_4

    #@f0
    .line 3128
    .end local v1    # "focus":Landroid/view/View;
    .end local v3    # "lastScrolledFocus":Landroid/view/View;
    :cond_10
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    #@f2
    if-eqz v6, :cond_4

    #@f4
    .line 3129
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    #@f6
    invoke-virtual {v6}, Landroid/widget/Scroller;->abortAnimation()V

    #@f9
    goto/16 :goto_1
.end method

.method setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    #@0
    .prologue
    const/16 v7, 0x40

    #@2
    const/4 v6, 0x0

    #@3
    .line 3154
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    #@5
    if-eqz v4, :cond_1

    #@7
    .line 3156
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    #@9
    .line 3157
    .local v1, "focusNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    #@b
    .line 3164
    .local v0, "focusHost":Landroid/view/View;
    iput-object v6, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    #@d
    .line 3165
    iput-object v6, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    #@f
    .line 3169
    invoke-virtual {v0, v7}, Landroid/view/View;->clearAccessibilityFocusNoCallbacks(I)V

    #@12
    .line 3172
    invoke-virtual {v0}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    #@15
    move-result-object v2

    #@16
    .line 3173
    .local v2, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v2, :cond_0

    #@18
    .line 3175
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    #@1a
    invoke-virtual {v1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInParent(Landroid/graphics/Rect;)V

    #@1d
    .line 3176
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    #@1f
    invoke-virtual {v0, v4}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    #@22
    .line 3179
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    #@25
    move-result-wide v4

    #@26
    .line 3178
    invoke-static {v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    #@29
    move-result v3

    #@2a
    .line 3181
    .local v3, "virtualNodeId":I
    const/16 v4, 0x80

    #@2c
    .line 3180
    invoke-virtual {v2, v3, v4, v6}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    #@2f
    .line 3183
    .end local v3    # "virtualNodeId":I
    :cond_0
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    #@32
    .line 3185
    .end local v0    # "focusHost":Landroid/view/View;
    .end local v1    # "focusNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v2    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_1
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    #@34
    if-eqz v4, :cond_2

    #@36
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    #@38
    if-eq v4, p1, :cond_2

    #@3a
    .line 3187
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    #@3c
    invoke-virtual {v4, v7}, Landroid/view/View;->clearAccessibilityFocusNoCallbacks(I)V

    #@3f
    .line 3192
    :cond_2
    iput-object p1, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    #@41
    .line 3193
    iput-object p2, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    #@43
    .line 3195
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@45
    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    #@47
    if-eqz v4, :cond_3

    #@49
    .line 3196
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@4b
    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    #@4d
    invoke-virtual {v4}, Landroid/view/ThreadedRenderer;->invalidateRoot()V

    #@50
    .line 3151
    :cond_3
    return-void
.end method

.method public setDragFocus(Landroid/view/View;Landroid/view/DragEvent;)V
    .locals 5
    .param p1, "newDragTarget"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/DragEvent;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 5647
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    #@3
    if-eq v3, p1, :cond_0

    #@5
    sget-boolean v3, Landroid/view/View;->sCascadedDragDrop:Z

    #@7
    if-eqz v3, :cond_1

    #@9
    .line 5672
    :cond_0
    :goto_0
    iput-object p1, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    #@b
    .line 5646
    return-void

    #@c
    .line 5650
    :cond_1
    iget v1, p2, Landroid/view/DragEvent;->mX:F

    #@e
    .line 5651
    .local v1, "tx":F
    iget v2, p2, Landroid/view/DragEvent;->mY:F

    #@10
    .line 5652
    .local v2, "ty":F
    iget v0, p2, Landroid/view/DragEvent;->mAction:I

    #@12
    .line 5654
    .local v0, "action":I
    iput v4, p2, Landroid/view/DragEvent;->mX:F

    #@14
    .line 5655
    iput v4, p2, Landroid/view/DragEvent;->mY:F

    #@16
    .line 5657
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    #@18
    if-eqz v3, :cond_2

    #@1a
    .line 5658
    const/4 v3, 0x6

    #@1b
    iput v3, p2, Landroid/view/DragEvent;->mAction:I

    #@1d
    .line 5659
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    #@1f
    invoke-virtual {v3, p2}, Landroid/view/View;->callDragEventHandler(Landroid/view/DragEvent;)Z

    #@22
    .line 5662
    :cond_2
    if-eqz p1, :cond_3

    #@24
    .line 5663
    const/4 v3, 0x5

    #@25
    iput v3, p2, Landroid/view/DragEvent;->mAction:I

    #@27
    .line 5664
    invoke-virtual {p1, p2}, Landroid/view/View;->callDragEventHandler(Landroid/view/DragEvent;)Z

    #@2a
    .line 5667
    :cond_3
    iput v0, p2, Landroid/view/DragEvent;->mAction:I

    #@2c
    .line 5668
    iput v1, p2, Landroid/view/DragEvent;->mX:F

    #@2e
    .line 5669
    iput v2, p2, Landroid/view/DragEvent;->mY:F

    #@30
    goto :goto_0
.end method

.method public setIsAmbientMode(Z)V
    .locals 0
    .param p1, "ambient"    # Z

    #@0
    .prologue
    .line 1135
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mIsAmbientMode:Z

    #@2
    .line 1134
    return-void
.end method

.method setLayoutParams(Landroid/view/WindowManager$LayoutParams;Z)V
    .locals 10
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "newView"    # Z

    #@0
    .prologue
    .line 897
    monitor-enter p0

    #@1
    .line 898
    :try_start_0
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@3
    iget-object v7, v7, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@5
    iget v3, v7, Landroid/graphics/Rect;->left:I

    #@7
    .line 899
    .local v3, "oldInsetLeft":I
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@9
    iget-object v7, v7, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@b
    iget v5, v7, Landroid/graphics/Rect;->top:I

    #@d
    .line 900
    .local v5, "oldInsetTop":I
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@f
    iget-object v7, v7, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@11
    iget v4, v7, Landroid/graphics/Rect;->right:I

    #@13
    .line 901
    .local v4, "oldInsetRight":I
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@15
    iget-object v7, v7, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@17
    iget v2, v7, Landroid/graphics/Rect;->bottom:I

    #@19
    .line 902
    .local v2, "oldInsetBottom":I
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@1b
    iget v6, v7, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    #@1d
    .line 903
    .local v6, "oldSoftInputMode":I
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@1f
    iget-boolean v1, v7, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    #@21
    .line 912
    .local v1, "oldHasManualSurfaceInsets":Z
    iget v7, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@23
    iput v7, p0, Landroid/view/ViewRootImpl;->mClientWindowLayoutFlags:I

    #@25
    .line 915
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@27
    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@29
    and-int/lit16 v0, v7, 0x80

    #@2b
    .line 919
    .local v0, "compatibleWindowFlag":I
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@2d
    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    #@2f
    iput v7, p1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    #@31
    .line 920
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@33
    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    #@35
    iput v7, p1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    #@37
    .line 922
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@39
    invoke-virtual {v7, p1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    #@3c
    move-result v7

    #@3d
    iput v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChangesFlag:I

    #@3f
    .line 923
    iget v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChangesFlag:I

    #@41
    .line 924
    const/high16 v8, 0x80000

    #@43
    .line 923
    and-int/2addr v7, v8

    #@44
    if-eqz v7, :cond_0

    #@46
    .line 926
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@48
    const/4 v8, 0x1

    #@49
    iput-boolean v8, v7, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    #@4b
    .line 928
    :cond_0
    iget v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChangesFlag:I

    #@4d
    and-int/lit8 v7, v7, 0x1

    #@4f
    if-eqz v7, :cond_1

    #@51
    .line 931
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@53
    const/4 v8, 0x1

    #@54
    iput-boolean v8, v7, Landroid/view/View$AttachInfo;->mNeedsUpdateLightCenter:Z

    #@56
    .line 933
    :cond_1
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@58
    iget-object v7, v7, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    #@5a
    if-nez v7, :cond_2

    #@5c
    .line 934
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@5e
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mBasePackageName:Ljava/lang/String;

    #@60
    iput-object v8, v7, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    #@62
    .line 936
    :cond_2
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@64
    iget v8, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@66
    or-int/2addr v8, v0

    #@67
    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@69
    .line 938
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@6b
    iget-boolean v7, v7, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    #@6d
    if-eqz v7, :cond_6

    #@6f
    .line 940
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@71
    iget-object v7, v7, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@73
    invoke-virtual {v7, v3, v5, v4, v2}, Landroid/graphics/Rect;->set(IIII)V

    #@76
    .line 942
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@78
    iput-boolean v1, v7, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    #@7a
    .line 950
    :cond_3
    :goto_0
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@7c
    invoke-direct {p0, v7}, Landroid/view/ViewRootImpl;->applyKeepScreenOnFlag(Landroid/view/WindowManager$LayoutParams;)V

    #@7f
    .line 952
    if-eqz p2, :cond_4

    #@81
    .line 953
    iget v7, p1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    #@83
    iput v7, p0, Landroid/view/ViewRootImpl;->mSoftInputMode:I

    #@85
    .line 954
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->requestLayout()V

    #@88
    .line 958
    :cond_4
    iget v7, p1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    #@8a
    and-int/lit16 v7, v7, 0xf0

    #@8c
    if-nez v7, :cond_5

    #@8e
    .line 960
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@90
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@92
    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    #@94
    and-int/lit16 v8, v8, -0xf1

    #@96
    .line 962
    and-int/lit16 v9, v6, 0xf0

    #@98
    .line 960
    or-int/2addr v8, v9

    #@99
    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    #@9b
    .line 965
    :cond_5
    const/4 v7, 0x1

    #@9c
    iput-boolean v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    #@9e
    .line 966
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a1
    monitor-exit p0

    #@a2
    .line 896
    return-void

    #@a3
    .line 943
    :cond_6
    :try_start_1
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@a5
    iget-object v7, v7, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@a7
    iget v7, v7, Landroid/graphics/Rect;->left:I

    #@a9
    if-ne v7, v3, :cond_7

    #@ab
    .line 944
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@ad
    iget-object v7, v7, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@af
    iget v7, v7, Landroid/graphics/Rect;->top:I

    #@b1
    if-eq v7, v5, :cond_8

    #@b3
    .line 947
    :cond_7
    :goto_1
    const/4 v7, 0x1

    #@b4
    iput-boolean v7, p0, Landroid/view/ViewRootImpl;->mNeedsHwRendererSetup:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@b6
    goto :goto_0

    #@b7
    .line 897
    .end local v0    # "compatibleWindowFlag":I
    .end local v1    # "oldHasManualSurfaceInsets":Z
    .end local v2    # "oldInsetBottom":I
    .end local v3    # "oldInsetLeft":I
    .end local v4    # "oldInsetRight":I
    .end local v5    # "oldInsetTop":I
    .end local v6    # "oldSoftInputMode":I
    :catchall_0
    move-exception v7

    #@b8
    monitor-exit p0

    #@b9
    throw v7

    #@ba
    .line 945
    .restart local v0    # "compatibleWindowFlag":I
    .restart local v1    # "oldHasManualSurfaceInsets":Z
    .restart local v2    # "oldInsetBottom":I
    .restart local v3    # "oldInsetLeft":I
    .restart local v4    # "oldInsetRight":I
    .restart local v5    # "oldInsetTop":I
    .restart local v6    # "oldSoftInputMode":I
    :cond_8
    :try_start_2
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@bc
    iget-object v7, v7, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@be
    iget v7, v7, Landroid/graphics/Rect;->right:I

    #@c0
    if-ne v7, v4, :cond_7

    #@c2
    .line 946
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@c4
    iget-object v7, v7, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@c6
    iget v7, v7, Landroid/graphics/Rect;->bottom:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@c8
    if-eq v7, v2, :cond_3

    #@ca
    goto :goto_1
.end method

.method setLocalDragState(Ljava/lang/Object;)V
    .locals 0
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 5504
    iput-object p1, p0, Landroid/view/ViewRootImpl;->mLocalDragState:Ljava/lang/Object;

    #@2
    .line 5503
    return-void
.end method

.method public setPausedForTransition(Z)V
    .locals 0
    .param p1, "paused"    # Z

    #@0
    .prologue
    .line 1163
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mPausedForTransition:Z

    #@2
    .line 1162
    return-void
.end method

.method public setReportNextDraw()V
    .locals 1

    #@0
    .prologue
    .line 6971
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    #@3
    .line 6972
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->invalidate()V

    #@6
    .line 6970
    return-void
.end method

.method public setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/view/View;)V
    .locals 24
    .param p1, "view"    # Landroid/view/View;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "panelParentView"    # Landroid/view/View;

    #@0
    .prologue
    .line 548
    monitor-enter p0

    #@1
    .line 549
    :try_start_0
    move-object/from16 v0, p0

    #@3
    iget-object v3, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@5
    if-nez v3, :cond_15

    #@7
    .line 550
    move-object/from16 v0, p1

    #@9
    move-object/from16 v1, p0

    #@b
    iput-object v0, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@d
    .line 552
    move-object/from16 v0, p0

    #@f
    iget-object v3, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@11
    move-object/from16 v0, p0

    #@13
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    #@15
    invoke-virtual {v4}, Landroid/view/Display;->getState()I

    #@18
    move-result v4

    #@19
    iput v4, v3, Landroid/view/View$AttachInfo;->mDisplayState:I

    #@1b
    .line 553
    move-object/from16 v0, p0

    #@1d
    iget-object v3, v0, Landroid/view/ViewRootImpl;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    #@1f
    move-object/from16 v0, p0

    #@21
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    #@23
    move-object/from16 v0, p0

    #@25
    iget-object v5, v0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@27
    invoke-virtual {v3, v4, v5}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    #@2a
    .line 555
    move-object/from16 v0, p0

    #@2c
    iget-object v3, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@2e
    invoke-virtual {v3}, Landroid/view/View;->getRawLayoutDirection()I

    #@31
    move-result v3

    #@32
    move-object/from16 v0, p0

    #@34
    iput v3, v0, Landroid/view/ViewRootImpl;->mViewLayoutDirectionInitial:I

    #@36
    .line 556
    move-object/from16 v0, p0

    #@38
    iget-object v3, v0, Landroid/view/ViewRootImpl;->mFallbackEventHandler:Landroid/view/FallbackEventHandler;

    #@3a
    move-object/from16 v0, p1

    #@3c
    invoke-interface {v3, v0}, Landroid/view/FallbackEventHandler;->setView(Landroid/view/View;)V

    #@3f
    .line 557
    move-object/from16 v0, p0

    #@41
    iget-object v3, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@43
    move-object/from16 v0, p2

    #@45
    invoke-virtual {v3, v0}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    #@48
    .line 558
    move-object/from16 v0, p0

    #@4a
    iget-object v3, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@4c
    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    #@4e
    if-nez v3, :cond_0

    #@50
    .line 559
    move-object/from16 v0, p0

    #@52
    iget-object v3, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@54
    move-object/from16 v0, p0

    #@56
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mBasePackageName:Ljava/lang/String;

    #@58
    iput-object v4, v3, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    #@5a
    .line 561
    :cond_0
    move-object/from16 v0, p0

    #@5c
    iget-object v0, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@5e
    move-object/from16 p2, v0

    #@60
    .line 562
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->setTag()V

    #@63
    .line 570
    move-object/from16 v0, p2

    #@65
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@67
    move-object/from16 v0, p0

    #@69
    iput v3, v0, Landroid/view/ViewRootImpl;->mClientWindowLayoutFlags:I

    #@6b
    .line 572
    const/4 v3, 0x0

    #@6c
    const/4 v4, 0x0

    #@6d
    move-object/from16 v0, p0

    #@6f
    invoke-virtual {v0, v3, v4}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    #@72
    .line 574
    move-object/from16 v0, p1

    #@74
    instance-of v3, v0, Lcom/android/internal/view/RootViewSurfaceTaker;

    #@76
    if-eqz v3, :cond_1

    #@78
    .line 576
    move-object/from16 v0, p1

    #@7a
    check-cast v0, Lcom/android/internal/view/RootViewSurfaceTaker;

    #@7c
    move-object v3, v0

    #@7d
    invoke-interface {v3}, Lcom/android/internal/view/RootViewSurfaceTaker;->willYouTakeTheSurface()Landroid/view/SurfaceHolder$Callback2;

    #@80
    move-result-object v3

    #@81
    .line 575
    move-object/from16 v0, p0

    #@83
    iput-object v3, v0, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    #@85
    .line 577
    move-object/from16 v0, p0

    #@87
    iget-object v3, v0, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    #@89
    if-eqz v3, :cond_1

    #@8b
    .line 578
    new-instance v3, Landroid/view/ViewRootImpl$TakenSurfaceHolder;

    #@8d
    move-object/from16 v0, p0

    #@8f
    invoke-direct {v3, v0}, Landroid/view/ViewRootImpl$TakenSurfaceHolder;-><init>(Landroid/view/ViewRootImpl;)V

    #@92
    move-object/from16 v0, p0

    #@94
    iput-object v3, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@96
    .line 579
    move-object/from16 v0, p0

    #@98
    iget-object v3, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@9a
    const/4 v4, 0x0

    #@9b
    invoke-virtual {v3, v4}, Lcom/android/internal/view/BaseSurfaceHolder;->setFormat(I)V

    #@9e
    .line 585
    :cond_1
    move-object/from16 v0, p2

    #@a0
    iget-boolean v3, v0, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    #@a2
    if-nez v3, :cond_2

    #@a4
    .line 586
    const/4 v3, 0x0

    #@a5
    const/4 v4, 0x1

    #@a6
    move-object/from16 v0, p2

    #@a8
    move-object/from16 v1, p1

    #@aa
    invoke-virtual {v0, v1, v3, v4}, Landroid/view/WindowManager$LayoutParams;->setSurfaceInsets(Landroid/view/View;ZZ)V

    #@ad
    .line 590
    :cond_2
    move-object/from16 v0, p0

    #@af
    iget-object v3, v0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    #@b1
    invoke-virtual {v3}, Landroid/view/Display;->getDisplayAdjustments()Landroid/view/DisplayAdjustments;

    #@b4
    move-result-object v3

    #@b5
    invoke-virtual {v3}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    #@b8
    move-result-object v13

    #@b9
    .line 591
    .local v13, "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    invoke-virtual {v13}, Landroid/content/res/CompatibilityInfo;->getTranslator()Landroid/content/res/CompatibilityInfo$Translator;

    #@bc
    move-result-object v3

    #@bd
    move-object/from16 v0, p0

    #@bf
    iput-object v3, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@c1
    .line 594
    move-object/from16 v0, p0

    #@c3
    iget-object v3, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@c5
    if-nez v3, :cond_3

    #@c7
    .line 595
    move-object/from16 v0, p0

    #@c9
    move-object/from16 v1, p2

    #@cb
    invoke-direct {v0, v1}, Landroid/view/ViewRootImpl;->enableHardwareAcceleration(Landroid/view/WindowManager$LayoutParams;)V

    #@ce
    .line 598
    :cond_3
    const/16 v21, 0x0

    #@d0
    .line 599
    .local v21, "restore":Z
    move-object/from16 v0, p0

    #@d2
    iget-object v3, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@d4
    if-eqz v3, :cond_4

    #@d6
    .line 600
    move-object/from16 v0, p0

    #@d8
    iget-object v3, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    #@da
    move-object/from16 v0, p0

    #@dc
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@de
    invoke-virtual {v3, v4}, Landroid/view/Surface;->setCompatibilityTranslator(Landroid/content/res/CompatibilityInfo$Translator;)V

    #@e1
    .line 601
    const/16 v21, 0x1

    #@e3
    .line 602
    invoke-virtual/range {p2 .. p2}, Landroid/view/WindowManager$LayoutParams;->backup()V

    #@e6
    .line 603
    move-object/from16 v0, p0

    #@e8
    iget-object v3, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@ea
    move-object/from16 v0, p2

    #@ec
    invoke-virtual {v3, v0}, Landroid/content/res/CompatibilityInfo$Translator;->translateWindowLayout(Landroid/view/WindowManager$LayoutParams;)V

    #@ef
    .line 607
    :cond_4
    invoke-virtual {v13}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    #@f2
    move-result v3

    #@f3
    if-nez v3, :cond_5

    #@f5
    .line 608
    move-object/from16 v0, p2

    #@f7
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@f9
    or-int/lit16 v3, v3, 0x80

    #@fb
    move-object/from16 v0, p2

    #@fd
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@ff
    .line 609
    const/4 v3, 0x1

    #@100
    move-object/from16 v0, p0

    #@102
    iput-boolean v3, v0, Landroid/view/ViewRootImpl;->mLastInCompatMode:Z

    #@104
    .line 612
    :cond_5
    move-object/from16 v0, p2

    #@106
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    #@108
    move-object/from16 v0, p0

    #@10a
    iput v3, v0, Landroid/view/ViewRootImpl;->mSoftInputMode:I

    #@10c
    .line 613
    const/4 v3, 0x1

    #@10d
    move-object/from16 v0, p0

    #@10f
    iput-boolean v3, v0, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    #@111
    .line 614
    const/4 v3, -0x1

    #@112
    move-object/from16 v0, p0

    #@114
    iput v3, v0, Landroid/view/ViewRootImpl;->mWindowAttributesChangesFlag:I

    #@116
    .line 615
    move-object/from16 v0, p0

    #@118
    iget-object v3, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@11a
    move-object/from16 v0, p1

    #@11c
    iput-object v0, v3, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    #@11e
    .line 616
    move-object/from16 v0, p0

    #@120
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@122
    move-object/from16 v0, p0

    #@124
    iget-object v3, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@126
    if-eqz v3, :cond_a

    #@128
    const/4 v3, 0x1

    #@129
    :goto_0
    iput-boolean v3, v4, Landroid/view/View$AttachInfo;->mScalingRequired:Z

    #@12b
    .line 617
    move-object/from16 v0, p0

    #@12d
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@12f
    .line 618
    move-object/from16 v0, p0

    #@131
    iget-object v3, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@133
    if-nez v3, :cond_b

    #@135
    const/high16 v3, 0x3f800000    # 1.0f

    #@137
    .line 617
    :goto_1
    iput v3, v4, Landroid/view/View$AttachInfo;->mApplicationScale:F

    #@139
    .line 619
    if-eqz p3, :cond_6

    #@13b
    .line 620
    move-object/from16 v0, p0

    #@13d
    iget-object v3, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@13f
    .line 621
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    #@142
    move-result-object v4

    #@143
    .line 620
    iput-object v4, v3, Landroid/view/View$AttachInfo;->mPanelParentWindowToken:Landroid/os/IBinder;

    #@145
    .line 623
    :cond_6
    const/4 v3, 0x1

    #@146
    move-object/from16 v0, p0

    #@148
    iput-boolean v3, v0, Landroid/view/ViewRootImpl;->mAdded:Z

    #@14a
    .line 629
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->requestLayout()V

    #@14d
    .line 630
    move-object/from16 v0, p0

    #@14f
    iget-object v3, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@151
    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    #@153
    and-int/lit8 v3, v3, 0x2

    #@155
    if-nez v3, :cond_7

    #@157
    .line 632
    new-instance v3, Landroid/view/InputChannel;

    #@159
    invoke-direct {v3}, Landroid/view/InputChannel;-><init>()V

    #@15c
    move-object/from16 v0, p0

    #@15e
    iput-object v3, v0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    #@160
    .line 634
    :cond_7
    move-object/from16 v0, p0

    #@162
    iget-object v3, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@164
    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@166
    and-int/lit16 v3, v3, 0x4000

    #@168
    if-eqz v3, :cond_c

    #@16a
    const/4 v3, 0x1

    #@16b
    :goto_2
    move-object/from16 v0, p0

    #@16d
    iput-boolean v3, v0, Landroid/view/ViewRootImpl;->mForceDecorViewVisibility:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16f
    .line 637
    :try_start_1
    move-object/from16 v0, p0

    #@171
    iget-object v3, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@173
    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    #@175
    move-object/from16 v0, p0

    #@177
    iput v3, v0, Landroid/view/ViewRootImpl;->mOrigWindowType:I

    #@179
    .line 638
    move-object/from16 v0, p0

    #@17b
    iget-object v3, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@17d
    const/4 v4, 0x1

    #@17e
    iput-boolean v4, v3, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    #@180
    .line 639
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->collectViewAttributes()Z

    #@183
    .line 640
    move-object/from16 v0, p0

    #@185
    iget-object v3, v0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    #@187
    move-object/from16 v0, p0

    #@189
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    #@18b
    move-object/from16 v0, p0

    #@18d
    iget v5, v0, Landroid/view/ViewRootImpl;->mSeq:I

    #@18f
    move-object/from16 v0, p0

    #@191
    iget-object v6, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@193
    .line 641
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->getHostVisibility()I

    #@196
    move-result v7

    #@197
    move-object/from16 v0, p0

    #@199
    iget-object v8, v0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    #@19b
    invoke-virtual {v8}, Landroid/view/Display;->getDisplayId()I

    #@19e
    move-result v8

    #@19f
    .line 642
    move-object/from16 v0, p0

    #@1a1
    iget-object v9, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@1a3
    iget-object v9, v9, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    #@1a5
    move-object/from16 v0, p0

    #@1a7
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@1a9
    iget-object v10, v10, Landroid/view/View$AttachInfo;->mStableInsets:Landroid/graphics/Rect;

    #@1ab
    .line 643
    move-object/from16 v0, p0

    #@1ad
    iget-object v11, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@1af
    iget-object v11, v11, Landroid/view/View$AttachInfo;->mOutsets:Landroid/graphics/Rect;

    #@1b1
    move-object/from16 v0, p0

    #@1b3
    iget-object v12, v0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    #@1b5
    .line 640
    invoke-interface/range {v3 .. v12}, Landroid/view/IWindowSession;->addToDisplay(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/InputChannel;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@1b8
    move-result v20

    #@1b9
    .line 654
    .local v20, "res":I
    if-eqz v21, :cond_8

    #@1bb
    .line 655
    :try_start_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/WindowManager$LayoutParams;->restore()V

    #@1be
    .line 659
    :cond_8
    move-object/from16 v0, p0

    #@1c0
    iget-object v3, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@1c2
    if-eqz v3, :cond_9

    #@1c4
    .line 660
    move-object/from16 v0, p0

    #@1c6
    iget-object v3, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@1c8
    move-object/from16 v0, p0

    #@1ca
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@1cc
    iget-object v4, v4, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    #@1ce
    invoke-virtual {v3, v4}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    #@1d1
    .line 662
    :cond_9
    move-object/from16 v0, p0

    #@1d3
    iget-object v3, v0, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    #@1d5
    const/4 v4, 0x0

    #@1d6
    const/4 v5, 0x0

    #@1d7
    const/4 v6, 0x0

    #@1d8
    const/4 v7, 0x0

    #@1d9
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    #@1dc
    .line 663
    move-object/from16 v0, p0

    #@1de
    iget-object v3, v0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    #@1e0
    move-object/from16 v0, p0

    #@1e2
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@1e4
    iget-object v4, v4, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    #@1e6
    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@1e9
    .line 664
    move-object/from16 v0, p0

    #@1eb
    iget-object v3, v0, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    #@1ed
    move-object/from16 v0, p0

    #@1ef
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@1f1
    iget-object v4, v4, Landroid/view/View$AttachInfo;->mStableInsets:Landroid/graphics/Rect;

    #@1f3
    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@1f6
    .line 665
    move-object/from16 v0, p0

    #@1f8
    iget-object v3, v0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    #@1fa
    const/4 v4, 0x0

    #@1fb
    const/4 v5, 0x0

    #@1fc
    const/4 v6, 0x0

    #@1fd
    const/4 v7, 0x0

    #@1fe
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    #@201
    .line 666
    move-object/from16 v0, p0

    #@203
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@205
    .line 667
    and-int/lit8 v3, v20, 0x4

    #@207
    if-eqz v3, :cond_e

    #@209
    const/4 v3, 0x1

    #@20a
    .line 666
    :goto_3
    iput-boolean v3, v4, Landroid/view/View$AttachInfo;->mAlwaysConsumeNavBar:Z

    #@20c
    .line 668
    move-object/from16 v0, p0

    #@20e
    iget-object v3, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@210
    iget-boolean v3, v3, Landroid/view/View$AttachInfo;->mAlwaysConsumeNavBar:Z

    #@212
    move-object/from16 v0, p0

    #@214
    iput-boolean v3, v0, Landroid/view/ViewRootImpl;->mPendingAlwaysConsumeNavBar:Z

    #@216
    .line 670
    if-gez v20, :cond_f

    #@218
    .line 671
    move-object/from16 v0, p0

    #@21a
    iget-object v3, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@21c
    const/4 v4, 0x0

    #@21d
    iput-object v4, v3, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    #@21f
    .line 672
    const/4 v3, 0x0

    #@220
    move-object/from16 v0, p0

    #@222
    iput-boolean v3, v0, Landroid/view/ViewRootImpl;->mAdded:Z

    #@224
    .line 673
    move-object/from16 v0, p0

    #@226
    iget-object v3, v0, Landroid/view/ViewRootImpl;->mFallbackEventHandler:Landroid/view/FallbackEventHandler;

    #@228
    const/4 v4, 0x0

    #@229
    invoke-interface {v3, v4}, Landroid/view/FallbackEventHandler;->setView(Landroid/view/View;)V

    #@22c
    .line 674
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->unscheduleTraversals()V

    #@22f
    .line 675
    const/4 v3, 0x0

    #@230
    const/4 v4, 0x0

    #@231
    move-object/from16 v0, p0

    #@233
    invoke-virtual {v0, v3, v4}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    #@236
    .line 676
    packed-switch v20, :pswitch_data_0

    #@239
    .line 714
    new-instance v3, Ljava/lang/RuntimeException;

    #@23b
    .line 715
    new-instance v4, Ljava/lang/StringBuilder;

    #@23d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@240
    const-string/jumbo v5, "Unable to add window -- unknown error code "

    #@243
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@246
    move-result-object v4

    #@247
    move/from16 v0, v20

    #@249
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24c
    move-result-object v4

    #@24d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@250
    move-result-object v4

    #@251
    .line 714
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@254
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@255
    .line 548
    .end local v13    # "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    .end local v20    # "res":I
    .end local v21    # "restore":Z
    :catchall_0
    move-exception v3

    #@256
    monitor-exit p0

    #@257
    throw v3

    #@258
    .line 616
    .restart local v13    # "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    .restart local v21    # "restore":Z
    :cond_a
    const/4 v3, 0x0

    #@259
    goto/16 :goto_0

    #@25b
    .line 618
    :cond_b
    :try_start_3
    move-object/from16 v0, p0

    #@25d
    iget-object v3, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@25f
    iget v3, v3, Landroid/content/res/CompatibilityInfo$Translator;->applicationScale:F
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@261
    goto/16 :goto_1

    #@263
    .line 634
    :cond_c
    const/4 v3, 0x0

    #@264
    goto/16 :goto_2

    #@266
    .line 644
    :catch_0
    move-exception v15

    #@267
    .line 645
    .local v15, "e":Landroid/os/RemoteException;
    const/4 v3, 0x0

    #@268
    :try_start_4
    move-object/from16 v0, p0

    #@26a
    iput-boolean v3, v0, Landroid/view/ViewRootImpl;->mAdded:Z

    #@26c
    .line 646
    const/4 v3, 0x0

    #@26d
    move-object/from16 v0, p0

    #@26f
    iput-object v3, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@271
    .line 647
    move-object/from16 v0, p0

    #@273
    iget-object v3, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@275
    const/4 v4, 0x0

    #@276
    iput-object v4, v3, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    #@278
    .line 648
    const/4 v3, 0x0

    #@279
    move-object/from16 v0, p0

    #@27b
    iput-object v3, v0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    #@27d
    .line 649
    move-object/from16 v0, p0

    #@27f
    iget-object v3, v0, Landroid/view/ViewRootImpl;->mFallbackEventHandler:Landroid/view/FallbackEventHandler;

    #@281
    const/4 v4, 0x0

    #@282
    invoke-interface {v3, v4}, Landroid/view/FallbackEventHandler;->setView(Landroid/view/View;)V

    #@285
    .line 650
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->unscheduleTraversals()V

    #@288
    .line 651
    const/4 v3, 0x0

    #@289
    const/4 v4, 0x0

    #@28a
    move-object/from16 v0, p0

    #@28c
    invoke-virtual {v0, v3, v4}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    #@28f
    .line 652
    new-instance v3, Ljava/lang/RuntimeException;

    #@291
    const-string/jumbo v4, "Adding window failed"

    #@294
    invoke-direct {v3, v4, v15}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@297
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@298
    .line 653
    .end local v15    # "e":Landroid/os/RemoteException;
    :catchall_1
    move-exception v3

    #@299
    .line 654
    if-eqz v21, :cond_d

    #@29b
    .line 655
    :try_start_5
    invoke-virtual/range {p2 .. p2}, Landroid/view/WindowManager$LayoutParams;->restore()V

    #@29e
    .line 653
    :cond_d
    throw v3

    #@29f
    .line 667
    .restart local v20    # "res":I
    :cond_e
    const/4 v3, 0x0

    #@2a0
    goto/16 :goto_3

    #@2a2
    .line 679
    :pswitch_0
    new-instance v3, Landroid/view/WindowManager$BadTokenException;

    #@2a4
    .line 680
    new-instance v4, Ljava/lang/StringBuilder;

    #@2a6
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2a9
    const-string/jumbo v5, "Unable to add window -- token "

    #@2ac
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2af
    move-result-object v4

    #@2b0
    move-object/from16 v0, p2

    #@2b2
    iget-object v5, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    #@2b4
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2b7
    move-result-object v4

    #@2b8
    .line 681
    const-string/jumbo v5, " is not valid; is your activity running?"

    #@2bb
    .line 680
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2be
    move-result-object v4

    #@2bf
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c2
    move-result-object v4

    #@2c3
    .line 679
    invoke-direct {v3, v4}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    #@2c6
    throw v3

    #@2c7
    .line 683
    :pswitch_1
    new-instance v3, Landroid/view/WindowManager$BadTokenException;

    #@2c9
    .line 684
    new-instance v4, Ljava/lang/StringBuilder;

    #@2cb
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2ce
    const-string/jumbo v5, "Unable to add window -- token "

    #@2d1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d4
    move-result-object v4

    #@2d5
    move-object/from16 v0, p2

    #@2d7
    iget-object v5, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    #@2d9
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2dc
    move-result-object v4

    #@2dd
    .line 685
    const-string/jumbo v5, " is not for an application"

    #@2e0
    .line 684
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e3
    move-result-object v4

    #@2e4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e7
    move-result-object v4

    #@2e8
    .line 683
    invoke-direct {v3, v4}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    #@2eb
    throw v3

    #@2ec
    .line 687
    :pswitch_2
    new-instance v3, Landroid/view/WindowManager$BadTokenException;

    #@2ee
    .line 688
    new-instance v4, Ljava/lang/StringBuilder;

    #@2f0
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2f3
    const-string/jumbo v5, "Unable to add window -- app for token "

    #@2f6
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f9
    move-result-object v4

    #@2fa
    move-object/from16 v0, p2

    #@2fc
    iget-object v5, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    #@2fe
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@301
    move-result-object v4

    #@302
    .line 689
    const-string/jumbo v5, " is exiting"

    #@305
    .line 688
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@308
    move-result-object v4

    #@309
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30c
    move-result-object v4

    #@30d
    .line 687
    invoke-direct {v3, v4}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    #@310
    throw v3

    #@311
    .line 691
    :pswitch_3
    new-instance v3, Landroid/view/WindowManager$BadTokenException;

    #@313
    .line 692
    new-instance v4, Ljava/lang/StringBuilder;

    #@315
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@318
    const-string/jumbo v5, "Unable to add window -- window "

    #@31b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31e
    move-result-object v4

    #@31f
    move-object/from16 v0, p0

    #@321
    iget-object v5, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    #@323
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@326
    move-result-object v4

    #@327
    .line 693
    const-string/jumbo v5, " has already been added"

    #@32a
    .line 692
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32d
    move-result-object v4

    #@32e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@331
    move-result-object v4

    #@332
    .line 691
    invoke-direct {v3, v4}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    #@335
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@336
    :pswitch_4
    monitor-exit p0

    #@337
    .line 697
    return-void

    #@338
    .line 699
    :pswitch_5
    :try_start_6
    new-instance v3, Landroid/view/WindowManager$BadTokenException;

    #@33a
    new-instance v4, Ljava/lang/StringBuilder;

    #@33c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@33f
    const-string/jumbo v5, "Unable to add window "

    #@342
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@345
    move-result-object v4

    #@346
    .line 700
    move-object/from16 v0, p0

    #@348
    iget-object v5, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    #@34a
    .line 699
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@34d
    move-result-object v4

    #@34e
    .line 700
    const-string/jumbo v5, " -- another window of type "

    #@351
    .line 699
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@354
    move-result-object v4

    #@355
    .line 701
    move-object/from16 v0, p0

    #@357
    iget-object v5, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@359
    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    #@35b
    .line 699
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@35e
    move-result-object v4

    #@35f
    .line 701
    const-string/jumbo v5, " already exists"

    #@362
    .line 699
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@365
    move-result-object v4

    #@366
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@369
    move-result-object v4

    #@36a
    invoke-direct {v3, v4}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    #@36d
    throw v3

    #@36e
    .line 703
    :pswitch_6
    new-instance v3, Landroid/view/WindowManager$BadTokenException;

    #@370
    new-instance v4, Ljava/lang/StringBuilder;

    #@372
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@375
    const-string/jumbo v5, "Unable to add window "

    #@378
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37b
    move-result-object v4

    #@37c
    .line 704
    move-object/from16 v0, p0

    #@37e
    iget-object v5, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    #@380
    .line 703
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@383
    move-result-object v4

    #@384
    .line 704
    const-string/jumbo v5, " -- permission denied for window type "

    #@387
    .line 703
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38a
    move-result-object v4

    #@38b
    .line 705
    move-object/from16 v0, p0

    #@38d
    iget-object v5, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@38f
    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    #@391
    .line 703
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@394
    move-result-object v4

    #@395
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@398
    move-result-object v4

    #@399
    invoke-direct {v3, v4}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    #@39c
    throw v3

    #@39d
    .line 707
    :pswitch_7
    new-instance v3, Landroid/view/WindowManager$InvalidDisplayException;

    #@39f
    new-instance v4, Ljava/lang/StringBuilder;

    #@3a1
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@3a4
    const-string/jumbo v5, "Unable to add window "

    #@3a7
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3aa
    move-result-object v4

    #@3ab
    .line 708
    move-object/from16 v0, p0

    #@3ad
    iget-object v5, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    #@3af
    .line 707
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3b2
    move-result-object v4

    #@3b3
    .line 708
    const-string/jumbo v5, " -- the specified display can not be found"

    #@3b6
    .line 707
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b9
    move-result-object v4

    #@3ba
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3bd
    move-result-object v4

    #@3be
    invoke-direct {v3, v4}, Landroid/view/WindowManager$InvalidDisplayException;-><init>(Ljava/lang/String;)V

    #@3c1
    throw v3

    #@3c2
    .line 710
    :pswitch_8
    new-instance v3, Landroid/view/WindowManager$InvalidDisplayException;

    #@3c4
    new-instance v4, Ljava/lang/StringBuilder;

    #@3c6
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@3c9
    const-string/jumbo v5, "Unable to add window "

    #@3cc
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3cf
    move-result-object v4

    #@3d0
    .line 711
    move-object/from16 v0, p0

    #@3d2
    iget-object v5, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    #@3d4
    .line 710
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3d7
    move-result-object v4

    #@3d8
    .line 711
    const-string/jumbo v5, " -- the specified window type "

    #@3db
    .line 710
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3de
    move-result-object v4

    #@3df
    .line 712
    move-object/from16 v0, p0

    #@3e1
    iget-object v5, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@3e3
    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    #@3e5
    .line 710
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3e8
    move-result-object v4

    #@3e9
    .line 712
    const-string/jumbo v5, " is not valid"

    #@3ec
    .line 710
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3ef
    move-result-object v4

    #@3f0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f3
    move-result-object v4

    #@3f4
    invoke-direct {v3, v4}, Landroid/view/WindowManager$InvalidDisplayException;-><init>(Ljava/lang/String;)V

    #@3f7
    throw v3

    #@3f8
    .line 718
    :cond_f
    move-object/from16 v0, p1

    #@3fa
    instance-of v3, v0, Lcom/android/internal/view/RootViewSurfaceTaker;

    #@3fc
    if-eqz v3, :cond_10

    #@3fe
    .line 720
    move-object/from16 v0, p1

    #@400
    check-cast v0, Lcom/android/internal/view/RootViewSurfaceTaker;

    #@402
    move-object v3, v0

    #@403
    invoke-interface {v3}, Lcom/android/internal/view/RootViewSurfaceTaker;->willYouTakeTheInputQueue()Landroid/view/InputQueue$Callback;

    #@406
    move-result-object v3

    #@407
    .line 719
    move-object/from16 v0, p0

    #@409
    iput-object v3, v0, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    #@40b
    .line 722
    :cond_10
    move-object/from16 v0, p0

    #@40d
    iget-object v3, v0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    #@40f
    if-eqz v3, :cond_12

    #@411
    .line 723
    move-object/from16 v0, p0

    #@413
    iget-object v3, v0, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    #@415
    if-eqz v3, :cond_11

    #@417
    .line 724
    new-instance v3, Landroid/view/InputQueue;

    #@419
    invoke-direct {v3}, Landroid/view/InputQueue;-><init>()V

    #@41c
    move-object/from16 v0, p0

    #@41e
    iput-object v3, v0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    #@420
    .line 725
    move-object/from16 v0, p0

    #@422
    iget-object v3, v0, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    #@424
    move-object/from16 v0, p0

    #@426
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    #@428
    invoke-interface {v3, v4}, Landroid/view/InputQueue$Callback;->onInputQueueCreated(Landroid/view/InputQueue;)V

    #@42b
    .line 727
    :cond_11
    new-instance v3, Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    #@42d
    move-object/from16 v0, p0

    #@42f
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    #@431
    .line 728
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@434
    move-result-object v5

    #@435
    .line 727
    move-object/from16 v0, p0

    #@437
    invoke-direct {v3, v0, v4, v5}, Landroid/view/ViewRootImpl$WindowInputEventReceiver;-><init>(Landroid/view/ViewRootImpl;Landroid/view/InputChannel;Landroid/os/Looper;)V

    #@43a
    move-object/from16 v0, p0

    #@43c
    iput-object v3, v0, Landroid/view/ViewRootImpl;->mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    #@43e
    .line 731
    :cond_12
    move-object/from16 v0, p1

    #@440
    move-object/from16 v1, p0

    #@442
    invoke-virtual {v0, v1}, Landroid/view/View;->assignParent(Landroid/view/ViewParent;)V

    #@445
    .line 732
    and-int/lit8 v3, v20, 0x1

    #@447
    if-eqz v3, :cond_16

    #@449
    const/4 v3, 0x1

    #@44a
    :goto_4
    move-object/from16 v0, p0

    #@44c
    iput-boolean v3, v0, Landroid/view/ViewRootImpl;->mAddedTouchMode:Z

    #@44e
    .line 733
    and-int/lit8 v3, v20, 0x2

    #@450
    if-eqz v3, :cond_17

    #@452
    const/4 v3, 0x1

    #@453
    :goto_5
    move-object/from16 v0, p0

    #@455
    iput-boolean v3, v0, Landroid/view/ViewRootImpl;->mAppVisible:Z

    #@457
    .line 735
    move-object/from16 v0, p0

    #@459
    iget-object v3, v0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    #@45b
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    #@45e
    move-result v3

    #@45f
    if-eqz v3, :cond_13

    #@461
    .line 736
    move-object/from16 v0, p0

    #@463
    iget-object v3, v0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    #@465
    invoke-virtual {v3}, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->ensureConnection()V

    #@468
    .line 739
    :cond_13
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getImportantForAccessibility()I

    #@46b
    move-result v3

    #@46c
    if-nez v3, :cond_14

    #@46e
    .line 740
    const/4 v3, 0x1

    #@46f
    move-object/from16 v0, p1

    #@471
    invoke-virtual {v0, v3}, Landroid/view/View;->setImportantForAccessibility(I)V

    #@474
    .line 744
    :cond_14
    invoke-virtual/range {p2 .. p2}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    #@477
    move-result-object v14

    #@478
    .line 745
    .local v14, "counterSuffix":Ljava/lang/CharSequence;
    new-instance v3, Landroid/view/ViewRootImpl$SyntheticInputStage;

    #@47a
    move-object/from16 v0, p0

    #@47c
    invoke-direct {v3, v0}, Landroid/view/ViewRootImpl$SyntheticInputStage;-><init>(Landroid/view/ViewRootImpl;)V

    #@47f
    move-object/from16 v0, p0

    #@481
    iput-object v3, v0, Landroid/view/ViewRootImpl;->mSyntheticInputStage:Landroid/view/ViewRootImpl$InputStage;

    #@483
    .line 746
    new-instance v22, Landroid/view/ViewRootImpl$ViewPostImeInputStage;

    #@485
    move-object/from16 v0, p0

    #@487
    iget-object v3, v0, Landroid/view/ViewRootImpl;->mSyntheticInputStage:Landroid/view/ViewRootImpl$InputStage;

    #@489
    move-object/from16 v0, v22

    #@48b
    move-object/from16 v1, p0

    #@48d
    invoke-direct {v0, v1, v3}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;)V

    #@490
    .line 747
    .local v22, "viewPostImeStage":Landroid/view/ViewRootImpl$InputStage;
    new-instance v18, Landroid/view/ViewRootImpl$NativePostImeInputStage;

    #@492
    .line 748
    new-instance v3, Ljava/lang/StringBuilder;

    #@494
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@497
    const-string/jumbo v4, "aq:native-post-ime:"

    #@49a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49d
    move-result-object v3

    #@49e
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@4a1
    move-result-object v3

    #@4a2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a5
    move-result-object v3

    #@4a6
    .line 747
    move-object/from16 v0, v18

    #@4a8
    move-object/from16 v1, p0

    #@4aa
    move-object/from16 v2, v22

    #@4ac
    invoke-direct {v0, v1, v2, v3}, Landroid/view/ViewRootImpl$NativePostImeInputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;Ljava/lang/String;)V

    #@4af
    .line 749
    .local v18, "nativePostImeStage":Landroid/view/ViewRootImpl$InputStage;
    new-instance v16, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;

    #@4b1
    move-object/from16 v0, v16

    #@4b3
    move-object/from16 v1, p0

    #@4b5
    move-object/from16 v2, v18

    #@4b7
    invoke-direct {v0, v1, v2}, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;)V

    #@4ba
    .line 750
    .local v16, "earlyPostImeStage":Landroid/view/ViewRootImpl$InputStage;
    new-instance v17, Landroid/view/ViewRootImpl$ImeInputStage;

    #@4bc
    .line 751
    new-instance v3, Ljava/lang/StringBuilder;

    #@4be
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@4c1
    const-string/jumbo v4, "aq:ime:"

    #@4c4
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c7
    move-result-object v3

    #@4c8
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@4cb
    move-result-object v3

    #@4cc
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4cf
    move-result-object v3

    #@4d0
    .line 750
    move-object/from16 v0, v17

    #@4d2
    move-object/from16 v1, p0

    #@4d4
    move-object/from16 v2, v16

    #@4d6
    invoke-direct {v0, v1, v2, v3}, Landroid/view/ViewRootImpl$ImeInputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;Ljava/lang/String;)V

    #@4d9
    .line 752
    .local v17, "imeStage":Landroid/view/ViewRootImpl$InputStage;
    new-instance v23, Landroid/view/ViewRootImpl$ViewPreImeInputStage;

    #@4db
    move-object/from16 v0, v23

    #@4dd
    move-object/from16 v1, p0

    #@4df
    move-object/from16 v2, v17

    #@4e1
    invoke-direct {v0, v1, v2}, Landroid/view/ViewRootImpl$ViewPreImeInputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;)V

    #@4e4
    .line 753
    .local v23, "viewPreImeStage":Landroid/view/ViewRootImpl$InputStage;
    new-instance v19, Landroid/view/ViewRootImpl$NativePreImeInputStage;

    #@4e6
    .line 754
    new-instance v3, Ljava/lang/StringBuilder;

    #@4e8
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@4eb
    const-string/jumbo v4, "aq:native-pre-ime:"

    #@4ee
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f1
    move-result-object v3

    #@4f2
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@4f5
    move-result-object v3

    #@4f6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f9
    move-result-object v3

    #@4fa
    .line 753
    move-object/from16 v0, v19

    #@4fc
    move-object/from16 v1, p0

    #@4fe
    move-object/from16 v2, v23

    #@500
    invoke-direct {v0, v1, v2, v3}, Landroid/view/ViewRootImpl$NativePreImeInputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;Ljava/lang/String;)V

    #@503
    .line 756
    .local v19, "nativePreImeStage":Landroid/view/ViewRootImpl$InputStage;
    move-object/from16 v0, v19

    #@505
    move-object/from16 v1, p0

    #@507
    iput-object v0, v1, Landroid/view/ViewRootImpl;->mFirstInputStage:Landroid/view/ViewRootImpl$InputStage;

    #@509
    .line 757
    move-object/from16 v0, v16

    #@50b
    move-object/from16 v1, p0

    #@50d
    iput-object v0, v1, Landroid/view/ViewRootImpl;->mFirstPostImeInputStage:Landroid/view/ViewRootImpl$InputStage;

    #@50f
    .line 758
    new-instance v3, Ljava/lang/StringBuilder;

    #@511
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@514
    const-string/jumbo v4, "aq:pending:"

    #@517
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51a
    move-result-object v3

    #@51b
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@51e
    move-result-object v3

    #@51f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@522
    move-result-object v3

    #@523
    move-object/from16 v0, p0

    #@525
    iput-object v3, v0, Landroid/view/ViewRootImpl;->mPendingInputEventQueueLengthCounterName:Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@527
    .end local v13    # "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    .end local v14    # "counterSuffix":Ljava/lang/CharSequence;
    .end local v16    # "earlyPostImeStage":Landroid/view/ViewRootImpl$InputStage;
    .end local v17    # "imeStage":Landroid/view/ViewRootImpl$InputStage;
    .end local v18    # "nativePostImeStage":Landroid/view/ViewRootImpl$InputStage;
    .end local v19    # "nativePreImeStage":Landroid/view/ViewRootImpl$InputStage;
    .end local v20    # "res":I
    .end local v21    # "restore":Z
    .end local v22    # "viewPostImeStage":Landroid/view/ViewRootImpl$InputStage;
    .end local v23    # "viewPreImeStage":Landroid/view/ViewRootImpl$InputStage;
    :cond_15
    monitor-exit p0

    #@528
    .line 547
    return-void

    #@529
    .line 732
    .restart local v13    # "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    .restart local v20    # "res":I
    .restart local v21    # "restore":Z
    :cond_16
    const/4 v3, 0x0

    #@52a
    goto/16 :goto_4

    #@52c
    .line 733
    :cond_17
    const/4 v3, 0x0

    #@52d
    goto/16 :goto_5

    #@52f
    .line 676
    nop

    #@530
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
    .locals 2
    .param p1, "stopped"    # Z

    #@0
    .prologue
    .line 1139
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mStopped:Z

    #@2
    if-eq v1, p1, :cond_1

    #@4
    .line 1140
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mStopped:Z

    #@6
    .line 1141
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@8
    iget-object v0, v1, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    #@a
    .line 1142
    .local v0, "renderer":Landroid/view/ThreadedRenderer;
    if-eqz v0, :cond_0

    #@c
    .line 1144
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mStopped:Z

    #@e
    invoke-virtual {v0, v1}, Landroid/view/ThreadedRenderer;->setStopped(Z)V

    #@11
    .line 1146
    :cond_0
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mStopped:Z

    #@13
    if-nez v1, :cond_2

    #@15
    .line 1147
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    #@18
    .line 1138
    .end local v0    # "renderer":Landroid/view/ThreadedRenderer;
    :cond_1
    :goto_0
    return-void

    #@19
    .line 1149
    .restart local v0    # "renderer":Landroid/view/ThreadedRenderer;
    :cond_2
    if-eqz v0, :cond_1

    #@1b
    .line 1150
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@1d
    invoke-virtual {v0, v1}, Landroid/view/ThreadedRenderer;->destroyHardwareResources(Landroid/view/View;)V

    #@20
    goto :goto_0
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 1
    .param p1, "originalView"    # Landroid/view/View;

    #@0
    .prologue
    .line 6639
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public showContextMenuForChild(Landroid/view/View;FF)Z
    .locals 1
    .param p1, "originalView"    # Landroid/view/View;
    .param p2, "x"    # F
    .param p3, "y"    # F

    #@0
    .prologue
    .line 6644
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
    .line 6649
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
    .line 6655
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public synthesizeInputEvent(Landroid/view/InputEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/InputEvent;

    #@0
    .prologue
    .line 6515
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@2
    const/16 v2, 0x18

    #@4
    invoke-virtual {v1, v2, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@7
    move-result-object v0

    #@8
    .line 6516
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    #@9
    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    #@c
    .line 6517
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@e
    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    #@11
    .line 6514
    return-void
.end method

.method transformMatrixToGlobal(Landroid/graphics/Matrix;)V
    .locals 2
    .param p1, "m"    # Landroid/graphics/Matrix;

    #@0
    .prologue
    .line 1388
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
    .line 1387
    return-void
.end method

.method transformMatrixToLocal(Landroid/graphics/Matrix;)V
    .locals 2
    .param p1, "m"    # Landroid/graphics/Matrix;

    #@0
    .prologue
    .line 1398
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
    .line 1397
    return-void
.end method

.method unscheduleConsumeBatchedInput()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 6301
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 6302
    iput-boolean v3, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    #@7
    .line 6303
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    #@9
    .line 6304
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mConsumedBatchedInputRunnable:Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;

    #@b
    const/4 v2, 0x0

    #@c
    .line 6303
    invoke-virtual {v0, v3, v1, v2}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    #@f
    .line 6300
    :cond_0
    return-void
.end method

.method unscheduleTraversals()V
    .locals 4

    #@0
    .prologue
    .line 1237
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1238
    const/4 v0, 0x0

    #@5
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    #@7
    .line 1239
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
    .line 1240
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    #@18
    .line 1241
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTraversalRunnable:Landroid/view/ViewRootImpl$TraversalRunnable;

    #@1a
    const/4 v2, 0x2

    #@1b
    const/4 v3, 0x0

    #@1c
    .line 1240
    invoke-virtual {v0, v2, v1, v3}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    #@1f
    .line 1236
    :cond_0
    return-void
.end method

.method updateConfiguration(Landroid/content/res/Configuration;Z)V
    .locals 9
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "force"    # Z

    #@0
    .prologue
    .line 3312
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    #@2
    invoke-virtual {v6}, Landroid/view/Display;->getDisplayAdjustments()Landroid/view/DisplayAdjustments;

    #@5
    move-result-object v6

    #@6
    invoke-virtual {v6}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    #@9
    move-result-object v0

    #@a
    .line 3313
    .local v0, "ci":Landroid/content/res/CompatibilityInfo;
    sget-object v6, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    #@c
    invoke-virtual {v0, v6}, Landroid/content/res/CompatibilityInfo;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v6

    #@10
    if-nez v6, :cond_0

    #@12
    .line 3314
    new-instance v1, Landroid/content/res/Configuration;

    #@14
    invoke-direct {v1, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    #@17
    .line 3315
    .end local p1    # "config":Landroid/content/res/Configuration;
    .local v1, "config":Landroid/content/res/Configuration;
    iget v6, p0, Landroid/view/ViewRootImpl;->mNoncompatDensity:I

    #@19
    invoke-virtual {v0, v6, v1}, Landroid/content/res/CompatibilityInfo;->applyToConfiguration(ILandroid/content/res/Configuration;)V

    #@1c
    move-object p1, v1

    #@1d
    .line 3318
    .end local v1    # "config":Landroid/content/res/Configuration;
    .restart local p1    # "config":Landroid/content/res/Configuration;
    :cond_0
    sget-object v7, Landroid/view/ViewRootImpl;->sConfigCallbacks:Ljava/util/ArrayList;

    #@1f
    monitor-enter v7

    #@20
    .line 3319
    :try_start_0
    sget-object v6, Landroid/view/ViewRootImpl;->sConfigCallbacks:Ljava/util/ArrayList;

    #@22
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@25
    move-result v6

    #@26
    add-int/lit8 v3, v6, -0x1

    #@28
    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    #@2a
    .line 3320
    sget-object v6, Landroid/view/ViewRootImpl;->sConfigCallbacks:Ljava/util/ArrayList;

    #@2c
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2f
    move-result-object v6

    #@30
    check-cast v6, Landroid/content/ComponentCallbacks;

    #@32
    invoke-interface {v6, p1}, Landroid/content/ComponentCallbacks;->onConfigurationChanged(Landroid/content/res/Configuration;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@35
    .line 3319
    add-int/lit8 v3, v3, -0x1

    #@37
    goto :goto_0

    #@38
    :cond_1
    monitor-exit v7

    #@39
    .line 3323
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@3b
    if-eqz v6, :cond_4

    #@3d
    .line 3327
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@3f
    invoke-virtual {v6}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    #@42
    move-result-object v5

    #@43
    .line 3328
    .local v5, "localResources":Landroid/content/res/Resources;
    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@46
    move-result-object p1

    #@47
    .line 3329
    if-nez p2, :cond_2

    #@49
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mLastConfiguration:Landroid/content/res/Configuration;

    #@4b
    invoke-virtual {v6, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    #@4e
    move-result v6

    #@4f
    if-eqz v6, :cond_4

    #@51
    .line 3331
    :cond_2
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    #@54
    move-result-object v6

    #@55
    .line 3332
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    #@57
    invoke-virtual {v7}, Landroid/view/Display;->getDisplayId()I

    #@5a
    move-result v7

    #@5b
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayAdjustments()Landroid/view/DisplayAdjustments;

    #@5e
    move-result-object v8

    #@5f
    .line 3331
    invoke-virtual {v6, v7, v8}, Landroid/app/ResourcesManager;->getAdjustedDisplay(ILandroid/view/DisplayAdjustments;)Landroid/view/Display;

    #@62
    move-result-object v6

    #@63
    iput-object v6, p0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    #@65
    .line 3334
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mLastConfiguration:Landroid/content/res/Configuration;

    #@67
    invoke-virtual {v6}, Landroid/content/res/Configuration;->getLayoutDirection()I

    #@6a
    move-result v4

    #@6b
    .line 3335
    .local v4, "lastLayoutDirection":I
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    #@6e
    move-result v2

    #@6f
    .line 3336
    .local v2, "currentLayoutDirection":I
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mLastConfiguration:Landroid/content/res/Configuration;

    #@71
    invoke-virtual {v6, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    #@74
    .line 3337
    if-eq v4, v2, :cond_3

    #@76
    .line 3338
    iget v6, p0, Landroid/view/ViewRootImpl;->mViewLayoutDirectionInitial:I

    #@78
    const/4 v7, 0x2

    #@79
    if-ne v6, v7, :cond_3

    #@7b
    .line 3339
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@7d
    invoke-virtual {v6, v2}, Landroid/view/View;->setLayoutDirection(I)V

    #@80
    .line 3341
    :cond_3
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@82
    invoke-virtual {v6, p1}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    #@85
    .line 3306
    .end local v2    # "currentLayoutDirection":I
    .end local v4    # "lastLayoutDirection":I
    .end local v5    # "localResources":Landroid/content/res/Resources;
    :cond_4
    return-void

    #@86
    .line 3318
    .end local v3    # "i":I
    :catchall_0
    move-exception v6

    #@87
    monitor-exit v7

    #@88
    throw v6
.end method

.method public updatePointerIcon(FF)V
    .locals 12
    .param p1, "x"    # F
    .param p2, "y"    # F

    #@0
    .prologue
    const/16 v11, 0x1b

    #@2
    .line 6582
    const/16 v10, 0x1b

    #@4
    .line 6583
    .local v10, "what":I
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@6
    invoke-virtual {v0, v11}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeMessages(I)V

    #@9
    .line 6584
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@c
    move-result-wide v2

    #@d
    .line 6586
    .local v2, "now":J
    const-wide/16 v0, 0x0

    #@f
    const/4 v4, 0x7

    #@10
    const/4 v7, 0x0

    #@11
    move v5, p1

    #@12
    move v6, p2

    #@13
    .line 6585
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    #@16
    move-result-object v8

    #@17
    .line 6587
    .local v8, "event":Landroid/view/MotionEvent;
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@19
    invoke-virtual {v0, v11, v8}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@1c
    move-result-object v9

    #@1d
    .line 6588
    .local v9, "msg":Landroid/os/Message;
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@1f
    invoke-virtual {v0, v9}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    #@22
    .line 6581
    return-void
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
    .line 6551
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    #@5
    move-result-object v0

    #@6
    .line 6552
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x6

    #@7
    iput v1, v0, Landroid/os/Message;->what:I

    #@9
    .line 6553
    if-eqz p1, :cond_0

    #@b
    move v1, v2

    #@c
    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    #@e
    .line 6554
    if-eqz p2, :cond_1

    #@10
    :goto_1
    iput v2, v0, Landroid/os/Message;->arg2:I

    #@12
    .line 6555
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@14
    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    #@17
    .line 6550
    return-void

    #@18
    :cond_0
    move v1, v3

    #@19
    .line 6553
    goto :goto_0

    #@1a
    :cond_1
    move v2, v3

    #@1b
    .line 6554
    goto :goto_1
.end method

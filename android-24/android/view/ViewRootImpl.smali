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
    .line 153
    new-instance v0, Ljava/lang/ThreadLocal;

    #@2
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    #@5
    sput-object v0, Landroid/view/ViewRootImpl;->sRunQueues:Ljava/lang/ThreadLocal;

    #@7
    .line 155
    new-instance v0, Ljava/util/ArrayList;

    #@9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@c
    sput-object v0, Landroid/view/ViewRootImpl;->sFirstDrawHandlers:Ljava/util/ArrayList;

    #@e
    .line 156
    const/4 v0, 0x0

    #@f
    sput-boolean v0, Landroid/view/ViewRootImpl;->sFirstDrawComplete:Z

    #@11
    .line 158
    new-instance v0, Ljava/util/ArrayList;

    #@13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@16
    sput-object v0, Landroid/view/ViewRootImpl;->sConfigCallbacks:Ljava/util/ArrayList;

    #@18
    .line 339
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    #@1a
    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    #@1d
    sput-object v0, Landroid/view/ViewRootImpl;->mResizeInterpolator:Landroid/view/animation/Interpolator;

    #@1f
    .line 113
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
    .line 410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    .line 165
    new-instance v0, Ljava/util/ArrayList;

    #@b
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@e
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    #@10
    .line 172
    const/4 v0, 0x2

    #@11
    new-array v0, v0, [I

    #@13
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mTmpLocation:[I

    #@15
    .line 174
    new-instance v0, Landroid/util/TypedValue;

    #@17
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    #@1a
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mTmpValue:Landroid/util/TypedValue;

    #@1c
    .line 180
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    #@1e
    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    #@21
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@23
    .line 197
    iput-boolean v4, p0, Landroid/view/ViewRootImpl;->mAppVisible:Z

    #@25
    .line 202
    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mForceDecorViewVisibility:Z

    #@27
    .line 203
    iput v3, p0, Landroid/view/ViewRootImpl;->mOrigWindowType:I

    #@29
    .line 217
    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mStopped:Z

    #@2b
    .line 221
    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mIsAmbientMode:Z

    #@2d
    .line 224
    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mPausedForTransition:Z

    #@2f
    .line 226
    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mLastInCompatMode:Z

    #@31
    .line 296
    const-string/jumbo v0, "pq"

    #@34
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPendingInputEventQueueLengthCounterName:Ljava/lang/String;

    #@36
    .line 302
    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    #@38
    .line 303
    iput v2, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChangesFlag:I

    #@3a
    .line 307
    new-instance v0, Landroid/view/Surface;

    #@3c
    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    #@3f
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    #@41
    .line 315
    new-instance v0, Landroid/graphics/Rect;

    #@43
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@46
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    #@48
    .line 316
    new-instance v0, Landroid/graphics/Rect;

    #@4a
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@4d
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    #@4f
    .line 317
    new-instance v0, Landroid/graphics/Rect;

    #@51
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@54
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    #@56
    .line 318
    new-instance v0, Landroid/graphics/Rect;

    #@58
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@5b
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    #@5d
    .line 319
    new-instance v0, Landroid/graphics/Rect;

    #@5f
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@62
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPendingOutsets:Landroid/graphics/Rect;

    #@64
    .line 320
    new-instance v0, Landroid/graphics/Rect;

    #@66
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@69
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPendingBackDropFrame:Landroid/graphics/Rect;

    #@6b
    .line 323
    new-instance v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    #@6d
    invoke-direct {v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;-><init>()V

    #@70
    .line 322
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mLastGivenInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    #@72
    .line 325
    new-instance v0, Landroid/graphics/Rect;

    #@74
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@77
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mDispatchContentInsets:Landroid/graphics/Rect;

    #@79
    .line 326
    new-instance v0, Landroid/graphics/Rect;

    #@7b
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@7e
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mDispatchStableInsets:Landroid/graphics/Rect;

    #@80
    .line 330
    new-instance v0, Landroid/content/res/Configuration;

    #@82
    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    #@85
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mLastConfiguration:Landroid/content/res/Configuration;

    #@87
    .line 331
    new-instance v0, Landroid/content/res/Configuration;

    #@89
    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    #@8c
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPendingConfiguration:Landroid/content/res/Configuration;

    #@8e
    .line 348
    new-instance v0, Landroid/graphics/PointF;

    #@90
    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    #@93
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mDragPoint:Landroid/graphics/PointF;

    #@95
    .line 349
    new-instance v0, Landroid/graphics/PointF;

    #@97
    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    #@9a
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mLastTouchPoint:Landroid/graphics/PointF;

    #@9c
    .line 357
    iput-wide v6, p0, Landroid/view/ViewRootImpl;->mFpsStartTime:J

    #@9e
    .line 358
    iput-wide v6, p0, Landroid/view/ViewRootImpl;->mFpsPrevTime:J

    #@a0
    .line 361
    iput v4, p0, Landroid/view/ViewRootImpl;->mPointerIconType:I

    #@a2
    .line 362
    iput-object v1, p0, Landroid/view/ViewRootImpl;->mCustomPointerIcon:Landroid/view/PointerIcon;

    #@a4
    .line 383
    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mInLayout:Z

    #@a6
    .line 384
    new-instance v0, Ljava/util/ArrayList;

    #@a8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@ab
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mLayoutRequesters:Ljava/util/ArrayList;

    #@ad
    .line 385
    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mHandlingLayoutInLayoutRequest:Z

    #@af
    .line 398
    invoke-static {}, Landroid/view/InputEventConsistencyVerifier;->isInstrumentationEnabled()Z

    #@b2
    move-result v0

    #@b3
    if-eqz v0, :cond_0

    #@b5
    .line 399
    new-instance v0, Landroid/view/InputEventConsistencyVerifier;

    #@b7
    invoke-direct {v0, p0, v2}, Landroid/view/InputEventConsistencyVerifier;-><init>(Ljava/lang/Object;I)V

    #@ba
    .line 397
    :goto_0
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    #@bc
    .line 408
    const-string/jumbo v0, "ViewRootImpl"

    #@bf
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    #@c1
    .line 486
    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mProfile:Z

    #@c3
    .line 978
    new-instance v0, Landroid/view/ViewRootImpl$1;

    #@c5
    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$1;-><init>(Landroid/view/ViewRootImpl;)V

    #@c8
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    #@ca
    .line 3700
    new-instance v0, Landroid/view/ViewRootImpl$ViewRootHandler;

    #@cc
    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$ViewRootHandler;-><init>(Landroid/view/ViewRootImpl;)V

    #@cf
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@d1
    .line 6304
    new-instance v0, Landroid/view/ViewRootImpl$TraversalRunnable;

    #@d3
    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$TraversalRunnable;-><init>(Landroid/view/ViewRootImpl;)V

    #@d6
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mTraversalRunnable:Landroid/view/ViewRootImpl$TraversalRunnable;

    #@d8
    .line 6340
    new-instance v0, Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;

    #@da
    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;-><init>(Landroid/view/ViewRootImpl;)V

    #@dd
    .line 6339
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mConsumedBatchedInputRunnable:Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;

    #@df
    .line 6350
    new-instance v0, Landroid/view/ViewRootImpl$ConsumeBatchedInputImmediatelyRunnable;

    #@e1
    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$ConsumeBatchedInputImmediatelyRunnable;-><init>(Landroid/view/ViewRootImpl;)V

    #@e4
    .line 6349
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputImmediatelyRunnable:Landroid/view/ViewRootImpl$ConsumeBatchedInputImmediatelyRunnable;

    #@e6
    .line 6436
    new-instance v0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;

    #@e8
    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;-><init>(Landroid/view/ViewRootImpl;)V

    #@eb
    .line 6435
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mInvalidateOnAnimationRunnable:Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;

    #@ed
    .line 411
    iput-object p1, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    #@ef
    .line 412
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    #@f2
    move-result-object v0

    #@f3
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    #@f5
    .line 413
    iput-object p2, p0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    #@f7
    .line 414
    invoke-virtual {p1}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    #@fa
    move-result-object v0

    #@fb
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mBasePackageName:Ljava/lang/String;

    #@fd
    .line 415
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@100
    move-result-object v0

    #@101
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mThread:Ljava/lang/Thread;

    #@103
    .line 416
    new-instance v0, Landroid/view/WindowLeaked;

    #@105
    invoke-direct {v0, v1}, Landroid/view/WindowLeaked;-><init>(Ljava/lang/String;)V

    #@108
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mLocation:Landroid/view/WindowLeaked;

    #@10a
    .line 417
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLocation:Landroid/view/WindowLeaked;

    #@10c
    invoke-virtual {v0}, Landroid/view/WindowLeaked;->fillInStackTrace()Ljava/lang/Throwable;

    #@10f
    .line 418
    iput v3, p0, Landroid/view/ViewRootImpl;->mWidth:I

    #@111
    .line 419
    iput v3, p0, Landroid/view/ViewRootImpl;->mHeight:I

    #@113
    .line 420
    new-instance v0, Landroid/graphics/Rect;

    #@115
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@118
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mDirty:Landroid/graphics/Rect;

    #@11a
    .line 421
    new-instance v0, Landroid/graphics/Rect;

    #@11c
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@11f
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    #@121
    .line 422
    new-instance v0, Landroid/graphics/Rect;

    #@123
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@126
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mVisRect:Landroid/graphics/Rect;

    #@128
    .line 423
    new-instance v0, Landroid/graphics/Rect;

    #@12a
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@12d
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    #@12f
    .line 424
    new-instance v0, Landroid/view/ViewRootImpl$W;

    #@131
    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$W;-><init>(Landroid/view/ViewRootImpl;)V

    #@134
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    #@136
    .line 425
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@139
    move-result-object v0

    #@13a
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@13c
    iput v0, p0, Landroid/view/ViewRootImpl;->mTargetSdkVersion:I

    #@13e
    .line 426
    const/16 v0, 0x8

    #@140
    iput v0, p0, Landroid/view/ViewRootImpl;->mViewVisibility:I

    #@142
    .line 427
    new-instance v0, Landroid/graphics/Region;

    #@144
    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    #@147
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    #@149
    .line 428
    new-instance v0, Landroid/graphics/Region;

    #@14b
    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    #@14e
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPreviousTransparentRegion:Landroid/graphics/Region;

    #@150
    .line 429
    iput-boolean v4, p0, Landroid/view/ViewRootImpl;->mFirst:Z

    #@152
    .line 430
    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    #@154
    .line 431
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
    .line 432
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    #@167
    move-result-object v0

    #@168
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    #@16a
    .line 434
    new-instance v0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    #@16c
    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;-><init>(Landroid/view/ViewRootImpl;)V

    #@16f
    .line 433
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    #@171
    .line 435
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    #@173
    .line 436
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    #@175
    .line 435
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    #@178
    .line 437
    new-instance v0, Landroid/view/ViewRootImpl$HighContrastTextManager;

    #@17a
    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$HighContrastTextManager;-><init>(Landroid/view/ViewRootImpl;)V

    #@17d
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mHighContrastTextManager:Landroid/view/ViewRootImpl$HighContrastTextManager;

    #@17f
    .line 438
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    #@181
    .line 439
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHighContrastTextManager:Landroid/view/ViewRootImpl$HighContrastTextManager;

    #@183
    .line 438
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->addHighTextContrastStateChangeListener(Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;)Z

    #@186
    .line 440
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    #@189
    move-result-object v0

    #@18a
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mViewConfiguration:Landroid/view/ViewConfiguration;

    #@18c
    .line 441
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
    .line 442
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
    .line 443
    new-instance v0, Lcom/android/internal/policy/PhoneFallbackEventHandler;

    #@1a6
    invoke-direct {v0, p1}, Lcom/android/internal/policy/PhoneFallbackEventHandler;-><init>(Landroid/content/Context;)V

    #@1a9
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mFallbackEventHandler:Landroid/view/FallbackEventHandler;

    #@1ab
    .line 444
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    #@1ae
    move-result-object v0

    #@1af
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    #@1b1
    .line 445
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
    .line 446
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->loadSystemProperties()V

    #@1bf
    .line 410
    return-void

    #@1c0
    :cond_0
    move-object v0, v1

    #@1c1
    .line 399
    goto/16 :goto_0
.end method

.method public static addConfigCallback(Landroid/content/ComponentCallbacks;)V
    .locals 2
    .param p0, "callback"    # Landroid/content/ComponentCallbacks;

    #@0
    .prologue
    .line 458
    sget-object v1, Landroid/view/ViewRootImpl;->sConfigCallbacks:Ljava/util/ArrayList;

    #@2
    monitor-enter v1

    #@3
    .line 459
    :try_start_0
    sget-object v0, Landroid/view/ViewRootImpl;->sConfigCallbacks:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 457
    return-void

    #@a
    .line 458
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
    .line 450
    sget-object v1, Landroid/view/ViewRootImpl;->sFirstDrawHandlers:Ljava/util/ArrayList;

    #@2
    monitor-enter v1

    #@3
    .line 451
    :try_start_0
    sget-boolean v0, Landroid/view/ViewRootImpl;->sFirstDrawComplete:Z

    #@5
    if-nez v0, :cond_0

    #@7
    .line 452
    sget-object v0, Landroid/view/ViewRootImpl;->sFirstDrawHandlers:Ljava/util/ArrayList;

    #@9
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    :cond_0
    monitor-exit v1

    #@d
    .line 449
    return-void

    #@e
    .line 450
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
    .line 6231
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
    .line 6232
    check-cast v3, Landroid/view/MotionEvent;

    #@d
    .line 6234
    .local v3, "motion":Landroid/view/MotionEvent;
    const/16 v2, 0x60

    #@f
    .line 6235
    .local v2, "mask":I
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getButtonState()I

    #@12
    move-result v0

    #@13
    .line 6236
    .local v0, "buttonState":I
    and-int/lit8 v4, v0, 0x60

    #@15
    shr-int/lit8 v1, v4, 0x4

    #@17
    .line 6237
    .local v1, "compatButtonState":I
    if-eqz v1, :cond_0

    #@19
    .line 6238
    or-int v4, v0, v1

    #@1b
    invoke-virtual {v3, v4}, Landroid/view/MotionEvent;->setButtonState(I)V

    #@1e
    .line 6230
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
    .line 1259
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@2
    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1260
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@8
    or-int/lit16 v0, v0, 0x80

    #@a
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@c
    .line 1255
    :goto_0
    return-void

    #@d
    .line 1262
    :cond_0
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@f
    and-int/lit16 v0, v0, -0x81

    #@11
    .line 1263
    iget v1, p0, Landroid/view/ViewRootImpl;->mClientWindowLayoutFlags:I

    #@13
    and-int/lit16 v1, v1, 0x80

    #@15
    .line 1262
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
    .line 5463
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@3
    iget-boolean v1, v1, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    #@5
    if-nez v1, :cond_0

    #@7
    .line 5464
    return v2

    #@8
    .line 5468
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    #@b
    move-result v0

    #@c
    .line 5469
    .local v0, "action":I
    if-eqz v0, :cond_1

    #@e
    const/4 v1, 0x2

    #@f
    if-eq v0, v1, :cond_1

    #@11
    .line 5470
    return v2

    #@12
    .line 5474
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    #@15
    move-result v1

    #@16
    and-int/lit8 v1, v1, 0x4

    #@18
    if-eqz v1, :cond_2

    #@1a
    .line 5475
    return v2

    #@1b
    .line 5483
    :cond_2
    invoke-static {p1}, Landroid/view/ViewRootImpl;->isNavigationKey(Landroid/view/KeyEvent;)Z

    #@1e
    move-result v1

    #@1f
    if-eqz v1, :cond_3

    #@21
    .line 5484
    invoke-virtual {p0, v2}, Landroid/view/ViewRootImpl;->ensureTouchMode(Z)Z

    #@24
    move-result v1

    #@25
    return v1

    #@26
    .line 5490
    :cond_3
    invoke-static {p1}, Landroid/view/ViewRootImpl;->isTypingKey(Landroid/view/KeyEvent;)Z

    #@29
    move-result v1

    #@2a
    if-eqz v1, :cond_4

    #@2c
    .line 5491
    invoke-virtual {p0, v2}, Landroid/view/ViewRootImpl;->ensureTouchMode(Z)Z

    #@2f
    .line 5492
    return v2

    #@30
    .line 5495
    :cond_4
    return v2
.end method

.method private collectViewAttributes()Z
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1268
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@3
    iget-boolean v2, v2, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    #@5
    if-eqz v2, :cond_2

    #@7
    .line 1270
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@9
    iput-boolean v5, v2, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    #@b
    .line 1271
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@d
    iget-boolean v0, v2, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    #@f
    .line 1272
    .local v0, "oldScreenOn":Z
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@11
    iput-boolean v5, v2, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    #@13
    .line 1273
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@15
    iput v5, v2, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    #@17
    .line 1274
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@19
    iput-boolean v5, v2, Landroid/view/View$AttachInfo;->mHasSystemUiListeners:Z

    #@1b
    .line 1275
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@1d
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@1f
    invoke-virtual {v2, v3, v5}, Landroid/view/View;->dispatchCollectViewAttributes(Landroid/view/View$AttachInfo;I)V

    #@22
    .line 1276
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
    .line 1277
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@30
    .line 1278
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
    .line 1279
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@3d
    iget-boolean v2, v2, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    #@3f
    if-ne v2, v0, :cond_0

    #@41
    .line 1280
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@43
    iget v2, v2, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    #@45
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    #@47
    if-eq v2, v3, :cond_1

    #@49
    .line 1282
    :cond_0
    invoke-direct {p0, v1}, Landroid/view/ViewRootImpl;->applyKeepScreenOnFlag(Landroid/view/WindowManager$LayoutParams;)V

    #@4c
    .line 1283
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@4e
    iget v2, v2, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    #@50
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    #@52
    .line 1284
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@54
    iget-boolean v2, v2, Landroid/view/View$AttachInfo;->mHasSystemUiListeners:Z

    #@56
    iput-boolean v2, v1, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    #@58
    .line 1285
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@5a
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@5c
    iget v3, v3, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    #@5e
    invoke-virtual {v2, v3}, Landroid/view/View;->dispatchWindowSystemUiVisiblityChanged(I)V

    #@61
    .line 1286
    const/4 v2, 0x1

    #@62
    return v2

    #@63
    .line 1281
    :cond_1
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@65
    iget-boolean v2, v2, Landroid/view/View$AttachInfo;->mHasSystemUiListeners:Z

    #@67
    iget-boolean v3, v1, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    #@69
    if-ne v2, v3, :cond_0

    #@6b
    .line 1289
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
    .line 6196
    const-string/jumbo v1, "deliverInputEvent"

    #@3
    .line 6197
    iget-object v2, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    #@5
    invoke-virtual {v2}, Landroid/view/InputEvent;->getSequenceNumber()I

    #@8
    move-result v2

    #@9
    .line 6196
    const-wide/16 v4, 0x8

    #@b
    invoke-static {v4, v5, v1, v2}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    #@e
    .line 6198
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    #@10
    if-eqz v1, :cond_0

    #@12
    .line 6199
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    #@14
    iget-object v2, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    #@16
    const/4 v3, 0x0

    #@17
    invoke-virtual {v1, v2, v3}, Landroid/view/InputEventConsistencyVerifier;->onInputEvent(Landroid/view/InputEvent;I)V

    #@1a
    .line 6203
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewRootImpl$QueuedInputEvent;->shouldSendToSynthesizer()Z

    #@1d
    move-result v1

    #@1e
    if-eqz v1, :cond_1

    #@20
    .line 6204
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSyntheticInputStage:Landroid/view/ViewRootImpl$InputStage;

    #@22
    .line 6209
    .local v0, "stage":Landroid/view/ViewRootImpl$InputStage;
    :goto_0
    if-eqz v0, :cond_3

    #@24
    .line 6210
    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl$InputStage;->deliver(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    #@27
    .line 6195
    :goto_1
    return-void

    #@28
    .line 6206
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
    .line 6212
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
    .line 5945
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@4
    iget-object v0, v1, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    #@6
    .line 5947
    .local v0, "hardwareRenderer":Landroid/view/ThreadedRenderer;
    if-eqz v0, :cond_1

    #@8
    .line 5948
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 5949
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@e
    invoke-virtual {v0, v1}, Landroid/view/ThreadedRenderer;->destroyHardwareResources(Landroid/view/View;)V

    #@11
    .line 5951
    :cond_0
    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->destroy()V

    #@14
    .line 5952
    invoke-virtual {v0, v3}, Landroid/view/ThreadedRenderer;->setRequested(Z)V

    #@17
    .line 5954
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@19
    iput-object v2, v1, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    #@1b
    .line 5955
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@1d
    iput-boolean v3, v1, Landroid/view/View$AttachInfo;->mHardwareAccelerated:Z

    #@1f
    .line 5944
    :cond_1
    return-void
.end method

.method private dipToPx(I)I
    .locals 3
    .param p1, "dip"    # I

    #@0
    .prologue
    .line 1432
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
    .line 1433
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
    .line 2660
    move-object/from16 v0, p0

    #@2
    iget-object v9, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    #@4
    .line 2661
    .local v9, "surface":Landroid/view/Surface;
    invoke-virtual {v9}, Landroid/view/Surface;->isValid()Z

    #@7
    move-result v2

    #@8
    if-nez v2, :cond_0

    #@a
    .line 2662
    return-void

    #@b
    .line 2669
    :cond_0
    sget-boolean v2, Landroid/view/ViewRootImpl;->sFirstDrawComplete:Z

    #@d
    if-nez v2, :cond_2

    #@f
    .line 2670
    sget-object v3, Landroid/view/ViewRootImpl;->sFirstDrawHandlers:Ljava/util/ArrayList;

    #@11
    monitor-enter v3

    #@12
    .line 2671
    const/4 v2, 0x1

    #@13
    :try_start_0
    sput-boolean v2, Landroid/view/ViewRootImpl;->sFirstDrawComplete:Z

    #@15
    .line 2672
    sget-object v2, Landroid/view/ViewRootImpl;->sFirstDrawHandlers:Ljava/util/ArrayList;

    #@17
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@1a
    move-result v19

    #@1b
    .line 2673
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
    .line 2674
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
    .line 2673
    add-int/lit8 v24, v24, 0x1

    #@36
    goto :goto_0

    #@37
    :cond_1
    monitor-exit v3

    #@38
    .line 2679
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
    .line 2681
    move-object/from16 v0, p0

    #@41
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@43
    iget-boolean v2, v2, Landroid/view/View$AttachInfo;->mViewScrollChanged:Z

    #@45
    if-eqz v2, :cond_3

    #@47
    .line 2682
    move-object/from16 v0, p0

    #@49
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@4b
    const/4 v3, 0x0

    #@4c
    iput-boolean v3, v2, Landroid/view/View$AttachInfo;->mViewScrollChanged:Z

    #@4e
    .line 2683
    move-object/from16 v0, p0

    #@50
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@52
    iget-object v2, v2, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    #@54
    invoke-virtual {v2}, Landroid/view/ViewTreeObserver;->dispatchOnScrollChanged()V

    #@57
    .line 2686
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
    .line 2688
    :goto_1
    if-eqz v16, :cond_7

    #@67
    .line 2689
    move-object/from16 v0, p0

    #@69
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    #@6b
    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    #@6e
    move-result v20

    #@6f
    .line 2693
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
    .line 2694
    move/from16 v0, v20

    #@79
    move-object/from16 v1, p0

    #@7b
    iput v0, v1, Landroid/view/ViewRootImpl;->mCurScrollY:I

    #@7d
    .line 2695
    const/16 p1, 0x1

    #@7f
    .line 2696
    .local p1, "fullRedrawNeeded":Z
    move-object/from16 v0, p0

    #@81
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@83
    instance-of v2, v2, Lcom/android/internal/view/RootViewSurfaceTaker;

    #@85
    if-eqz v2, :cond_4

    #@87
    .line 2697
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
    .line 2701
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
    .line 2702
    .local v17, "appScale":F
    move-object/from16 v0, p0

    #@9e
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@a0
    iget-boolean v13, v2, Landroid/view/View$AttachInfo;->mScalingRequired:Z

    #@a2
    .line 2704
    .local v13, "scalingRequired":Z
    const/16 v27, 0x0

    #@a4
    .line 2706
    .local v27, "resizeAlpha":I
    move-object/from16 v0, p0

    #@a6
    iget-object v14, v0, Landroid/view/ViewRootImpl;->mDirty:Landroid/graphics/Rect;

    #@a8
    .line 2707
    .local v14, "dirty":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    #@aa
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@ac
    if-eqz v2, :cond_8

    #@ae
    .line 2709
    invoke-virtual {v14}, Landroid/graphics/Rect;->setEmpty()V

    #@b1
    .line 2710
    if-eqz v16, :cond_5

    #@b3
    move-object/from16 v0, p0

    #@b5
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    #@b7
    if-eqz v2, :cond_5

    #@b9
    .line 2711
    move-object/from16 v0, p0

    #@bb
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    #@bd
    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    #@c0
    .line 2713
    :cond_5
    return-void

    #@c1
    .line 2670
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
    .line 2686
    :cond_6
    const/16 v16, 0x0

    #@c6
    .local v16, "animating":Z
    goto :goto_1

    #@c7
    .line 2691
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
    .line 2716
    .end local p1    # "fullRedrawNeeded":Z
    .restart local v13    # "scalingRequired":Z
    .restart local v14    # "dirty":Landroid/graphics/Rect;
    .restart local v17    # "appScale":F
    .restart local v27    # "resizeAlpha":I
    :cond_8
    if-eqz p1, :cond_9

    #@d0
    .line 2717
    move-object/from16 v0, p0

    #@d2
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@d4
    const/4 v3, 0x1

    #@d5
    iput-boolean v3, v2, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    #@d7
    .line 2718
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
    .line 2730
    :cond_9
    move-object/from16 v0, p0

    #@f4
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@f6
    iget-object v2, v2, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    #@f8
    invoke-virtual {v2}, Landroid/view/ViewTreeObserver;->dispatchOnDraw()V

    #@fb
    .line 2732
    move-object/from16 v0, p0

    #@fd
    iget v2, v0, Landroid/view/ViewRootImpl;->mCanvasOffsetX:I

    #@ff
    neg-int v11, v2

    #@100
    .line 2733
    .local v11, "xOffset":I
    move-object/from16 v0, p0

    #@102
    iget v2, v0, Landroid/view/ViewRootImpl;->mCanvasOffsetY:I

    #@104
    neg-int v2, v2

    #@105
    add-int v12, v2, v20

    #@107
    .line 2734
    .local v12, "yOffset":I
    move-object/from16 v0, p0

    #@109
    iget-object v0, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@10b
    move-object/from16 v26, v0

    #@10d
    .line 2735
    .local v26, "params":Landroid/view/WindowManager$LayoutParams;
    if-eqz v26, :cond_15

    #@10f
    move-object/from16 v0, v26

    #@111
    iget-object v7, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@113
    .line 2736
    .local v7, "surfaceInsets":Landroid/graphics/Rect;
    :goto_3
    if-eqz v7, :cond_a

    #@115
    .line 2737
    iget v2, v7, Landroid/graphics/Rect;->left:I

    #@117
    sub-int/2addr v11, v2

    #@118
    .line 2738
    iget v2, v7, Landroid/graphics/Rect;->top:I

    #@11a
    sub-int/2addr v12, v2

    #@11b
    .line 2741
    iget v2, v7, Landroid/graphics/Rect;->left:I

    #@11d
    iget v3, v7, Landroid/graphics/Rect;->right:I

    #@11f
    invoke-virtual {v14, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    #@122
    .line 2744
    :cond_a
    const/4 v15, 0x0

    #@123
    .line 2745
    .local v15, "accessibilityFocusDirty":Z
    move-object/from16 v0, p0

    #@125
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@127
    iget-object v0, v2, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    #@129
    move-object/from16 v21, v0

    #@12b
    .line 2746
    .local v21, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v21, :cond_c

    #@12d
    .line 2747
    move-object/from16 v0, p0

    #@12f
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@131
    iget-object v0, v2, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    #@133
    move-object/from16 v18, v0

    #@135
    .line 2748
    .local v18, "bounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    #@137
    move-object/from16 v1, v18

    #@139
    invoke-direct {v0, v1}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedRect(Landroid/graphics/Rect;)Z

    #@13c
    move-result v23

    #@13d
    .line 2749
    .local v23, "hasFocus":Z
    if-nez v23, :cond_b

    #@13f
    .line 2750
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->setEmpty()V

    #@142
    .line 2752
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
    .line 2753
    const/4 v15, 0x1

    #@14f
    .line 2757
    .end local v18    # "bounds":Landroid/graphics/Rect;
    .end local v23    # "hasFocus":Z
    :cond_c
    move-object/from16 v0, p0

    #@151
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@153
    .line 2758
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
    .line 2757
    iput-wide v4, v2, Landroid/view/View$AttachInfo;->mDrawingTime:J

    #@162
    .line 2760
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
    .line 2761
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
    .line 2763
    if-nez v15, :cond_16

    #@186
    move-object/from16 v0, p0

    #@188
    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mInvalidateRootRequested:Z

    #@18a
    move/from16 v25, v0

    #@18c
    .line 2764
    :goto_4
    const/4 v2, 0x0

    #@18d
    move-object/from16 v0, p0

    #@18f
    iput-boolean v2, v0, Landroid/view/ViewRootImpl;->mInvalidateRootRequested:Z

    #@191
    .line 2767
    const/4 v2, 0x0

    #@192
    move-object/from16 v0, p0

    #@194
    iput-boolean v2, v0, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    #@196
    .line 2769
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
    .line 2770
    :cond_e
    move-object/from16 v0, p0

    #@1a4
    iput v12, v0, Landroid/view/ViewRootImpl;->mHardwareYOffset:I

    #@1a6
    .line 2771
    move-object/from16 v0, p0

    #@1a8
    iput v11, v0, Landroid/view/ViewRootImpl;->mHardwareXOffset:I

    #@1aa
    .line 2772
    const/16 v25, 0x1

    #@1ac
    .line 2775
    :cond_f
    if-eqz v25, :cond_10

    #@1ae
    .line 2776
    move-object/from16 v0, p0

    #@1b0
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@1b2
    iget-object v2, v2, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    #@1b4
    invoke-virtual {v2}, Landroid/view/ThreadedRenderer;->invalidateRoot()V

    #@1b7
    .line 2779
    :cond_10
    invoke-virtual {v14}, Landroid/graphics/Rect;->setEmpty()V

    #@1ba
    .line 2783
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->updateContentDrawBounds()Z

    #@1bd
    move-result v28

    #@1be
    .line 2785
    .local v28, "updated":Z
    move-object/from16 v0, p0

    #@1c0
    iget-boolean v2, v0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    #@1c2
    if-eqz v2, :cond_11

    #@1c4
    .line 2789
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
    .line 2792
    :cond_11
    if-eqz v28, :cond_12

    #@1d0
    .line 2793
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->requestDrawWindow()V

    #@1d3
    .line 2796
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
    .line 2829
    .end local v28    # "updated":Z
    :cond_13
    if-eqz v16, :cond_14

    #@1e8
    .line 2830
    const/4 v2, 0x1

    #@1e9
    move-object/from16 v0, p0

    #@1eb
    iput-boolean v2, v0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    #@1ed
    .line 2831
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    #@1f0
    .line 2659
    :cond_14
    return-void

    #@1f1
    .line 2735
    .end local v7    # "surfaceInsets":Landroid/graphics/Rect;
    .end local v15    # "accessibilityFocusDirty":Z
    .end local v21    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_15
    const/4 v7, 0x0

    #@1f2
    goto/16 :goto_3

    #@1f4
    .line 2763
    .restart local v7    # "surfaceInsets":Landroid/graphics/Rect;
    .restart local v15    # "accessibilityFocusDirty":Z
    .restart local v21    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_16
    const/16 v25, 0x1

    #@1f6
    .local v25, "invalidateRoot":Z
    goto :goto_4

    #@1f7
    .line 2806
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
    .line 2807
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
    .line 2823
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
    .line 2824
    return-void

    #@218
    .line 2808
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
    .line 2806
    if-eqz v2, :cond_18

    #@224
    .line 2811
    :try_start_1
    move-object/from16 v0, p0

    #@226
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@228
    iget-object v2, v2, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    #@22a
    .line 2812
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
    .line 2811
    invoke-virtual/range {v2 .. v7}, Landroid/view/ThreadedRenderer;->initializeIfNeeded(IILandroid/view/View$AttachInfo;Landroid/view/Surface;Landroid/graphics/Rect;)Z
    :try_end_1
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1 .. :try_end_1} :catch_0

    #@23d
    .line 2818
    const/4 v2, 0x1

    #@23e
    move-object/from16 v0, p0

    #@240
    iput-boolean v2, v0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    #@242
    .line 2819
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    #@245
    .line 2820
    return-void

    #@246
    .line 2813
    :catch_0
    move-exception v22

    #@247
    .line 2814
    .local v22, "e":Landroid/view/Surface$OutOfResourcesException;
    move-object/from16 v0, p0

    #@249
    move-object/from16 v1, v22

    #@24b
    invoke-direct {v0, v1}, Landroid/view/ViewRootImpl;->handleOutOfResourcesException(Landroid/view/Surface$OutOfResourcesException;)V

    #@24e
    .line 2815
    return-void
.end method

.method private drawAccessibilityFocusedDrawableIfNeeded(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2946
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@3
    iget-object v0, v2, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    #@5
    .line 2947
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-direct {p0, v0}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedRect(Landroid/graphics/Rect;)Z

    #@8
    move-result v2

    #@9
    if-eqz v2, :cond_1

    #@b
    .line 2948
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedDrawable()Landroid/graphics/drawable/Drawable;

    #@e
    move-result-object v1

    #@f
    .line 2949
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    #@11
    .line 2950
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    #@14
    .line 2951
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@17
    .line 2945
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-void

    #@18
    .line 2953
    :cond_1
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@1a
    iget-object v2, v2, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    #@1c
    if-eqz v2, :cond_0

    #@1e
    .line 2954
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
    .line 2844
    :try_start_0
    iget v4, p6, Landroid/graphics/Rect;->left:I

    #@2
    .line 2845
    .local v4, "left":I
    iget v6, p6, Landroid/graphics/Rect;->top:I

    #@4
    .line 2846
    .local v6, "top":I
    iget v5, p6, Landroid/graphics/Rect;->right:I

    #@6
    .line 2847
    .local v5, "right":I
    iget v0, p6, Landroid/graphics/Rect;->bottom:I

    #@8
    .line 2849
    .local v0, "bottom":I
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    #@a
    invoke-virtual {v7, p6}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    #@d
    move-result-object v1

    #@e
    .line 2853
    .local v1, "canvas":Landroid/graphics/Canvas;
    iget v7, p6, Landroid/graphics/Rect;->left:I

    #@10
    if-ne v4, v7, :cond_0

    #@12
    iget v7, p6, Landroid/graphics/Rect;->top:I

    #@14
    if-eq v6, v7, :cond_6

    #@16
    .line 2855
    :cond_0
    :goto_0
    const/4 v7, 0x1

    #@17
    iput-boolean v7, p2, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    #@19
    .line 2859
    :cond_1
    iget v7, p0, Landroid/view/ViewRootImpl;->mDensity:I

    #@1b
    invoke-virtual {v1, v7}, Landroid/graphics/Canvas;->setDensity(I)V
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@1e
    .line 2887
    :try_start_1
    invoke-virtual {v1}, Landroid/graphics/Canvas;->isOpaque()Z

    #@21
    move-result v7

    #@22
    if-eqz v7, :cond_2

    #@24
    if-eqz p4, :cond_7

    #@26
    .line 2888
    :cond_2
    :goto_1
    sget-object v7, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    #@28
    const/4 v8, 0x0

    #@29
    invoke-virtual {v1, v8, v7}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    #@2c
    .line 2891
    :cond_3
    invoke-virtual {p6}, Landroid/graphics/Rect;->setEmpty()V

    #@2f
    .line 2892
    const/4 v7, 0x0

    #@30
    iput-boolean v7, p0, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    #@32
    .line 2893
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
    .line 2902
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
    .line 2903
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@43
    if-eqz v7, :cond_4

    #@45
    .line 2904
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@47
    invoke-virtual {v7, v1}, Landroid/content/res/CompatibilityInfo$Translator;->translateCanvas(Landroid/graphics/Canvas;)V

    #@4a
    .line 2906
    :cond_4
    if-eqz p5, :cond_8

    #@4c
    iget v7, p0, Landroid/view/ViewRootImpl;->mNoncompatDensity:I

    #@4e
    :goto_2
    invoke-virtual {v1, v7}, Landroid/graphics/Canvas;->setScreenDensity(I)V

    #@51
    .line 2907
    const/4 v7, 0x0

    #@52
    iput-boolean v7, p2, Landroid/view/View$AttachInfo;->mSetIgnoreDirtyState:Z

    #@54
    .line 2909
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@56
    invoke-virtual {v7, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    #@59
    .line 2911
    invoke-direct {p0, v1}, Landroid/view/ViewRootImpl;->drawAccessibilityFocusedDrawableIfNeeded(Landroid/graphics/Canvas;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@5c
    .line 2913
    :try_start_3
    iget-boolean v7, p2, Landroid/view/View$AttachInfo;->mSetIgnoreDirtyState:Z

    #@5e
    if-nez v7, :cond_5

    #@60
    .line 2915
    const/4 v7, 0x0

    #@61
    iput-boolean v7, p2, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@63
    .line 2920
    :cond_5
    :try_start_4
    invoke-virtual {p1, v1}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2

    #@66
    .line 2932
    const/4 v7, 0x1

    #@67
    return v7

    #@68
    .line 2853
    :cond_6
    :try_start_5
    iget v7, p6, Landroid/graphics/Rect;->right:I

    #@6a
    if-ne v5, v7, :cond_0

    #@6c
    .line 2854
    iget v7, p6, Landroid/graphics/Rect;->bottom:I
    :try_end_5
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_0

    #@6e
    if-eq v0, v7, :cond_1

    #@70
    goto :goto_0

    #@71
    .line 2863
    .end local v0    # "bottom":I
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v4    # "left":I
    .end local v5    # "right":I
    .end local v6    # "top":I
    :catch_0
    move-exception v3

    #@72
    .line 2864
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    #@74
    const-string/jumbo v8, "Could not lock surface"

    #@77
    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@7a
    .line 2868
    const/4 v7, 0x1

    #@7b
    iput-boolean v7, p0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    #@7d
    .line 2869
    const/4 v7, 0x0

    #@7e
    return v7

    #@7f
    .line 2860
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v2

    #@80
    .line 2861
    .local v2, "e":Landroid/view/Surface$OutOfResourcesException;
    invoke-direct {p0, v2}, Landroid/view/ViewRootImpl;->handleOutOfResourcesException(Landroid/view/Surface$OutOfResourcesException;)V

    #@83
    .line 2862
    const/4 v7, 0x0

    #@84
    return v7

    #@85
    .line 2887
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
    .line 2906
    :cond_8
    const/4 v7, 0x0

    #@89
    goto :goto_2

    #@8a
    .line 2912
    :catchall_0
    move-exception v7

    #@8b
    .line 2913
    :try_start_6
    iget-boolean v8, p2, Landroid/view/View$AttachInfo;->mSetIgnoreDirtyState:Z

    #@8d
    if-nez v8, :cond_9

    #@8f
    .line 2915
    const/4 v8, 0x0

    #@90
    iput-boolean v8, p2, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    #@92
    .line 2912
    :cond_9
    throw v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@93
    .line 2918
    :catchall_1
    move-exception v7

    #@94
    .line 2920
    :try_start_7
    invoke-virtual {p1, v1}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_3

    #@97
    .line 2918
    throw v7

    #@98
    .line 2921
    :catch_2
    move-exception v3

    #@99
    .line 2922
    .restart local v3    # "e":Ljava/lang/IllegalArgumentException;
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    #@9b
    const-string/jumbo v8, "Could not unlock surface"

    #@9e
    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@a1
    .line 2923
    const/4 v7, 0x1

    #@a2
    iput-boolean v7, p0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    #@a4
    .line 2925
    const/4 v7, 0x0

    #@a5
    return v7

    #@a6
    .line 2921
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v3

    #@a7
    .line 2922
    .restart local v3    # "e":Ljava/lang/IllegalArgumentException;
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    #@a9
    const-string/jumbo v8, "Could not unlock surface"

    #@ac
    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@af
    .line 2923
    const/4 v7, 0x1

    #@b0
    iput-boolean v7, p0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    #@b2
    .line 2925
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
    .line 5806
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3
    .line 5807
    if-nez p3, :cond_0

    #@5
    .line 5808
    const-string/jumbo v3, "null"

    #@8
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@b
    .line 5809
    return-void

    #@c
    .line 5811
    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->toString()Ljava/lang/String;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@13
    .line 5812
    instance-of v3, p3, Landroid/view/ViewGroup;

    #@15
    if-nez v3, :cond_1

    #@17
    .line 5813
    return-void

    #@18
    :cond_1
    move-object v1, p3

    #@19
    .line 5815
    check-cast v1, Landroid/view/ViewGroup;

    #@1b
    .line 5816
    .local v1, "grp":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    #@1e
    move-result v0

    #@1f
    .line 5817
    .local v0, "N":I
    if-gtz v0, :cond_2

    #@21
    .line 5818
    return-void

    #@22
    .line 5820
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
    .line 5821
    const/4 v2, 0x0

    #@37
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    #@39
    .line 5822
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@3c
    move-result-object v3

    #@3d
    invoke-direct {p0, p1, p2, v3}, Landroid/view/ViewRootImpl;->dumpViewHierarchy(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V

    #@40
    .line 5821
    add-int/lit8 v2, v2, 0x1

    #@42
    goto :goto_0

    #@43
    .line 5805
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
    .line 826
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@4
    iput-boolean v2, v7, Landroid/view/View$AttachInfo;->mHardwareAccelerated:Z

    #@6
    .line 827
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@8
    iput-boolean v2, v7, Landroid/view/View$AttachInfo;->mHardwareAccelerationRequested:Z

    #@a
    .line 830
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@c
    if-eqz v7, :cond_0

    #@e
    return-void

    #@f
    .line 834
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
    .line 836
    .local v2, "hardwareAccelerated":Z
    :cond_1
    if-eqz v2, :cond_3

    #@19
    .line 837
    invoke-static {}, Landroid/view/ThreadedRenderer;->isAvailable()Z

    #@1c
    move-result v7

    #@1d
    if-nez v7, :cond_2

    #@1f
    .line 838
    return-void

    #@20
    .line 850
    :cond_2
    iget v7, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@22
    and-int/lit8 v7, v7, 0x1

    #@24
    if-eqz v7, :cond_4

    #@26
    const/4 v0, 0x1

    #@27
    .line 852
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
    .line 855
    .local v1, "forceHwAccelerated":Z
    :goto_1
    if-eqz v0, :cond_6

    #@30
    .line 859
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@32
    iput-boolean v6, v7, Landroid/view/View$AttachInfo;->mHardwareAccelerationRequested:Z

    #@34
    .line 825
    .end local v0    # "fakeHwAccelerated":Z
    .end local v1    # "forceHwAccelerated":Z
    :cond_3
    :goto_2
    return-void

    #@35
    .line 850
    :cond_4
    const/4 v0, 0x0

    #@36
    .restart local v0    # "fakeHwAccelerated":Z
    goto :goto_0

    #@37
    .line 852
    :cond_5
    const/4 v1, 0x0

    #@38
    .restart local v1    # "forceHwAccelerated":Z
    goto :goto_1

    #@39
    .line 860
    :cond_6
    sget-boolean v7, Landroid/view/ThreadedRenderer;->sRendererDisabled:Z

    #@3b
    if-eqz v7, :cond_7

    #@3d
    .line 861
    sget-boolean v7, Landroid/view/ThreadedRenderer;->sSystemRendererDisabled:Z

    #@3f
    if-eqz v7, :cond_3

    #@41
    .line 860
    if-eqz v1, :cond_3

    #@43
    .line 862
    :cond_7
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@45
    iget-object v7, v7, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    #@47
    if-eqz v7, :cond_8

    #@49
    .line 863
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@4b
    iget-object v7, v7, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    #@4d
    invoke-virtual {v7}, Landroid/view/ThreadedRenderer;->destroy()V

    #@50
    .line 866
    :cond_8
    iget-object v4, p1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@52
    .line 867
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
    .line 869
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
    .line 870
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
    .line 871
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@6d
    iget-object v7, v7, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    #@6f
    if-eqz v7, :cond_3

    #@71
    .line 872
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
    .line 873
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@82
    .line 874
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@84
    iput-boolean v6, v8, Landroid/view/View$AttachInfo;->mHardwareAccelerationRequested:Z

    #@86
    .line 873
    iput-boolean v6, v7, Landroid/view/View$AttachInfo;->mHardwareAccelerated:Z

    #@88
    goto :goto_2

    #@89
    .line 868
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
    .line 869
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
    .line 7194
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mDragResizing:Z

    #@3
    if-eqz v1, :cond_1

    #@5
    .line 7195
    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mDragResizing:Z

    #@7
    .line 7196
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
    .line 7197
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
    .line 7196
    add-int/lit8 v0, v0, -0x1

    #@1e
    goto :goto_0

    #@1f
    .line 7199
    :cond_0
    const/4 v1, 0x1

    #@20
    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    #@22
    .line 7193
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private ensureTouchModeLocally(Z)Z
    .locals 1
    .param p1, "inTouchMode"    # Z

    #@0
    .prologue
    .line 3737
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
    .line 3739
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@a
    iput-boolean p1, v0, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    #@c
    .line 3740
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@e
    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    #@10
    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver;->dispatchOnTouchModeChanged(Z)V

    #@13
    .line 3742
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
    .line 3746
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
    .line 3750
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@11
    invoke-virtual {v2}, Landroid/view/View;->findFocus()Landroid/view/View;

    #@14
    move-result-object v1

    #@15
    .line 3751
    .local v1, "focused":Landroid/view/View;
    if-eqz v1, :cond_0

    #@17
    invoke-virtual {v1}, Landroid/view/View;->isFocusableInTouchMode()Z

    #@1a
    move-result v2

    #@1b
    if-eqz v2, :cond_1

    #@1d
    .line 3766
    .end local v1    # "focused":Landroid/view/View;
    :cond_0
    return v4

    #@1e
    .line 3752
    .restart local v1    # "focused":Landroid/view/View;
    :cond_1
    invoke-static {v1}, Landroid/view/ViewRootImpl;->findAncestorToTakeFocusInTouchMode(Landroid/view/View;)Landroid/view/ViewGroup;

    #@21
    move-result-object v0

    #@22
    .line 3753
    .local v0, "ancestorToTakeFocus":Landroid/view/ViewGroup;
    if-eqz v0, :cond_2

    #@24
    .line 3757
    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestFocus()Z

    #@27
    move-result v2

    #@28
    return v2

    #@29
    .line 3761
    :cond_2
    invoke-virtual {v1, v3, v5, v4}, Landroid/view/View;->clearFocusInternal(Landroid/view/View;ZZ)V

    #@2c
    .line 3762
    return v5
.end method

.method private static findAncestorToTakeFocusInTouchMode(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 5
    .param p0, "focused"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 3776
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@4
    move-result-object v0

    #@5
    .line 3777
    .local v0, "parent":Landroid/view/ViewParent;
    :goto_0
    instance-of v2, v0, Landroid/view/ViewGroup;

    #@7
    if-eqz v2, :cond_2

    #@9
    move-object v1, v0

    #@a
    .line 3778
    check-cast v1, Landroid/view/ViewGroup;

    #@c
    .line 3779
    .local v1, "vgParent":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    #@f
    move-result v2

    #@10
    const/high16 v3, 0x40000

    #@12
    if-ne v2, v3, :cond_0

    #@14
    .line 3780
    invoke-virtual {v1}, Landroid/view/ViewGroup;->isFocusableInTouchMode()Z

    #@17
    move-result v2

    #@18
    .line 3779
    if-eqz v2, :cond_0

    #@1a
    .line 3781
    return-object v1

    #@1b
    .line 3783
    :cond_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->isRootNamespace()Z

    #@1e
    move-result v2

    #@1f
    if-eqz v2, :cond_1

    #@21
    .line 3784
    return-object v4

    #@22
    .line 3786
    :cond_1
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    #@25
    move-result-object v0

    #@26
    goto :goto_0

    #@27
    .line 3789
    .end local v1    # "vgParent":Landroid/view/ViewGroup;
    :cond_2
    return-object v4
.end method

.method private finishInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .locals 6
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@0
    .prologue
    .line 6217
    const-string/jumbo v1, "deliverInputEvent"

    #@3
    .line 6218
    iget-object v2, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    #@5
    invoke-virtual {v2}, Landroid/view/InputEvent;->getSequenceNumber()I

    #@8
    move-result v2

    #@9
    .line 6217
    const-wide/16 v4, 0x8

    #@b
    invoke-static {v4, v5, v1, v2}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    #@e
    .line 6220
    iget-object v1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mReceiver:Landroid/view/InputEventReceiver;

    #@10
    if-eqz v1, :cond_1

    #@12
    .line 6221
    iget v1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    #@14
    and-int/lit8 v1, v1, 0x8

    #@16
    if-eqz v1, :cond_0

    #@18
    const/4 v0, 0x1

    #@19
    .line 6222
    .local v0, "handled":Z
    :goto_0
    iget-object v1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mReceiver:Landroid/view/InputEventReceiver;

    #@1b
    iget-object v2, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    #@1d
    invoke-virtual {v1, v2, v0}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    #@20
    .line 6227
    .end local v0    # "handled":Z
    :goto_1
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->recycleQueuedInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    #@23
    .line 6216
    return-void

    #@24
    .line 6221
    :cond_0
    const/4 v0, 0x0

    #@25
    .restart local v0    # "handled":Z
    goto :goto_0

    #@26
    .line 6224
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
    .line 3355
    invoke-virtual {p0}, Landroid/view/View;->forceLayout()V

    #@3
    .line 3356
    instance-of v3, p0, Landroid/view/ViewGroup;

    #@5
    if-eqz v3, :cond_0

    #@7
    move-object v1, p0

    #@8
    .line 3357
    check-cast v1, Landroid/view/ViewGroup;

    #@a
    .line 3358
    .local v1, "group":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    #@d
    move-result v0

    #@e
    .line 3359
    .local v0, "count":I
    const/4 v2, 0x0

    #@f
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    #@11
    .line 3360
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@14
    move-result-object v3

    #@15
    invoke-static {v3}, Landroid/view/ViewRootImpl;->forceLayout(Landroid/view/View;)V

    #@18
    .line 3359
    add-int/lit8 v2, v2, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 3354
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
    .line 2992
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@2
    iget-object v2, v2, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    #@4
    if-nez v2, :cond_0

    #@6
    .line 2993
    new-instance v1, Landroid/util/TypedValue;

    #@8
    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    #@b
    .line 2994
    .local v1, "value":Landroid/util/TypedValue;
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@d
    iget-object v2, v2, Landroid/view/View;->mContext:Landroid/content/Context;

    #@f
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@12
    move-result-object v2

    #@13
    .line 2995
    const v3, 0x116002f

    #@16
    const/4 v4, 0x1

    #@17
    .line 2994
    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    #@1a
    move-result v0

    #@1b
    .line 2996
    .local v0, "resolved":Z
    if-eqz v0, :cond_0

    #@1d
    .line 2997
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@1f
    .line 2998
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
    .line 2997
    iput-object v3, v2, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    #@2b
    .line 3001
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
    .line 2959
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@4
    iget-object v6, v6, Landroid/view/View;->mContext:Landroid/content/Context;

    #@6
    invoke-static {v6}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    #@9
    move-result-object v2

    #@a
    .line 2960
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
    .line 2964
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    #@18
    .line 2965
    .local v1, "host":Landroid/view/View;
    if-eqz v1, :cond_0

    #@1a
    iget-object v6, v1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@1c
    if-nez v6, :cond_2

    #@1e
    .line 2966
    :cond_0
    return v4

    #@1f
    .line 2961
    .end local v1    # "host":Landroid/view/View;
    :cond_1
    return v4

    #@20
    .line 2969
    .restart local v1    # "host":Landroid/view/View;
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    #@23
    move-result-object v3

    #@24
    .line 2970
    .local v3, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-nez v3, :cond_4

    #@26
    .line 2971
    invoke-virtual {v1, p1, v5}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;Z)V

    #@29
    .line 2979
    :goto_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@2b
    .line 2980
    .local v0, "attachInfo":Landroid/view/View$AttachInfo;
    iget-object v6, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    #@2d
    iget v6, v6, Landroid/view/ViewRootImpl;->mScrollY:I

    #@2f
    invoke-virtual {p1, v4, v6}, Landroid/graphics/Rect;->offset(II)V

    #@32
    .line 2981
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
    .line 2982
    iget-object v6, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    #@3d
    iget v6, v6, Landroid/view/ViewRootImpl;->mWidth:I

    #@3f
    .line 2983
    iget-object v7, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    #@41
    iget v7, v7, Landroid/view/ViewRootImpl;->mHeight:I

    #@43
    .line 2982
    invoke-virtual {p1, v4, v4, v6, v7}, Landroid/graphics/Rect;->intersect(IIII)Z

    #@46
    move-result v6

    #@47
    if-nez v6, :cond_3

    #@49
    .line 2985
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    #@4c
    .line 2987
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
    .line 2972
    .end local v0    # "attachInfo":Landroid/view/View$AttachInfo;
    :cond_4
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    #@55
    if-eqz v6, :cond_5

    #@57
    .line 2973
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    #@59
    invoke-virtual {v6, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    #@5c
    goto :goto_0

    #@5d
    .line 2975
    :cond_5
    return v4

    #@5e
    .restart local v0    # "attachInfo":Landroid/view/View$AttachInfo;
    :cond_6
    move v4, v5

    #@5f
    .line 2987
    goto :goto_1
.end method

.method private getAudioManager()Landroid/media/AudioManager;
    .locals 2

    #@0
    .prologue
    .line 5640
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 5641
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "getAudioManager called when there is no mView"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 5643
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAudioManager:Landroid/media/AudioManager;

    #@f
    if-nez v0, :cond_1

    #@11
    .line 5644
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
    .line 5646
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
    .line 6821
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mTempHashSet:Ljava/util/HashSet;

    #@3
    if-nez v5, :cond_0

    #@5
    .line 6822
    new-instance v5, Ljava/util/HashSet;

    #@7
    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    #@a
    iput-object v5, p0, Landroid/view/ViewRootImpl;->mTempHashSet:Ljava/util/HashSet;

    #@c
    .line 6824
    :cond_0
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mTempHashSet:Ljava/util/HashSet;

    #@e
    .line 6825
    .local v4, "seen":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/view/View;>;"
    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    #@11
    .line 6826
    move-object v0, p1

    #@12
    .line 6827
    :goto_0
    if-eqz v0, :cond_2

    #@14
    .line 6828
    invoke-virtual {v4, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@17
    .line 6829
    iget-object v1, v0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    #@19
    .line 6830
    .local v1, "firstCurrentParent":Landroid/view/ViewParent;
    instance-of v5, v1, Landroid/view/View;

    #@1b
    if-eqz v5, :cond_1

    #@1d
    move-object v0, v1

    #@1e
    .line 6831
    check-cast v0, Landroid/view/View;

    #@20
    .local v0, "firstCurrent":Landroid/view/View;
    goto :goto_0

    #@21
    .line 6833
    .end local v0    # "firstCurrent":Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    #@22
    .local v0, "firstCurrent":Landroid/view/View;
    goto :goto_0

    #@23
    .line 6836
    .end local v0    # "firstCurrent":Landroid/view/View;
    .end local v1    # "firstCurrentParent":Landroid/view/ViewParent;
    :cond_2
    move-object v2, p2

    #@24
    .line 6837
    :goto_1
    if-eqz v2, :cond_5

    #@26
    .line 6838
    invoke-virtual {v4, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@29
    move-result v5

    #@2a
    if-eqz v5, :cond_3

    #@2c
    .line 6839
    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    #@2f
    .line 6840
    return-object v2

    #@30
    .line 6842
    :cond_3
    iget-object v3, v2, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    #@32
    .line 6843
    .local v3, "secondCurrentParent":Landroid/view/ViewParent;
    instance-of v5, v3, Landroid/view/View;

    #@34
    if-eqz v5, :cond_4

    #@36
    move-object v2, v3

    #@37
    .line 6844
    check-cast v2, Landroid/view/View;

    #@39
    .local v2, "secondCurrent":Landroid/view/View;
    goto :goto_1

    #@3a
    .line 6846
    .end local v2    # "secondCurrent":Landroid/view/View;
    :cond_4
    const/4 v2, 0x0

    #@3b
    .local v2, "secondCurrent":Landroid/view/View;
    goto :goto_1

    #@3c
    .line 6849
    .end local v2    # "secondCurrent":Landroid/view/View;
    .end local v3    # "secondCurrentParent":Landroid/view/ViewParent;
    :cond_5
    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    #@3f
    .line 6850
    return-object v6
.end method

.method private static getGfxInfo(Landroid/view/View;[I)V
    .locals 7
    .param p0, "view"    # Landroid/view/View;
    .param p1, "info"    # [I

    #@0
    .prologue
    .line 5834
    iget-object v3, p0, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    #@2
    .line 5835
    .local v3, "renderNode":Landroid/view/RenderNode;
    const/4 v4, 0x0

    #@3
    aget v5, p1, v4

    #@5
    add-int/lit8 v5, v5, 0x1

    #@7
    aput v5, p1, v4

    #@9
    .line 5836
    if-eqz v3, :cond_0

    #@b
    .line 5837
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
    .line 5840
    :cond_0
    instance-of v4, p0, Landroid/view/ViewGroup;

    #@17
    if-eqz v4, :cond_1

    #@19
    move-object v1, p0

    #@1a
    .line 5841
    check-cast v1, Landroid/view/ViewGroup;

    #@1c
    .line 5843
    .local v1, "group":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    #@1f
    move-result v0

    #@20
    .line 5844
    .local v0, "count":I
    const/4 v2, 0x0

    #@21
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    #@23
    .line 5845
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@26
    move-result-object v4

    #@27
    invoke-static {v4, p1}, Landroid/view/ViewRootImpl;->getGfxInfo(Landroid/view/View;[I)V

    #@2a
    .line 5844
    add-int/lit8 v2, v2, 0x1

    #@2c
    goto :goto_0

    #@2d
    .line 5833
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
    .line 1293
    const/4 v0, 0x0

    #@1
    .line 1295
    .local v0, "vis":I
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@3
    const/high16 v2, 0x4000000

    #@5
    and-int/2addr v1, v2

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 1296
    const/16 v0, 0x500

    #@a
    .line 1298
    :cond_0
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@c
    const/high16 v2, 0x8000000

    #@e
    and-int/2addr v1, v2

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 1299
    or-int/lit16 v0, v0, 0x300

    #@13
    .line 1301
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
    .line 2493
    packed-switch p1, :pswitch_data_0

    #@5
    .line 2505
    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@8
    move-result v0

    #@9
    .line 2508
    .local v0, "measureSpec":I
    :goto_0
    return v0

    #@a
    .line 2497
    .end local v0    # "measureSpec":I
    :pswitch_0
    invoke-static {p0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@d
    move-result v0

    #@e
    .restart local v0    # "measureSpec":I
    goto :goto_0

    #@f
    .line 2501
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
    .line 2493
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
    .line 7166
    sget-object v1, Landroid/view/ViewRootImpl;->sRunQueues:Ljava/lang/ThreadLocal;

    #@2
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/view/HandlerActionQueue;

    #@8
    .line 7167
    .local v0, "rq":Landroid/view/HandlerActionQueue;
    if-eqz v0, :cond_0

    #@a
    .line 7168
    return-object v0

    #@b
    .line 7170
    :cond_0
    new-instance v0, Landroid/view/HandlerActionQueue;

    #@d
    .end local v0    # "rq":Landroid/view/HandlerActionQueue;
    invoke-direct {v0}, Landroid/view/HandlerActionQueue;-><init>()V

    #@10
    .line 7171
    .restart local v0    # "rq":Landroid/view/HandlerActionQueue;
    sget-object v1, Landroid/view/ViewRootImpl;->sRunQueues:Ljava/lang/ThreadLocal;

    #@12
    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    #@15
    .line 7172
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
    .line 2416
    .local p1, "layoutRequesters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@3
    move-result v2

    #@4
    .line 2417
    .local v2, "numViewsRequestingLayout":I
    const/4 v4, 0x0

    #@5
    .line 2418
    .local v4, "validLayoutRequesters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v1, 0x0

    #@6
    .end local v4    # "validLayoutRequesters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_6

    #@8
    .line 2419
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@b
    move-result-object v5

    #@c
    check-cast v5, Landroid/view/View;

    #@e
    .line 2420
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
    .line 2421
    if-nez p2, :cond_0

    #@1a
    iget v6, v5, Landroid/view/View;->mPrivateFlags:I

    #@1c
    and-int/lit16 v6, v6, 0x1000

    #@1e
    .line 2422
    const/16 v7, 0x1000

    #@20
    .line 2421
    if-ne v6, v7, :cond_3

    #@22
    .line 2423
    :cond_0
    const/4 v0, 0x0

    #@23
    .line 2424
    .local v0, "gone":Z
    move-object v3, v5

    #@24
    .line 2426
    :goto_1
    if-eqz v3, :cond_1

    #@26
    .line 2427
    iget v6, v3, Landroid/view/View;->mViewFlags:I

    #@28
    and-int/lit8 v6, v6, 0xc

    #@2a
    const/16 v7, 0x8

    #@2c
    if-ne v6, v7, :cond_4

    #@2e
    .line 2428
    const/4 v0, 0x1

    #@2f
    .line 2437
    :cond_1
    if-nez v0, :cond_3

    #@31
    .line 2438
    if-nez v4, :cond_2

    #@33
    .line 2439
    new-instance v4, Ljava/util/ArrayList;

    #@35
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@38
    .line 2441
    :cond_2
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@3b
    .line 2418
    .end local v0    # "gone":Z
    :cond_3
    add-int/lit8 v1, v1, 0x1

    #@3d
    goto :goto_0

    #@3e
    .line 2431
    .restart local v0    # "gone":Z
    :cond_4
    iget-object v6, v3, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    #@40
    instance-of v6, v6, Landroid/view/View;

    #@42
    if-eqz v6, :cond_5

    #@44
    .line 2432
    iget-object v3, v3, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    #@46
    check-cast v3, Landroid/view/View;

    #@48
    .local v3, "parent":Landroid/view/View;
    goto :goto_1

    #@49
    .line 2434
    .end local v3    # "parent":Landroid/view/View;
    :cond_5
    const/4 v3, 0x0

    #@4a
    .local v3, "parent":Landroid/view/View;
    goto :goto_1

    #@4b
    .line 2445
    .end local v0    # "gone":Z
    .end local v3    # "parent":Landroid/view/View;
    .end local v5    # "view":Landroid/view/View;
    :cond_6
    if-nez p2, :cond_9

    #@4d
    .line 2447
    const/4 v1, 0x0

    #@4e
    :goto_2
    if-ge v1, v2, :cond_9

    #@50
    .line 2448
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@53
    move-result-object v5

    #@54
    check-cast v5, Landroid/view/View;

    #@56
    .line 2449
    :goto_3
    if-eqz v5, :cond_8

    #@58
    .line 2450
    iget v6, v5, Landroid/view/View;->mPrivateFlags:I

    #@5a
    and-int/lit16 v6, v6, 0x1000

    #@5c
    if-eqz v6, :cond_8

    #@5e
    .line 2451
    iget v6, v5, Landroid/view/View;->mPrivateFlags:I

    #@60
    and-int/lit16 v6, v6, -0x1001

    #@62
    iput v6, v5, Landroid/view/View;->mPrivateFlags:I

    #@64
    .line 2452
    iget-object v6, v5, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    #@66
    instance-of v6, v6, Landroid/view/View;

    #@68
    if-eqz v6, :cond_7

    #@6a
    .line 2453
    iget-object v5, v5, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    #@6c
    check-cast v5, Landroid/view/View;

    #@6e
    .restart local v5    # "view":Landroid/view/View;
    goto :goto_3

    #@6f
    .line 2455
    .end local v5    # "view":Landroid/view/View;
    :cond_7
    const/4 v5, 0x0

    #@70
    .local v5, "view":Landroid/view/View;
    goto :goto_3

    #@71
    .line 2447
    .end local v5    # "view":Landroid/view/View;
    :cond_8
    add-int/lit8 v1, v1, 0x1

    #@73
    goto :goto_2

    #@74
    .line 2460
    :cond_9
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    #@77
    .line 2461
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
    .line 5507
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@4
    if-eqz v4, :cond_0

    #@6
    iget-boolean v4, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    #@8
    if-eqz v4, :cond_0

    #@a
    .line 5508
    iget v3, p1, Landroid/view/DragEvent;->mAction:I

    #@c
    .line 5510
    .local v3, "what":I
    const/4 v4, 0x6

    #@d
    if-ne v3, v4, :cond_1

    #@f
    .line 5515
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@11
    invoke-virtual {v4, p1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    #@14
    .line 5583
    .end local v3    # "what":I
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/view/DragEvent;->recycle()V

    #@17
    .line 5503
    return-void

    #@18
    .line 5519
    .restart local v3    # "what":I
    :cond_1
    const/4 v4, 0x1

    #@19
    if-ne v3, v4, :cond_9

    #@1b
    .line 5520
    iput-object v7, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    #@1d
    .line 5521
    iget-object v4, p1, Landroid/view/DragEvent;->mClipDescription:Landroid/content/ClipDescription;

    #@1f
    iput-object v4, p0, Landroid/view/ViewRootImpl;->mDragDescription:Landroid/content/ClipDescription;

    #@21
    .line 5527
    :goto_1
    const/4 v4, 0x2

    #@22
    if-eq v3, v4, :cond_2

    #@24
    if-ne v3, v8, :cond_5

    #@26
    .line 5528
    :cond_2
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mDragPoint:Landroid/graphics/PointF;

    #@28
    iget v5, p1, Landroid/view/DragEvent;->mX:F

    #@2a
    iget v6, p1, Landroid/view/DragEvent;->mY:F

    #@2c
    invoke-virtual {v4, v5, v6}, Landroid/graphics/PointF;->set(FF)V

    #@2f
    .line 5529
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@31
    if-eqz v4, :cond_3

    #@33
    .line 5530
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@35
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mDragPoint:Landroid/graphics/PointF;

    #@37
    invoke-virtual {v4, v5}, Landroid/content/res/CompatibilityInfo$Translator;->translatePointInScreenToAppWindow(Landroid/graphics/PointF;)V

    #@3a
    .line 5533
    :cond_3
    iget v4, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    #@3c
    if-eqz v4, :cond_4

    #@3e
    .line 5534
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
    .line 5537
    :cond_4
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mDragPoint:Landroid/graphics/PointF;

    #@49
    iget v4, v4, Landroid/graphics/PointF;->x:F

    #@4b
    iput v4, p1, Landroid/view/DragEvent;->mX:F

    #@4d
    .line 5538
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mDragPoint:Landroid/graphics/PointF;

    #@4f
    iget v4, v4, Landroid/graphics/PointF;->y:F

    #@51
    iput v4, p1, Landroid/view/DragEvent;->mY:F

    #@53
    .line 5542
    :cond_5
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    #@55
    .line 5545
    .local v1, "prevDragView":Landroid/view/View;
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@57
    invoke-virtual {v4, p1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    #@5a
    move-result v2

    #@5b
    .line 5548
    .local v2, "result":Z
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    #@5d
    if-eq v1, v4, :cond_7

    #@5f
    .line 5550
    if-eqz v1, :cond_6

    #@61
    .line 5551
    :try_start_0
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    #@63
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    #@65
    invoke-interface {v4, v5}, Landroid/view/IWindowSession;->dragRecipientExited(Landroid/view/IWindow;)V

    #@68
    .line 5553
    :cond_6
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    #@6a
    if-eqz v4, :cond_7

    #@6c
    .line 5554
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    #@6e
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    #@70
    invoke-interface {v4, v5}, Landroid/view/IWindowSession;->dragRecipientEntered(Landroid/view/IWindow;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@73
    .line 5562
    :cond_7
    :goto_2
    if-ne v3, v8, :cond_8

    #@75
    .line 5563
    iput-object v7, p0, Landroid/view/ViewRootImpl;->mDragDescription:Landroid/content/ClipDescription;

    #@77
    .line 5565
    :try_start_1
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    #@79
    new-instance v5, Ljava/lang/StringBuilder;

    #@7b
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@7e
    const-string/jumbo v6, "Reporting drop result: "

    #@81
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v5

    #@85
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@88
    move-result-object v5

    #@89
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8c
    move-result-object v5

    #@8d
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@90
    .line 5566
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    #@92
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    #@94
    invoke-interface {v4, v5, v2}, Landroid/view/IWindowSession;->reportDropResult(Landroid/view/IWindow;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@97
    .line 5573
    :cond_8
    :goto_3
    const/4 v4, 0x4

    #@98
    if-ne v3, v4, :cond_0

    #@9a
    .line 5574
    invoke-virtual {p0, v7}, Landroid/view/ViewRootImpl;->setLocalDragState(Ljava/lang/Object;)V

    #@9d
    .line 5575
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@9f
    iput-object v7, v4, Landroid/view/View$AttachInfo;->mDragToken:Landroid/os/IBinder;

    #@a1
    .line 5576
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@a3
    iget-object v4, v4, Landroid/view/View$AttachInfo;->mDragSurface:Landroid/view/Surface;

    #@a5
    if-eqz v4, :cond_0

    #@a7
    .line 5577
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@a9
    iget-object v4, v4, Landroid/view/View$AttachInfo;->mDragSurface:Landroid/view/Surface;

    #@ab
    invoke-virtual {v4}, Landroid/view/Surface;->release()V

    #@ae
    .line 5578
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@b0
    iput-object v7, v4, Landroid/view/View$AttachInfo;->mDragSurface:Landroid/view/Surface;

    #@b2
    goto/16 :goto_0

    #@b4
    .line 5523
    .end local v1    # "prevDragView":Landroid/view/View;
    .end local v2    # "result":Z
    :cond_9
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mDragDescription:Landroid/content/ClipDescription;

    #@b6
    iput-object v4, p1, Landroid/view/DragEvent;->mClipDescription:Landroid/content/ClipDescription;

    #@b8
    goto/16 :goto_1

    #@ba
    .line 5556
    .restart local v1    # "prevDragView":Landroid/view/View;
    .restart local v2    # "result":Z
    :catch_0
    move-exception v0

    #@bb
    .line 5557
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    #@bd
    const-string/jumbo v5, "Unable to note drag target change"

    #@c0
    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@c3
    goto :goto_2

    #@c4
    .line 5567
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    #@c5
    .line 5568
    .restart local v0    # "e":Landroid/os/RemoteException;
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    #@c7
    const-string/jumbo v5, "Unable to report drop result"

    #@ca
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@cd
    goto :goto_3
.end method

.method private handleOutOfResourcesException(Landroid/view/Surface$OutOfResourcesException;)V
    .locals 3
    .param p1, "e"    # Landroid/view/Surface$OutOfResourcesException;

    #@0
    .prologue
    .line 2256
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    #@2
    const-string/jumbo v2, "OutOfResourcesException initializing HW surface"

    #@5
    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@8
    .line 2258
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
    .line 2259
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@15
    move-result v1

    #@16
    const/16 v2, 0x3e8

    #@18
    if-eq v1, v2, :cond_0

    #@1a
    .line 2260
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    #@1c
    const-string/jumbo v2, "No processes killed for memory; killing self"

    #@1f
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    .line 2261
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@25
    move-result v1

    #@26
    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@29
    .line 2265
    :cond_0
    :goto_0
    const/4 v1, 0x1

    #@2a
    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    #@2c
    .line 2255
    return-void

    #@2d
    .line 2263
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
    .line 6692
    move-object/from16 v0, p0

    #@2
    iget-object v7, v0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    #@4
    .line 6693
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
    .line 6695
    :cond_0
    return-void

    #@f
    .line 6698
    :cond_1
    invoke-virtual {v7}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    #@12
    move-result-object v14

    #@13
    .line 6699
    .local v14, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-nez v14, :cond_2

    #@15
    .line 6701
    const/16 v16, 0x0

    #@17
    move-object/from16 v0, v16

    #@19
    move-object/from16 v1, p0

    #@1b
    iput-object v0, v1, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    #@1d
    .line 6702
    const/16 v16, 0x0

    #@1f
    move-object/from16 v0, v16

    #@21
    move-object/from16 v1, p0

    #@23
    iput-object v0, v1, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    #@25
    .line 6703
    const/16 v16, 0x0

    #@27
    move/from16 v0, v16

    #@29
    invoke-virtual {v7, v0}, Landroid/view/View;->clearAccessibilityFocusNoCallbacks(I)V

    #@2c
    .line 6704
    return-void

    #@2d
    .line 6709
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityEvent;->getContentChangeTypes()I

    #@30
    move-result v3

    #@31
    .line 6710
    .local v3, "changes":I
    and-int/lit8 v16, v3, 0x1

    #@33
    if-nez v16, :cond_3

    #@35
    .line 6711
    if-eqz v3, :cond_3

    #@37
    .line 6712
    return-void

    #@38
    .line 6715
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    #@3b
    move-result-wide v4

    #@3c
    .line 6716
    .local v4, "eventSourceNodeId":J
    invoke-static {v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    #@3f
    move-result v2

    #@40
    .line 6719
    .local v2, "changedViewId":I
    const/4 v10, 0x0

    #@41
    .line 6720
    .local v10, "hostInSubtree":Z
    move-object/from16 v0, p0

    #@43
    iget-object v15, v0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    #@45
    .line 6721
    :goto_0
    if-eqz v15, :cond_4

    #@47
    if-eqz v10, :cond_5

    #@49
    .line 6735
    :cond_4
    if-nez v10, :cond_8

    #@4b
    .line 6736
    return-void

    #@4c
    .line 6722
    :cond_5
    invoke-virtual {v15}, Landroid/view/View;->getAccessibilityViewId()I

    #@4f
    move-result v16

    #@50
    move/from16 v0, v16

    #@52
    if-ne v2, v0, :cond_6

    #@54
    .line 6723
    const/4 v10, 0x1

    #@55
    goto :goto_0

    #@56
    .line 6725
    :cond_6
    invoke-virtual {v15}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@59
    move-result-object v13

    #@5a
    .line 6726
    .local v13, "parent":Landroid/view/ViewParent;
    instance-of v0, v13, Landroid/view/View;

    #@5c
    move/from16 v16, v0

    #@5e
    if-eqz v16, :cond_7

    #@60
    move-object v15, v13

    #@61
    .line 6727
    check-cast v15, Landroid/view/View;

    #@63
    .local v15, "root":Landroid/view/View;
    goto :goto_0

    #@64
    .line 6729
    .end local v15    # "root":Landroid/view/View;
    :cond_7
    const/4 v15, 0x0

    #@65
    .local v15, "root":Landroid/view/View;
    goto :goto_0

    #@66
    .line 6739
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
    .line 6740
    .local v8, "focusedSourceNodeId":J
    invoke-static {v8, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    #@73
    move-result v6

    #@74
    .line 6741
    .local v6, "focusedChildId":I
    const v16, 0x7fffffff

    #@77
    move/from16 v0, v16

    #@79
    if-ne v6, v0, :cond_9

    #@7b
    .line 6743
    const/4 v6, -0x1

    #@7c
    .line 6747
    :cond_9
    move-object/from16 v0, p0

    #@7e
    iget-object v12, v0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    #@80
    .line 6748
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
    .line 6749
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
    .line 6750
    move-object/from16 v0, p0

    #@97
    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    #@99
    move-object/from16 v16, v0

    #@9b
    if-nez v16, :cond_b

    #@9d
    .line 6752
    const/16 v16, 0x0

    #@9f
    move-object/from16 v0, v16

    #@a1
    move-object/from16 v1, p0

    #@a3
    iput-object v0, v1, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    #@a5
    .line 6753
    const/16 v16, 0x0

    #@a7
    move/from16 v0, v16

    #@a9
    invoke-virtual {v7, v0}, Landroid/view/View;->clearAccessibilityFocusNoCallbacks(I)V

    #@ac
    .line 6758
    sget-object v16, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLEAR_ACCESSIBILITY_FOCUS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    #@ae
    invoke-virtual/range {v16 .. v16}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    #@b1
    move-result v16

    #@b2
    const/16 v17, 0x0

    #@b4
    .line 6757
    move/from16 v0, v16

    #@b6
    move-object/from16 v1, v17

    #@b8
    invoke-virtual {v14, v6, v0, v1}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    #@bb
    .line 6759
    move-object/from16 v0, p0

    #@bd
    invoke-direct {v0, v12}, Landroid/view/ViewRootImpl;->invalidateRectOnScreen(Landroid/graphics/Rect;)V

    #@c0
    .line 6691
    :cond_a
    :goto_1
    return-void

    #@c1
    .line 6762
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
    .line 6763
    .local v11, "newBounds":Landroid/graphics/Rect;
    invoke-virtual {v12, v11}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@ce
    move-result v16

    #@cf
    if-nez v16, :cond_a

    #@d1
    .line 6764
    invoke-virtual {v12, v11}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    #@d4
    .line 6765
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
    .line 1105
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mDirty:Landroid/graphics/Rect;

    #@6
    .line 1106
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
    .line 1112
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
    .line 1115
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@1f
    iget v0, v3, Landroid/view/View$AttachInfo;->mApplicationScale:F

    #@21
    .line 1117
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
    .line 1116
    invoke-virtual {v2, v8, v8, v3, v4}, Landroid/graphics/Rect;->intersect(IIII)Z

    #@30
    move-result v1

    #@31
    .line 1118
    .local v1, "intersected":Z
    if-nez v1, :cond_1

    #@33
    .line 1119
    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    #@36
    .line 1121
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
    .line 1122
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    #@43
    .line 1104
    :cond_3
    return-void

    #@44
    .line 1107
    .end local v0    # "appScale":F
    .end local v1    # "intersected":Z
    :cond_4
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@46
    iput-boolean v4, v3, Landroid/view/View$AttachInfo;->mSetIgnoreDirtyState:Z

    #@48
    .line 1108
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
    .line 811
    invoke-static {p0, p1, p2}, Landroid/view/ThreadedRenderer;->invokeFunctor(JZ)V

    #@3
    .line 810
    return-void
.end method

.method private isInLocalFocusMode()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 771
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
    .line 505
    invoke-static {}, Landroid/view/WindowManagerGlobal;->peekWindowSession()Landroid/view/IWindowSession;

    #@3
    move-result-object v1

    #@4
    .line 506
    .local v1, "windowSession":Landroid/view/IWindowSession;
    if-eqz v1, :cond_0

    #@6
    .line 508
    :try_start_0
    invoke-interface {v1}, Landroid/view/IWindowSession;->getInTouchMode()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v2

    #@a
    return v2

    #@b
    .line 509
    :catch_0
    move-exception v0

    #@c
    .line 512
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
    .line 5428
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCode()I

    #@3
    move-result v0

    #@4
    sparse-switch v0, :sswitch_data_0

    #@7
    .line 5443
    const/4 v0, 0x0

    #@8
    return v0

    #@9
    .line 5441
    :sswitch_0
    const/4 v0, 0x1

    #@a
    return v0

    #@b
    .line 5428
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
    .line 6244
    instance-of v5, p0, Landroid/view/KeyEvent;

    #@4
    if-eqz v5, :cond_1

    #@6
    move-object v1, p0

    #@7
    .line 6245
    check-cast v1, Landroid/view/KeyEvent;

    #@9
    .line 6246
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
    .line 6248
    check-cast v2, Landroid/view/MotionEvent;

    #@15
    .line 6249
    .local v2, "motionEvent":Landroid/view/MotionEvent;
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    #@18
    move-result v0

    #@19
    .line 6250
    .local v0, "action":I
    if-eq v0, v3, :cond_2

    #@1b
    .line 6251
    const/4 v5, 0x3

    #@1c
    if-ne v0, v5, :cond_3

    #@1e
    .line 6250
    :cond_2
    :goto_1
    return v3

    #@1f
    .line 6252
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
    .line 5452
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
    .line 3346
    if-ne p0, p1, :cond_0

    #@2
    .line 3347
    const/4 v1, 0x1

    #@3
    return v1

    #@4
    .line 3350
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@7
    move-result-object v0

    #@8
    .line 3351
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
    .line 3793
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@6
    if-eqz v2, :cond_2

    #@8
    .line 3794
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@a
    invoke-virtual {v2}, Landroid/view/View;->hasFocus()Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_1

    #@10
    .line 3795
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@12
    invoke-virtual {v2}, Landroid/view/View;->findFocus()Landroid/view/View;

    #@15
    move-result-object v1

    #@16
    .line 3796
    .local v1, "focusedView":Landroid/view/View;
    instance-of v2, v1, Landroid/view/ViewGroup;

    #@18
    if-nez v2, :cond_0

    #@1a
    .line 3798
    return v4

    #@1b
    .line 3799
    :cond_0
    check-cast v1, Landroid/view/ViewGroup;

    #@1d
    .end local v1    # "focusedView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    #@20
    move-result v2

    #@21
    .line 3800
    const/high16 v3, 0x40000

    #@23
    .line 3799
    if-eq v2, v3, :cond_1

    #@25
    .line 3803
    return v4

    #@26
    .line 3809
    :cond_1
    invoke-virtual {p0, v5, v6}, Landroid/view/ViewRootImpl;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    #@29
    move-result-object v0

    #@2a
    .line 3810
    .local v0, "focused":Landroid/view/View;
    if-eqz v0, :cond_2

    #@2c
    .line 3811
    invoke-virtual {v0, v6}, Landroid/view/View;->requestFocus(I)Z

    #@2f
    move-result v2

    #@30
    return v2

    #@31
    .line 3814
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
    .line 2237
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@4
    iget v2, v2, Landroid/view/View$AttachInfo;->mWindowLeft:I

    #@6
    iget v3, p1, Landroid/graphics/Rect;->left:I

    #@8
    if-ne v2, v3, :cond_0

    #@a
    .line 2238
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@c
    iget v2, v2, Landroid/view/View$AttachInfo;->mWindowTop:I

    #@e
    iget v3, p1, Landroid/graphics/Rect;->top:I

    #@10
    if-eq v2, v3, :cond_6

    #@12
    .line 2239
    .local v0, "windowMoved":Z
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    #@14
    .line 2240
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@16
    if-eqz v2, :cond_1

    #@18
    .line 2241
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@1a
    invoke-virtual {v2, p1}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWinFrame(Landroid/graphics/Rect;)V

    #@1d
    .line 2243
    :cond_1
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@1f
    iget v3, p1, Landroid/graphics/Rect;->left:I

    #@21
    iput v3, v2, Landroid/view/View$AttachInfo;->mWindowLeft:I

    #@23
    .line 2244
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@25
    iget v3, p1, Landroid/graphics/Rect;->top:I

    #@27
    iput v3, v2, Landroid/view/View$AttachInfo;->mWindowTop:I

    #@29
    .line 2246
    :cond_2
    if-nez v0, :cond_3

    #@2b
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@2d
    iget-boolean v2, v2, Landroid/view/View$AttachInfo;->mNeedsUpdateLightCenter:Z

    #@2f
    if-eqz v2, :cond_5

    #@31
    .line 2248
    :cond_3
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@33
    iget-object v2, v2, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    #@35
    if-eqz v2, :cond_4

    #@37
    .line 2249
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@39
    iget-object v2, v2, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    #@3b
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@3d
    invoke-virtual {v2, v3}, Landroid/view/ThreadedRenderer;->setLightCenter(Landroid/view/View$AttachInfo;)V

    #@40
    .line 2251
    :cond_4
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@42
    iput-boolean v1, v2, Landroid/view/View$AttachInfo;->mNeedsUpdateLightCenter:Z

    #@44
    .line 2227
    :cond_5
    return-void

    #@45
    .end local v0    # "windowMoved":Z
    :cond_6
    move v0, v1

    #@46
    .line 2238
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
    .line 1308
    const/4 v5, 0x0

    #@3
    .line 1314
    .local v5, "windowSizeMayChange":Z
    const/4 v3, 0x0

    #@4
    .line 1315
    .local v3, "goodMeasure":Z
    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    #@6
    const/4 v7, -0x2

    #@7
    if-ne v6, v7, :cond_1

    #@9
    .line 1320
    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@c
    move-result-object v4

    #@d
    .line 1321
    .local v4, "packageMetrics":Landroid/util/DisplayMetrics;
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTmpValue:Landroid/util/TypedValue;

    #@f
    const v7, 0x105000e

    #@12
    const/4 v8, 0x1

    #@13
    invoke-virtual {p3, v7, v6, v8}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    #@16
    .line 1322
    const/4 v0, 0x0

    #@17
    .line 1323
    .local v0, "baseSize":I
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTmpValue:Landroid/util/TypedValue;

    #@19
    iget v6, v6, Landroid/util/TypedValue;->type:I

    #@1b
    const/4 v7, 0x5

    #@1c
    if-ne v6, v7, :cond_0

    #@1e
    .line 1324
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTmpValue:Landroid/util/TypedValue;

    #@20
    invoke-virtual {v6, v4}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    #@23
    move-result v6

    #@24
    float-to-int v0, v6

    #@25
    .line 1328
    :cond_0
    if-eqz v0, :cond_1

    #@27
    if-le p4, v0, :cond_1

    #@29
    .line 1329
    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    #@2b
    invoke-static {v0, v6}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    #@2e
    move-result v2

    #@2f
    .line 1330
    .local v2, "childWidthMeasureSpec":I
    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    #@31
    invoke-static {p5, v6}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    #@34
    move-result v1

    #@35
    .line 1331
    .local v1, "childHeightMeasureSpec":I
    invoke-direct {p0, v2, v1}, Landroid/view/ViewRootImpl;->performMeasure(II)V

    #@38
    .line 1336
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidthAndState()I

    #@3b
    move-result v6

    #@3c
    and-int/2addr v6, v9

    #@3d
    if-nez v6, :cond_4

    #@3f
    .line 1337
    const/4 v3, 0x1

    #@40
    .line 1355
    .end local v0    # "baseSize":I
    .end local v1    # "childHeightMeasureSpec":I
    .end local v2    # "childWidthMeasureSpec":I
    .end local v4    # "packageMetrics":Landroid/util/DisplayMetrics;
    :cond_1
    :goto_0
    if-nez v3, :cond_3

    #@42
    .line 1356
    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    #@44
    invoke-static {p4, v6}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    #@47
    move-result v2

    #@48
    .line 1357
    .restart local v2    # "childWidthMeasureSpec":I
    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    #@4a
    invoke-static {p5, v6}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    #@4d
    move-result v1

    #@4e
    .line 1358
    .restart local v1    # "childHeightMeasureSpec":I
    invoke-direct {p0, v2, v1}, Landroid/view/ViewRootImpl;->performMeasure(II)V

    #@51
    .line 1359
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
    .line 1360
    :cond_2
    const/4 v5, 0x1

    #@62
    .line 1370
    .end local v1    # "childHeightMeasureSpec":I
    .end local v2    # "childWidthMeasureSpec":I
    :cond_3
    return v5

    #@63
    .line 1340
    .restart local v0    # "baseSize":I
    .restart local v1    # "childHeightMeasureSpec":I
    .restart local v2    # "childWidthMeasureSpec":I
    .restart local v4    # "packageMetrics":Landroid/util/DisplayMetrics;
    :cond_4
    add-int v6, v0, p4

    #@65
    div-int/lit8 v0, v6, 0x2

    #@67
    .line 1343
    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    #@69
    invoke-static {v0, v6}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    #@6c
    move-result v2

    #@6d
    .line 1344
    invoke-direct {p0, v2, v1}, Landroid/view/ViewRootImpl;->performMeasure(II)V

    #@70
    .line 1347
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidthAndState()I

    #@73
    move-result v6

    #@74
    and-int/2addr v6, v9

    #@75
    if-nez v6, :cond_1

    #@77
    .line 1349
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
    .line 6092
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPool:Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@3
    .line 6093
    .local v0, "q":Landroid/view/ViewRootImpl$QueuedInputEvent;
    if-eqz v0, :cond_0

    #@5
    .line 6094
    iget v1, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPoolSize:I

    #@7
    add-int/lit8 v1, v1, -0x1

    #@9
    iput v1, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPoolSize:I

    #@b
    .line 6095
    iget-object v1, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@d
    iput-object v1, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPool:Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@f
    .line 6096
    iput-object v2, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@11
    .line 6101
    :goto_0
    iput-object p1, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    #@13
    .line 6102
    iput-object p2, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mReceiver:Landroid/view/InputEventReceiver;

    #@15
    .line 6103
    iput p3, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    #@17
    .line 6104
    return-object v0

    #@18
    .line 6098
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
    .line 2594
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
    .line 2598
    :cond_0
    iget-boolean v5, p0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    #@11
    .line 2599
    .local v5, "fullRedrawNeeded":Z
    iput-boolean v8, p0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    #@13
    .line 2601
    iput-boolean v9, p0, Landroid/view/ViewRootImpl;->mIsDrawing:Z

    #@15
    .line 2602
    const-string/jumbo v7, "draw"

    #@18
    invoke-static {v12, v13, v7}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@1b
    .line 2604
    :try_start_0
    invoke-direct {p0, v5}, Landroid/view/ViewRootImpl;->draw(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    .line 2606
    iput-boolean v8, p0, Landroid/view/ViewRootImpl;->mIsDrawing:Z

    #@20
    .line 2607
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    #@23
    .line 2612
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@25
    iget-object v7, v7, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    #@27
    if-eqz v7, :cond_3

    #@29
    .line 2613
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@2b
    iget-object v7, v7, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    #@2d
    invoke-interface {v7}, Ljava/util/List;->size()I

    #@30
    move-result v2

    #@31
    .line 2614
    .local v2, "count":I
    const/4 v6, 0x0

    #@32
    .local v6, "i":I
    :goto_0
    if-ge v6, v2, :cond_2

    #@34
    .line 2615
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
    .line 2614
    add-int/lit8 v6, v6, 0x1

    #@43
    goto :goto_0

    #@44
    .line 2595
    .end local v2    # "count":I
    .end local v5    # "fullRedrawNeeded":Z
    .end local v6    # "i":I
    :cond_1
    return-void

    #@45
    .line 2605
    .restart local v5    # "fullRedrawNeeded":Z
    :catchall_0
    move-exception v7

    #@46
    .line 2606
    iput-boolean v8, p0, Landroid/view/ViewRootImpl;->mIsDrawing:Z

    #@48
    .line 2607
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    #@4b
    .line 2605
    throw v7

    #@4c
    .line 2617
    .restart local v2    # "count":I
    .restart local v6    # "i":I
    :cond_2
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@4e
    iget-object v7, v7, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    #@50
    invoke-interface {v7}, Ljava/util/List;->clear()V

    #@53
    .line 2620
    .end local v2    # "count":I
    .end local v6    # "i":I
    :cond_3
    iget-boolean v7, p0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    #@55
    if-eqz v7, :cond_8

    #@57
    .line 2621
    iput-boolean v8, p0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    #@59
    .line 2624
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowDrawCountDown:Ljava/util/concurrent/CountDownLatch;

    #@5b
    if-eqz v7, :cond_4

    #@5d
    .line 2626
    :try_start_1
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowDrawCountDown:Ljava/util/concurrent/CountDownLatch;

    #@5f
    invoke-virtual {v7}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    #@62
    .line 2630
    :goto_1
    iput-object v10, p0, Landroid/view/ViewRootImpl;->mWindowDrawCountDown:Ljava/util/concurrent/CountDownLatch;

    #@64
    .line 2633
    :cond_4
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@66
    iget-object v7, v7, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    #@68
    if-eqz v7, :cond_5

    #@6a
    .line 2634
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@6c
    iget-object v7, v7, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    #@6e
    invoke-virtual {v7}, Landroid/view/ThreadedRenderer;->fence()V

    #@71
    .line 2635
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@73
    iget-object v7, v7, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    #@75
    iget-boolean v9, p0, Landroid/view/ViewRootImpl;->mStopped:Z

    #@77
    invoke-virtual {v7, v9}, Landroid/view/ThreadedRenderer;->setStopped(Z)V

    #@7a
    .line 2641
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
    .line 2642
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    #@88
    iget-object v9, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@8a
    invoke-interface {v7, v9}, Landroid/view/SurfaceHolder$Callback2;->surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V

    #@8d
    .line 2643
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@8f
    invoke-virtual {v7}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    #@92
    move-result-object v1

    #@93
    .line 2644
    .local v1, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    if-eqz v1, :cond_7

    #@95
    .line 2645
    array-length v9, v1

    #@96
    move v7, v8

    #@97
    :goto_2
    if-ge v7, v9, :cond_7

    #@99
    aget-object v0, v1, v7

    #@9b
    .line 2646
    .local v0, "c":Landroid/view/SurfaceHolder$Callback;
    instance-of v8, v0, Landroid/view/SurfaceHolder$Callback2;

    #@9d
    if-eqz v8, :cond_6

    #@9f
    .line 2647
    check-cast v0, Landroid/view/SurfaceHolder$Callback2;

    #@a1
    .end local v0    # "c":Landroid/view/SurfaceHolder$Callback;
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@a3
    invoke-interface {v0, v8}, Landroid/view/SurfaceHolder$Callback2;->surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V

    #@a6
    .line 2645
    :cond_6
    add-int/lit8 v7, v7, 0x1

    #@a8
    goto :goto_2

    #@a9
    .line 2627
    .end local v1    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :catch_0
    move-exception v4

    #@aa
    .line 2628
    .local v4, "e":Ljava/lang/InterruptedException;
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    #@ac
    const-string/jumbo v9, "Window redraw count down interruped!"

    #@af
    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@b2
    goto :goto_1

    #@b3
    .line 2653
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
    .line 2593
    :cond_8
    :goto_3
    return-void

    #@bb
    .line 2654
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
    .line 2330
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    #@3
    .line 2331
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mScrollMayChange:Z

    #@6
    .line 2332
    const/4 v0, 0x1

    #@7
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mInLayout:Z

    #@9
    .line 2334
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@b
    .line 2340
    .local v1, "host":Landroid/view/View;
    const-string/jumbo v0, "layout"

    #@e
    const-wide/16 v2, 0x8

    #@10
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@13
    .line 2342
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
    .line 2344
    const/4 v0, 0x0

    #@21
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mInLayout:Z

    #@23
    .line 2345
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLayoutRequesters:Ljava/util/ArrayList;

    #@25
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@28
    move-result v9

    #@29
    .line 2346
    .local v9, "numViewsRequestingLayout":I
    if-lez v9, :cond_1

    #@2b
    .line 2351
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLayoutRequesters:Ljava/util/ArrayList;

    #@2d
    .line 2352
    const/4 v2, 0x0

    #@2e
    .line 2351
    invoke-direct {p0, v0, v2}, Landroid/view/ViewRootImpl;->getValidLayoutRequesters(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    #@31
    move-result-object v10

    #@32
    .line 2353
    .local v10, "validLayoutRequesters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz v10, :cond_1

    #@34
    .line 2357
    const/4 v0, 0x1

    #@35
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mHandlingLayoutInLayoutRequest:Z

    #@37
    .line 2360
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    #@3a
    move-result v8

    #@3b
    .line 2361
    .local v8, "numValidRequests":I
    const/4 v7, 0x0

    #@3c
    .local v7, "i":I
    :goto_0
    if-ge v7, v8, :cond_0

    #@3e
    .line 2362
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@41
    move-result-object v11

    #@42
    check-cast v11, Landroid/view/View;

    #@44
    .line 2363
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
    .line 2364
    const-string/jumbo v3, " during layout: running second layout pass"

    #@5a
    .line 2363
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
    .line 2365
    invoke-virtual {v11}, Landroid/view/View;->requestLayout()V

    #@68
    .line 2361
    add-int/lit8 v7, v7, 0x1

    #@6a
    goto :goto_0

    #@6b
    .line 2367
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
    .line 2369
    const/4 v0, 0x1

    #@7d
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mInLayout:Z

    #@7f
    .line 2370
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
    .line 2372
    const/4 v0, 0x0

    #@8d
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mHandlingLayoutInLayoutRequest:Z

    #@8f
    .line 2376
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLayoutRequesters:Ljava/util/ArrayList;

    #@91
    const/4 v2, 0x1

    #@92
    invoke-direct {p0, v0, v2}, Landroid/view/ViewRootImpl;->getValidLayoutRequesters(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    #@95
    move-result-object v10

    #@96
    .line 2377
    if-eqz v10, :cond_1

    #@98
    .line 2378
    move-object v6, v10

    #@99
    .line 2380
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
    .line 2397
    .end local v6    # "finalRequesters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v7    # "i":I
    .end local v8    # "numValidRequests":I
    .end local v10    # "validLayoutRequesters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_1
    const-wide/16 v2, 0x8

    #@a7
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    #@aa
    .line 2399
    const/4 v0, 0x0

    #@ab
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mInLayout:Z

    #@ad
    .line 2329
    return-void

    #@ae
    .line 2396
    .end local v9    # "numViewsRequestingLayout":I
    :catchall_0
    move-exception v0

    #@af
    .line 2397
    const-wide/16 v2, 0x8

    #@b1
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    #@b4
    .line 2396
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
    .line 2269
    const-string/jumbo v0, "measure"

    #@5
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@8
    .line 2271
    :try_start_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@a
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    .line 2273
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    #@10
    .line 2268
    return-void

    #@11
    .line 2272
    :catchall_0
    move-exception v0

    #@12
    .line 2273
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    #@15
    .line 2272
    throw v0
.end method

.method private performTraversals()V
    .locals 76

    #@0
    .prologue
    .line 1438
    move-object/from16 v0, p0

    #@2
    iget-object v5, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@4
    .line 1446
    .local v5, "host":Landroid/view/View;
    if-eqz v5, :cond_e

    #@6
    move-object/from16 v0, p0

    #@8
    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mAdded:Z

    #@a
    if-eqz v4, :cond_e

    #@c
    .line 1449
    const/4 v4, 0x1

    #@d
    move-object/from16 v0, p0

    #@f
    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mIsInTraversal:Z

    #@11
    .line 1450
    const/4 v4, 0x1

    #@12
    move-object/from16 v0, p0

    #@14
    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mWillDrawSoon:Z

    #@16
    .line 1451
    const/16 v75, 0x0

    #@18
    .line 1452
    .local v75, "windowSizeMayChange":Z
    const/16 v56, 0x0

    #@1a
    .line 1453
    .local v56, "newSurface":Z
    const/16 v65, 0x0

    #@1c
    .line 1454
    .local v65, "surfaceChanged":Z
    move-object/from16 v0, p0

    #@1e
    iget-object v6, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@20
    .line 1459
    .local v6, "lp":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->getHostVisibility()I

    #@23
    move-result v70

    #@24
    .line 1460
    .local v70, "viewVisibility":I
    move-object/from16 v0, p0

    #@26
    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mFirst:Z

    #@28
    if-nez v4, :cond_10

    #@2a
    .line 1461
    move-object/from16 v0, p0

    #@2c
    iget v4, v0, Landroid/view/ViewRootImpl;->mViewVisibility:I

    #@2e
    move/from16 v0, v70

    #@30
    if-ne v4, v0, :cond_f

    #@32
    move-object/from16 v0, p0

    #@34
    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mNewSurfaceNeeded:Z

    #@36
    move/from16 v71, v0

    #@38
    .line 1463
    :goto_0
    const/16 v59, 0x0

    #@3a
    .line 1464
    .local v59, "params":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, p0

    #@3c
    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    #@3e
    if-eqz v4, :cond_0

    #@40
    .line 1465
    const/4 v4, 0x0

    #@41
    move-object/from16 v0, p0

    #@43
    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    #@45
    .line 1466
    const/16 v65, 0x1

    #@47
    .line 1467
    move-object/from16 v59, v6

    #@49
    .line 1470
    .end local v59    # "params":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    move-object/from16 v0, p0

    #@4b
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    #@4d
    invoke-virtual {v4}, Landroid/view/Display;->getDisplayAdjustments()Landroid/view/DisplayAdjustments;

    #@50
    move-result-object v4

    #@51
    invoke-virtual {v4}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    #@54
    move-result-object v30

    #@55
    .line 1471
    .local v30, "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    invoke-virtual/range {v30 .. v30}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    #@58
    move-result v4

    #@59
    move-object/from16 v0, p0

    #@5b
    iget-boolean v10, v0, Landroid/view/ViewRootImpl;->mLastInCompatMode:Z

    #@5d
    if-ne v4, v10, :cond_1

    #@5f
    .line 1472
    move-object/from16 v59, v6

    #@61
    .line 1473
    .local v59, "params":Landroid/view/WindowManager$LayoutParams;
    const/4 v4, 0x1

    #@62
    move-object/from16 v0, p0

    #@64
    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    #@66
    .line 1474
    const/4 v4, 0x1

    #@67
    move-object/from16 v0, p0

    #@69
    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    #@6b
    .line 1475
    move-object/from16 v0, p0

    #@6d
    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mLastInCompatMode:Z

    #@6f
    if-eqz v4, :cond_11

    #@71
    .line 1476
    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@73
    and-int/lit16 v4, v4, -0x81

    #@75
    iput v4, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@77
    .line 1477
    const/4 v4, 0x0

    #@78
    move-object/from16 v0, p0

    #@7a
    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mLastInCompatMode:Z

    #@7c
    .line 1484
    .end local v59    # "params":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    :goto_1
    const/4 v4, 0x0

    #@7d
    move-object/from16 v0, p0

    #@7f
    iput v4, v0, Landroid/view/ViewRootImpl;->mWindowAttributesChangesFlag:I

    #@81
    .line 1486
    move-object/from16 v0, p0

    #@83
    iget-object v0, v0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    #@85
    move-object/from16 v40, v0

    #@87
    .line 1487
    .local v40, "frame":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    #@89
    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mFirst:Z

    #@8b
    if-eqz v4, :cond_13

    #@8d
    .line 1488
    const/4 v4, 0x1

    #@8e
    move-object/from16 v0, p0

    #@90
    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    #@92
    .line 1489
    const/4 v4, 0x1

    #@93
    move-object/from16 v0, p0

    #@95
    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    #@97
    .line 1491
    invoke-static {v6}, Landroid/view/ViewRootImpl;->shouldUseDisplaySize(Landroid/view/WindowManager$LayoutParams;)Z

    #@9a
    move-result v4

    #@9b
    if-eqz v4, :cond_12

    #@9d
    .line 1493
    new-instance v63, Landroid/graphics/Point;

    #@9f
    invoke-direct/range {v63 .. v63}, Landroid/graphics/Point;-><init>()V

    #@a2
    .line 1494
    .local v63, "size":Landroid/graphics/Point;
    move-object/from16 v0, p0

    #@a4
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    #@a6
    move-object/from16 v0, v63

    #@a8
    invoke-virtual {v4, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    #@ab
    .line 1495
    move-object/from16 v0, v63

    #@ad
    iget v8, v0, Landroid/graphics/Point;->x:I

    #@af
    .line 1496
    .local v8, "desiredWindowWidth":I
    move-object/from16 v0, v63

    #@b1
    iget v9, v0, Landroid/graphics/Point;->y:I

    #@b3
    .line 1506
    .end local v63    # "size":Landroid/graphics/Point;
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
    .line 1507
    move-object/from16 v0, p0

    #@bc
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@be
    const/4 v10, 0x0

    #@bf
    iput-boolean v10, v4, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    #@c1
    .line 1508
    move-object/from16 v0, p0

    #@c3
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@c5
    move/from16 v0, v70

    #@c7
    iput v0, v4, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    #@c9
    .line 1509
    move-object/from16 v0, p0

    #@cb
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@cd
    const/4 v10, 0x0

    #@ce
    iput-boolean v10, v4, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    #@d0
    .line 1510
    move-object/from16 v0, p0

    #@d2
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mLastConfiguration:Landroid/content/res/Configuration;

    #@d4
    invoke-virtual {v5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    #@d7
    move-result-object v10

    #@d8
    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@db
    move-result-object v10

    #@dc
    invoke-virtual {v4, v10}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    #@df
    .line 1511
    move-object/from16 v0, p0

    #@e1
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@e3
    iget v4, v4, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    #@e5
    move-object/from16 v0, p0

    #@e7
    iput v4, v0, Landroid/view/ViewRootImpl;->mLastSystemUiVisibility:I

    #@e9
    .line 1513
    move-object/from16 v0, p0

    #@eb
    iget v4, v0, Landroid/view/ViewRootImpl;->mViewLayoutDirectionInitial:I

    #@ed
    const/4 v10, 0x2

    #@ee
    if-ne v4, v10, :cond_2

    #@f0
    .line 1514
    move-object/from16 v0, p0

    #@f2
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mLastConfiguration:Landroid/content/res/Configuration;

    #@f4
    invoke-virtual {v4}, Landroid/content/res/Configuration;->getLayoutDirection()I

    #@f7
    move-result v4

    #@f8
    invoke-virtual {v5, v4}, Landroid/view/View;->setLayoutDirection(I)V

    #@fb
    .line 1516
    :cond_2
    move-object/from16 v0, p0

    #@fd
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@ff
    const/4 v10, 0x0

    #@100
    invoke-virtual {v5, v4, v10}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    #@103
    .line 1517
    move-object/from16 v0, p0

    #@105
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@107
    iget-object v4, v4, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    #@109
    const/4 v10, 0x1

    #@10a
    invoke-virtual {v4, v10}, Landroid/view/ViewTreeObserver;->dispatchOnWindowAttachedChange(Z)V

    #@10d
    .line 1518
    move-object/from16 v0, p0

    #@10f
    invoke-virtual {v0, v5}, Landroid/view/ViewRootImpl;->dispatchApplyInsets(Landroid/view/View;)V

    #@112
    .line 1532
    :cond_3
    :goto_3
    if-eqz v71, :cond_6

    #@114
    .line 1533
    move-object/from16 v0, p0

    #@116
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@118
    move/from16 v0, v70

    #@11a
    iput v0, v4, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    #@11c
    .line 1534
    move/from16 v0, v70

    #@11e
    invoke-virtual {v5, v0}, Landroid/view/View;->dispatchWindowVisibilityChanged(I)V

    #@121
    .line 1535
    if-nez v70, :cond_15

    #@123
    const/4 v4, 0x1

    #@124
    :goto_4
    invoke-virtual {v5, v4}, Landroid/view/View;->dispatchVisibilityAggregated(Z)Z

    #@127
    .line 1536
    if-nez v70, :cond_4

    #@129
    move-object/from16 v0, p0

    #@12b
    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mNewSurfaceNeeded:Z

    #@12d
    if-eqz v4, :cond_5

    #@12f
    .line 1537
    :cond_4
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->endDragResizing()V

    #@132
    .line 1538
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->destroyHardwareResources()V

    #@135
    .line 1540
    :cond_5
    const/16 v4, 0x8

    #@137
    move/from16 v0, v70

    #@139
    if-ne v0, v4, :cond_6

    #@13b
    .line 1543
    const/4 v4, 0x0

    #@13c
    move-object/from16 v0, p0

    #@13e
    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mHasHadWindowFocus:Z

    #@140
    .line 1548
    :cond_6
    move-object/from16 v0, p0

    #@142
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@144
    iget v4, v4, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    #@146
    if-eqz v4, :cond_7

    #@148
    .line 1549
    invoke-virtual {v5}, Landroid/view/View;->clearAccessibilityFocus()V

    #@14b
    .line 1553
    :cond_7
    invoke-static {}, Landroid/view/ViewRootImpl;->getRunQueue()Landroid/view/HandlerActionQueue;

    #@14e
    move-result-object v4

    #@14f
    move-object/from16 v0, p0

    #@151
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@153
    iget-object v10, v10, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    #@155
    invoke-virtual {v4, v10}, Landroid/view/HandlerActionQueue;->executeActions(Landroid/os/Handler;)V

    #@158
    .line 1555
    const/16 v51, 0x0

    #@15a
    .line 1557
    .local v51, "insetsChanged":Z
    move-object/from16 v0, p0

    #@15c
    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    #@15e
    if-eqz v4, :cond_17

    #@160
    move-object/from16 v0, p0

    #@162
    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mStopped:Z

    #@164
    if-eqz v4, :cond_16

    #@166
    move-object/from16 v0, p0

    #@168
    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    #@16a
    move/from16 v54, v0

    #@16c
    .line 1558
    .local v54, "layoutRequested":Z
    :goto_5
    if-eqz v54, :cond_9

    #@16e
    .line 1560
    move-object/from16 v0, p0

    #@170
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@172
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@175
    move-result-object v4

    #@176
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@179
    move-result-object v7

    #@17a
    .line 1562
    .local v7, "res":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    #@17c
    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mFirst:Z

    #@17e
    if-eqz v4, :cond_19

    #@180
    .line 1565
    move-object/from16 v0, p0

    #@182
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@184
    move-object/from16 v0, p0

    #@186
    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mAddedTouchMode:Z

    #@188
    if-eqz v4, :cond_18

    #@18a
    const/4 v4, 0x0

    #@18b
    :goto_6
    iput-boolean v4, v10, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    #@18d
    .line 1566
    move-object/from16 v0, p0

    #@18f
    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mAddedTouchMode:Z

    #@191
    move-object/from16 v0, p0

    #@193
    invoke-direct {v0, v4}, Landroid/view/ViewRootImpl;->ensureTouchModeLocally(Z)Z

    #@196
    :cond_8
    :goto_7
    move-object/from16 v4, p0

    #@198
    .line 1607
    invoke-direct/range {v4 .. v9}, Landroid/view/ViewRootImpl;->measureHierarchy(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/content/res/Resources;II)Z

    #@19b
    move-result v4

    #@19c
    or-int v75, v75, v4

    #@19e
    .line 1611
    .end local v7    # "res":Landroid/content/res/Resources;
    .end local v75    # "windowSizeMayChange":Z
    :cond_9
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->collectViewAttributes()Z

    #@1a1
    move-result v4

    #@1a2
    if-eqz v4, :cond_a

    #@1a4
    .line 1612
    move-object/from16 v59, v6

    #@1a6
    .line 1614
    :cond_a
    move-object/from16 v0, p0

    #@1a8
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@1aa
    iget-boolean v4, v4, Landroid/view/View$AttachInfo;->mForceReportNewAttributes:Z

    #@1ac
    if-eqz v4, :cond_b

    #@1ae
    .line 1615
    move-object/from16 v0, p0

    #@1b0
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@1b2
    const/4 v10, 0x0

    #@1b3
    iput-boolean v10, v4, Landroid/view/View$AttachInfo;->mForceReportNewAttributes:Z

    #@1b5
    .line 1616
    move-object/from16 v59, v6

    #@1b7
    .line 1619
    :cond_b
    move-object/from16 v0, p0

    #@1b9
    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mFirst:Z

    #@1bb
    if-nez v4, :cond_c

    #@1bd
    move-object/from16 v0, p0

    #@1bf
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@1c1
    iget-boolean v4, v4, Landroid/view/View$AttachInfo;->mViewVisibilityChanged:Z

    #@1c3
    if-eqz v4, :cond_24

    #@1c5
    .line 1620
    :cond_c
    move-object/from16 v0, p0

    #@1c7
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@1c9
    const/4 v10, 0x0

    #@1ca
    iput-boolean v10, v4, Landroid/view/View$AttachInfo;->mViewVisibilityChanged:Z

    #@1cc
    .line 1621
    move-object/from16 v0, p0

    #@1ce
    iget v4, v0, Landroid/view/ViewRootImpl;->mSoftInputMode:I

    #@1d0
    and-int/lit16 v0, v4, 0xf0

    #@1d2
    move/from16 v62, v0

    #@1d4
    .line 1625
    .local v62, "resizeMode":I
    if-nez v62, :cond_24

    #@1d6
    .line 1626
    move-object/from16 v0, p0

    #@1d8
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@1da
    iget-object v4, v4, Landroid/view/View$AttachInfo;->mScrollContainers:Ljava/util/ArrayList;

    #@1dc
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@1df
    move-result v22

    #@1e0
    .line 1627
    .local v22, "N":I
    const/16 v48, 0x0

    #@1e2
    .local v48, "i":I
    :goto_8
    move/from16 v0, v48

    #@1e4
    move/from16 v1, v22

    #@1e6
    if-ge v0, v1, :cond_22

    #@1e8
    .line 1628
    move-object/from16 v0, p0

    #@1ea
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@1ec
    iget-object v4, v4, Landroid/view/View$AttachInfo;->mScrollContainers:Ljava/util/ArrayList;

    #@1ee
    move/from16 v0, v48

    #@1f0
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1f3
    move-result-object v4

    #@1f4
    check-cast v4, Landroid/view/View;

    #@1f6
    invoke-virtual {v4}, Landroid/view/View;->isShown()Z

    #@1f9
    move-result v4

    #@1fa
    if-eqz v4, :cond_d

    #@1fc
    .line 1629
    const/16 v62, 0x10

    #@1fe
    .line 1627
    :cond_d
    add-int/lit8 v48, v48, 0x1

    #@200
    goto :goto_8

    #@201
    .line 1447
    .end local v6    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v8    # "desiredWindowWidth":I
    .end local v9    # "desiredWindowHeight":I
    .end local v22    # "N":I
    .end local v30    # "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    .end local v40    # "frame":Landroid/graphics/Rect;
    .end local v48    # "i":I
    .end local v51    # "insetsChanged":Z
    .end local v54    # "layoutRequested":Z
    .end local v56    # "newSurface":Z
    .end local v62    # "resizeMode":I
    .end local v65    # "surfaceChanged":Z
    .end local v70    # "viewVisibility":I
    :cond_e
    return-void

    #@202
    .line 1461
    .restart local v6    # "lp":Landroid/view/WindowManager$LayoutParams;
    .restart local v56    # "newSurface":Z
    .restart local v65    # "surfaceChanged":Z
    .restart local v70    # "viewVisibility":I
    .restart local v75    # "windowSizeMayChange":Z
    :cond_f
    const/16 v71, 0x1

    #@204
    .local v71, "viewVisibilityChanged":Z
    goto/16 :goto_0

    #@206
    .line 1460
    .end local v71    # "viewVisibilityChanged":Z
    :cond_10
    const/16 v71, 0x0

    #@208
    .restart local v71    # "viewVisibilityChanged":Z
    goto/16 :goto_0

    #@20a
    .line 1479
    .end local v71    # "viewVisibilityChanged":Z
    .restart local v30    # "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    .restart local v59    # "params":Landroid/view/WindowManager$LayoutParams;
    :cond_11
    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@20c
    or-int/lit16 v4, v4, 0x80

    #@20e
    iput v4, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@210
    .line 1480
    const/4 v4, 0x1

    #@211
    move-object/from16 v0, p0

    #@213
    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mLastInCompatMode:Z

    #@215
    goto/16 :goto_1

    #@217
    .line 1498
    .end local v59    # "params":Landroid/view/WindowManager$LayoutParams;
    .restart local v40    # "frame":Landroid/graphics/Rect;
    :cond_12
    move-object/from16 v0, p0

    #@219
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    #@21b
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@21e
    move-result-object v4

    #@21f
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@222
    move-result-object v32

    #@223
    .line 1499
    .local v32, "config":Landroid/content/res/Configuration;
    move-object/from16 v0, v32

    #@225
    iget v4, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    #@227
    move-object/from16 v0, p0

    #@229
    invoke-direct {v0, v4}, Landroid/view/ViewRootImpl;->dipToPx(I)I

    #@22c
    move-result v8

    #@22d
    .line 1500
    .restart local v8    # "desiredWindowWidth":I
    move-object/from16 v0, v32

    #@22f
    iget v4, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    #@231
    move-object/from16 v0, p0

    #@233
    invoke-direct {v0, v4}, Landroid/view/ViewRootImpl;->dipToPx(I)I

    #@236
    move-result v9

    #@237
    .restart local v9    # "desiredWindowHeight":I
    goto/16 :goto_2

    #@239
    .line 1522
    .end local v8    # "desiredWindowWidth":I
    .end local v9    # "desiredWindowHeight":I
    .end local v32    # "config":Landroid/content/res/Configuration;
    :cond_13
    invoke-virtual/range {v40 .. v40}, Landroid/graphics/Rect;->width()I

    #@23c
    move-result v8

    #@23d
    .line 1523
    .restart local v8    # "desiredWindowWidth":I
    invoke-virtual/range {v40 .. v40}, Landroid/graphics/Rect;->height()I

    #@240
    move-result v9

    #@241
    .line 1524
    .restart local v9    # "desiredWindowHeight":I
    move-object/from16 v0, p0

    #@243
    iget v4, v0, Landroid/view/ViewRootImpl;->mWidth:I

    #@245
    if-ne v8, v4, :cond_14

    #@247
    move-object/from16 v0, p0

    #@249
    iget v4, v0, Landroid/view/ViewRootImpl;->mHeight:I

    #@24b
    if-eq v9, v4, :cond_3

    #@24d
    .line 1526
    :cond_14
    const/4 v4, 0x1

    #@24e
    move-object/from16 v0, p0

    #@250
    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    #@252
    .line 1527
    const/4 v4, 0x1

    #@253
    move-object/from16 v0, p0

    #@255
    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    #@257
    .line 1528
    const/16 v75, 0x1

    #@259
    goto/16 :goto_3

    #@25b
    .line 1535
    :cond_15
    const/4 v4, 0x0

    #@25c
    goto/16 :goto_4

    #@25e
    .line 1557
    .restart local v51    # "insetsChanged":Z
    :cond_16
    const/16 v54, 0x1

    #@260
    goto/16 :goto_5

    #@262
    :cond_17
    const/16 v54, 0x0

    #@264
    goto/16 :goto_5

    #@266
    .line 1565
    .restart local v7    # "res":Landroid/content/res/Resources;
    .restart local v54    # "layoutRequested":Z
    :cond_18
    const/4 v4, 0x1

    #@267
    goto/16 :goto_6

    #@269
    .line 1568
    :cond_19
    move-object/from16 v0, p0

    #@26b
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    #@26d
    move-object/from16 v0, p0

    #@26f
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@271
    iget-object v10, v10, Landroid/view/View$AttachInfo;->mOverscanInsets:Landroid/graphics/Rect;

    #@273
    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@276
    move-result v4

    #@277
    if-nez v4, :cond_1a

    #@279
    .line 1569
    const/16 v51, 0x1

    #@27b
    .line 1571
    :cond_1a
    move-object/from16 v0, p0

    #@27d
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    #@27f
    move-object/from16 v0, p0

    #@281
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@283
    iget-object v10, v10, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    #@285
    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@288
    move-result v4

    #@289
    if-nez v4, :cond_1b

    #@28b
    .line 1572
    const/16 v51, 0x1

    #@28d
    .line 1574
    :cond_1b
    move-object/from16 v0, p0

    #@28f
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    #@291
    move-object/from16 v0, p0

    #@293
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@295
    iget-object v10, v10, Landroid/view/View$AttachInfo;->mStableInsets:Landroid/graphics/Rect;

    #@297
    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@29a
    move-result v4

    #@29b
    if-nez v4, :cond_1c

    #@29d
    .line 1575
    const/16 v51, 0x1

    #@29f
    .line 1577
    :cond_1c
    move-object/from16 v0, p0

    #@2a1
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    #@2a3
    move-object/from16 v0, p0

    #@2a5
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@2a7
    iget-object v10, v10, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    #@2a9
    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@2ac
    move-result v4

    #@2ad
    if-nez v4, :cond_1d

    #@2af
    .line 1578
    move-object/from16 v0, p0

    #@2b1
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@2b3
    iget-object v4, v4, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    #@2b5
    move-object/from16 v0, p0

    #@2b7
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    #@2b9
    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@2bc
    .line 1582
    :cond_1d
    move-object/from16 v0, p0

    #@2be
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingOutsets:Landroid/graphics/Rect;

    #@2c0
    move-object/from16 v0, p0

    #@2c2
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@2c4
    iget-object v10, v10, Landroid/view/View$AttachInfo;->mOutsets:Landroid/graphics/Rect;

    #@2c6
    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@2c9
    move-result v4

    #@2ca
    if-nez v4, :cond_1e

    #@2cc
    .line 1583
    const/16 v51, 0x1

    #@2ce
    .line 1585
    :cond_1e
    move-object/from16 v0, p0

    #@2d0
    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mPendingAlwaysConsumeNavBar:Z

    #@2d2
    move-object/from16 v0, p0

    #@2d4
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@2d6
    iget-boolean v10, v10, Landroid/view/View$AttachInfo;->mAlwaysConsumeNavBar:Z

    #@2d8
    if-eq v4, v10, :cond_1f

    #@2da
    .line 1586
    const/16 v51, 0x1

    #@2dc
    .line 1588
    :cond_1f
    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    #@2de
    const/4 v10, -0x2

    #@2df
    if-eq v4, v10, :cond_20

    #@2e1
    .line 1589
    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    #@2e3
    const/4 v10, -0x2

    #@2e4
    if-ne v4, v10, :cond_8

    #@2e6
    .line 1590
    :cond_20
    const/16 v75, 0x1

    #@2e8
    .line 1592
    invoke-static {v6}, Landroid/view/ViewRootImpl;->shouldUseDisplaySize(Landroid/view/WindowManager$LayoutParams;)Z

    #@2eb
    move-result v4

    #@2ec
    if-eqz v4, :cond_21

    #@2ee
    .line 1594
    new-instance v63, Landroid/graphics/Point;

    #@2f0
    invoke-direct/range {v63 .. v63}, Landroid/graphics/Point;-><init>()V

    #@2f3
    .line 1595
    .restart local v63    # "size":Landroid/graphics/Point;
    move-object/from16 v0, p0

    #@2f5
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    #@2f7
    move-object/from16 v0, v63

    #@2f9
    invoke-virtual {v4, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    #@2fc
    .line 1596
    move-object/from16 v0, v63

    #@2fe
    iget v8, v0, Landroid/graphics/Point;->x:I

    #@300
    .line 1597
    move-object/from16 v0, v63

    #@302
    iget v9, v0, Landroid/graphics/Point;->y:I

    #@304
    goto/16 :goto_7

    #@306
    .line 1599
    .end local v63    # "size":Landroid/graphics/Point;
    :cond_21
    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@309
    move-result-object v32

    #@30a
    .line 1600
    .restart local v32    # "config":Landroid/content/res/Configuration;
    move-object/from16 v0, v32

    #@30c
    iget v4, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    #@30e
    move-object/from16 v0, p0

    #@310
    invoke-direct {v0, v4}, Landroid/view/ViewRootImpl;->dipToPx(I)I

    #@313
    move-result v8

    #@314
    .line 1601
    move-object/from16 v0, v32

    #@316
    iget v4, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    #@318
    move-object/from16 v0, p0

    #@31a
    invoke-direct {v0, v4}, Landroid/view/ViewRootImpl;->dipToPx(I)I

    #@31d
    move-result v9

    #@31e
    goto/16 :goto_7

    #@320
    .line 1632
    .end local v7    # "res":Landroid/content/res/Resources;
    .end local v32    # "config":Landroid/content/res/Configuration;
    .end local v75    # "windowSizeMayChange":Z
    .restart local v22    # "N":I
    .restart local v48    # "i":I
    .restart local v62    # "resizeMode":I
    :cond_22
    if-nez v62, :cond_23

    #@322
    .line 1633
    const/16 v62, 0x20

    #@324
    .line 1635
    :cond_23
    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    #@326
    and-int/lit16 v4, v4, 0xf0

    #@328
    move/from16 v0, v62

    #@32a
    if-eq v4, v0, :cond_24

    #@32c
    .line 1637
    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    #@32e
    and-int/lit16 v4, v4, -0xf1

    #@330
    or-int v4, v4, v62

    #@332
    iput v4, v6, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    #@334
    .line 1640
    move-object/from16 v59, v6

    #@336
    .line 1645
    .end local v22    # "N":I
    .end local v48    # "i":I
    .end local v62    # "resizeMode":I
    :cond_24
    if-eqz v59, :cond_26

    #@338
    .line 1646
    iget v4, v5, Landroid/view/View;->mPrivateFlags:I

    #@33a
    and-int/lit16 v4, v4, 0x200

    #@33c
    if-eqz v4, :cond_25

    #@33e
    .line 1647
    move-object/from16 v0, v59

    #@340
    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    #@342
    invoke-static {v4}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    #@345
    move-result v4

    #@346
    if-nez v4, :cond_25

    #@348
    .line 1648
    const/4 v4, -0x3

    #@349
    move-object/from16 v0, v59

    #@34b
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    #@34d
    .line 1651
    :cond_25
    move-object/from16 v0, p0

    #@34f
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@351
    move-object/from16 v0, v59

    #@353
    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@355
    .line 1652
    const/high16 v11, 0x2000000

    #@357
    .line 1651
    and-int/2addr v4, v11

    #@358
    if-eqz v4, :cond_3d

    #@35a
    const/4 v4, 0x1

    #@35b
    :goto_9
    iput-boolean v4, v10, Landroid/view/View$AttachInfo;->mOverscanRequested:Z

    #@35d
    .line 1655
    :cond_26
    move-object/from16 v0, p0

    #@35f
    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mApplyInsetsRequested:Z

    #@361
    if-eqz v4, :cond_27

    #@363
    .line 1656
    const/4 v4, 0x0

    #@364
    move-object/from16 v0, p0

    #@366
    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mApplyInsetsRequested:Z

    #@368
    .line 1657
    move-object/from16 v0, p0

    #@36a
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@36c
    iget-boolean v4, v4, Landroid/view/View$AttachInfo;->mOverscanRequested:Z

    #@36e
    move-object/from16 v0, p0

    #@370
    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mLastOverscanRequested:Z

    #@372
    .line 1658
    move-object/from16 v0, p0

    #@374
    invoke-virtual {v0, v5}, Landroid/view/ViewRootImpl;->dispatchApplyInsets(Landroid/view/View;)V

    #@377
    .line 1659
    move-object/from16 v0, p0

    #@379
    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    #@37b
    if-eqz v4, :cond_27

    #@37d
    .line 1664
    move-object/from16 v0, p0

    #@37f
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@381
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@384
    move-result-object v4

    #@385
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@388
    move-result-object v13

    #@389
    move-object/from16 v10, p0

    #@38b
    move-object v11, v5

    #@38c
    move-object v12, v6

    #@38d
    move v14, v8

    #@38e
    move v15, v9

    #@38f
    .line 1663
    invoke-direct/range {v10 .. v15}, Landroid/view/ViewRootImpl;->measureHierarchy(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/content/res/Resources;II)Z

    #@392
    move-result v4

    #@393
    or-int v75, v75, v4

    #@395
    .line 1669
    :cond_27
    if-eqz v54, :cond_28

    #@397
    .line 1673
    const/4 v4, 0x0

    #@398
    move-object/from16 v0, p0

    #@39a
    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    #@39c
    .line 1676
    :cond_28
    if-eqz v54, :cond_42

    #@39e
    if-eqz v75, :cond_42

    #@3a0
    .line 1677
    move-object/from16 v0, p0

    #@3a2
    iget v4, v0, Landroid/view/ViewRootImpl;->mWidth:I

    #@3a4
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    #@3a7
    move-result v10

    #@3a8
    if-ne v4, v10, :cond_29

    #@3aa
    move-object/from16 v0, p0

    #@3ac
    iget v4, v0, Landroid/view/ViewRootImpl;->mHeight:I

    #@3ae
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    #@3b1
    move-result v10

    #@3b2
    if-eq v4, v10, :cond_3e

    #@3b4
    :cond_29
    const/16 v74, 0x1

    #@3b6
    .line 1682
    .local v74, "windowShouldResize":Z
    :goto_a
    move-object/from16 v0, p0

    #@3b8
    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mDragResizing:Z

    #@3ba
    if-eqz v4, :cond_43

    #@3bc
    move-object/from16 v0, p0

    #@3be
    iget v4, v0, Landroid/view/ViewRootImpl;->mResizeMode:I

    #@3c0
    if-nez v4, :cond_43

    #@3c2
    const/4 v4, 0x1

    #@3c3
    :goto_b
    or-int v74, v74, v4

    #@3c5
    .line 1687
    .local v74, "windowShouldResize":Z
    move-object/from16 v0, p0

    #@3c7
    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mActivityRelaunched:Z

    #@3c9
    or-int v74, v74, v4

    #@3cb
    .line 1693
    move-object/from16 v0, p0

    #@3cd
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@3cf
    iget-object v4, v4, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    #@3d1
    invoke-virtual {v4}, Landroid/view/ViewTreeObserver;->hasComputeInternalInsetsListeners()Z

    #@3d4
    move-result v4

    #@3d5
    if-nez v4, :cond_44

    #@3d7
    .line 1694
    move-object/from16 v0, p0

    #@3d9
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@3db
    iget-boolean v0, v4, Landroid/view/View$AttachInfo;->mHasNonEmptyGivenInternalInsets:Z

    #@3dd
    move/from16 v31, v0

    #@3df
    .line 1696
    :goto_c
    const/16 v52, 0x0

    #@3e1
    .line 1697
    .local v52, "insetsPending":Z
    const/16 v61, 0x0

    #@3e3
    .line 1698
    .local v61, "relayoutResult":I
    const/16 v69, 0x0

    #@3e5
    .line 1700
    .local v69, "updatedConfiguration":Z
    move-object/from16 v0, p0

    #@3e7
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    #@3e9
    invoke-virtual {v4}, Landroid/view/Surface;->getGenerationId()I

    #@3ec
    move-result v66

    #@3ed
    .line 1702
    .local v66, "surfaceGenerationId":I
    if-nez v70, :cond_45

    #@3ef
    const/16 v53, 0x1

    #@3f1
    .line 1703
    .local v53, "isViewVisible":Z
    :goto_d
    move-object/from16 v0, p0

    #@3f3
    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mFirst:Z

    #@3f5
    if-nez v4, :cond_2a

    #@3f7
    if-nez v74, :cond_2a

    #@3f9
    if-nez v51, :cond_2a

    #@3fb
    if-nez v71, :cond_2a

    #@3fd
    .line 1704
    if-eqz v59, :cond_46

    #@3ff
    .line 1705
    :cond_2a
    const/4 v4, 0x0

    #@400
    move-object/from16 v0, p0

    #@402
    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mForceNextWindowRelayout:Z

    #@404
    .line 1707
    if-eqz v53, :cond_2b

    #@406
    .line 1717
    if-eqz v31, :cond_56

    #@408
    move-object/from16 v0, p0

    #@40a
    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mFirst:Z

    #@40c
    if-nez v4, :cond_55

    #@40e
    move/from16 v52, v71

    #@410
    .line 1720
    .end local v52    # "insetsPending":Z
    :cond_2b
    :goto_e
    move-object/from16 v0, p0

    #@412
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@414
    if-eqz v4, :cond_2c

    #@416
    .line 1721
    move-object/from16 v0, p0

    #@418
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@41a
    iget-object v4, v4, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@41c
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@41f
    .line 1722
    const/4 v4, 0x1

    #@420
    move-object/from16 v0, p0

    #@422
    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mDrawingAllowed:Z

    #@424
    .line 1725
    :cond_2c
    const/16 v47, 0x0

    #@426
    .line 1726
    .local v47, "hwInitialized":Z
    const/16 v41, 0x0

    #@428
    .line 1727
    .local v41, "framesChanged":Z
    move-object/from16 v0, p0

    #@42a
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    #@42c
    invoke-virtual {v4}, Landroid/view/Surface;->isValid()Z

    #@42f
    move-result v43

    #@430
    .line 1735
    .local v43, "hadSurface":Z
    :try_start_0
    move-object/from16 v0, p0

    #@432
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@434
    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    #@436
    if-eqz v4, :cond_2e

    #@438
    .line 1739
    move-object/from16 v0, p0

    #@43a
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@43c
    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    #@43e
    move-object/from16 v0, p0

    #@440
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    #@442
    invoke-virtual {v4, v10}, Landroid/view/ThreadedRenderer;->pauseSurface(Landroid/view/Surface;)Z

    #@445
    move-result v4

    #@446
    if-eqz v4, :cond_2d

    #@448
    .line 1742
    move-object/from16 v0, p0

    #@44a
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mDirty:Landroid/graphics/Rect;

    #@44c
    move-object/from16 v0, p0

    #@44e
    iget v10, v0, Landroid/view/ViewRootImpl;->mWidth:I

    #@450
    move-object/from16 v0, p0

    #@452
    iget v11, v0, Landroid/view/ViewRootImpl;->mHeight:I

    #@454
    const/4 v12, 0x0

    #@455
    const/16 v17, 0x0

    #@457
    move/from16 v0, v17

    #@459
    invoke-virtual {v4, v12, v0, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    #@45c
    .line 1744
    :cond_2d
    move-object/from16 v0, p0

    #@45e
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    #@460
    iget-object v4, v4, Landroid/view/Choreographer;->mFrameInfo:Landroid/view/FrameInfo;

    #@462
    const-wide/16 v10, 0x1

    #@464
    invoke-virtual {v4, v10, v11}, Landroid/view/FrameInfo;->addFlags(J)V

    #@467
    .line 1746
    :cond_2e
    move-object/from16 v0, p0

    #@469
    move-object/from16 v1, v59

    #@46b
    move/from16 v2, v70

    #@46d
    move/from16 v3, v52

    #@46f
    invoke-direct {v0, v1, v2, v3}, Landroid/view/ViewRootImpl;->relayoutWindow(Landroid/view/WindowManager$LayoutParams;IZ)I

    #@472
    move-result v61

    #@473
    .line 1756
    move-object/from16 v0, p0

    #@475
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingConfiguration:Landroid/content/res/Configuration;

    #@477
    iget v4, v4, Landroid/content/res/Configuration;->seq:I

    #@479
    if-eqz v4, :cond_2f

    #@47b
    .line 1759
    new-instance v10, Landroid/content/res/Configuration;

    #@47d
    move-object/from16 v0, p0

    #@47f
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingConfiguration:Landroid/content/res/Configuration;

    #@481
    invoke-direct {v10, v4}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    #@484
    move-object/from16 v0, p0

    #@486
    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mFirst:Z

    #@488
    if-eqz v4, :cond_57

    #@48a
    const/4 v4, 0x0

    #@48b
    :goto_f
    move-object/from16 v0, p0

    #@48d
    invoke-virtual {v0, v10, v4}, Landroid/view/ViewRootImpl;->updateConfiguration(Landroid/content/res/Configuration;Z)V

    #@490
    .line 1760
    move-object/from16 v0, p0

    #@492
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingConfiguration:Landroid/content/res/Configuration;

    #@494
    const/4 v10, 0x0

    #@495
    iput v10, v4, Landroid/content/res/Configuration;->seq:I

    #@497
    .line 1761
    const/16 v69, 0x1

    #@499
    .line 1764
    :cond_2f
    move-object/from16 v0, p0

    #@49b
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    #@49d
    .line 1765
    move-object/from16 v0, p0

    #@49f
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@4a1
    iget-object v10, v10, Landroid/view/View$AttachInfo;->mOverscanInsets:Landroid/graphics/Rect;

    #@4a3
    .line 1764
    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@4a6
    move-result v4

    #@4a7
    if-eqz v4, :cond_58

    #@4a9
    const/16 v58, 0x0

    #@4ab
    .line 1766
    .local v58, "overscanInsetsChanged":Z
    :goto_10
    move-object/from16 v0, p0

    #@4ad
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    #@4af
    .line 1767
    move-object/from16 v0, p0

    #@4b1
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@4b3
    iget-object v10, v10, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    #@4b5
    .line 1766
    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@4b8
    move-result v4

    #@4b9
    if-eqz v4, :cond_59

    #@4bb
    const/16 v33, 0x0

    #@4bd
    .line 1768
    .local v33, "contentInsetsChanged":Z
    :goto_11
    move-object/from16 v0, p0

    #@4bf
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    #@4c1
    .line 1769
    move-object/from16 v0, p0

    #@4c3
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@4c5
    iget-object v10, v10, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    #@4c7
    .line 1768
    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@4ca
    move-result v4

    #@4cb
    if-eqz v4, :cond_5a

    #@4cd
    const/16 v72, 0x0

    #@4cf
    .line 1770
    .local v72, "visibleInsetsChanged":Z
    :goto_12
    move-object/from16 v0, p0

    #@4d1
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    #@4d3
    .line 1771
    move-object/from16 v0, p0

    #@4d5
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@4d7
    iget-object v10, v10, Landroid/view/View$AttachInfo;->mStableInsets:Landroid/graphics/Rect;

    #@4d9
    .line 1770
    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@4dc
    move-result v4

    #@4dd
    if-eqz v4, :cond_5b

    #@4df
    const/16 v64, 0x0

    #@4e1
    .line 1772
    .local v64, "stableInsetsChanged":Z
    :goto_13
    move-object/from16 v0, p0

    #@4e3
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingOutsets:Landroid/graphics/Rect;

    #@4e5
    move-object/from16 v0, p0

    #@4e7
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@4e9
    iget-object v10, v10, Landroid/view/View$AttachInfo;->mOutsets:Landroid/graphics/Rect;

    #@4eb
    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@4ee
    move-result v4

    #@4ef
    if-eqz v4, :cond_5c

    #@4f1
    const/16 v57, 0x0

    #@4f3
    .line 1773
    .local v57, "outsetsChanged":Z
    :goto_14
    and-int/lit8 v4, v61, 0x20

    #@4f5
    if-eqz v4, :cond_5d

    #@4f7
    const/16 v67, 0x1

    #@4f9
    .line 1776
    .local v67, "surfaceSizeChanged":Z
    :goto_15
    move-object/from16 v0, p0

    #@4fb
    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mPendingAlwaysConsumeNavBar:Z

    #@4fd
    move-object/from16 v0, p0

    #@4ff
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@501
    iget-boolean v10, v10, Landroid/view/View$AttachInfo;->mAlwaysConsumeNavBar:Z

    #@503
    if-eq v4, v10, :cond_5e

    #@505
    const/16 v23, 0x1

    #@507
    .line 1777
    .local v23, "alwaysConsumeNavBarChanged":Z
    :goto_16
    if-eqz v33, :cond_30

    #@509
    .line 1778
    move-object/from16 v0, p0

    #@50b
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@50d
    iget-object v4, v4, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    #@50f
    move-object/from16 v0, p0

    #@511
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    #@513
    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@516
    .line 1782
    :cond_30
    if-eqz v58, :cond_31

    #@518
    .line 1783
    move-object/from16 v0, p0

    #@51a
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@51c
    iget-object v4, v4, Landroid/view/View$AttachInfo;->mOverscanInsets:Landroid/graphics/Rect;

    #@51e
    move-object/from16 v0, p0

    #@520
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    #@522
    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@525
    .line 1787
    const/16 v33, 0x1

    #@527
    .line 1789
    :cond_31
    if-eqz v64, :cond_32

    #@529
    .line 1790
    move-object/from16 v0, p0

    #@52b
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@52d
    iget-object v4, v4, Landroid/view/View$AttachInfo;->mStableInsets:Landroid/graphics/Rect;

    #@52f
    move-object/from16 v0, p0

    #@531
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    #@533
    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@536
    .line 1794
    const/16 v33, 0x1

    #@538
    .line 1796
    :cond_32
    if-eqz v23, :cond_33

    #@53a
    .line 1797
    move-object/from16 v0, p0

    #@53c
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@53e
    move-object/from16 v0, p0

    #@540
    iget-boolean v10, v0, Landroid/view/ViewRootImpl;->mPendingAlwaysConsumeNavBar:Z

    #@542
    iput-boolean v10, v4, Landroid/view/View$AttachInfo;->mAlwaysConsumeNavBar:Z

    #@544
    .line 1798
    const/16 v33, 0x1

    #@546
    .line 1800
    :cond_33
    if-nez v33, :cond_34

    #@548
    move-object/from16 v0, p0

    #@54a
    iget v4, v0, Landroid/view/ViewRootImpl;->mLastSystemUiVisibility:I

    #@54c
    .line 1801
    move-object/from16 v0, p0

    #@54e
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@550
    iget v10, v10, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    #@552
    .line 1800
    if-eq v4, v10, :cond_5f

    #@554
    .line 1804
    :cond_34
    :goto_17
    move-object/from16 v0, p0

    #@556
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@558
    iget v4, v4, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    #@55a
    move-object/from16 v0, p0

    #@55c
    iput v4, v0, Landroid/view/ViewRootImpl;->mLastSystemUiVisibility:I

    #@55e
    .line 1805
    move-object/from16 v0, p0

    #@560
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@562
    iget-boolean v4, v4, Landroid/view/View$AttachInfo;->mOverscanRequested:Z

    #@564
    move-object/from16 v0, p0

    #@566
    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mLastOverscanRequested:Z

    #@568
    .line 1806
    move-object/from16 v0, p0

    #@56a
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@56c
    iget-object v4, v4, Landroid/view/View$AttachInfo;->mOutsets:Landroid/graphics/Rect;

    #@56e
    move-object/from16 v0, p0

    #@570
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mPendingOutsets:Landroid/graphics/Rect;

    #@572
    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@575
    .line 1807
    const/4 v4, 0x0

    #@576
    move-object/from16 v0, p0

    #@578
    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mApplyInsetsRequested:Z

    #@57a
    .line 1808
    move-object/from16 v0, p0

    #@57c
    invoke-virtual {v0, v5}, Landroid/view/ViewRootImpl;->dispatchApplyInsets(Landroid/view/View;)V

    #@57f
    .line 1810
    :cond_35
    if-eqz v72, :cond_36

    #@581
    .line 1811
    move-object/from16 v0, p0

    #@583
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@585
    iget-object v4, v4, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    #@587
    move-object/from16 v0, p0

    #@589
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    #@58b
    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@58e
    .line 1820
    :cond_36
    if-nez v58, :cond_60

    #@590
    if-nez v33, :cond_60

    #@592
    if-nez v64, :cond_60

    #@594
    if-nez v72, :cond_60

    #@596
    .line 1824
    move/from16 v41, v57

    #@598
    .line 1825
    .end local v41    # "framesChanged":Z
    :goto_18
    move-object/from16 v0, p0

    #@59a
    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mAdded:Z

    #@59c
    if-eqz v4, :cond_37

    #@59e
    move-object/from16 v0, p0

    #@5a0
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@5a2
    if-eqz v4, :cond_37

    #@5a4
    if-eqz v41, :cond_37

    #@5a6
    .line 1826
    move-object/from16 v0, p0

    #@5a8
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@5aa
    invoke-static {v4}, Landroid/view/ViewRootImpl;->forceLayout(Landroid/view/View;)V

    #@5ad
    .line 1829
    :cond_37
    if-nez v43, :cond_61

    #@5af
    .line 1830
    move-object/from16 v0, p0

    #@5b1
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    #@5b3
    invoke-virtual {v4}, Landroid/view/Surface;->isValid()Z

    #@5b6
    move-result v4

    #@5b7
    if-eqz v4, :cond_38

    #@5b9
    .line 1838
    const/16 v56, 0x1

    #@5bb
    .line 1839
    const/4 v4, 0x1

    #@5bc
    move-object/from16 v0, p0

    #@5be
    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    #@5c0
    .line 1840
    move-object/from16 v0, p0

    #@5c2
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPreviousTransparentRegion:Landroid/graphics/Region;

    #@5c4
    invoke-virtual {v4}, Landroid/graphics/Region;->setEmpty()V

    #@5c7
    .line 1845
    move-object/from16 v0, p0

    #@5c9
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@5cb
    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    #@5cd
    if-eqz v4, :cond_38

    #@5cf
    .line 1847
    :try_start_1
    move-object/from16 v0, p0

    #@5d1
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@5d3
    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    #@5d5
    .line 1848
    move-object/from16 v0, p0

    #@5d7
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    #@5d9
    .line 1847
    invoke-virtual {v4, v10}, Landroid/view/ThreadedRenderer;->initialize(Landroid/view/Surface;)Z

    #@5dc
    move-result v47

    #@5dd
    .line 1849
    .local v47, "hwInitialized":Z
    if-eqz v47, :cond_38

    #@5df
    iget v4, v5, Landroid/view/View;->mPrivateFlags:I

    #@5e1
    and-int/lit16 v4, v4, 0x200

    #@5e3
    if-nez v4, :cond_38

    #@5e5
    .line 1853
    move-object/from16 v0, p0

    #@5e7
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    #@5e9
    invoke-virtual {v4}, Landroid/view/Surface;->allocateBuffers()V
    :try_end_1
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@5ec
    .line 1900
    .end local v47    # "hwInitialized":Z
    :cond_38
    :goto_19
    and-int/lit8 v4, v61, 0x10

    #@5ee
    if-eqz v4, :cond_67

    #@5f0
    const/16 v42, 0x1

    #@5f2
    .line 1902
    .local v42, "freeformResizing":Z
    :goto_1a
    and-int/lit8 v4, v61, 0x8

    #@5f4
    if-eqz v4, :cond_68

    #@5f6
    const/16 v35, 0x1

    #@5f8
    .line 1904
    .local v35, "dockedResizing":Z
    :goto_1b
    if-nez v42, :cond_69

    #@5fa
    move/from16 v36, v35

    #@5fc
    .line 1905
    :goto_1c
    :try_start_2
    move-object/from16 v0, p0

    #@5fe
    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mDragResizing:Z

    #@600
    move/from16 v0, v36

    #@602
    if-eq v4, v0, :cond_39

    #@604
    .line 1906
    if-eqz v36, :cond_6b

    #@606
    .line 1907
    if-eqz v42, :cond_6a

    #@608
    .line 1908
    const/4 v4, 0x0

    #@609
    .line 1907
    :goto_1d
    move-object/from16 v0, p0

    #@60b
    iput v4, v0, Landroid/view/ViewRootImpl;->mResizeMode:I

    #@60d
    .line 1910
    move-object/from16 v0, p0

    #@60f
    iget-object v11, v0, Landroid/view/ViewRootImpl;->mPendingBackDropFrame:Landroid/graphics/Rect;

    #@611
    .line 1911
    move-object/from16 v0, p0

    #@613
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    #@615
    move-object/from16 v0, p0

    #@617
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mPendingBackDropFrame:Landroid/graphics/Rect;

    #@619
    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@61c
    move-result v12

    #@61d
    move-object/from16 v0, p0

    #@61f
    iget-object v13, v0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    #@621
    .line 1912
    move-object/from16 v0, p0

    #@623
    iget-object v14, v0, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    #@625
    move-object/from16 v0, p0

    #@627
    iget v15, v0, Landroid/view/ViewRootImpl;->mResizeMode:I

    #@629
    move-object/from16 v10, p0

    #@62b
    .line 1910
    invoke-direct/range {v10 .. v15}, Landroid/view/ViewRootImpl;->startDragResizing(Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Rect;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    #@62e
    .line 1932
    .end local v23    # "alwaysConsumeNavBarChanged":Z
    .end local v33    # "contentInsetsChanged":Z
    .end local v35    # "dockedResizing":Z
    .end local v42    # "freeformResizing":Z
    .end local v57    # "outsetsChanged":Z
    .end local v58    # "overscanInsetsChanged":Z
    .end local v64    # "stableInsetsChanged":Z
    .end local v67    # "surfaceSizeChanged":Z
    .end local v72    # "visibleInsetsChanged":Z
    :cond_39
    :goto_1e
    move-object/from16 v0, p0

    #@630
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@632
    move-object/from16 v0, v40

    #@634
    iget v10, v0, Landroid/graphics/Rect;->left:I

    #@636
    iput v10, v4, Landroid/view/View$AttachInfo;->mWindowLeft:I

    #@638
    .line 1933
    move-object/from16 v0, p0

    #@63a
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@63c
    move-object/from16 v0, v40

    #@63e
    iget v10, v0, Landroid/graphics/Rect;->top:I

    #@640
    iput v10, v4, Landroid/view/View$AttachInfo;->mWindowTop:I

    #@642
    .line 1938
    move-object/from16 v0, p0

    #@644
    iget v4, v0, Landroid/view/ViewRootImpl;->mWidth:I

    #@646
    invoke-virtual/range {v40 .. v40}, Landroid/graphics/Rect;->width()I

    #@649
    move-result v10

    #@64a
    if-ne v4, v10, :cond_3a

    #@64c
    move-object/from16 v0, p0

    #@64e
    iget v4, v0, Landroid/view/ViewRootImpl;->mHeight:I

    #@650
    invoke-virtual/range {v40 .. v40}, Landroid/graphics/Rect;->height()I

    #@653
    move-result v10

    #@654
    if-eq v4, v10, :cond_3b

    #@656
    .line 1939
    :cond_3a
    invoke-virtual/range {v40 .. v40}, Landroid/graphics/Rect;->width()I

    #@659
    move-result v4

    #@65a
    move-object/from16 v0, p0

    #@65c
    iput v4, v0, Landroid/view/ViewRootImpl;->mWidth:I

    #@65e
    .line 1940
    invoke-virtual/range {v40 .. v40}, Landroid/graphics/Rect;->height()I

    #@661
    move-result v4

    #@662
    move-object/from16 v0, p0

    #@664
    iput v4, v0, Landroid/view/ViewRootImpl;->mHeight:I

    #@666
    .line 1943
    :cond_3b
    move-object/from16 v0, p0

    #@668
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@66a
    if-eqz v4, :cond_70

    #@66c
    .line 1945
    move-object/from16 v0, p0

    #@66e
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    #@670
    invoke-virtual {v4}, Landroid/view/Surface;->isValid()Z

    #@673
    move-result v4

    #@674
    if-eqz v4, :cond_3c

    #@676
    .line 1948
    move-object/from16 v0, p0

    #@678
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@67a
    move-object/from16 v0, p0

    #@67c
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    #@67e
    iput-object v10, v4, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;

    #@680
    .line 1950
    :cond_3c
    move-object/from16 v0, p0

    #@682
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@684
    move-object/from16 v0, p0

    #@686
    iget v10, v0, Landroid/view/ViewRootImpl;->mWidth:I

    #@688
    move-object/from16 v0, p0

    #@68a
    iget v11, v0, Landroid/view/ViewRootImpl;->mHeight:I

    #@68c
    invoke-virtual {v4, v10, v11}, Lcom/android/internal/view/BaseSurfaceHolder;->setSurfaceFrameSize(II)V

    #@68f
    .line 1951
    move-object/from16 v0, p0

    #@691
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@693
    iget-object v4, v4, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@695
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@698
    .line 1952
    move-object/from16 v0, p0

    #@69a
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    #@69c
    invoke-virtual {v4}, Landroid/view/Surface;->isValid()Z

    #@69f
    move-result v4

    #@6a0
    if-eqz v4, :cond_78

    #@6a2
    .line 1953
    if-nez v43, :cond_6d

    #@6a4
    .line 1954
    move-object/from16 v0, p0

    #@6a6
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@6a8
    invoke-virtual {v4}, Lcom/android/internal/view/BaseSurfaceHolder;->ungetCallbacks()V

    #@6ab
    .line 1956
    const/4 v4, 0x1

    #@6ac
    move-object/from16 v0, p0

    #@6ae
    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mIsCreating:Z

    #@6b0
    .line 1957
    move-object/from16 v0, p0

    #@6b2
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    #@6b4
    move-object/from16 v0, p0

    #@6b6
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@6b8
    invoke-interface {v4, v10}, Landroid/view/SurfaceHolder$Callback2;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    #@6bb
    .line 1958
    move-object/from16 v0, p0

    #@6bd
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@6bf
    invoke-virtual {v4}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    #@6c2
    move-result-object v25

    #@6c3
    .line 1959
    .local v25, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    if-eqz v25, :cond_6c

    #@6c5
    .line 1960
    const/4 v4, 0x0

    #@6c6
    move-object/from16 v0, v25

    #@6c8
    array-length v10, v0

    #@6c9
    :goto_1f
    if-ge v4, v10, :cond_6c

    #@6cb
    aget-object v24, v25, v4

    #@6cd
    .line 1961
    .local v24, "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    #@6cf
    iget-object v11, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@6d1
    move-object/from16 v0, v24

    #@6d3
    invoke-interface {v0, v11}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    #@6d6
    .line 1960
    add-int/lit8 v4, v4, 0x1

    #@6d8
    goto :goto_1f

    #@6d9
    .line 1651
    .end local v24    # "c":Landroid/view/SurfaceHolder$Callback;
    .end local v25    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .end local v43    # "hadSurface":Z
    .end local v53    # "isViewVisible":Z
    .end local v61    # "relayoutResult":I
    .end local v66    # "surfaceGenerationId":I
    .end local v69    # "updatedConfiguration":Z
    .end local v74    # "windowShouldResize":Z
    :cond_3d
    const/4 v4, 0x0

    #@6da
    goto/16 :goto_9

    #@6dc
    .line 1678
    :cond_3e
    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    #@6de
    const/4 v10, -0x2

    #@6df
    if-ne v4, v10, :cond_3f

    #@6e1
    .line 1679
    invoke-virtual/range {v40 .. v40}, Landroid/graphics/Rect;->width()I

    #@6e4
    move-result v4

    #@6e5
    if-ge v4, v8, :cond_3f

    #@6e7
    invoke-virtual/range {v40 .. v40}, Landroid/graphics/Rect;->width()I

    #@6ea
    move-result v4

    #@6eb
    move-object/from16 v0, p0

    #@6ed
    iget v10, v0, Landroid/view/ViewRootImpl;->mWidth:I

    #@6ef
    if-ne v4, v10, :cond_29

    #@6f1
    .line 1680
    :cond_3f
    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    #@6f3
    const/4 v10, -0x2

    #@6f4
    if-ne v4, v10, :cond_41

    #@6f6
    .line 1681
    invoke-virtual/range {v40 .. v40}, Landroid/graphics/Rect;->height()I

    #@6f9
    move-result v4

    #@6fa
    if-ge v4, v9, :cond_41

    #@6fc
    invoke-virtual/range {v40 .. v40}, Landroid/graphics/Rect;->height()I

    #@6ff
    move-result v4

    #@700
    move-object/from16 v0, p0

    #@702
    iget v10, v0, Landroid/view/ViewRootImpl;->mHeight:I

    #@704
    if-eq v4, v10, :cond_40

    #@706
    const/16 v74, 0x1

    #@708
    .local v74, "windowShouldResize":Z
    goto/16 :goto_a

    #@70a
    .end local v74    # "windowShouldResize":Z
    :cond_40
    const/16 v74, 0x0

    #@70c
    .restart local v74    # "windowShouldResize":Z
    goto/16 :goto_a

    #@70e
    .line 1680
    .end local v74    # "windowShouldResize":Z
    :cond_41
    const/16 v74, 0x0

    #@710
    .restart local v74    # "windowShouldResize":Z
    goto/16 :goto_a

    #@712
    .line 1676
    .end local v74    # "windowShouldResize":Z
    :cond_42
    const/16 v74, 0x0

    #@714
    .restart local v74    # "windowShouldResize":Z
    goto/16 :goto_a

    #@716
    .line 1682
    :cond_43
    const/4 v4, 0x0

    #@717
    goto/16 :goto_b

    #@719
    .line 1693
    .local v74, "windowShouldResize":Z
    :cond_44
    const/16 v31, 0x1

    #@71b
    .local v31, "computesInternalInsets":Z
    goto/16 :goto_c

    #@71d
    .line 1702
    .end local v31    # "computesInternalInsets":Z
    .restart local v52    # "insetsPending":Z
    .restart local v61    # "relayoutResult":I
    .restart local v66    # "surfaceGenerationId":I
    .restart local v69    # "updatedConfiguration":Z
    :cond_45
    const/16 v53, 0x0

    #@71f
    .restart local v53    # "isViewVisible":Z
    goto/16 :goto_d

    #@721
    .line 1704
    :cond_46
    move-object/from16 v0, p0

    #@723
    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mForceNextWindowRelayout:Z

    #@725
    .line 1703
    if-nez v4, :cond_2a

    #@727
    .line 2062
    move-object/from16 v0, p0

    #@729
    move-object/from16 v1, v40

    #@72b
    invoke-direct {v0, v1}, Landroid/view/ViewRootImpl;->maybeHandleWindowMove(Landroid/graphics/Rect;)V

    #@72e
    .line 2065
    .end local v52    # "insetsPending":Z
    .end local v54    # "layoutRequested":Z
    :cond_47
    :goto_20
    if-eqz v54, :cond_7e

    #@730
    move-object/from16 v0, p0

    #@732
    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mStopped:Z

    #@734
    if-eqz v4, :cond_7d

    #@736
    move-object/from16 v0, p0

    #@738
    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    #@73a
    move/from16 v34, v0

    #@73c
    .line 2066
    .local v34, "didLayout":Z
    :goto_21
    if-nez v34, :cond_7f

    #@73e
    .line 2067
    move-object/from16 v0, p0

    #@740
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@742
    iget-boolean v0, v4, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    #@744
    move/from16 v68, v0

    #@746
    .line 2068
    :goto_22
    if-eqz v34, :cond_49

    #@748
    .line 2069
    move-object/from16 v0, p0

    #@74a
    iget v4, v0, Landroid/view/ViewRootImpl;->mWidth:I

    #@74c
    move-object/from16 v0, p0

    #@74e
    iget v10, v0, Landroid/view/ViewRootImpl;->mHeight:I

    #@750
    move-object/from16 v0, p0

    #@752
    invoke-direct {v0, v6, v4, v10}, Landroid/view/ViewRootImpl;->performLayout(Landroid/view/WindowManager$LayoutParams;II)V

    #@755
    .line 2074
    iget v4, v5, Landroid/view/View;->mPrivateFlags:I

    #@757
    and-int/lit16 v4, v4, 0x200

    #@759
    if-eqz v4, :cond_49

    #@75b
    .line 2077
    move-object/from16 v0, p0

    #@75d
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTmpLocation:[I

    #@75f
    invoke-virtual {v5, v4}, Landroid/view/View;->getLocationInWindow([I)V

    #@762
    .line 2078
    move-object/from16 v0, p0

    #@764
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    #@766
    move-object/from16 v0, p0

    #@768
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mTmpLocation:[I

    #@76a
    const/4 v11, 0x0

    #@76b
    aget v10, v10, v11

    #@76d
    move-object/from16 v0, p0

    #@76f
    iget-object v11, v0, Landroid/view/ViewRootImpl;->mTmpLocation:[I

    #@771
    const/4 v12, 0x1

    #@772
    aget v11, v11, v12

    #@774
    .line 2079
    move-object/from16 v0, p0

    #@776
    iget-object v12, v0, Landroid/view/ViewRootImpl;->mTmpLocation:[I

    #@778
    const/16 v17, 0x0

    #@77a
    aget v12, v12, v17

    #@77c
    iget v0, v5, Landroid/view/View;->mRight:I

    #@77e
    move/from16 v17, v0

    #@780
    add-int v12, v12, v17

    #@782
    iget v0, v5, Landroid/view/View;->mLeft:I

    #@784
    move/from16 v17, v0

    #@786
    sub-int v12, v12, v17

    #@788
    .line 2080
    move-object/from16 v0, p0

    #@78a
    iget-object v0, v0, Landroid/view/ViewRootImpl;->mTmpLocation:[I

    #@78c
    move-object/from16 v17, v0

    #@78e
    const/16 v18, 0x1

    #@790
    aget v17, v17, v18

    #@792
    iget v0, v5, Landroid/view/View;->mBottom:I

    #@794
    move/from16 v18, v0

    #@796
    add-int v17, v17, v18

    #@798
    iget v0, v5, Landroid/view/View;->mTop:I

    #@79a
    move/from16 v18, v0

    #@79c
    sub-int v17, v17, v18

    #@79e
    .line 2078
    move/from16 v0, v17

    #@7a0
    invoke-virtual {v4, v10, v11, v12, v0}, Landroid/graphics/Region;->set(IIII)Z

    #@7a3
    .line 2082
    move-object/from16 v0, p0

    #@7a5
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    #@7a7
    invoke-virtual {v5, v4}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    #@7aa
    .line 2083
    move-object/from16 v0, p0

    #@7ac
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@7ae
    if-eqz v4, :cond_48

    #@7b0
    .line 2084
    move-object/from16 v0, p0

    #@7b2
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@7b4
    move-object/from16 v0, p0

    #@7b6
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    #@7b8
    invoke-virtual {v4, v10}, Landroid/content/res/CompatibilityInfo$Translator;->translateRegionInWindowToScreen(Landroid/graphics/Region;)V

    #@7bb
    .line 2087
    :cond_48
    move-object/from16 v0, p0

    #@7bd
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    #@7bf
    move-object/from16 v0, p0

    #@7c1
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mPreviousTransparentRegion:Landroid/graphics/Region;

    #@7c3
    invoke-virtual {v4, v10}, Landroid/graphics/Region;->equals(Ljava/lang/Object;)Z

    #@7c6
    move-result v4

    #@7c7
    if-nez v4, :cond_49

    #@7c9
    .line 2088
    move-object/from16 v0, p0

    #@7cb
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPreviousTransparentRegion:Landroid/graphics/Region;

    #@7cd
    move-object/from16 v0, p0

    #@7cf
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    #@7d1
    invoke-virtual {v4, v10}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    #@7d4
    .line 2089
    const/4 v4, 0x1

    #@7d5
    move-object/from16 v0, p0

    #@7d7
    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    #@7d9
    .line 2092
    :try_start_3
    move-object/from16 v0, p0

    #@7db
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    #@7dd
    move-object/from16 v0, p0

    #@7df
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    #@7e1
    move-object/from16 v0, p0

    #@7e3
    iget-object v11, v0, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    #@7e5
    invoke-interface {v4, v10, v11}, Landroid/view/IWindowSession;->setTransparentRegion(Landroid/view/IWindow;Landroid/graphics/Region;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_4

    #@7e8
    .line 2105
    :cond_49
    :goto_23
    if-eqz v68, :cond_4a

    #@7ea
    .line 2106
    move-object/from16 v0, p0

    #@7ec
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@7ee
    const/4 v10, 0x0

    #@7ef
    iput-boolean v10, v4, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    #@7f1
    .line 2107
    move-object/from16 v0, p0

    #@7f3
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@7f5
    iget-object v4, v4, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    #@7f7
    invoke-virtual {v4}, Landroid/view/ViewTreeObserver;->dispatchOnGlobalLayout()V

    #@7fa
    .line 2110
    :cond_4a
    if-eqz v31, :cond_4b

    #@7fc
    .line 2112
    move-object/from16 v0, p0

    #@7fe
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@800
    iget-object v0, v4, Landroid/view/View$AttachInfo;->mGivenInternalInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    #@802
    move-object/from16 v50, v0

    #@804
    .line 2113
    .local v50, "insets":Landroid/view/ViewTreeObserver$InternalInsetsInfo;
    invoke-virtual/range {v50 .. v50}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->reset()V

    #@807
    .line 2116
    move-object/from16 v0, p0

    #@809
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@80b
    iget-object v4, v4, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    #@80d
    move-object/from16 v0, v50

    #@80f
    invoke-virtual {v4, v0}, Landroid/view/ViewTreeObserver;->dispatchOnComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V

    #@812
    .line 2117
    move-object/from16 v0, p0

    #@814
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@816
    invoke-virtual/range {v50 .. v50}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->isEmpty()Z

    #@819
    move-result v4

    #@81a
    if-eqz v4, :cond_80

    #@81c
    const/4 v4, 0x0

    #@81d
    :goto_24
    iput-boolean v4, v10, Landroid/view/View$AttachInfo;->mHasNonEmptyGivenInternalInsets:Z

    #@81f
    .line 2120
    if-nez v52, :cond_81

    #@821
    move-object/from16 v0, p0

    #@823
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mLastGivenInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    #@825
    move-object/from16 v0, v50

    #@827
    invoke-virtual {v4, v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->equals(Ljava/lang/Object;)Z

    #@82a
    move-result v4

    #@82b
    if-eqz v4, :cond_81

    #@82d
    .line 2145
    .end local v50    # "insets":Landroid/view/ViewTreeObserver$InternalInsetsInfo;
    :cond_4b
    :goto_25
    move-object/from16 v0, p0

    #@82f
    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mFirst:Z

    #@831
    if-eqz v4, :cond_4c

    #@833
    .line 2149
    move-object/from16 v0, p0

    #@835
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@837
    if-eqz v4, :cond_4c

    #@839
    .line 2150
    move-object/from16 v0, p0

    #@83b
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@83d
    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    #@840
    move-result v4

    #@841
    if-nez v4, :cond_4c

    #@843
    .line 2151
    move-object/from16 v0, p0

    #@845
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@847
    const/4 v10, 0x2

    #@848
    invoke-virtual {v4, v10}, Landroid/view/View;->requestFocus(I)Z

    #@84b
    .line 2161
    :cond_4c
    if-nez v71, :cond_4d

    #@84d
    move-object/from16 v0, p0

    #@84f
    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mFirst:Z

    #@851
    if-eqz v4, :cond_83

    #@853
    :cond_4d
    move/from16 v27, v53

    #@855
    .line 2162
    :goto_26
    move-object/from16 v0, p0

    #@857
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@859
    iget-boolean v4, v4, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    #@85b
    if-eqz v4, :cond_84

    #@85d
    move/from16 v45, v53

    #@85f
    .line 2163
    .local v45, "hasWindowFocus":Z
    :goto_27
    if-eqz v45, :cond_85

    #@861
    move-object/from16 v0, p0

    #@863
    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mLostWindowFocus:Z

    #@865
    move/from16 v60, v0

    #@867
    .line 2164
    .local v60, "regainedFocus":Z
    :goto_28
    if-eqz v60, :cond_86

    #@869
    .line 2165
    const/4 v4, 0x0

    #@86a
    move-object/from16 v0, p0

    #@86c
    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mLostWindowFocus:Z

    #@86e
    .line 2170
    :cond_4e
    :goto_29
    if-nez v27, :cond_4f

    #@870
    if-eqz v60, :cond_50

    #@872
    .line 2171
    :cond_4f
    const/16 v4, 0x20

    #@874
    invoke-virtual {v5, v4}, Landroid/view/View;->sendAccessibilityEvent(I)V

    #@877
    .line 2174
    :cond_50
    const/4 v4, 0x0

    #@878
    move-object/from16 v0, p0

    #@87a
    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mFirst:Z

    #@87c
    .line 2175
    const/4 v4, 0x0

    #@87d
    move-object/from16 v0, p0

    #@87f
    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mWillDrawSoon:Z

    #@881
    .line 2176
    const/4 v4, 0x0

    #@882
    move-object/from16 v0, p0

    #@884
    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mNewSurfaceNeeded:Z

    #@886
    .line 2177
    const/4 v4, 0x0

    #@887
    move-object/from16 v0, p0

    #@889
    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mActivityRelaunched:Z

    #@88b
    .line 2178
    move/from16 v0, v70

    #@88d
    move-object/from16 v1, p0

    #@88f
    iput v0, v1, Landroid/view/ViewRootImpl;->mViewVisibility:I

    #@891
    .line 2179
    move/from16 v0, v45

    #@893
    move-object/from16 v1, p0

    #@895
    iput-boolean v0, v1, Landroid/view/ViewRootImpl;->mHadWindowFocus:Z

    #@897
    .line 2181
    if-eqz v45, :cond_51

    #@899
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->isInLocalFocusMode()Z

    #@89c
    move-result v4

    #@89d
    if-eqz v4, :cond_87

    #@89f
    .line 2197
    :cond_51
    :goto_2a
    and-int/lit8 v4, v61, 0x2

    #@8a1
    if-eqz v4, :cond_52

    #@8a3
    .line 2198
    const/4 v4, 0x1

    #@8a4
    move-object/from16 v0, p0

    #@8a6
    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    #@8a8
    .line 2201
    :cond_52
    move-object/from16 v0, p0

    #@8aa
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@8ac
    iget-object v4, v4, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    #@8ae
    invoke-virtual {v4}, Landroid/view/ViewTreeObserver;->dispatchOnPreDraw()Z

    #@8b1
    move-result v4

    #@8b2
    if-nez v4, :cond_89

    #@8b4
    if-eqz v53, :cond_89

    #@8b6
    const/16 v26, 0x0

    #@8b8
    .line 2203
    .local v26, "cancelDraw":Z
    :goto_2b
    if-nez v26, :cond_53

    #@8ba
    if-eqz v56, :cond_8a

    #@8bc
    .line 2213
    :cond_53
    if-eqz v53, :cond_8d

    #@8be
    .line 2215
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    #@8c1
    .line 2224
    :cond_54
    :goto_2c
    const/4 v4, 0x0

    #@8c2
    move-object/from16 v0, p0

    #@8c4
    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mIsInTraversal:Z

    #@8c6
    .line 1436
    return-void

    #@8c7
    .line 1717
    .end local v26    # "cancelDraw":Z
    .end local v34    # "didLayout":Z
    .end local v45    # "hasWindowFocus":Z
    .end local v60    # "regainedFocus":Z
    .restart local v52    # "insetsPending":Z
    .restart local v54    # "layoutRequested":Z
    :cond_55
    const/16 v52, 0x1

    #@8c9
    goto/16 :goto_e

    #@8cb
    :cond_56
    const/16 v52, 0x0

    #@8cd
    goto/16 :goto_e

    #@8cf
    .line 1759
    .end local v52    # "insetsPending":Z
    .restart local v41    # "framesChanged":Z
    .restart local v43    # "hadSurface":Z
    .local v47, "hwInitialized":Z
    :cond_57
    const/4 v4, 0x1

    #@8d0
    goto/16 :goto_f

    #@8d2
    .line 1764
    :cond_58
    const/16 v58, 0x1

    #@8d4
    .restart local v58    # "overscanInsetsChanged":Z
    goto/16 :goto_10

    #@8d6
    .line 1766
    :cond_59
    const/16 v33, 0x1

    #@8d8
    .restart local v33    # "contentInsetsChanged":Z
    goto/16 :goto_11

    #@8da
    .line 1768
    :cond_5a
    const/16 v72, 0x1

    #@8dc
    .restart local v72    # "visibleInsetsChanged":Z
    goto/16 :goto_12

    #@8de
    .line 1770
    :cond_5b
    const/16 v64, 0x1

    #@8e0
    .restart local v64    # "stableInsetsChanged":Z
    goto/16 :goto_13

    #@8e2
    .line 1772
    :cond_5c
    const/16 v57, 0x1

    #@8e4
    .restart local v57    # "outsetsChanged":Z
    goto/16 :goto_14

    #@8e6
    .line 1773
    :cond_5d
    const/16 v67, 0x0

    #@8e8
    .restart local v67    # "surfaceSizeChanged":Z
    goto/16 :goto_15

    #@8ea
    .line 1776
    :cond_5e
    const/16 v23, 0x0

    #@8ec
    .restart local v23    # "alwaysConsumeNavBarChanged":Z
    goto/16 :goto_16

    #@8ee
    .line 1801
    :cond_5f
    :try_start_4
    move-object/from16 v0, p0

    #@8f0
    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mApplyInsetsRequested:Z

    #@8f2
    .line 1800
    if-nez v4, :cond_34

    #@8f4
    .line 1802
    move-object/from16 v0, p0

    #@8f6
    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mLastOverscanRequested:Z

    #@8f8
    move-object/from16 v0, p0

    #@8fa
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@8fc
    iget-boolean v10, v10, Landroid/view/View$AttachInfo;->mOverscanRequested:Z

    #@8fe
    if-ne v4, v10, :cond_34

    #@900
    .line 1800
    if-eqz v57, :cond_35

    #@902
    goto/16 :goto_17

    #@904
    .line 1820
    :cond_60
    const/16 v41, 0x1

    #@906
    goto/16 :goto_18

    #@908
    .line 1855
    .end local v41    # "framesChanged":Z
    .end local v47    # "hwInitialized":Z
    :catch_0
    move-exception v38

    #@909
    .line 1856
    .local v38, "e":Landroid/view/Surface$OutOfResourcesException;
    move-object/from16 v0, p0

    #@90b
    move-object/from16 v1, v38

    #@90d
    invoke-direct {v0, v1}, Landroid/view/ViewRootImpl;->handleOutOfResourcesException(Landroid/view/Surface$OutOfResourcesException;)V

    #@910
    .line 1857
    return-void

    #@911
    .line 1861
    .end local v38    # "e":Landroid/view/Surface$OutOfResourcesException;
    .restart local v47    # "hwInitialized":Z
    :cond_61
    move-object/from16 v0, p0

    #@913
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    #@915
    invoke-virtual {v4}, Landroid/view/Surface;->isValid()Z

    #@918
    move-result v4

    #@919
    if-nez v4, :cond_65

    #@91b
    .line 1864
    move-object/from16 v0, p0

    #@91d
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mLastScrolledFocus:Ljava/lang/ref/WeakReference;

    #@91f
    if-eqz v4, :cond_62

    #@921
    .line 1865
    move-object/from16 v0, p0

    #@923
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mLastScrolledFocus:Ljava/lang/ref/WeakReference;

    #@925
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->clear()V

    #@928
    .line 1867
    :cond_62
    const/4 v4, 0x0

    #@929
    move-object/from16 v0, p0

    #@92b
    iput v4, v0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    #@92d
    const/4 v4, 0x0

    #@92e
    move-object/from16 v0, p0

    #@930
    iput v4, v0, Landroid/view/ViewRootImpl;->mScrollY:I

    #@932
    .line 1868
    move-object/from16 v0, p0

    #@934
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@936
    instance-of v4, v4, Lcom/android/internal/view/RootViewSurfaceTaker;

    #@938
    if-eqz v4, :cond_63

    #@93a
    .line 1869
    move-object/from16 v0, p0

    #@93c
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@93e
    check-cast v4, Lcom/android/internal/view/RootViewSurfaceTaker;

    #@940
    move-object/from16 v0, p0

    #@942
    iget v10, v0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    #@944
    invoke-interface {v4, v10}, Lcom/android/internal/view/RootViewSurfaceTaker;->onRootViewScrollYChanged(I)V

    #@947
    .line 1871
    :cond_63
    move-object/from16 v0, p0

    #@949
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    #@94b
    if-eqz v4, :cond_64

    #@94d
    .line 1872
    move-object/from16 v0, p0

    #@94f
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    #@951
    invoke-virtual {v4}, Landroid/widget/Scroller;->abortAnimation()V

    #@954
    .line 1875
    :cond_64
    move-object/from16 v0, p0

    #@956
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@958
    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    #@95a
    if-eqz v4, :cond_38

    #@95c
    .line 1876
    move-object/from16 v0, p0

    #@95e
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@960
    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    #@962
    invoke-virtual {v4}, Landroid/view/ThreadedRenderer;->isEnabled()Z

    #@965
    move-result v4

    #@966
    .line 1875
    if-eqz v4, :cond_38

    #@968
    .line 1877
    move-object/from16 v0, p0

    #@96a
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@96c
    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    #@96e
    invoke-virtual {v4}, Landroid/view/ThreadedRenderer;->destroy()V

    #@971
    goto/16 :goto_19

    #@973
    .line 1926
    .end local v23    # "alwaysConsumeNavBarChanged":Z
    .end local v33    # "contentInsetsChanged":Z
    .end local v47    # "hwInitialized":Z
    .end local v57    # "outsetsChanged":Z
    .end local v58    # "overscanInsetsChanged":Z
    .end local v64    # "stableInsetsChanged":Z
    .end local v67    # "surfaceSizeChanged":Z
    .end local v72    # "visibleInsetsChanged":Z
    :catch_1
    move-exception v37

    #@974
    .local v37, "e":Landroid/os/RemoteException;
    goto/16 :goto_1e

    #@976
    .line 1879
    .end local v37    # "e":Landroid/os/RemoteException;
    .restart local v23    # "alwaysConsumeNavBarChanged":Z
    .restart local v33    # "contentInsetsChanged":Z
    .restart local v47    # "hwInitialized":Z
    .restart local v57    # "outsetsChanged":Z
    .restart local v58    # "overscanInsetsChanged":Z
    .restart local v64    # "stableInsetsChanged":Z
    .restart local v67    # "surfaceSizeChanged":Z
    .restart local v72    # "visibleInsetsChanged":Z
    :cond_65
    move-object/from16 v0, p0

    #@978
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    #@97a
    invoke-virtual {v4}, Landroid/view/Surface;->getGenerationId()I

    #@97d
    move-result v4

    #@97e
    move/from16 v0, v66

    #@980
    if-ne v0, v4, :cond_66

    #@982
    if-eqz v67, :cond_38

    #@984
    .line 1881
    :cond_66
    move-object/from16 v0, p0

    #@986
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@988
    if-nez v4, :cond_38

    #@98a
    .line 1882
    move-object/from16 v0, p0

    #@98c
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@98e
    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    #@990
    if-eqz v4, :cond_38

    #@992
    .line 1883
    const/4 v4, 0x1

    #@993
    move-object/from16 v0, p0

    #@995
    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    #@997
    .line 1893
    :try_start_5
    move-object/from16 v0, p0

    #@999
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@99b
    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    #@99d
    move-object/from16 v0, p0

    #@99f
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    #@9a1
    invoke-virtual {v4, v10}, Landroid/view/ThreadedRenderer;->updateSurface(Landroid/view/Surface;)V
    :try_end_5
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    #@9a4
    goto/16 :goto_19

    #@9a6
    .line 1894
    :catch_2
    move-exception v38

    #@9a7
    .line 1895
    .restart local v38    # "e":Landroid/view/Surface$OutOfResourcesException;
    :try_start_6
    move-object/from16 v0, p0

    #@9a9
    move-object/from16 v1, v38

    #@9ab
    invoke-direct {v0, v1}, Landroid/view/ViewRootImpl;->handleOutOfResourcesException(Landroid/view/Surface$OutOfResourcesException;)V

    #@9ae
    .line 1896
    return-void

    #@9af
    .line 1900
    .end local v38    # "e":Landroid/view/Surface$OutOfResourcesException;
    .end local v47    # "hwInitialized":Z
    :cond_67
    const/16 v42, 0x0

    #@9b1
    .restart local v42    # "freeformResizing":Z
    goto/16 :goto_1a

    #@9b3
    .line 1902
    :cond_68
    const/16 v35, 0x0

    #@9b5
    .restart local v35    # "dockedResizing":Z
    goto/16 :goto_1b

    #@9b7
    .line 1904
    :cond_69
    const/16 v36, 0x1

    #@9b9
    .local v36, "dragResizing":Z
    goto/16 :goto_1c

    #@9bb
    .line 1909
    .end local v36    # "dragResizing":Z
    :cond_6a
    const/4 v4, 0x1

    #@9bc
    goto/16 :goto_1d

    #@9be
    .line 1915
    :cond_6b
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->endDragResizing()V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    #@9c1
    goto/16 :goto_1e

    #@9c3
    .line 1964
    .end local v23    # "alwaysConsumeNavBarChanged":Z
    .end local v33    # "contentInsetsChanged":Z
    .end local v35    # "dockedResizing":Z
    .end local v42    # "freeformResizing":Z
    .end local v57    # "outsetsChanged":Z
    .end local v58    # "overscanInsetsChanged":Z
    .end local v64    # "stableInsetsChanged":Z
    .end local v67    # "surfaceSizeChanged":Z
    .end local v72    # "visibleInsetsChanged":Z
    .restart local v25    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :cond_6c
    const/16 v65, 0x1

    #@9c5
    .line 1966
    .end local v25    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :cond_6d
    if-nez v65, :cond_6e

    #@9c7
    move-object/from16 v0, p0

    #@9c9
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    #@9cb
    invoke-virtual {v4}, Landroid/view/Surface;->getGenerationId()I

    #@9ce
    move-result v4

    #@9cf
    move/from16 v0, v66

    #@9d1
    if-eq v0, v4, :cond_6f

    #@9d3
    .line 1967
    :cond_6e
    move-object/from16 v0, p0

    #@9d5
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    #@9d7
    move-object/from16 v0, p0

    #@9d9
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@9db
    .line 1968
    iget v11, v6, Landroid/view/WindowManager$LayoutParams;->format:I

    #@9dd
    move-object/from16 v0, p0

    #@9df
    iget v12, v0, Landroid/view/ViewRootImpl;->mWidth:I

    #@9e1
    move-object/from16 v0, p0

    #@9e3
    iget v0, v0, Landroid/view/ViewRootImpl;->mHeight:I

    #@9e5
    move/from16 v17, v0

    #@9e7
    .line 1967
    move/from16 v0, v17

    #@9e9
    invoke-interface {v4, v10, v11, v12, v0}, Landroid/view/SurfaceHolder$Callback2;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    #@9ec
    .line 1969
    move-object/from16 v0, p0

    #@9ee
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@9f0
    invoke-virtual {v4}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    #@9f3
    move-result-object v25

    #@9f4
    .line 1970
    .restart local v25    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    if-eqz v25, :cond_6f

    #@9f6
    .line 1971
    const/4 v4, 0x0

    #@9f7
    move-object/from16 v0, v25

    #@9f9
    array-length v10, v0

    #@9fa
    :goto_2d
    if-ge v4, v10, :cond_6f

    #@9fc
    aget-object v24, v25, v4

    #@9fe
    .line 1972
    .restart local v24    # "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    #@a00
    iget-object v11, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@a02
    iget v12, v6, Landroid/view/WindowManager$LayoutParams;->format:I

    #@a04
    .line 1973
    move-object/from16 v0, p0

    #@a06
    iget v0, v0, Landroid/view/ViewRootImpl;->mWidth:I

    #@a08
    move/from16 v17, v0

    #@a0a
    move-object/from16 v0, p0

    #@a0c
    iget v0, v0, Landroid/view/ViewRootImpl;->mHeight:I

    #@a0e
    move/from16 v18, v0

    #@a10
    .line 1972
    move-object/from16 v0, v24

    #@a12
    move/from16 v1, v17

    #@a14
    move/from16 v2, v18

    #@a16
    invoke-interface {v0, v11, v12, v1, v2}, Landroid/view/SurfaceHolder$Callback;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    #@a19
    .line 1971
    add-int/lit8 v4, v4, 0x1

    #@a1b
    goto :goto_2d

    #@a1c
    .line 1977
    .end local v24    # "c":Landroid/view/SurfaceHolder$Callback;
    .end local v25    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :cond_6f
    const/4 v4, 0x0

    #@a1d
    move-object/from16 v0, p0

    #@a1f
    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mIsCreating:Z

    #@a21
    .line 1996
    :cond_70
    :goto_2e
    move-object/from16 v0, p0

    #@a23
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@a25
    iget-object v0, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    #@a27
    move-object/from16 v44, v0

    #@a29
    .line 1997
    .local v44, "hardwareRenderer":Landroid/view/ThreadedRenderer;
    if-eqz v44, :cond_72

    #@a2b
    invoke-virtual/range {v44 .. v44}, Landroid/view/ThreadedRenderer;->isEnabled()Z

    #@a2e
    move-result v4

    #@a2f
    if-eqz v4, :cond_72

    #@a31
    .line 1998
    if-nez v47, :cond_71

    #@a33
    .line 1999
    move-object/from16 v0, p0

    #@a35
    iget v4, v0, Landroid/view/ViewRootImpl;->mWidth:I

    #@a37
    invoke-virtual/range {v44 .. v44}, Landroid/view/ThreadedRenderer;->getWidth()I

    #@a3a
    move-result v10

    #@a3b
    if-eq v4, v10, :cond_7a

    #@a3d
    .line 2002
    :cond_71
    :goto_2f
    move-object/from16 v0, p0

    #@a3f
    iget v4, v0, Landroid/view/ViewRootImpl;->mWidth:I

    #@a41
    move-object/from16 v0, p0

    #@a43
    iget v10, v0, Landroid/view/ViewRootImpl;->mHeight:I

    #@a45
    move-object/from16 v0, p0

    #@a47
    iget-object v11, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@a49
    .line 2003
    move-object/from16 v0, p0

    #@a4b
    iget-object v12, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@a4d
    iget-object v12, v12, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@a4f
    .line 2002
    move-object/from16 v0, v44

    #@a51
    invoke-virtual {v0, v4, v10, v11, v12}, Landroid/view/ThreadedRenderer;->setup(IILandroid/view/View$AttachInfo;Landroid/graphics/Rect;)V

    #@a54
    .line 2004
    const/4 v4, 0x0

    #@a55
    move-object/from16 v0, p0

    #@a57
    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mNeedsHwRendererSetup:Z

    #@a59
    .line 2008
    :cond_72
    move-object/from16 v0, p0

    #@a5b
    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mStopped:Z

    #@a5d
    if-eqz v4, :cond_73

    #@a5f
    move-object/from16 v0, p0

    #@a61
    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    #@a63
    if-eqz v4, :cond_47

    #@a65
    .line 2010
    :cond_73
    and-int/lit8 v4, v61, 0x1

    #@a67
    if-eqz v4, :cond_7b

    #@a69
    const/4 v4, 0x1

    #@a6a
    .line 2009
    :goto_30
    move-object/from16 v0, p0

    #@a6c
    invoke-direct {v0, v4}, Landroid/view/ViewRootImpl;->ensureTouchModeLocally(Z)Z

    #@a6f
    move-result v39

    #@a70
    .line 2011
    .local v39, "focusChangedDueToTouchMode":Z
    if-nez v39, :cond_74

    #@a72
    move-object/from16 v0, p0

    #@a74
    iget v4, v0, Landroid/view/ViewRootImpl;->mWidth:I

    #@a76
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    #@a79
    move-result v10

    #@a7a
    if-eq v4, v10, :cond_7c

    #@a7c
    .line 2014
    :cond_74
    :goto_31
    move-object/from16 v0, p0

    #@a7e
    iget v4, v0, Landroid/view/ViewRootImpl;->mWidth:I

    #@a80
    iget v10, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    #@a82
    invoke-static {v4, v10}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    #@a85
    move-result v29

    #@a86
    .line 2015
    .local v29, "childWidthMeasureSpec":I
    move-object/from16 v0, p0

    #@a88
    iget v4, v0, Landroid/view/ViewRootImpl;->mHeight:I

    #@a8a
    iget v10, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    #@a8c
    invoke-static {v4, v10}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    #@a8f
    move-result v28

    #@a90
    .line 2024
    .local v28, "childHeightMeasureSpec":I
    move-object/from16 v0, p0

    #@a92
    move/from16 v1, v29

    #@a94
    move/from16 v2, v28

    #@a96
    invoke-direct {v0, v1, v2}, Landroid/view/ViewRootImpl;->performMeasure(II)V

    #@a99
    .line 2029
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    #@a9c
    move-result v73

    #@a9d
    .line 2030
    .local v73, "width":I
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    #@aa0
    move-result v46

    #@aa1
    .line 2031
    .local v46, "height":I
    const/16 v55, 0x0

    #@aa3
    .line 2033
    .local v55, "measureAgain":Z
    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    #@aa5
    const/4 v10, 0x0

    #@aa6
    cmpl-float v4, v4, v10

    #@aa8
    if-lez v4, :cond_75

    #@aaa
    .line 2034
    move-object/from16 v0, p0

    #@aac
    iget v4, v0, Landroid/view/ViewRootImpl;->mWidth:I

    #@aae
    sub-int v4, v4, v73

    #@ab0
    int-to-float v4, v4

    #@ab1
    iget v10, v6, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    #@ab3
    mul-float/2addr v4, v10

    #@ab4
    float-to-int v4, v4

    #@ab5
    add-int v73, v73, v4

    #@ab7
    .line 2036
    const/high16 v4, 0x40000000    # 2.0f

    #@ab9
    .line 2035
    move/from16 v0, v73

    #@abb
    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@abe
    move-result v29

    #@abf
    .line 2037
    const/16 v55, 0x1

    #@ac1
    .line 2039
    :cond_75
    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    #@ac3
    const/4 v10, 0x0

    #@ac4
    cmpl-float v4, v4, v10

    #@ac6
    if-lez v4, :cond_76

    #@ac8
    .line 2040
    move-object/from16 v0, p0

    #@aca
    iget v4, v0, Landroid/view/ViewRootImpl;->mHeight:I

    #@acc
    sub-int v4, v4, v46

    #@ace
    int-to-float v4, v4

    #@acf
    iget v10, v6, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    #@ad1
    mul-float/2addr v4, v10

    #@ad2
    float-to-int v4, v4

    #@ad3
    add-int v46, v46, v4

    #@ad5
    .line 2042
    const/high16 v4, 0x40000000    # 2.0f

    #@ad7
    .line 2041
    move/from16 v0, v46

    #@ad9
    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@adc
    move-result v28

    #@add
    .line 2043
    const/16 v55, 0x1

    #@adf
    .line 2046
    :cond_76
    if-eqz v55, :cond_77

    #@ae1
    .line 2050
    move-object/from16 v0, p0

    #@ae3
    move/from16 v1, v29

    #@ae5
    move/from16 v2, v28

    #@ae7
    invoke-direct {v0, v1, v2}, Landroid/view/ViewRootImpl;->performMeasure(II)V

    #@aea
    .line 2053
    :cond_77
    const/16 v54, 0x1

    #@aec
    .local v54, "layoutRequested":Z
    goto/16 :goto_20

    #@aee
    .line 1978
    .end local v28    # "childHeightMeasureSpec":I
    .end local v29    # "childWidthMeasureSpec":I
    .end local v39    # "focusChangedDueToTouchMode":Z
    .end local v44    # "hardwareRenderer":Landroid/view/ThreadedRenderer;
    .end local v46    # "height":I
    .end local v55    # "measureAgain":Z
    .end local v73    # "width":I
    .local v54, "layoutRequested":Z
    :cond_78
    if-eqz v43, :cond_70

    #@af0
    .line 1979
    move-object/from16 v0, p0

    #@af2
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@af4
    invoke-virtual {v4}, Lcom/android/internal/view/BaseSurfaceHolder;->ungetCallbacks()V

    #@af7
    .line 1980
    move-object/from16 v0, p0

    #@af9
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@afb
    invoke-virtual {v4}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    #@afe
    move-result-object v25

    #@aff
    .line 1981
    .restart local v25    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    #@b01
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    #@b03
    move-object/from16 v0, p0

    #@b05
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@b07
    invoke-interface {v4, v10}, Landroid/view/SurfaceHolder$Callback2;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    #@b0a
    .line 1982
    if-eqz v25, :cond_79

    #@b0c
    .line 1983
    const/4 v4, 0x0

    #@b0d
    move-object/from16 v0, v25

    #@b0f
    array-length v10, v0

    #@b10
    :goto_32
    if-ge v4, v10, :cond_79

    #@b12
    aget-object v24, v25, v4

    #@b14
    .line 1984
    .restart local v24    # "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    #@b16
    iget-object v11, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@b18
    move-object/from16 v0, v24

    #@b1a
    invoke-interface {v0, v11}, Landroid/view/SurfaceHolder$Callback;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    #@b1d
    .line 1983
    add-int/lit8 v4, v4, 0x1

    #@b1f
    goto :goto_32

    #@b20
    .line 1987
    .end local v24    # "c":Landroid/view/SurfaceHolder$Callback;
    :cond_79
    move-object/from16 v0, p0

    #@b22
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@b24
    iget-object v4, v4, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@b26
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@b29
    .line 1989
    :try_start_7
    move-object/from16 v0, p0

    #@b2b
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@b2d
    new-instance v10, Landroid/view/Surface;

    #@b2f
    invoke-direct {v10}, Landroid/view/Surface;-><init>()V

    #@b32
    iput-object v10, v4, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@b34
    .line 1991
    move-object/from16 v0, p0

    #@b36
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@b38
    iget-object v4, v4, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@b3a
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@b3d
    goto/16 :goto_2e

    #@b3f
    .line 1990
    :catchall_0
    move-exception v4

    #@b40
    .line 1991
    move-object/from16 v0, p0

    #@b42
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@b44
    iget-object v10, v10, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@b46
    invoke-virtual {v10}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@b49
    .line 1990
    throw v4

    #@b4a
    .line 2000
    .end local v25    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .restart local v44    # "hardwareRenderer":Landroid/view/ThreadedRenderer;
    :cond_7a
    move-object/from16 v0, p0

    #@b4c
    iget v4, v0, Landroid/view/ViewRootImpl;->mHeight:I

    #@b4e
    invoke-virtual/range {v44 .. v44}, Landroid/view/ThreadedRenderer;->getHeight()I

    #@b51
    move-result v10

    #@b52
    if-ne v4, v10, :cond_71

    #@b54
    .line 2001
    move-object/from16 v0, p0

    #@b56
    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mNeedsHwRendererSetup:Z

    #@b58
    .line 1998
    if-eqz v4, :cond_72

    #@b5a
    goto/16 :goto_2f

    #@b5c
    .line 2010
    :cond_7b
    const/4 v4, 0x0

    #@b5d
    goto/16 :goto_30

    #@b5f
    .line 2012
    .restart local v39    # "focusChangedDueToTouchMode":Z
    :cond_7c
    move-object/from16 v0, p0

    #@b61
    iget v4, v0, Landroid/view/ViewRootImpl;->mHeight:I

    #@b63
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    #@b66
    move-result v10

    #@b67
    if-ne v4, v10, :cond_74

    #@b69
    .line 2011
    if-nez v41, :cond_74

    #@b6b
    if-eqz v69, :cond_47

    #@b6d
    goto/16 :goto_31

    #@b6f
    .line 2065
    .end local v39    # "focusChangedDueToTouchMode":Z
    .end local v43    # "hadSurface":Z
    .end local v44    # "hardwareRenderer":Landroid/view/ThreadedRenderer;
    .end local v54    # "layoutRequested":Z
    :cond_7d
    const/16 v34, 0x1

    #@b71
    goto/16 :goto_21

    #@b73
    :cond_7e
    const/16 v34, 0x0

    #@b75
    goto/16 :goto_21

    #@b77
    .line 2066
    .restart local v34    # "didLayout":Z
    :cond_7f
    const/16 v68, 0x1

    #@b79
    .local v68, "triggerGlobalLayoutListener":Z
    goto/16 :goto_22

    #@b7b
    .line 2117
    .end local v68    # "triggerGlobalLayoutListener":Z
    .restart local v50    # "insets":Landroid/view/ViewTreeObserver$InternalInsetsInfo;
    :cond_80
    const/4 v4, 0x1

    #@b7c
    goto/16 :goto_24

    #@b7e
    .line 2121
    :cond_81
    move-object/from16 v0, p0

    #@b80
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mLastGivenInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    #@b82
    move-object/from16 v0, v50

    #@b84
    invoke-virtual {v4, v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->set(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V

    #@b87
    .line 2127
    move-object/from16 v0, p0

    #@b89
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@b8b
    if-eqz v4, :cond_82

    #@b8d
    .line 2128
    move-object/from16 v0, p0

    #@b8f
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@b91
    move-object/from16 v0, v50

    #@b93
    iget-object v10, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->contentInsets:Landroid/graphics/Rect;

    #@b95
    invoke-virtual {v4, v10}, Landroid/content/res/CompatibilityInfo$Translator;->getTranslatedContentInsets(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    #@b98
    move-result-object v13

    #@b99
    .line 2129
    .local v13, "contentInsets":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    #@b9b
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@b9d
    move-object/from16 v0, v50

    #@b9f
    iget-object v10, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->visibleInsets:Landroid/graphics/Rect;

    #@ba1
    invoke-virtual {v4, v10}, Landroid/content/res/CompatibilityInfo$Translator;->getTranslatedVisibleInsets(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    #@ba4
    move-result-object v14

    #@ba5
    .line 2130
    .local v14, "visibleInsets":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    #@ba7
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@ba9
    move-object/from16 v0, v50

    #@bab
    iget-object v10, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    #@bad
    invoke-virtual {v4, v10}, Landroid/content/res/CompatibilityInfo$Translator;->getTranslatedTouchableArea(Landroid/graphics/Region;)Landroid/graphics/Region;

    #@bb0
    move-result-object v15

    #@bb1
    .line 2138
    .local v15, "touchableRegion":Landroid/graphics/Region;
    :goto_33
    :try_start_8
    move-object/from16 v0, p0

    #@bb3
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    #@bb5
    move-object/from16 v0, p0

    #@bb7
    iget-object v11, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    #@bb9
    move-object/from16 v0, v50

    #@bbb
    iget v12, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->mTouchableInsets:I

    #@bbd
    invoke-interface/range {v10 .. v15}, Landroid/view/IWindowSession;->setInsets(Landroid/view/IWindow;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Region;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_3

    #@bc0
    goto/16 :goto_25

    #@bc2
    .line 2140
    :catch_3
    move-exception v37

    #@bc3
    .restart local v37    # "e":Landroid/os/RemoteException;
    goto/16 :goto_25

    #@bc5
    .line 2132
    .end local v13    # "contentInsets":Landroid/graphics/Rect;
    .end local v14    # "visibleInsets":Landroid/graphics/Rect;
    .end local v15    # "touchableRegion":Landroid/graphics/Region;
    .end local v37    # "e":Landroid/os/RemoteException;
    :cond_82
    move-object/from16 v0, v50

    #@bc7
    iget-object v13, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->contentInsets:Landroid/graphics/Rect;

    #@bc9
    .line 2133
    .restart local v13    # "contentInsets":Landroid/graphics/Rect;
    move-object/from16 v0, v50

    #@bcb
    iget-object v14, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->visibleInsets:Landroid/graphics/Rect;

    #@bcd
    .line 2134
    .restart local v14    # "visibleInsets":Landroid/graphics/Rect;
    move-object/from16 v0, v50

    #@bcf
    iget-object v15, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    #@bd1
    .restart local v15    # "touchableRegion":Landroid/graphics/Region;
    goto :goto_33

    #@bd2
    .line 2161
    .end local v13    # "contentInsets":Landroid/graphics/Rect;
    .end local v14    # "visibleInsets":Landroid/graphics/Rect;
    .end local v15    # "touchableRegion":Landroid/graphics/Region;
    .end local v50    # "insets":Landroid/view/ViewTreeObserver$InternalInsetsInfo;
    :cond_83
    const/16 v27, 0x0

    #@bd4
    .local v27, "changedVisibility":Z
    goto/16 :goto_26

    #@bd6
    .line 2162
    .end local v27    # "changedVisibility":Z
    :cond_84
    const/16 v45, 0x0

    #@bd8
    goto/16 :goto_27

    #@bda
    .line 2163
    .restart local v45    # "hasWindowFocus":Z
    :cond_85
    const/16 v60, 0x0

    #@bdc
    goto/16 :goto_28

    #@bde
    .line 2166
    .restart local v60    # "regainedFocus":Z
    :cond_86
    if-nez v45, :cond_4e

    #@be0
    move-object/from16 v0, p0

    #@be2
    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mHadWindowFocus:Z

    #@be4
    if-eqz v4, :cond_4e

    #@be6
    .line 2167
    const/4 v4, 0x1

    #@be7
    move-object/from16 v0, p0

    #@be9
    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mLostWindowFocus:Z

    #@beb
    goto/16 :goto_29

    #@bed
    .line 2183
    :cond_87
    move-object/from16 v0, p0

    #@bef
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@bf1
    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@bf3
    .line 2182
    invoke-static {v4}, Landroid/view/WindowManager$LayoutParams;->mayUseInputMethod(I)Z

    #@bf6
    move-result v49

    #@bf7
    .line 2184
    .local v49, "imTarget":Z
    move-object/from16 v0, p0

    #@bf9
    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mLastWasImTarget:Z

    #@bfb
    move/from16 v0, v49

    #@bfd
    if-eq v0, v4, :cond_51

    #@bff
    .line 2185
    move/from16 v0, v49

    #@c01
    move-object/from16 v1, p0

    #@c03
    iput-boolean v0, v1, Landroid/view/ViewRootImpl;->mLastWasImTarget:Z

    #@c05
    .line 2186
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    #@c08
    move-result-object v16

    #@c09
    .line 2187
    .local v16, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v16, :cond_51

    #@c0b
    if-eqz v49, :cond_51

    #@c0d
    .line 2188
    move-object/from16 v0, p0

    #@c0f
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@c11
    move-object/from16 v0, v16

    #@c13
    move/from16 v1, v45

    #@c15
    invoke-virtual {v0, v4, v1}, Landroid/view/inputmethod/InputMethodManager;->onPreWindowFocus(Landroid/view/View;Z)V

    #@c18
    .line 2189
    move-object/from16 v0, p0

    #@c1a
    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@c1c
    move-object/from16 v17, v0

    #@c1e
    move-object/from16 v0, p0

    #@c20
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@c22
    invoke-virtual {v4}, Landroid/view/View;->findFocus()Landroid/view/View;

    #@c25
    move-result-object v18

    #@c26
    .line 2190
    move-object/from16 v0, p0

    #@c28
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@c2a
    iget v0, v4, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    #@c2c
    move/from16 v19, v0

    #@c2e
    .line 2191
    move-object/from16 v0, p0

    #@c30
    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mHasHadWindowFocus:Z

    #@c32
    if-eqz v4, :cond_88

    #@c34
    const/16 v20, 0x0

    #@c36
    :goto_34
    move-object/from16 v0, p0

    #@c38
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@c3a
    iget v0, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@c3c
    move/from16 v21, v0

    #@c3e
    .line 2189
    invoke-virtual/range {v16 .. v21}, Landroid/view/inputmethod/InputMethodManager;->onPostWindowFocus(Landroid/view/View;Landroid/view/View;IZI)V

    #@c41
    goto/16 :goto_2a

    #@c43
    .line 2191
    :cond_88
    const/16 v20, 0x1

    #@c45
    goto :goto_34

    #@c46
    .line 2201
    .end local v16    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v49    # "imTarget":Z
    :cond_89
    const/16 v26, 0x1

    #@c48
    goto/16 :goto_2b

    #@c4a
    .line 2204
    .restart local v26    # "cancelDraw":Z
    :cond_8a
    move-object/from16 v0, p0

    #@c4c
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    #@c4e
    if-eqz v4, :cond_8c

    #@c50
    move-object/from16 v0, p0

    #@c52
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    #@c54
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@c57
    move-result v4

    #@c58
    if-lez v4, :cond_8c

    #@c5a
    .line 2205
    const/16 v48, 0x0

    #@c5c
    .restart local v48    # "i":I
    :goto_35
    move-object/from16 v0, p0

    #@c5e
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    #@c60
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@c63
    move-result v4

    #@c64
    move/from16 v0, v48

    #@c66
    if-ge v0, v4, :cond_8b

    #@c68
    .line 2206
    move-object/from16 v0, p0

    #@c6a
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    #@c6c
    move/from16 v0, v48

    #@c6e
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@c71
    move-result-object v4

    #@c72
    check-cast v4, Landroid/animation/LayoutTransition;

    #@c74
    invoke-virtual {v4}, Landroid/animation/LayoutTransition;->startChangingAnimations()V

    #@c77
    .line 2205
    add-int/lit8 v48, v48, 0x1

    #@c79
    goto :goto_35

    #@c7a
    .line 2208
    :cond_8b
    move-object/from16 v0, p0

    #@c7c
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    #@c7e
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    #@c81
    .line 2211
    .end local v48    # "i":I
    :cond_8c
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->performDraw()V

    #@c84
    goto/16 :goto_2c

    #@c86
    .line 2216
    :cond_8d
    move-object/from16 v0, p0

    #@c88
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    #@c8a
    if-eqz v4, :cond_54

    #@c8c
    move-object/from16 v0, p0

    #@c8e
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    #@c90
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@c93
    move-result v4

    #@c94
    if-lez v4, :cond_54

    #@c96
    .line 2217
    const/16 v48, 0x0

    #@c98
    .restart local v48    # "i":I
    :goto_36
    move-object/from16 v0, p0

    #@c9a
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    #@c9c
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@c9f
    move-result v4

    #@ca0
    move/from16 v0, v48

    #@ca2
    if-ge v0, v4, :cond_8e

    #@ca4
    .line 2218
    move-object/from16 v0, p0

    #@ca6
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    #@ca8
    move/from16 v0, v48

    #@caa
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@cad
    move-result-object v4

    #@cae
    check-cast v4, Landroid/animation/LayoutTransition;

    #@cb0
    invoke-virtual {v4}, Landroid/animation/LayoutTransition;->endChangingAnimations()V

    #@cb3
    .line 2217
    add-int/lit8 v48, v48, 0x1

    #@cb5
    goto :goto_36

    #@cb6
    .line 2220
    :cond_8e
    move-object/from16 v0, p0

    #@cb8
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    #@cba
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    #@cbd
    goto/16 :goto_2c

    #@cbf
    .line 2093
    .end local v26    # "cancelDraw":Z
    .end local v45    # "hasWindowFocus":Z
    .end local v48    # "i":I
    .end local v60    # "regainedFocus":Z
    :catch_4
    move-exception v37

    #@cc0
    .restart local v37    # "e":Landroid/os/RemoteException;
    goto/16 :goto_23
.end method

.method private postSendWindowContentChangedCallback(Landroid/view/View;I)V
    .locals 2
    .param p1, "source"    # Landroid/view/View;
    .param p2, "changeType"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 6584
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 6586
    new-instance v0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    #@7
    invoke-direct {v0, p0, v1}, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;)V

    #@a
    .line 6585
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    #@c
    .line 6588
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    #@e
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->runOrPost(Landroid/view/View;I)V

    #@11
    .line 6583
    return-void
.end method

.method private profileRendering(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 2541
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mProfileRendering:Z

    #@3
    if-eqz v0, :cond_2

    #@5
    .line 2542
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mRenderProfilingEnabled:Z

    #@7
    .line 2544
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 2545
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    #@d
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

    #@f
    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    #@12
    .line 2547
    :cond_0
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mRenderProfilingEnabled:Z

    #@14
    if-eqz v0, :cond_3

    #@16
    .line 2548
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

    #@18
    if-nez v0, :cond_1

    #@1a
    .line 2549
    new-instance v0, Landroid/view/ViewRootImpl$3;

    #@1c
    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$3;-><init>(Landroid/view/ViewRootImpl;)V

    #@1f
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

    #@21
    .line 2560
    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    #@23
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

    #@25
    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    #@28
    .line 2540
    :cond_2
    :goto_0
    return-void

    #@29
    .line 2562
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
    .line 6108
    iput-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    #@3
    .line 6109
    iput-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mReceiver:Landroid/view/InputEventReceiver;

    #@5
    .line 6111
    iget v0, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPoolSize:I

    #@7
    const/16 v1, 0xa

    #@9
    if-ge v0, v1, :cond_0

    #@b
    .line 6112
    iget v0, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPoolSize:I

    #@d
    add-int/lit8 v0, v0, 0x1

    #@f
    iput v0, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPoolSize:I

    #@11
    .line 6113
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPool:Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@13
    iput-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@15
    .line 6114
    iput-object p1, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPool:Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@17
    .line 6107
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
    .line 5663
    move-object/from16 v0, p0

    #@2
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@4
    iget v0, v1, Landroid/view/View$AttachInfo;->mApplicationScale:F

    #@6
    move/from16 v18, v0

    #@8
    .line 5664
    .local v18, "appScale":F
    const/16 v20, 0x0

    #@a
    .line 5665
    .local v20, "restore":Z
    if-eqz p1, :cond_0

    #@c
    move-object/from16 v0, p0

    #@e
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@10
    if-eqz v1, :cond_0

    #@12
    .line 5666
    const/16 v20, 0x1

    #@14
    .line 5667
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowManager$LayoutParams;->backup()V

    #@17
    .line 5668
    move-object/from16 v0, p0

    #@19
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@1b
    move-object/from16 v0, p1

    #@1d
    invoke-virtual {v1, v0}, Landroid/content/res/CompatibilityInfo$Translator;->translateWindowLayout(Landroid/view/WindowManager$LayoutParams;)V

    #@20
    .line 5670
    :cond_0
    if-eqz p1, :cond_1

    #@22
    .line 5673
    :cond_1
    move-object/from16 v0, p0

    #@24
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mPendingConfiguration:Landroid/content/res/Configuration;

    #@26
    const/4 v2, 0x0

    #@27
    iput v2, v1, Landroid/content/res/Configuration;->seq:I

    #@29
    .line 5675
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
    .line 5677
    move-object/from16 v0, p0

    #@37
    iget v1, v0, Landroid/view/ViewRootImpl;->mTargetSdkVersion:I

    #@39
    const/16 v2, 0xe

    #@3b
    if-ge v1, v2, :cond_2

    #@3d
    .line 5678
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
    .line 5679
    move-object/from16 v0, p0

    #@4f
    iget-object v3, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@51
    .line 5678
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
    .line 5680
    move-object/from16 v0, p0

    #@5e
    iget v1, v0, Landroid/view/ViewRootImpl;->mOrigWindowType:I

    #@60
    move-object/from16 v0, p1

    #@62
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@64
    .line 5683
    :cond_2
    move-object/from16 v0, p0

    #@66
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    #@68
    .line 5684
    move-object/from16 v0, p0

    #@6a
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    #@6c
    move-object/from16 v0, p0

    #@6e
    iget v3, v0, Landroid/view/ViewRootImpl;->mSeq:I

    #@70
    .line 5685
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
    .line 5686
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
    .line 5687
    if-eqz p3, :cond_5

    #@90
    const/4 v8, 0x1

    #@91
    .line 5688
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
    .line 5689
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
    .line 5690
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
    .line 5683
    invoke-interface/range {v1 .. v17}, Landroid/view/IWindowSession;->relayout(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;Landroid/view/Surface;)I

    #@c0
    move-result v19

    #@c1
    .line 5693
    .local v19, "relayoutResult":I
    and-int/lit8 v1, v19, 0x40

    #@c3
    if-eqz v1, :cond_6

    #@c5
    const/4 v1, 0x1

    #@c6
    .line 5692
    :goto_1
    move-object/from16 v0, p0

    #@c8
    iput-boolean v1, v0, Landroid/view/ViewRootImpl;->mPendingAlwaysConsumeNavBar:Z

    #@ca
    .line 5696
    if-eqz v20, :cond_3

    #@cc
    .line 5697
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowManager$LayoutParams;->restore()V

    #@cf
    .line 5700
    :cond_3
    move-object/from16 v0, p0

    #@d1
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@d3
    if-eqz v1, :cond_4

    #@d5
    .line 5701
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
    .line 5702
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
    .line 5703
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
    .line 5704
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
    .line 5705
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
    .line 5707
    :cond_4
    return v19

    #@10d
    .line 5687
    .end local v19    # "relayoutResult":I
    :cond_5
    const/4 v8, 0x0

    #@10e
    goto :goto_0

    #@10f
    .line 5693
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
    .line 6596
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 6597
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@6
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    #@8
    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@b
    .line 6595
    :cond_0
    return-void
.end method

.method private requestDrawWindow()V
    .locals 3

    #@0
    .prologue
    .line 7215
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 7216
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
    .line 7218
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
    .line 7219
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
    .line 7218
    add-int/lit8 v0, v0, -0x1

    #@2a
    goto :goto_0

    #@2b
    .line 7214
    :cond_1
    return-void
.end method

.method private resetPointerIcon(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 4485
    const/4 v0, 0x1

    #@1
    iput v0, p0, Landroid/view/ViewRootImpl;->mPointerIconType:I

    #@3
    .line 4486
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->updatePointerIcon(Landroid/view/MotionEvent;)Z

    #@6
    .line 4484
    return-void
.end method

.method private scheduleProcessInputEvents()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 6152
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mProcessInputEventsScheduled:Z

    #@3
    if-nez v1, :cond_0

    #@5
    .line 6153
    iput-boolean v3, p0, Landroid/view/ViewRootImpl;->mProcessInputEventsScheduled:Z

    #@7
    .line 6154
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@9
    const/16 v2, 0x13

    #@b
    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(I)Landroid/os/Message;

    #@e
    move-result-object v0

    #@f
    .line 6155
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    #@12
    .line 6156
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@14
    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    #@17
    .line 6151
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private setTag()V
    .locals 3

    #@0
    .prologue
    .line 763
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
    .line 764
    .local v0, "split":[Ljava/lang/String;
    array-length v1, v0

    #@12
    if-lez v1, :cond_0

    #@14
    .line 765
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
    .line 762
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
    .line 1426
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@3
    const/16 v2, 0x7de

    #@5
    if-eq v1, v2, :cond_0

    #@7
    .line 1427
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@9
    const/16 v2, 0x7db

    #@b
    if-ne v1, v2, :cond_1

    #@d
    .line 1426
    :cond_0
    :goto_0
    return v0

    #@e
    .line 1428
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
    .line 7180
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mDragResizing:Z

    #@3
    if-nez v0, :cond_1

    #@5
    .line 7181
    iput-boolean v7, p0, Landroid/view/ViewRootImpl;->mDragResizing:Z

    #@7
    .line 7182
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
    .line 7183
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
    .line 7182
    add-int/lit8 v6, v6, -0x1

    #@23
    goto :goto_0

    #@24
    .line 7186
    :cond_0
    iput-boolean v7, p0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    #@26
    .line 7179
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
    .line 2573
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@4
    move-result-wide v4

    #@5
    .line 2574
    .local v4, "nowTime":J
    iget-wide v8, p0, Landroid/view/ViewRootImpl;->mFpsStartTime:J

    #@7
    const-wide/16 v10, 0x0

    #@9
    cmp-long v8, v8, v10

    #@b
    if-gez v8, :cond_1

    #@d
    .line 2575
    iput-wide v4, p0, Landroid/view/ViewRootImpl;->mFpsPrevTime:J

    #@f
    iput-wide v4, p0, Landroid/view/ViewRootImpl;->mFpsStartTime:J

    #@11
    .line 2576
    iput v12, p0, Landroid/view/ViewRootImpl;->mFpsNumFrames:I

    #@13
    .line 2570
    :cond_0
    :goto_0
    return-void

    #@14
    .line 2578
    :cond_1
    iget v8, p0, Landroid/view/ViewRootImpl;->mFpsNumFrames:I

    #@16
    add-int/lit8 v8, v8, 0x1

    #@18
    iput v8, p0, Landroid/view/ViewRootImpl;->mFpsNumFrames:I

    #@1a
    .line 2579
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@1d
    move-result v8

    #@1e
    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    .line 2580
    .local v1, "thisHash":Ljava/lang/String;
    iget-wide v8, p0, Landroid/view/ViewRootImpl;->mFpsPrevTime:J

    #@24
    sub-long v2, v4, v8

    #@26
    .line 2581
    .local v2, "frameTime":J
    iget-wide v8, p0, Landroid/view/ViewRootImpl;->mFpsStartTime:J

    #@28
    sub-long v6, v4, v8

    #@2a
    .line 2582
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
    .line 2583
    iput-wide v4, p0, Landroid/view/ViewRootImpl;->mFpsPrevTime:J

    #@50
    .line 2584
    const-wide/16 v8, 0x3e8

    #@52
    cmp-long v8, v6, v8

    #@54
    if-lez v8, :cond_0

    #@56
    .line 2585
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
    .line 2586
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
    .line 2587
    iput-wide v4, p0, Landroid/view/ViewRootImpl;->mFpsStartTime:J

    #@85
    .line 2588
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
    .line 7204
    const/4 v1, 0x0

    #@2
    .line 7205
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
    .line 7206
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v2

    #@12
    check-cast v2, Landroid/view/WindowCallbacks;

    #@14
    .line 7207
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@16
    iget-object v4, v4, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@18
    iget v4, v4, Landroid/graphics/Rect;->left:I

    #@1a
    .line 7208
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@1c
    iget-object v5, v5, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@1e
    iget v5, v5, Landroid/graphics/Rect;->top:I

    #@20
    .line 7209
    iget v6, p0, Landroid/view/ViewRootImpl;->mWidth:I

    #@22
    iget v7, p0, Landroid/view/ViewRootImpl;->mHeight:I

    #@24
    .line 7206
    invoke-interface {v2, v4, v5, v6, v7}, Landroid/view/WindowCallbacks;->onContentDrawn(IIII)Z

    #@27
    move-result v2

    #@28
    or-int/2addr v1, v2

    #@29
    .line 7205
    .local v1, "updated":Z
    add-int/lit8 v0, v0, -0x1

    #@2b
    goto :goto_0

    #@2c
    .line 7211
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
    .line 4490
    const/4 v1, 0x0

    #@6
    .line 4491
    .local v1, "pointerIndex":I
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    #@9
    move-result v3

    #@a
    .line 4492
    .local v3, "x":F
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    #@d
    move-result v4

    #@e
    .line 4493
    .local v4, "y":F
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@10
    if-nez v5, :cond_0

    #@12
    .line 4495
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    #@14
    const-string/jumbo v6, "updatePointerIcon called after view was removed"

    #@17
    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 4496
    return v7

    #@1b
    .line 4498
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
    .line 4500
    :cond_1
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    #@2c
    const-string/jumbo v6, "updatePointerIcon called with position out of bounds"

    #@2f
    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@32
    .line 4501
    return v7

    #@33
    .line 4498
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
    .line 4503
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@44
    invoke-virtual {v5, p1, v7}, Landroid/view/View;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    #@47
    move-result-object v0

    #@48
    .line 4504
    .local v0, "pointerIcon":Landroid/view/PointerIcon;
    if-eqz v0, :cond_3

    #@4a
    .line 4505
    invoke-virtual {v0}, Landroid/view/PointerIcon;->getType()I

    #@4d
    move-result v2

    #@4e
    .line 4507
    .local v2, "pointerType":I
    :goto_0
    iget v5, p0, Landroid/view/ViewRootImpl;->mPointerIconType:I

    #@50
    if-eq v5, v2, :cond_4

    #@52
    .line 4508
    iput v2, p0, Landroid/view/ViewRootImpl;->mPointerIconType:I

    #@54
    .line 4509
    iget v5, p0, Landroid/view/ViewRootImpl;->mPointerIconType:I

    #@56
    if-eq v5, v9, :cond_4

    #@58
    .line 4510
    iput-object v6, p0, Landroid/view/ViewRootImpl;->mCustomPointerIcon:Landroid/view/PointerIcon;

    #@5a
    .line 4511
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    #@5d
    move-result-object v5

    #@5e
    invoke-virtual {v5, v2}, Landroid/hardware/input/InputManager;->setPointerIconType(I)V

    #@61
    .line 4512
    return v10

    #@62
    .line 4505
    .end local v2    # "pointerType":I
    :cond_3
    const/16 v2, 0x3e8

    #@64
    .restart local v2    # "pointerType":I
    goto :goto_0

    #@65
    .line 4515
    :cond_4
    iget v5, p0, Landroid/view/ViewRootImpl;->mPointerIconType:I

    #@67
    if-ne v5, v9, :cond_5

    #@69
    .line 4516
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mCustomPointerIcon:Landroid/view/PointerIcon;

    #@6b
    invoke-virtual {v0, v5}, Landroid/view/PointerIcon;->equals(Ljava/lang/Object;)Z

    #@6e
    move-result v5

    #@6f
    if-eqz v5, :cond_6

    #@71
    .line 4520
    :cond_5
    :goto_1
    return v10

    #@72
    .line 4517
    :cond_6
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mCustomPointerIcon:Landroid/view/PointerIcon;

    #@74
    .line 4518
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
    .line 465
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    #@2
    monitor-enter v1

    #@3
    .line 466
    :try_start_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 463
    return-void

    #@a
    .line 465
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
    .line 1174
    return-void
.end method

.method public canResolveLayoutDirection()Z
    .locals 1

    #@0
    .prologue
    .line 6777
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public canResolveTextAlignment()Z
    .locals 1

    #@0
    .prologue
    .line 6807
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public canResolveTextDirection()Z
    .locals 1

    #@0
    .prologue
    .line 6792
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public cancelInvalidate(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 6458
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-virtual {v0, v1, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeMessages(ILjava/lang/Object;)V

    #@6
    .line 6461
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@8
    const/4 v1, 0x2

    #@9
    invoke-virtual {v0, v1, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeMessages(ILjava/lang/Object;)V

    #@c
    .line 6462
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInvalidateOnAnimationRunnable:Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;

    #@e
    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->removeView(Landroid/view/View;)V

    #@11
    .line 6457
    return-void
.end method

.method changeCanvasOpacity(Z)V
    .locals 3
    .param p1, "opaque"    # Z

    #@0
    .prologue
    .line 6940
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
    .line 6941
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@1b
    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    #@1d
    if-eqz v0, :cond_0

    #@1f
    .line 6942
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@21
    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    #@23
    invoke-virtual {v0, p1}, Landroid/view/ThreadedRenderer;->setOpaque(Z)V

    #@26
    .line 6939
    :cond_0
    return-void
.end method

.method checkThread()V
    .locals 2

    #@0
    .prologue
    .line 6854
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mThread:Ljava/lang/Thread;

    #@2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@5
    move-result-object v1

    #@6
    if-eq v0, v1, :cond_0

    #@8
    .line 6855
    new-instance v0, Landroid/view/ViewRootImpl$CalledFromWrongThreadException;

    #@a
    .line 6856
    const-string/jumbo v1, "Only the original thread that created a view hierarchy can touch its views."

    #@d
    .line 6855
    invoke-direct {v0, v1}, Landroid/view/ViewRootImpl$CalledFromWrongThreadException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 6853
    :cond_0
    return-void
.end method

.method public childDrawableStateChanged(Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;

    #@0
    .prologue
    .line 6627
    return-void
.end method

.method public childHasTransientStateChanged(Landroid/view/View;Z)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "hasTransientState"    # Z

    #@0
    .prologue
    .line 6885
    return-void
.end method

.method public clearChildFocus(Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;

    #@0
    .prologue
    .line 3210
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    #@3
    .line 3211
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    #@6
    .line 3206
    return-void
.end method

.method public createContextMenu(Landroid/view/ContextMenu;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/ContextMenu;

    #@0
    .prologue
    .line 6623
    return-void
.end method

.method public debug()V
    .locals 1

    #@0
    .prologue
    .line 5772
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@2
    invoke-virtual {v0}, Landroid/view/View;->debug()V

    #@5
    .line 5771
    return-void
.end method

.method destroyHardwareResources()V
    .locals 2

    #@0
    .prologue
    .line 787
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@2
    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 788
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@8
    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    #@a
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@c
    invoke-virtual {v0, v1}, Landroid/view/ThreadedRenderer;->destroyHardwareResources(Landroid/view/View;)V

    #@f
    .line 789
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@11
    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    #@13
    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->destroy()V

    #@16
    .line 786
    :cond_0
    return-void
.end method

.method public detachFunctor(J)V
    .locals 1
    .param p1, "functor"    # J

    #@0
    .prologue
    .line 794
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@2
    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 797
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@8
    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    #@a
    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->stopDrawing()V

    #@d
    .line 793
    :cond_0
    return-void
.end method

.method die(Z)Z
    .locals 3
    .param p1, "immediate"    # Z

    #@0
    .prologue
    .line 5857
    if-eqz p1, :cond_0

    #@2
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mIsInTraversal:Z

    #@4
    if-eqz v0, :cond_1

    #@6
    .line 5862
    :cond_0
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mIsDrawing:Z

    #@8
    if-nez v0, :cond_2

    #@a
    .line 5863
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->destroyHardwareRenderer()V

    #@d
    .line 5868
    :goto_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@f
    const/4 v1, 0x3

    #@10
    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendEmptyMessage(I)Z

    #@13
    .line 5869
    const/4 v0, 0x1

    #@14
    return v0

    #@15
    .line 5858
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->doDie()V

    #@18
    .line 5859
    const/4 v0, 0x0

    #@19
    return v0

    #@1a
    .line 5865
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
    .line 5866
    const-string/jumbo v2, ", title="

    #@2f
    .line 5865
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    .line 5866
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@35
    invoke-virtual {v2}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    #@38
    move-result-object v2

    #@39
    .line 5865
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
    .line 6504
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@2
    const/16 v2, 0x8

    #@4
    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(I)Landroid/os/Message;

    #@7
    move-result-object v0

    #@8
    .line 6505
    .local v0, "msg":Landroid/os/Message;
    if-eqz p1, :cond_0

    #@a
    const/4 v1, 0x1

    #@b
    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    #@d
    .line 6506
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@f
    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    #@12
    .line 6503
    return-void

    #@13
    .line 6505
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
    .line 1422
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, v0}, Landroid/view/ViewRootImpl;->getWindowInsets(Z)Landroid/view/WindowInsets;

    #@4
    move-result-object v0

    #@5
    invoke-virtual {p1, v0}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    #@8
    .line 1421
    return-void
.end method

.method public dispatchCheckFocus()V
    .locals 2

    #@0
    .prologue
    const/16 v1, 0xd

    #@2
    .line 6566
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@4
    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->hasMessages(I)Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_0

    #@a
    .line 6568
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@c
    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendEmptyMessage(I)Z

    #@f
    .line 6565
    :cond_0
    return-void
.end method

.method public dispatchCloseSystemDialogs(Ljava/lang/String;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 6527
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    #@3
    move-result-object v0

    #@4
    .line 6528
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xe

    #@6
    iput v1, v0, Landroid/os/Message;->what:I

    #@8
    .line 6529
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@a
    .line 6530
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@c
    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    #@f
    .line 6526
    return-void
.end method

.method dispatchDetachedFromWindow()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 3253
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
    .line 3254
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@d
    iget-object v1, v1, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    #@f
    const/4 v2, 0x0

    #@10
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->dispatchOnWindowAttachedChange(Z)V

    #@13
    .line 3255
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@15
    invoke-virtual {v1}, Landroid/view/View;->dispatchDetachedFromWindow()V

    #@18
    .line 3258
    :cond_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    #@1a
    invoke-virtual {v1}, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->ensureNoConnection()V

    #@1d
    .line 3259
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    #@1f
    .line 3260
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    #@21
    .line 3259
    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityManager;->removeAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    #@24
    .line 3261
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    #@26
    .line 3262
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mHighContrastTextManager:Landroid/view/ViewRootImpl$HighContrastTextManager;

    #@28
    .line 3261
    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityManager;->removeHighTextContrastStateChangeListener(Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;)Z

    #@2b
    .line 3263
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->removeSendWindowContentChangedCallback()V

    #@2e
    .line 3265
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->destroyHardwareRenderer()V

    #@31
    .line 3267
    invoke-virtual {p0, v3, v3}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    #@34
    .line 3269
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@36
    invoke-virtual {v1, v3}, Landroid/view/View;->assignParent(Landroid/view/ViewParent;)V

    #@39
    .line 3270
    iput-object v3, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@3b
    .line 3271
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@3d
    iput-object v3, v1, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    #@3f
    .line 3273
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    #@41
    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    #@44
    .line 3275
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    #@46
    if-eqz v1, :cond_1

    #@48
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    #@4a
    if-eqz v1, :cond_1

    #@4c
    .line 3276
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    #@4e
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    #@50
    invoke-interface {v1, v2}, Landroid/view/InputQueue$Callback;->onInputQueueDestroyed(Landroid/view/InputQueue;)V

    #@53
    .line 3277
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    #@55
    invoke-virtual {v1}, Landroid/view/InputQueue;->dispose()V

    #@58
    .line 3278
    iput-object v3, p0, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    #@5a
    .line 3279
    iput-object v3, p0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    #@5c
    .line 3281
    :cond_1
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    #@5e
    if-eqz v1, :cond_2

    #@60
    .line 3282
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    #@62
    invoke-virtual {v1}, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->dispose()V

    #@65
    .line 3283
    iput-object v3, p0, Landroid/view/ViewRootImpl;->mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    #@67
    .line 3286
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
    .line 3292
    :goto_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    #@70
    if-eqz v1, :cond_3

    #@72
    .line 3293
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    #@74
    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    #@77
    .line 3294
    iput-object v3, p0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    #@79
    .line 3297
    :cond_3
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    #@7b
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    #@7d
    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    #@80
    .line 3299
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->unscheduleTraversals()V

    #@83
    .line 3252
    return-void

    #@84
    .line 3287
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
    .line 6535
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    #@3
    move-result v2

    #@4
    const/4 v3, 0x2

    #@5
    if-ne v2, v3, :cond_0

    #@7
    .line 6536
    const/16 v1, 0x10

    #@9
    .line 6537
    .local v1, "what":I
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@b
    invoke-virtual {v2, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeMessages(I)V

    #@e
    .line 6541
    :goto_0
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@10
    invoke-virtual {v2, v1, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@13
    move-result-object v0

    #@14
    .line 6542
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@16
    invoke-virtual {v2, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    #@19
    .line 6533
    return-void

    #@1a
    .line 6539
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
    .line 6510
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@2
    const/16 v2, 0x9

    #@4
    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(I)Landroid/os/Message;

    #@7
    move-result-object v0

    #@8
    .line 6511
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@a
    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    #@d
    .line 6509
    return-void
.end method

.method public dispatchInputEvent(Landroid/view/InputEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/InputEvent;

    #@0
    .prologue
    .line 6466
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewRootImpl;->dispatchInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;)V

    #@4
    .line 6465
    return-void
.end method

.method public dispatchInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;)V
    .locals 4
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "receiver"    # Landroid/view/InputEventReceiver;

    #@0
    .prologue
    .line 6470
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    #@3
    move-result-object v0

    #@4
    .line 6471
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@6
    .line 6472
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@8
    .line 6473
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@a
    const/4 v3, 0x7

    #@b
    invoke-virtual {v2, v3, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@e
    move-result-object v1

    #@f
    .line 6474
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x1

    #@10
    invoke-virtual {v1, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    #@13
    .line 6475
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@15
    invoke-virtual {v2, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    #@18
    .line 6469
    return-void
.end method

.method public dispatchInvalidateDelayed(Landroid/view/View;J)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "delayMilliseconds"    # J

    #@0
    .prologue
    .line 6439
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@2
    const/4 v2, 0x1

    #@3
    invoke-virtual {v1, v2, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@6
    move-result-object v0

    #@7
    .line 6440
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@9
    invoke-virtual {v1, v0, p2, p3}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@c
    .line 6438
    return-void
.end method

.method public dispatchInvalidateOnAnimation(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 6450
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInvalidateOnAnimationRunnable:Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;

    #@2
    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->addView(Landroid/view/View;)V

    #@5
    .line 6449
    return-void
.end method

.method public dispatchInvalidateRectDelayed(Landroid/view/View$AttachInfo$InvalidateInfo;J)V
    .locals 4
    .param p1, "info"    # Landroid/view/View$AttachInfo$InvalidateInfo;
    .param p2, "delayMilliseconds"    # J

    #@0
    .prologue
    .line 6445
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@2
    const/4 v2, 0x2

    #@3
    invoke-virtual {v1, v2, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@6
    move-result-object v0

    #@7
    .line 6446
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@9
    invoke-virtual {v1, v0, p2, p3}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@c
    .line 6444
    return-void
.end method

.method public dispatchInvalidateRectOnAnimation(Landroid/view/View$AttachInfo$InvalidateInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/View$AttachInfo$InvalidateInfo;

    #@0
    .prologue
    .line 6454
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInvalidateOnAnimationRunnable:Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;

    #@2
    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->addViewRect(Landroid/view/View$AttachInfo$InvalidateInfo;)V

    #@5
    .line 6453
    return-void
.end method

.method public dispatchKeyFromIme(Landroid/view/KeyEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 6485
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@2
    const/16 v2, 0xb

    #@4
    invoke-virtual {v1, v2, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@7
    move-result-object v0

    #@8
    .line 6486
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    #@9
    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    #@c
    .line 6487
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@e
    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    #@11
    .line 6484
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
    .line 6006
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 6007
    new-instance v1, Landroid/graphics/PointF;

    #@8
    int-to-float v2, p1

    #@9
    int-to-float v3, p2

    #@a
    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    #@d
    .line 6008
    .local v1, "point":Landroid/graphics/PointF;
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@f
    invoke-virtual {v2, v1}, Landroid/content/res/CompatibilityInfo$Translator;->translatePointInScreenToAppWindow(Landroid/graphics/PointF;)V

    #@12
    .line 6009
    iget v2, v1, Landroid/graphics/PointF;->x:F

    #@14
    float-to-double v2, v2

    #@15
    add-double/2addr v2, v4

    #@16
    double-to-int p1, v2

    #@17
    .line 6010
    iget v2, v1, Landroid/graphics/PointF;->y:F

    #@19
    float-to-double v2, v2

    #@1a
    add-double/2addr v2, v4

    #@1b
    double-to-int p2, v2

    #@1c
    .line 6012
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
    .line 6013
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@26
    invoke-virtual {v2, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    #@29
    .line 6004
    return-void
.end method

.method public dispatchRequestKeyboardShortcuts(Lcom/android/internal/os/IResultReceiver;I)V
    .locals 3
    .param p1, "receiver"    # Lcom/android/internal/os/IResultReceiver;
    .param p2, "deviceId"    # I

    #@0
    .prologue
    .line 6573
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@2
    .line 6574
    const/16 v1, 0x1a

    #@4
    const/4 v2, 0x0

    #@5
    .line 6573
    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@c
    .line 6572
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
    .line 5971
    iget-boolean v6, p0, Landroid/view/ViewRootImpl;->mDragResizing:Z

    #@2
    if-eqz v6, :cond_1

    #@4
    .line 5972
    move-object/from16 v0, p9

    #@6
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@9
    move-result v2

    #@a
    .line 5973
    .local v2, "fullscreen":Z
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    #@c
    monitor-enter v7

    #@d
    .line 5974
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
    .line 5975
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
    .line 5974
    add-int/lit8 v3, v3, -0x1

    #@26
    goto :goto_0

    #@27
    :cond_0
    monitor-exit v7

    #@28
    .line 5981
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
    .line 5982
    .local v4, "msg":Landroid/os/Message;
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@33
    if-eqz v6, :cond_2

    #@35
    .line 5983
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@37
    invoke-virtual {v6, p1}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    #@3a
    .line 5984
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@3c
    invoke-virtual {v6, p2}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    #@3f
    .line 5985
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@41
    invoke-virtual {v6, p3}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    #@44
    .line 5986
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@46
    invoke-virtual {v6, p4}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    #@49
    .line 5988
    :cond_2
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    #@4c
    move-result-object v1

    #@4d
    .line 5989
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
    .line 5990
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
    .line 5991
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
    .line 5992
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
    .line 5993
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
    .line 5994
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
    .line 5995
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
    .line 5996
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
    .line 5997
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
    .line 5998
    if-eqz p10, :cond_d

    #@b6
    const/4 v6, 0x1

    #@b7
    :goto_3
    iput v6, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    #@b9
    .line 5999
    if-eqz p11, :cond_e

    #@bb
    const/4 v6, 0x1

    #@bc
    :goto_4
    iput v6, v1, Lcom/android/internal/os/SomeArgs;->argi2:I

    #@be
    .line 6000
    iput-object v1, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@c0
    .line 6001
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@c2
    invoke-virtual {v6, v4}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    #@c5
    .line 5962
    return-void

    #@c6
    .line 5973
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
    .line 5981
    .end local v2    # "fullscreen":Z
    :cond_b
    const/4 v6, 0x4

    #@ca
    goto/16 :goto_1

    #@cc
    .line 5989
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    .restart local v4    # "msg":Landroid/os/Message;
    :cond_c
    const/4 v5, 0x0

    #@cd
    .restart local v5    # "sameProcessCall":Z
    goto :goto_2

    #@ce
    .line 5998
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
    .line 5999
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
    .line 6557
    new-instance v0, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;

    #@2
    invoke-direct {v0}, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;-><init>()V

    #@5
    .line 6558
    .local v0, "args":Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;
    iput p1, v0, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->seq:I

    #@7
    .line 6559
    iput p2, v0, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->globalVisibility:I

    #@9
    .line 6560
    iput p3, v0, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->localValue:I

    #@b
    .line 6561
    iput p4, v0, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->localChanges:I

    #@d
    .line 6562
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
    .line 6556
    return-void
.end method

.method public dispatchUnhandledInputEvent(Landroid/view/InputEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/InputEvent;

    #@0
    .prologue
    .line 6497
    instance-of v0, p1, Landroid/view/MotionEvent;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 6498
    check-cast p1, Landroid/view/MotionEvent;

    #@6
    .end local p1    # "event":Landroid/view/InputEvent;
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    #@9
    move-result-object p1

    #@a
    .line 6500
    .restart local p1    # "event":Landroid/view/InputEvent;
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl;->synthesizeInputEvent(Landroid/view/InputEvent;)V

    #@d
    .line 6496
    return-void
.end method

.method public dispatchWindowShown()V
    .locals 2

    #@0
    .prologue
    .line 6523
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@2
    const/16 v1, 0x19

    #@4
    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendEmptyMessage(I)Z

    #@7
    .line 6522
    return-void
.end method

.method doConsumeBatchedInput(J)V
    .locals 3
    .param p1, "frameTimeNanos"    # J

    #@0
    .prologue
    .line 6281
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    #@2
    if-eqz v0, :cond_1

    #@4
    .line 6282
    const/4 v0, 0x0

    #@5
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    #@7
    .line 6283
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 6284
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    #@d
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->consumeBatchedInputEvents(J)Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_0

    #@13
    .line 6285
    const-wide/16 v0, -0x1

    #@15
    cmp-long v0, p1, v0

    #@17
    if-eqz v0, :cond_0

    #@19
    .line 6291
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleConsumeBatchedInput()V

    #@1c
    .line 6294
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->doProcessInputEvents()V

    #@1f
    .line 6280
    :cond_1
    return-void
.end method

.method doDie()V
    .locals 5

    #@0
    .prologue
    .line 5873
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    #@3
    .line 5875
    monitor-enter p0

    #@4
    .line 5876
    :try_start_0
    iget-boolean v3, p0, Landroid/view/ViewRootImpl;->mRemoved:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    if-eqz v3, :cond_0

    #@8
    monitor-exit p0

    #@9
    .line 5877
    return-void

    #@a
    .line 5879
    :cond_0
    const/4 v3, 0x1

    #@b
    :try_start_1
    iput-boolean v3, p0, Landroid/view/ViewRootImpl;->mRemoved:Z

    #@d
    .line 5880
    iget-boolean v3, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    #@f
    if-eqz v3, :cond_1

    #@11
    .line 5881
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->dispatchDetachedFromWindow()V

    #@14
    .line 5884
    :cond_1
    iget-boolean v3, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    #@16
    if-eqz v3, :cond_2

    #@18
    iget-boolean v3, p0, Landroid/view/ViewRootImpl;->mFirst:Z

    #@1a
    if-eqz v3, :cond_3

    #@1c
    .line 5907
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
    .line 5909
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v3, p0}, Landroid/view/WindowManagerGlobal;->doRemoveView(Landroid/view/ViewRootImpl;)V

    #@27
    .line 5872
    return-void

    #@28
    .line 5885
    :cond_3
    :try_start_2
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->destroyHardwareRenderer()V

    #@2b
    .line 5887
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@2d
    if-eqz v3, :cond_2

    #@2f
    .line 5888
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@31
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    #@34
    move-result v1

    #@35
    .line 5889
    .local v1, "viewVisibility":I
    iget v3, p0, Landroid/view/ViewRootImpl;->mViewVisibility:I

    #@37
    if-eq v3, v1, :cond_6

    #@39
    const/4 v2, 0x1

    #@3a
    .line 5890
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
    .line 5895
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
    .line 5897
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    #@4d
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    #@4f
    invoke-interface {v3, v4}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@52
    .line 5903
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
    .line 5875
    .end local v1    # "viewVisibility":I
    .end local v2    # "viewVisibilityChanged":Z
    :catchall_0
    move-exception v3

    #@59
    monitor-exit p0

    #@5a
    throw v3

    #@5b
    .line 5889
    .restart local v1    # "viewVisibility":I
    :cond_6
    const/4 v2, 0x0

    #@5c
    .restart local v2    # "viewVisibilityChanged":Z
    goto :goto_1

    #@5d
    .line 5899
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
    .line 6162
    :goto_0
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mPendingInputEventHead:Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@4
    if-eqz v6, :cond_2

    #@6
    .line 6163
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mPendingInputEventHead:Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@8
    .line 6164
    .local v3, "q":Landroid/view/ViewRootImpl$QueuedInputEvent;
    iget-object v6, v3, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@a
    iput-object v6, p0, Landroid/view/ViewRootImpl;->mPendingInputEventHead:Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@c
    .line 6165
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mPendingInputEventHead:Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@e
    if-nez v6, :cond_0

    #@10
    .line 6166
    iput-object v10, p0, Landroid/view/ViewRootImpl;->mPendingInputEventTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@12
    .line 6168
    :cond_0
    iput-object v10, v3, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@14
    .line 6170
    iget v6, p0, Landroid/view/ViewRootImpl;->mPendingInputEventCount:I

    #@16
    add-int/lit8 v6, v6, -0x1

    #@18
    iput v6, p0, Landroid/view/ViewRootImpl;->mPendingInputEventCount:I

    #@1a
    .line 6171
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mPendingInputEventQueueLengthCounterName:Ljava/lang/String;

    #@1c
    .line 6172
    iget v7, p0, Landroid/view/ViewRootImpl;->mPendingInputEventCount:I

    #@1e
    .line 6171
    const-wide/16 v8, 0x4

    #@20
    invoke-static {v8, v9, v6, v7}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    #@23
    .line 6174
    iget-object v6, v3, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    #@25
    invoke-virtual {v6}, Landroid/view/InputEvent;->getEventTimeNano()J

    #@28
    move-result-wide v0

    #@29
    .line 6175
    .local v0, "eventTime":J
    move-wide v4, v0

    #@2a
    .line 6176
    .local v4, "oldestEventTime":J
    iget-object v6, v3, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    #@2c
    instance-of v6, v6, Landroid/view/MotionEvent;

    #@2e
    if-eqz v6, :cond_1

    #@30
    .line 6177
    iget-object v2, v3, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    #@32
    check-cast v2, Landroid/view/MotionEvent;

    #@34
    .line 6178
    .local v2, "me":Landroid/view/MotionEvent;
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getHistorySize()I

    #@37
    move-result v6

    #@38
    if-lez v6, :cond_1

    #@3a
    .line 6179
    invoke-virtual {v2, v11}, Landroid/view/MotionEvent;->getHistoricalEventTimeNano(I)J

    #@3d
    move-result-wide v4

    #@3e
    .line 6182
    .end local v2    # "me":Landroid/view/MotionEvent;
    :cond_1
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    #@40
    iget-object v6, v6, Landroid/view/Choreographer;->mFrameInfo:Landroid/view/FrameInfo;

    #@42
    invoke-virtual {v6, v0, v1, v4, v5}, Landroid/view/FrameInfo;->updateInputEventTime(JJ)V

    #@45
    .line 6184
    invoke-direct {p0, v3}, Landroid/view/ViewRootImpl;->deliverInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    #@48
    goto :goto_0

    #@49
    .line 6189
    .end local v0    # "eventTime":J
    .end local v3    # "q":Landroid/view/ViewRootImpl$QueuedInputEvent;
    .end local v4    # "oldestEventTime":J
    :cond_2
    iget-boolean v6, p0, Landroid/view/ViewRootImpl;->mProcessInputEventsScheduled:Z

    #@4b
    if-eqz v6, :cond_3

    #@4d
    .line 6190
    iput-boolean v11, p0, Landroid/view/ViewRootImpl;->mProcessInputEventsScheduled:Z

    #@4f
    .line 6191
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@51
    const/16 v7, 0x13

    #@53
    invoke-virtual {v6, v7}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeMessages(I)V

    #@56
    .line 6160
    :cond_3
    return-void
.end method

.method doTraversal()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1238
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    #@3
    if-eqz v0, :cond_1

    #@5
    .line 1239
    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    #@7
    .line 1240
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
    .line 1242
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mProfile:Z

    #@18
    if-eqz v0, :cond_0

    #@1a
    .line 1243
    const-string/jumbo v0, "ViewAncestor"

    #@1d
    invoke-static {v0}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;)V

    #@20
    .line 1246
    :cond_0
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->performTraversals()V

    #@23
    .line 1248
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mProfile:Z

    #@25
    if-eqz v0, :cond_1

    #@27
    .line 1249
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    #@2a
    .line 1250
    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mProfile:Z

    #@2c
    .line 1237
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
    .line 5776
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
    .line 5777
    .local v0, "innerPrefix":Ljava/lang/String;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@17
    const-string/jumbo v1, "ViewRoot:"

    #@1a
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1d
    .line 5778
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
    .line 5779
    const-string/jumbo v1, " mRemoved="

    #@2e
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@31
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mRemoved:Z

    #@33
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    #@36
    .line 5780
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@39
    const-string/jumbo v1, "mConsumeBatchedInputScheduled="

    #@3c
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3f
    .line 5781
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    #@41
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    #@44
    .line 5782
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@47
    const-string/jumbo v1, "mConsumeBatchedInputImmediatelyScheduled="

    #@4a
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4d
    .line 5783
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputImmediatelyScheduled:Z

    #@4f
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    #@52
    .line 5784
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@55
    const-string/jumbo v1, "mPendingInputEventCount="

    #@58
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5b
    .line 5785
    iget v1, p0, Landroid/view/ViewRootImpl;->mPendingInputEventCount:I

    #@5d
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(I)V

    #@60
    .line 5786
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@63
    const-string/jumbo v1, "mProcessInputEventsScheduled="

    #@66
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@69
    .line 5787
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mProcessInputEventsScheduled:Z

    #@6b
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    #@6e
    .line 5788
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@71
    const-string/jumbo v1, "mTraversalScheduled="

    #@74
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@77
    .line 5789
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    #@79
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    #@7c
    .line 5790
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7f
    const-string/jumbo v1, "mIsAmbientMode="

    #@82
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@85
    .line 5791
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mIsAmbientMode:Z

    #@87
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    #@8a
    .line 5792
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    #@8c
    if-eqz v1, :cond_0

    #@8e
    .line 5793
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
    .line 5797
    :goto_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mFirstInputStage:Landroid/view/ViewRootImpl$InputStage;

    #@a1
    invoke-virtual {v1, v0, p3}, Landroid/view/ViewRootImpl$InputStage;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    #@a4
    .line 5799
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    #@a6
    invoke-virtual {v1, p1, p3}, Landroid/view/Choreographer;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    #@a9
    .line 5801
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ac
    const-string/jumbo v1, "View Hierarchy:"

    #@af
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@b2
    .line 5802
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@b4
    invoke-direct {p0, v0, p3, v1}, Landroid/view/ViewRootImpl;->dumpViewHierarchy(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V

    #@b7
    .line 5775
    return-void

    #@b8
    .line 5795
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
    .line 5827
    const/4 v0, 0x1

    #@2
    aput v1, p1, v0

    #@4
    aput v1, p1, v1

    #@6
    .line 5828
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 5829
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@c
    invoke-static {v0, p1}, Landroid/view/ViewRootImpl;->getGfxInfo(Landroid/view/View;[I)V

    #@f
    .line 5826
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
    .line 6119
    const/4 v0, 0x0

    #@2
    invoke-virtual {p0, p1, v0, v1, v1}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)V

    #@5
    .line 6118
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
    .line 6124
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->adjustInputEventForCompatibility(Landroid/view/InputEvent;)V

    #@3
    .line 6125
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewRootImpl;->obtainQueuedInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;I)Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@6
    move-result-object v1

    #@7
    .line 6132
    .local v1, "q":Landroid/view/ViewRootImpl$QueuedInputEvent;
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingInputEventTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@9
    .line 6133
    .local v0, "last":Landroid/view/ViewRootImpl$QueuedInputEvent;
    if-nez v0, :cond_0

    #@b
    .line 6134
    iput-object v1, p0, Landroid/view/ViewRootImpl;->mPendingInputEventHead:Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@d
    .line 6135
    iput-object v1, p0, Landroid/view/ViewRootImpl;->mPendingInputEventTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@f
    .line 6140
    :goto_0
    iget v2, p0, Landroid/view/ViewRootImpl;->mPendingInputEventCount:I

    #@11
    add-int/lit8 v2, v2, 0x1

    #@13
    iput v2, p0, Landroid/view/ViewRootImpl;->mPendingInputEventCount:I

    #@15
    .line 6141
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mPendingInputEventQueueLengthCounterName:Ljava/lang/String;

    #@17
    .line 6142
    iget v3, p0, Landroid/view/ViewRootImpl;->mPendingInputEventCount:I

    #@19
    .line 6141
    const-wide/16 v4, 0x4

    #@1b
    invoke-static {v4, v5, v2, v3}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    #@1e
    .line 6144
    if-eqz p4, :cond_1

    #@20
    .line 6145
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->doProcessInputEvents()V

    #@23
    .line 6123
    :goto_1
    return-void

    #@24
    .line 6137
    :cond_0
    iput-object v1, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@26
    .line 6138
    iput-object v1, p0, Landroid/view/ViewRootImpl;->mPendingInputEventTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@28
    goto :goto_0

    #@29
    .line 6147
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
    .line 3714
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
    .line 3718
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    #@a
    invoke-interface {v1, p1}, Landroid/view/IWindowSession;->setInTouchMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 3724
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->ensureTouchModeLocally(Z)Z

    #@10
    move-result v1

    #@11
    return v1

    #@12
    .line 3719
    :catch_0
    move-exception v0

    #@13
    .line 3720
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
    .line 5764
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    #@3
    .line 5765
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@5
    instance-of v0, v0, Landroid/view/ViewGroup;

    #@7
    if-nez v0, :cond_0

    #@9
    .line 5766
    const/4 v0, 0x0

    #@a
    return-object v0

    #@b
    .line 5768
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
    .line 3221
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    #@3
    .line 3222
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@5
    if-eqz v2, :cond_0

    #@7
    .line 3223
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@9
    invoke-virtual {v2}, Landroid/view/View;->hasFocus()Z

    #@c
    move-result v2

    #@d
    if-nez v2, :cond_1

    #@f
    .line 3224
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    #@12
    .line 3220
    :cond_0
    :goto_0
    return-void

    #@13
    .line 3229
    :cond_1
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@15
    invoke-virtual {v2}, Landroid/view/View;->findFocus()Landroid/view/View;

    #@18
    move-result-object v0

    #@19
    .line 3230
    .local v0, "focused":Landroid/view/View;
    instance-of v2, v0, Landroid/view/ViewGroup;

    #@1b
    if-eqz v2, :cond_0

    #@1d
    move-object v1, v0

    #@1e
    .line 3231
    check-cast v1, Landroid/view/ViewGroup;

    #@20
    .line 3232
    .local v1, "group":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    #@23
    move-result v2

    #@24
    const/high16 v3, 0x40000

    #@26
    if-ne v2, v3, :cond_0

    #@28
    .line 3233
    invoke-static {p1, v0}, Landroid/view/ViewRootImpl;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    #@2b
    move-result v2

    #@2c
    .line 3232
    if-eqz v2, :cond_0

    #@2e
    .line 3234
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    #@31
    goto :goto_0
.end method

.method public getAccessibilityFocusedHost()Landroid/view/View;
    .locals 1

    #@0
    .prologue
    .line 3137
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    #@2
    return-object v0
.end method

.method public getAccessibilityFocusedVirtualView()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1

    #@0
    .prologue
    .line 3144
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    #@2
    return-object v0
.end method

.method public getAccessibilityInteractionController()Landroid/view/AccessibilityInteractionController;
    .locals 2

    #@0
    .prologue
    .line 5650
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 5651
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "getAccessibilityInteractionController called when there is no mView"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 5654
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionController:Landroid/view/AccessibilityInteractionController;

    #@f
    if-nez v0, :cond_1

    #@11
    .line 5655
    new-instance v0, Landroid/view/AccessibilityInteractionController;

    #@13
    invoke-direct {v0, p0}, Landroid/view/AccessibilityInteractionController;-><init>(Landroid/view/ViewRootImpl;)V

    #@16
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionController:Landroid/view/AccessibilityInteractionController;

    #@18
    .line 5657
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
    .line 1165
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@3
    if-eq p1, v0, :cond_0

    #@5
    .line 1166
    new-instance v0, Ljava/lang/RuntimeException;

    #@7
    const-string/jumbo v1, "child is not mine, honest!"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 1170
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
    .line 779
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
    .line 1178
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
    .line 5625
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLastTouchPoint:Landroid/graphics/PointF;

    #@2
    iget v0, v0, Landroid/graphics/PointF;->x:F

    #@4
    float-to-int v0, v0

    #@5
    iput v0, p1, Landroid/graphics/Point;->x:I

    #@7
    .line 5626
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLastTouchPoint:Landroid/graphics/PointF;

    #@9
    iget v0, v0, Landroid/graphics/PointF;->y:F

    #@b
    float-to-int v0, v0

    #@c
    iput v0, p1, Landroid/graphics/Point;->y:I

    #@e
    .line 5624
    return-void
.end method

.method public getLastTouchSource()I
    .locals 1

    #@0
    .prologue
    .line 5630
    iget v0, p0, Landroid/view/ViewRootImpl;->mLastTouchSource:I

    #@2
    return v0
.end method

.method public getLayoutDirection()I
    .locals 1

    #@0
    .prologue
    .line 6787
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method final getLocation()Landroid/view/WindowLeaked;
    .locals 1

    #@0
    .prologue
    .line 885
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLocation:Landroid/view/WindowLeaked;

    #@2
    return-object v0
.end method

.method public getParent()Landroid/view/ViewParent;
    .locals 1

    #@0
    .prologue
    .line 1160
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getParentForAccessibility()Landroid/view/ViewParent;
    .locals 1

    #@0
    .prologue
    .line 3216
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getTextAlignment()I
    .locals 1

    #@0
    .prologue
    .line 6817
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public getTextDirection()I
    .locals 1

    #@0
    .prologue
    .line 6802
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 783
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
    .line 881
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@2
    return-object v0
.end method

.method public getWindowFlags()I
    .locals 1

    #@0
    .prologue
    .line 775
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
    .line 1394
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLastWindowInsets:Landroid/view/WindowInsets;

    #@3
    if-eqz v0, :cond_0

    #@5
    if-eqz p1, :cond_4

    #@7
    .line 1395
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDispatchContentInsets:Landroid/graphics/Rect;

    #@9
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@b
    iget-object v4, v4, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    #@d
    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@10
    .line 1396
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDispatchStableInsets:Landroid/graphics/Rect;

    #@12
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@14
    iget-object v4, v4, Landroid/view/View$AttachInfo;->mStableInsets:Landroid/graphics/Rect;

    #@16
    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@19
    .line 1397
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mDispatchContentInsets:Landroid/graphics/Rect;

    #@1b
    .line 1398
    .local v1, "contentInsets":Landroid/graphics/Rect;
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mDispatchStableInsets:Landroid/graphics/Rect;

    #@1d
    .line 1401
    .local v3, "stableInsets":Landroid/graphics/Rect;
    if-nez p1, :cond_1

    #@1f
    .line 1402
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    #@21
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v0

    #@25
    if-eqz v0, :cond_5

    #@27
    .line 1403
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    #@29
    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@2c
    move-result v0

    #@2d
    if-eqz v0, :cond_5

    #@2f
    .line 1407
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@31
    iget-object v7, v0, Landroid/view/View$AttachInfo;->mOutsets:Landroid/graphics/Rect;

    #@33
    .line 1408
    .local v7, "outsets":Landroid/graphics/Rect;
    iget v0, v7, Landroid/graphics/Rect;->left:I

    #@35
    if-gtz v0, :cond_2

    #@37
    iget v0, v7, Landroid/graphics/Rect;->top:I

    #@39
    if-lez v0, :cond_6

    #@3b
    .line 1409
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
    .line 1410
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
    .line 1411
    iget v8, v1, Landroid/graphics/Rect;->bottom:I

    #@4e
    iget v9, v7, Landroid/graphics/Rect;->bottom:I

    #@50
    add-int/2addr v8, v9

    #@51
    .line 1409
    invoke-direct {v6, v0, v4, v5, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    #@54
    .end local v1    # "contentInsets":Landroid/graphics/Rect;
    .local v6, "contentInsets":Landroid/graphics/Rect;
    move-object v1, v6

    #@55
    .line 1413
    .end local v6    # "contentInsets":Landroid/graphics/Rect;
    .restart local v1    # "contentInsets":Landroid/graphics/Rect;
    :cond_3
    new-instance v0, Landroid/view/WindowInsets;

    #@57
    .line 1415
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
    .line 1416
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@67
    iget-boolean v5, v5, Landroid/view/View$AttachInfo;->mAlwaysConsumeNavBar:Z

    #@69
    .line 1413
    invoke-direct/range {v0 .. v5}, Landroid/view/WindowInsets;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V

    #@6c
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mLastWindowInsets:Landroid/view/WindowInsets;

    #@6e
    .line 1418
    .end local v1    # "contentInsets":Landroid/graphics/Rect;
    .end local v3    # "stableInsets":Landroid/graphics/Rect;
    .end local v7    # "outsets":Landroid/graphics/Rect;
    :cond_4
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLastWindowInsets:Landroid/view/WindowInsets;

    #@70
    return-object v0

    #@71
    .line 1404
    .restart local v1    # "contentInsets":Landroid/graphics/Rect;
    .restart local v3    # "stableInsets":Landroid/graphics/Rect;
    :cond_5
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    #@73
    .line 1405
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    #@75
    goto :goto_0

    #@76
    .line 1408
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
    .line 963
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mAppVisible:Z

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 964
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mAppVisible:Z

    #@6
    .line 965
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    #@9
    .line 966
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mAppVisible:Z

    #@b
    if-nez v0, :cond_0

    #@d
    .line 967
    invoke-static {}, Landroid/view/WindowManagerGlobal;->trimForeground()V

    #@10
    .line 962
    :cond_0
    return-void
.end method

.method public handleDispatchSystemUiVisibilityChanged(Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;)V
    .locals 4
    .param p1, "args"    # Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;

    #@0
    .prologue
    .line 5587
    iget v1, p0, Landroid/view/ViewRootImpl;->mSeq:I

    #@2
    iget v2, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->seq:I

    #@4
    if-eq v1, v2, :cond_0

    #@6
    .line 5591
    iget v1, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->seq:I

    #@8
    iput v1, p0, Landroid/view/ViewRootImpl;->mSeq:I

    #@a
    .line 5592
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@c
    const/4 v2, 0x1

    #@d
    iput-boolean v2, v1, Landroid/view/View$AttachInfo;->mForceReportNewAttributes:Z

    #@f
    .line 5593
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    #@12
    .line 5595
    :cond_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@14
    if-nez v1, :cond_1

    #@16
    return-void

    #@17
    .line 5596
    :cond_1
    iget v1, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->localChanges:I

    #@19
    if-eqz v1, :cond_2

    #@1b
    .line 5597
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@1d
    iget v2, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->localValue:I

    #@1f
    iget v3, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->localChanges:I

    #@21
    invoke-virtual {v1, v2, v3}, Landroid/view/View;->updateLocalSystemUiVisibility(II)Z

    #@24
    .line 5600
    :cond_2
    iget v1, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->globalVisibility:I

    #@26
    and-int/lit8 v0, v1, 0x7

    #@28
    .line 5601
    .local v0, "visibility":I
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@2a
    iget v1, v1, Landroid/view/View$AttachInfo;->mGlobalSystemUiVisibility:I

    #@2c
    if-eq v0, v1, :cond_3

    #@2e
    .line 5602
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@30
    iput v0, v1, Landroid/view/View$AttachInfo;->mGlobalSystemUiVisibility:I

    #@32
    .line 5603
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@34
    invoke-virtual {v1, v0}, Landroid/view/View;->dispatchSystemUiVisibilityChanged(I)V

    #@37
    .line 5586
    :cond_3
    return-void
.end method

.method public handleDispatchWindowShown()V
    .locals 1

    #@0
    .prologue
    .line 5608
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@2
    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    #@4
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->dispatchOnWindowShown()V

    #@7
    .line 5607
    return-void
.end method

.method handleGetNewSurface()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 973
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mNewSurfaceNeeded:Z

    #@3
    .line 974
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    #@5
    .line 975
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    #@8
    .line 972
    return-void
.end method

.method public handleRequestKeyboardShortcuts(Lcom/android/internal/os/IResultReceiver;I)V
    .locals 4
    .param p1, "receiver"    # Lcom/android/internal/os/IResultReceiver;
    .param p2, "deviceId"    # I

    #@0
    .prologue
    .line 5612
    new-instance v0, Landroid/os/Bundle;

    #@2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@5
    .line 5613
    .local v0, "data":Landroid/os/Bundle;
    new-instance v2, Ljava/util/ArrayList;

    #@7
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@a
    .line 5614
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/KeyboardShortcutGroup;>;"
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@c
    if-eqz v3, :cond_0

    #@e
    .line 5615
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@10
    invoke-virtual {v3, v2, p2}, Landroid/view/View;->requestKeyboardShortcuts(Ljava/util/List;I)V

    #@13
    .line 5617
    :cond_0
    const-string/jumbo v3, "shortcuts_array"

    #@16
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    #@19
    .line 5619
    const/4 v3, 0x0

    #@1a
    :try_start_0
    invoke-interface {p1, v3, v0}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1d
    .line 5611
    :goto_0
    return-void

    #@1e
    .line 5620
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
    .line 1052
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDirty:Landroid/graphics/Rect;

    #@3
    iget v1, p0, Landroid/view/ViewRootImpl;->mWidth:I

    #@5
    iget v2, p0, Landroid/view/ViewRootImpl;->mHeight:I

    #@7
    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    #@a
    .line 1053
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mWillDrawSoon:Z

    #@c
    if-nez v0, :cond_0

    #@e
    .line 1054
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    #@11
    .line 1051
    :cond_0
    return-void
.end method

.method public invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "dirty"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 1070
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0, p2}, Landroid/view/ViewRootImpl;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    #@4
    .line 1069
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
    .line 1075
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    #@6
    .line 1078
    if-nez p2, :cond_0

    #@8
    .line 1079
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->invalidate()V

    #@b
    .line 1080
    return-object v1

    #@c
    .line 1081
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
    .line 1085
    :cond_1
    iget v0, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    #@18
    if-nez v0, :cond_2

    #@1a
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@1c
    if-eqz v0, :cond_5

    #@1e
    .line 1086
    :cond_2
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    #@20
    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@23
    .line 1087
    iget-object p2, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    #@25
    .line 1088
    iget v0, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    #@27
    if-eqz v0, :cond_3

    #@29
    .line 1089
    iget v0, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    #@2b
    neg-int v0, v0

    #@2c
    invoke-virtual {p2, v2, v0}, Landroid/graphics/Rect;->offset(II)V

    #@2f
    .line 1091
    :cond_3
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@31
    if-eqz v0, :cond_4

    #@33
    .line 1092
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@35
    invoke-virtual {v0, p2}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInAppWindowToScreen(Landroid/graphics/Rect;)V

    #@38
    .line 1094
    :cond_4
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@3a
    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mScalingRequired:Z

    #@3c
    if-eqz v0, :cond_5

    #@3e
    .line 1095
    invoke-virtual {p2, v3, v3}, Landroid/graphics/Rect;->inset(II)V

    #@41
    .line 1099
    :cond_5
    invoke-direct {p0, p2}, Landroid/view/ViewRootImpl;->invalidateRectOnScreen(Landroid/graphics/Rect;)V

    #@44
    .line 1101
    return-object v1

    #@45
    .line 1082
    :cond_6
    return-object v1
.end method

.method invalidateWorld(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 1059
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    #@3
    .line 1060
    instance-of v2, p1, Landroid/view/ViewGroup;

    #@5
    if-eqz v2, :cond_0

    #@7
    move-object v1, p1

    #@8
    .line 1061
    check-cast v1, Landroid/view/ViewGroup;

    #@a
    .line 1062
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
    .line 1063
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {p0, v2}, Landroid/view/ViewRootImpl;->invalidateWorld(Landroid/view/View;)V

    #@18
    .line 1062
    add-int/lit8 v0, v0, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 1058
    .end local v0    # "i":I
    .end local v1    # "parent":Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method isInLayout()Z
    .locals 1

    #@0
    .prologue
    .line 2284
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mInLayout:Z

    #@2
    return v0
.end method

.method public isLayoutDirectionResolved()Z
    .locals 1

    #@0
    .prologue
    .line 6782
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public isLayoutRequested()Z
    .locals 1

    #@0
    .prologue
    .line 1048
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    #@2
    return v0
.end method

.method public isTextAlignmentResolved()Z
    .locals 1

    #@0
    .prologue
    .line 6812
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public isTextDirectionResolved()Z
    .locals 1

    #@0
    .prologue
    .line 6797
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public loadSystemProperties()V
    .locals 2

    #@0
    .prologue
    .line 5918
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@2
    new-instance v1, Landroid/view/ViewRootImpl$4;

    #@4
    invoke-direct {v1, p0}, Landroid/view/ViewRootImpl$4;-><init>(Landroid/view/ViewRootImpl;)V

    #@7
    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->post(Ljava/lang/Runnable;)Z

    #@a
    .line 5917
    return-void
.end method

.method public notifyChildRebuilt()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 525
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@3
    instance-of v0, v0, Lcom/android/internal/view/RootViewSurfaceTaker;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 527
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@9
    check-cast v0, Lcom/android/internal/view/RootViewSurfaceTaker;

    #@b
    invoke-interface {v0}, Lcom/android/internal/view/RootViewSurfaceTaker;->willYouTakeTheSurface()Landroid/view/SurfaceHolder$Callback2;

    #@e
    move-result-object v0

    #@f
    .line 526
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    #@11
    .line 528
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    #@13
    if-eqz v0, :cond_1

    #@15
    .line 529
    new-instance v0, Landroid/view/ViewRootImpl$TakenSurfaceHolder;

    #@17
    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$TakenSurfaceHolder;-><init>(Landroid/view/ViewRootImpl;)V

    #@1a
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@1c
    .line 530
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@1e
    const/4 v1, 0x0

    #@1f
    invoke-virtual {v0, v1}, Lcom/android/internal/view/BaseSurfaceHolder;->setFormat(I)V

    #@22
    .line 536
    :goto_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@24
    check-cast v0, Lcom/android/internal/view/RootViewSurfaceTaker;

    #@26
    invoke-interface {v0}, Lcom/android/internal/view/RootViewSurfaceTaker;->willYouTakeTheInputQueue()Landroid/view/InputQueue$Callback;

    #@29
    move-result-object v0

    #@2a
    .line 535
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    #@2c
    .line 537
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    #@2e
    if-eqz v0, :cond_0

    #@30
    .line 538
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    #@32
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    #@34
    invoke-interface {v0, v1}, Landroid/view/InputQueue$Callback;->onInputQueueCreated(Landroid/view/InputQueue;)V

    #@37
    .line 524
    :cond_0
    return-void

    #@38
    .line 532
    :cond_1
    iput-object v1, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@3a
    goto :goto_0
.end method

.method notifyRendererOfFramePending()V
    .locals 1

    #@0
    .prologue
    .line 1209
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@2
    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1210
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@8
    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    #@a
    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->notifyFramePending()V

    #@d
    .line 1208
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
    .line 6772
    invoke-direct {p0, p2, p3}, Landroid/view/ViewRootImpl;->postSendWindowContentChangedCallback(Landroid/view/View;I)V

    #@3
    .line 6771
    return-void
.end method

.method public onHardwarePostDraw(Landroid/view/DisplayListCanvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/view/DisplayListCanvas;

    #@0
    .prologue
    .line 2521
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->drawAccessibilityFocusedDrawableIfNeeded(Landroid/graphics/Canvas;)V

    #@3
    .line 2522
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
    .line 2523
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
    .line 2522
    add-int/lit8 v0, v0, -0x1

    #@1a
    goto :goto_0

    #@1b
    .line 2520
    :cond_0
    return-void
.end method

.method public onHardwarePreDraw(Landroid/view/DisplayListCanvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/view/DisplayListCanvas;

    #@0
    .prologue
    .line 2516
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
    .line 2515
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
    .line 6913
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
    .line 6918
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
    .line 6923
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
    .line 6908
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
    .line 6904
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    #@0
    .prologue
    .line 6899
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    #@0
    .prologue
    .line 6891
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 0
    .param p1, "target"    # Landroid/view/View;

    #@0
    .prologue
    .line 6895
    return-void
.end method

.method outputDisplayList(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 2531
    iget-object v0, p1, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    #@2
    invoke-virtual {v0}, Landroid/view/RenderNode;->output()V

    #@5
    .line 2532
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@7
    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 2533
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@d
    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    #@f
    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->serializeDisplayListTree()V

    #@12
    .line 2530
    :cond_0
    return-void
.end method

.method public performHapticFeedback(IZ)Z
    .locals 3
    .param p1, "effectId"    # I
    .param p2, "always"    # Z

    #@0
    .prologue
    .line 5753
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
    .line 5754
    :catch_0
    move-exception v0

    #@a
    .line 5755
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
    .line 5715
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    #@3
    .line 5718
    :try_start_0
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->getAudioManager()Landroid/media/AudioManager;

    #@6
    move-result-object v0

    #@7
    .line 5720
    .local v0, "audioManager":Landroid/media/AudioManager;
    packed-switch p1, :pswitch_data_0

    #@a
    .line 5737
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
    .line 5738
    const-string/jumbo v4, " not defined in "

    #@1f
    .line 5737
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v3

    #@23
    .line 5738
    const-class v4, Landroid/view/SoundEffectConstants;

    #@25
    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    #@28
    move-result-object v4

    #@29
    .line 5737
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
    .line 5740
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    :catch_0
    move-exception v1

    #@36
    .line 5742
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
    .line 5743
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    #@52
    .line 5714
    return-void

    #@53
    .line 5722
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    .restart local v0    # "audioManager":Landroid/media/AudioManager;
    :pswitch_0
    const/4 v2, 0x0

    #@54
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V

    #@57
    .line 5723
    return-void

    #@58
    .line 5725
    :pswitch_1
    const/4 v2, 0x2

    #@59
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V

    #@5c
    .line 5726
    return-void

    #@5d
    .line 5728
    :pswitch_2
    const/4 v2, 0x3

    #@5e
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V

    #@61
    .line 5729
    return-void

    #@62
    .line 5731
    :pswitch_3
    const/4 v2, 0x4

    #@63
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V

    #@66
    .line 5732
    return-void

    #@67
    .line 5734
    :pswitch_4
    const/4 v2, 0x1

    #@68
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    #@6b
    .line 5735
    return-void

    #@6c
    .line 5720
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
    .line 1018
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@2
    iget v0, v2, Landroid/view/View$AttachInfo;->mDisplayState:I

    #@4
    .line 1019
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
    .line 1020
    const/4 v2, 0x3

    #@11
    if-eq v0, v2, :cond_0

    #@13
    .line 1021
    const/4 v2, 0x4

    #@14
    if-ne v0, v2, :cond_1

    #@16
    .line 1023
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
    .line 1017
    :cond_1
    :goto_0
    return-void

    #@1e
    .line 1024
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
    .line 493
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mProfile:Z

    #@3
    .line 492
    return-void
.end method

.method public recomputeViewAttributes(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    #@0
    .prologue
    .line 3243
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    #@3
    .line 3244
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@5
    if-ne v0, p1, :cond_0

    #@7
    .line 3245
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@9
    const/4 v1, 0x1

    #@a
    iput-boolean v1, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    #@c
    .line 3246
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mWillDrawSoon:Z

    #@e
    if-nez v0, :cond_0

    #@10
    .line 3247
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    #@13
    .line 3242
    :cond_0
    return-void
.end method

.method public registerAnimatingRenderNode(Landroid/view/RenderNode;)V
    .locals 2
    .param p1, "animator"    # Landroid/view/RenderNode;

    #@0
    .prologue
    .line 815
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@2
    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 816
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@8
    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    #@a
    invoke-virtual {v0, p1}, Landroid/view/ThreadedRenderer;->registerAnimatingRenderNode(Landroid/view/RenderNode;)V

    #@d
    .line 814
    :goto_0
    return-void

    #@e
    .line 818
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@10
    iget-object v0, v0, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    #@12
    if-nez v0, :cond_1

    #@14
    .line 819
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@16
    new-instance v1, Ljava/util/ArrayList;

    #@18
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@1b
    iput-object v1, v0, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    #@1d
    .line 821
    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@1f
    iget-object v0, v0, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    #@21
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@24
    goto :goto_0
.end method

.method public removeWindowCallbacks(Landroid/view/WindowCallbacks;)V
    .locals 2
    .param p1, "callback"    # Landroid/view/WindowCallbacks;

    #@0
    .prologue
    .line 473
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    #@2
    monitor-enter v1

    #@3
    .line 474
    :try_start_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 471
    return-void

    #@a
    .line 473
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
    .line 7229
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mActivityRelaunched:Z

    #@3
    .line 7228
    return-void
.end method

.method public reportDrawFinish()V
    .locals 1

    #@0
    .prologue
    .line 480
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowDrawCountDown:Ljava/util/concurrent/CountDownLatch;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 481
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowDrawCountDown:Ljava/util/concurrent/CountDownLatch;

    #@6
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    #@9
    .line 479
    :cond_0
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    #@0
    .prologue
    .line 3201
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    #@3
    .line 3202
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    #@6
    .line 3197
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
    .line 6867
    if-nez p2, :cond_0

    #@3
    .line 6868
    invoke-virtual {p0, v2, p3}, Landroid/view/ViewRootImpl;->scrollToRectOrFocus(Landroid/graphics/Rect;Z)Z

    #@6
    move-result v2

    #@7
    return v2

    #@8
    .line 6870
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
    .line 6871
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
    .line 6870
    invoke-virtual {p2, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    #@1d
    .line 6872
    invoke-virtual {p0, p2, p3}, Landroid/view/ViewRootImpl;->scrollToRectOrFocus(Landroid/graphics/Rect;Z)Z

    #@20
    move-result v1

    #@21
    .line 6873
    .local v1, "scrolled":Z
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    #@23
    invoke-virtual {v2, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@26
    .line 6874
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
    .line 6875
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
    .line 6877
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
    .line 6881
    :goto_0
    return v1

    #@46
    .line 6878
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
    .line 6861
    return-void
.end method

.method public requestFitSystemWindows()V
    .locals 1

    #@0
    .prologue
    .line 1032
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    #@3
    .line 1033
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mApplyInsetsRequested:Z

    #@6
    .line 1034
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    #@9
    .line 1031
    return-void
.end method

.method public requestInvalidateRootRenderNode()V
    .locals 1

    #@0
    .prologue
    .line 3009
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mInvalidateRootRequested:Z

    #@3
    .line 3008
    return-void
.end method

.method public requestLayout()V
    .locals 1

    #@0
    .prologue
    .line 1039
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mHandlingLayoutInLayoutRequest:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1040
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    #@7
    .line 1041
    const/4 v0, 0x1

    #@8
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    #@a
    .line 1042
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    #@d
    .line 1038
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
    .line 2310
    iget-object v0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    #@3
    if-eqz v0, :cond_0

    #@5
    iget-object v0, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@7
    if-nez v0, :cond_1

    #@9
    .line 2312
    :cond_0
    return v1

    #@a
    .line 2314
    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLayoutRequesters:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@f
    move-result v0

    #@10
    if-nez v0, :cond_2

    #@12
    .line 2315
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLayoutRequesters:Ljava/util/ArrayList;

    #@14
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@17
    .line 2317
    :cond_2
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mHandlingLayoutInLayoutRequest:Z

    #@19
    if-nez v0, :cond_3

    #@1b
    .line 2320
    return v1

    #@1c
    .line 2324
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
    .line 6632
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
    .line 6633
    :cond_0
    const/4 v8, 0x0

    #@e
    return v8

    #@f
    .line 6637
    :cond_1
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    #@12
    move-result v1

    #@13
    .line 6638
    .local v1, "eventType":I
    sparse-switch v1, :sswitch_data_0

    #@16
    .line 6678
    :cond_2
    :goto_0
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    #@18
    invoke-virtual {v8, p2}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    #@1b
    .line 6679
    const/4 v8, 0x1

    #@1c
    return v8

    #@1d
    .line 6640
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    #@20
    move-result-wide v6

    #@21
    .line 6641
    .local v6, "sourceNodeId":J
    invoke-static {v6, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    #@24
    move-result v0

    #@25
    .line 6643
    .local v0, "accessibilityViewId":I
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@27
    invoke-virtual {v8, v0}, Landroid/view/View;->findViewByAccessibilityId(I)Landroid/view/View;

    #@2a
    move-result-object v4

    #@2b
    .line 6644
    .local v4, "source":Landroid/view/View;
    if-eqz v4, :cond_2

    #@2d
    .line 6645
    invoke-virtual {v4}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    #@30
    move-result-object v3

    #@31
    .line 6646
    .local v3, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v3, :cond_2

    #@33
    .line 6647
    invoke-static {v6, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    #@36
    move-result v5

    #@37
    .line 6650
    .local v5, "virtualNodeId":I
    const v8, 0x7fffffff

    #@3a
    if-ne v5, v8, :cond_3

    #@3c
    .line 6652
    const/4 v8, -0x1

    #@3d
    .line 6651
    invoke-virtual {v3, v8}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@40
    move-result-object v2

    #@41
    .line 6656
    .local v2, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    :goto_1
    invoke-virtual {p0, v4, v2}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    #@44
    goto :goto_0

    #@45
    .line 6654
    .end local v2    # "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_3
    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@48
    move-result-object v2

    #@49
    .restart local v2    # "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    goto :goto_1

    #@4a
    .line 6661
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
    .line 6662
    .restart local v6    # "sourceNodeId":J
    invoke-static {v6, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    #@51
    move-result v0

    #@52
    .line 6664
    .restart local v0    # "accessibilityViewId":I
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@54
    invoke-virtual {v8, v0}, Landroid/view/View;->findViewByAccessibilityId(I)Landroid/view/View;

    #@57
    move-result-object v4

    #@58
    .line 6665
    .restart local v4    # "source":Landroid/view/View;
    if-eqz v4, :cond_2

    #@5a
    .line 6666
    invoke-virtual {v4}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    #@5d
    move-result-object v3

    #@5e
    .line 6667
    .restart local v3    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v3, :cond_2

    #@60
    .line 6668
    invoke-virtual {p0, v9, v9}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    #@63
    goto :goto_0

    #@64
    .line 6675
    .end local v0    # "accessibilityViewId":I
    .end local v3    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    .end local v4    # "source":Landroid/view/View;
    .end local v6    # "sourceNodeId":J
    :sswitch_2
    invoke-direct {p0, p2}, Landroid/view/ViewRootImpl;->handleWindowContentChangedEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    #@67
    goto :goto_0

    #@68
    .line 6638
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
    .line 1195
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
    .line 1194
    :goto_0
    return-void

    #@d
    .line 1196
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    #@f
    if-nez v0, :cond_1

    #@11
    .line 1197
    new-instance v0, Ljava/util/ArrayList;

    #@13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@16
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    #@18
    .line 1199
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
    .line 2467
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    #@3
    .line 2468
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@5
    if-ne v0, p1, :cond_0

    #@7
    .line 2469
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@9
    iget v1, v0, Landroid/view/View;->mPrivateFlags:I

    #@b
    or-int/lit16 v1, v1, 0x200

    #@d
    iput v1, v0, Landroid/view/View;->mPrivateFlags:I

    #@f
    .line 2472
    const/4 v0, 0x1

    #@10
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    #@12
    .line 2473
    const/4 v0, 0x0

    #@13
    iput v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChangesFlag:I

    #@15
    .line 2474
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->requestLayout()V

    #@18
    .line 2465
    :cond_0
    return-void
.end method

.method public requestUpdateConfiguration(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "config"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    .line 5913
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@2
    const/16 v2, 0x12

    #@4
    invoke-virtual {v1, v2, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@7
    move-result-object v0

    #@8
    .line 5914
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@a
    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    #@d
    .line 5912
    return-void
.end method

.method scheduleConsumeBatchedInput()V
    .locals 4

    #@0
    .prologue
    .line 6257
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 6258
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    #@7
    .line 6259
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    #@9
    .line 6260
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mConsumedBatchedInputRunnable:Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;

    #@b
    .line 6259
    const/4 v2, 0x0

    #@c
    .line 6260
    const/4 v3, 0x0

    #@d
    .line 6259
    invoke-virtual {v0, v2, v1, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    #@10
    .line 6256
    :cond_0
    return-void
.end method

.method scheduleConsumeBatchedInputImmediately()V
    .locals 2

    #@0
    .prologue
    .line 6273
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputImmediatelyScheduled:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 6274
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->unscheduleConsumeBatchedInput()V

    #@7
    .line 6275
    const/4 v0, 0x1

    #@8
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputImmediatelyScheduled:Z

    #@a
    .line 6276
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@c
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputImmediatelyRunnable:Landroid/view/ViewRootImpl$ConsumeBatchedInputImmediatelyRunnable;

    #@e
    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->post(Ljava/lang/Runnable;)Z

    #@11
    .line 6272
    :cond_0
    return-void
.end method

.method scheduleTraversals()V
    .locals 4

    #@0
    .prologue
    .line 1215
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    #@2
    if-nez v0, :cond_1

    #@4
    .line 1216
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    #@7
    .line 1217
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
    .line 1218
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    #@19
    .line 1219
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTraversalRunnable:Landroid/view/ViewRootImpl$TraversalRunnable;

    #@1b
    const/4 v2, 0x2

    #@1c
    const/4 v3, 0x0

    #@1d
    .line 1218
    invoke-virtual {v0, v2, v1, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    #@20
    .line 1220
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mUnbufferedInputDispatch:Z

    #@22
    if-nez v0, :cond_0

    #@24
    .line 1221
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleConsumeBatchedInput()V

    #@27
    .line 1223
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->notifyRendererOfFramePending()V

    #@2a
    .line 1224
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->pokeDrawLockIfNeeded()V

    #@2d
    .line 1214
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
    .line 3013
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@4
    iget-object v0, v6, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    #@6
    .line 3014
    .local v0, "ci":Landroid/graphics/Rect;
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@8
    iget-object v5, v6, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    #@a
    .line 3015
    .local v5, "vi":Landroid/graphics/Rect;
    const/4 v4, 0x0

    #@b
    .line 3016
    .local v4, "scrollY":I
    const/4 v2, 0x0

    #@c
    .line 3018
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
    .line 3024
    :cond_0
    iget v4, p0, Landroid/view/ViewRootImpl;->mScrollY:I

    #@1a
    .line 3031
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@1c
    invoke-virtual {v6}, Landroid/view/View;->findFocus()Landroid/view/View;

    #@1f
    move-result-object v1

    #@20
    .line 3032
    .local v1, "focus":Landroid/view/View;
    if-nez v1, :cond_6

    #@22
    .line 3033
    return v9

    #@23
    .line 3019
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
    .line 3116
    .end local p1    # "rectangle":Landroid/graphics/Rect;
    :cond_2
    :goto_0
    iget v6, p0, Landroid/view/ViewRootImpl;->mScrollY:I

    #@31
    if-eq v4, v6, :cond_5

    #@33
    .line 3119
    if-nez p2, :cond_10

    #@35
    .line 3120
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    #@37
    if-nez v6, :cond_3

    #@39
    .line 3121
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
    .line 3123
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
    .line 3127
    :cond_4
    :goto_1
    iput v4, p0, Landroid/view/ViewRootImpl;->mScrollY:I

    #@53
    .line 3130
    :cond_5
    return v2

    #@54
    .line 3035
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
    .line 3036
    .local v3, "lastScrolledFocus":Landroid/view/View;
    :goto_2
    if-eq v1, v3, :cond_7

    #@63
    .line 3040
    const/4 p1, 0x0

    #@64
    .line 3045
    .end local p1    # "rectangle":Landroid/graphics/Rect;
    :cond_7
    if-ne v1, v3, :cond_8

    #@66
    iget-boolean v6, p0, Landroid/view/ViewRootImpl;->mScrollMayChange:Z

    #@68
    if-eqz v6, :cond_b

    #@6a
    .line 3055
    :cond_8
    new-instance v6, Ljava/lang/ref/WeakReference;

    #@6c
    invoke-direct {v6, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@6f
    iput-object v6, p0, Landroid/view/ViewRootImpl;->mLastScrolledFocus:Ljava/lang/ref/WeakReference;

    #@71
    .line 3056
    iput-boolean v9, p0, Landroid/view/ViewRootImpl;->mScrollMayChange:Z

    #@73
    .line 3059
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mVisRect:Landroid/graphics/Rect;

    #@75
    invoke-virtual {v1, v6, v7}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    #@78
    move-result v6

    #@79
    if-eqz v6, :cond_2

    #@7b
    .line 3064
    if-nez p1, :cond_c

    #@7d
    .line 3065
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    #@7f
    invoke-virtual {v1, v6}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    #@82
    .line 3068
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@84
    instance-of v6, v6, Landroid/view/ViewGroup;

    #@86
    if-eqz v6, :cond_9

    #@88
    .line 3069
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@8a
    check-cast v6, Landroid/view/ViewGroup;

    #@8c
    .line 3070
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    #@8e
    .line 3069
    invoke-virtual {v6, v1, v7}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    #@91
    .line 3083
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
    .line 3087
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    #@9d
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    #@a0
    move-result v6

    #@a1
    .line 3088
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
    .line 3087
    if-le v6, v7, :cond_d

    #@af
    .line 3110
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
    .line 3035
    goto :goto_2

    #@b4
    .line 3045
    .end local p1    # "rectangle":Landroid/graphics/Rect;
    .restart local v3    # "lastScrolledFocus":Landroid/view/View;
    :cond_b
    if-nez p1, :cond_8

    #@b6
    goto/16 :goto_0

    #@b8
    .line 3077
    :cond_c
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    #@ba
    invoke-virtual {v6, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@bd
    goto :goto_3

    #@be
    .line 3099
    :cond_d
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    #@c0
    iget v6, v6, Landroid/graphics/Rect;->top:I

    #@c2
    iget v7, v5, Landroid/graphics/Rect;->top:I

    #@c4
    if-ge v6, v7, :cond_e

    #@c6
    .line 3100
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
    .line 3103
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
    .line 3104
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
    .line 3108
    :cond_f
    const/4 v4, 0x0

    #@ef
    goto :goto_4

    #@f0
    .line 3124
    .end local v1    # "focus":Landroid/view/View;
    .end local v3    # "lastScrolledFocus":Landroid/view/View;
    :cond_10
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    #@f2
    if-eqz v6, :cond_4

    #@f4
    .line 3125
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
    .line 3150
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    #@5
    if-eqz v4, :cond_1

    #@7
    .line 3152
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    #@9
    .line 3153
    .local v1, "focusNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    #@b
    .line 3160
    .local v0, "focusHost":Landroid/view/View;
    iput-object v6, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    #@d
    .line 3161
    iput-object v6, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    #@f
    .line 3165
    invoke-virtual {v0, v7}, Landroid/view/View;->clearAccessibilityFocusNoCallbacks(I)V

    #@12
    .line 3168
    invoke-virtual {v0}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    #@15
    move-result-object v2

    #@16
    .line 3169
    .local v2, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v2, :cond_0

    #@18
    .line 3171
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    #@1a
    invoke-virtual {v1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInParent(Landroid/graphics/Rect;)V

    #@1d
    .line 3172
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    #@1f
    invoke-virtual {v0, v4}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    #@22
    .line 3175
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    #@25
    move-result-wide v4

    #@26
    .line 3174
    invoke-static {v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    #@29
    move-result v3

    #@2a
    .line 3177
    .local v3, "virtualNodeId":I
    const/16 v4, 0x80

    #@2c
    .line 3176
    invoke-virtual {v2, v3, v4, v6}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    #@2f
    .line 3179
    .end local v3    # "virtualNodeId":I
    :cond_0
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    #@32
    .line 3181
    .end local v0    # "focusHost":Landroid/view/View;
    .end local v1    # "focusNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v2    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_1
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    #@34
    if-eqz v4, :cond_2

    #@36
    .line 3183
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    #@38
    invoke-virtual {v4, v7}, Landroid/view/View;->clearAccessibilityFocusNoCallbacks(I)V

    #@3b
    .line 3188
    :cond_2
    iput-object p1, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    #@3d
    .line 3189
    iput-object p2, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    #@3f
    .line 3191
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@41
    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    #@43
    if-eqz v4, :cond_3

    #@45
    .line 3192
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@47
    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    #@49
    invoke-virtual {v4}, Landroid/view/ThreadedRenderer;->invalidateRoot()V

    #@4c
    .line 3147
    :cond_3
    return-void
.end method

.method public setDragFocus(Landroid/view/View;)V
    .locals 1
    .param p1, "newDragTarget"    # Landroid/view/View;

    #@0
    .prologue
    .line 5634
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 5635
    iput-object p1, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    #@6
    .line 5633
    :cond_0
    return-void
.end method

.method public setIsAmbientMode(Z)V
    .locals 0
    .param p1, "ambient"    # Z

    #@0
    .prologue
    .line 1127
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mIsAmbientMode:Z

    #@2
    .line 1126
    return-void
.end method

.method setLayoutParams(Landroid/view/WindowManager$LayoutParams;Z)V
    .locals 10
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "newView"    # Z

    #@0
    .prologue
    .line 889
    monitor-enter p0

    #@1
    .line 890
    :try_start_0
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@3
    iget-object v7, v7, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@5
    iget v3, v7, Landroid/graphics/Rect;->left:I

    #@7
    .line 891
    .local v3, "oldInsetLeft":I
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@9
    iget-object v7, v7, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@b
    iget v5, v7, Landroid/graphics/Rect;->top:I

    #@d
    .line 892
    .local v5, "oldInsetTop":I
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@f
    iget-object v7, v7, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@11
    iget v4, v7, Landroid/graphics/Rect;->right:I

    #@13
    .line 893
    .local v4, "oldInsetRight":I
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@15
    iget-object v7, v7, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@17
    iget v2, v7, Landroid/graphics/Rect;->bottom:I

    #@19
    .line 894
    .local v2, "oldInsetBottom":I
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@1b
    iget v6, v7, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    #@1d
    .line 895
    .local v6, "oldSoftInputMode":I
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@1f
    iget-boolean v1, v7, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    #@21
    .line 904
    .local v1, "oldHasManualSurfaceInsets":Z
    iget v7, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@23
    iput v7, p0, Landroid/view/ViewRootImpl;->mClientWindowLayoutFlags:I

    #@25
    .line 907
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@27
    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@29
    and-int/lit16 v0, v7, 0x80

    #@2b
    .line 911
    .local v0, "compatibleWindowFlag":I
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@2d
    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    #@2f
    iput v7, p1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    #@31
    .line 912
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@33
    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    #@35
    iput v7, p1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    #@37
    .line 914
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@39
    invoke-virtual {v7, p1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    #@3c
    move-result v7

    #@3d
    iput v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChangesFlag:I

    #@3f
    .line 915
    iget v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChangesFlag:I

    #@41
    .line 916
    const/high16 v8, 0x80000

    #@43
    .line 915
    and-int/2addr v7, v8

    #@44
    if-eqz v7, :cond_0

    #@46
    .line 918
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@48
    const/4 v8, 0x1

    #@49
    iput-boolean v8, v7, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    #@4b
    .line 920
    :cond_0
    iget v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChangesFlag:I

    #@4d
    and-int/lit8 v7, v7, 0x1

    #@4f
    if-eqz v7, :cond_1

    #@51
    .line 923
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@53
    const/4 v8, 0x1

    #@54
    iput-boolean v8, v7, Landroid/view/View$AttachInfo;->mNeedsUpdateLightCenter:Z

    #@56
    .line 925
    :cond_1
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@58
    iget-object v7, v7, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    #@5a
    if-nez v7, :cond_2

    #@5c
    .line 926
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@5e
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mBasePackageName:Ljava/lang/String;

    #@60
    iput-object v8, v7, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    #@62
    .line 928
    :cond_2
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@64
    iget v8, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@66
    or-int/2addr v8, v0

    #@67
    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@69
    .line 930
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@6b
    iget-boolean v7, v7, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    #@6d
    if-eqz v7, :cond_6

    #@6f
    .line 932
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@71
    iget-object v7, v7, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@73
    invoke-virtual {v7, v3, v5, v4, v2}, Landroid/graphics/Rect;->set(IIII)V

    #@76
    .line 934
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@78
    iput-boolean v1, v7, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    #@7a
    .line 942
    :cond_3
    :goto_0
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@7c
    invoke-direct {p0, v7}, Landroid/view/ViewRootImpl;->applyKeepScreenOnFlag(Landroid/view/WindowManager$LayoutParams;)V

    #@7f
    .line 944
    if-eqz p2, :cond_4

    #@81
    .line 945
    iget v7, p1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    #@83
    iput v7, p0, Landroid/view/ViewRootImpl;->mSoftInputMode:I

    #@85
    .line 946
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->requestLayout()V

    #@88
    .line 950
    :cond_4
    iget v7, p1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    #@8a
    and-int/lit16 v7, v7, 0xf0

    #@8c
    if-nez v7, :cond_5

    #@8e
    .line 952
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@90
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@92
    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    #@94
    and-int/lit16 v8, v8, -0xf1

    #@96
    .line 954
    and-int/lit16 v9, v6, 0xf0

    #@98
    .line 952
    or-int/2addr v8, v9

    #@99
    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    #@9b
    .line 957
    :cond_5
    const/4 v7, 0x1

    #@9c
    iput-boolean v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    #@9e
    .line 958
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a1
    monitor-exit p0

    #@a2
    .line 888
    return-void

    #@a3
    .line 935
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
    .line 936
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@ad
    iget-object v7, v7, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@af
    iget v7, v7, Landroid/graphics/Rect;->top:I

    #@b1
    if-eq v7, v5, :cond_8

    #@b3
    .line 939
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
    .line 889
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
    .line 937
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
    .line 938
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
    .line 5500
    iput-object p1, p0, Landroid/view/ViewRootImpl;->mLocalDragState:Ljava/lang/Object;

    #@2
    .line 5499
    return-void
.end method

.method public setPausedForTransition(Z)V
    .locals 0
    .param p1, "paused"    # Z

    #@0
    .prologue
    .line 1155
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mPausedForTransition:Z

    #@2
    .line 1154
    return-void
.end method

.method public setReportNextDraw()V
    .locals 1

    #@0
    .prologue
    .line 6935
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    #@3
    .line 6936
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->invalidate()V

    #@6
    .line 6934
    return-void
.end method

.method public setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/view/View;)V
    .locals 24
    .param p1, "view"    # Landroid/view/View;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "panelParentView"    # Landroid/view/View;

    #@0
    .prologue
    .line 547
    monitor-enter p0

    #@1
    .line 548
    :try_start_0
    move-object/from16 v0, p0

    #@3
    iget-object v3, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@5
    if-nez v3, :cond_15

    #@7
    .line 549
    move-object/from16 v0, p1

    #@9
    move-object/from16 v1, p0

    #@b
    iput-object v0, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@d
    .line 551
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
    .line 552
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
    .line 554
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
    .line 555
    move-object/from16 v0, p0

    #@38
    iget-object v3, v0, Landroid/view/ViewRootImpl;->mFallbackEventHandler:Landroid/view/FallbackEventHandler;

    #@3a
    move-object/from16 v0, p1

    #@3c
    invoke-interface {v3, v0}, Landroid/view/FallbackEventHandler;->setView(Landroid/view/View;)V

    #@3f
    .line 556
    move-object/from16 v0, p0

    #@41
    iget-object v3, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@43
    move-object/from16 v0, p2

    #@45
    invoke-virtual {v3, v0}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    #@48
    .line 557
    move-object/from16 v0, p0

    #@4a
    iget-object v3, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@4c
    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    #@4e
    if-nez v3, :cond_0

    #@50
    .line 558
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
    .line 560
    :cond_0
    move-object/from16 v0, p0

    #@5c
    iget-object v0, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@5e
    move-object/from16 p2, v0

    #@60
    .line 561
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->setTag()V

    #@63
    .line 569
    move-object/from16 v0, p2

    #@65
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@67
    move-object/from16 v0, p0

    #@69
    iput v3, v0, Landroid/view/ViewRootImpl;->mClientWindowLayoutFlags:I

    #@6b
    .line 571
    const/4 v3, 0x0

    #@6c
    const/4 v4, 0x0

    #@6d
    move-object/from16 v0, p0

    #@6f
    invoke-virtual {v0, v3, v4}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    #@72
    .line 573
    move-object/from16 v0, p1

    #@74
    instance-of v3, v0, Lcom/android/internal/view/RootViewSurfaceTaker;

    #@76
    if-eqz v3, :cond_1

    #@78
    .line 575
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
    .line 574
    move-object/from16 v0, p0

    #@83
    iput-object v3, v0, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    #@85
    .line 576
    move-object/from16 v0, p0

    #@87
    iget-object v3, v0, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    #@89
    if-eqz v3, :cond_1

    #@8b
    .line 577
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
    .line 578
    move-object/from16 v0, p0

    #@98
    iget-object v3, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@9a
    const/4 v4, 0x0

    #@9b
    invoke-virtual {v3, v4}, Lcom/android/internal/view/BaseSurfaceHolder;->setFormat(I)V

    #@9e
    .line 584
    :cond_1
    move-object/from16 v0, p2

    #@a0
    iget-boolean v3, v0, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    #@a2
    if-nez v3, :cond_2

    #@a4
    .line 585
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
    .line 589
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
    .line 590
    .local v13, "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    invoke-virtual {v13}, Landroid/content/res/CompatibilityInfo;->getTranslator()Landroid/content/res/CompatibilityInfo$Translator;

    #@bc
    move-result-object v3

    #@bd
    move-object/from16 v0, p0

    #@bf
    iput-object v3, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@c1
    .line 593
    move-object/from16 v0, p0

    #@c3
    iget-object v3, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@c5
    if-nez v3, :cond_3

    #@c7
    .line 594
    move-object/from16 v0, p0

    #@c9
    move-object/from16 v1, p2

    #@cb
    invoke-direct {v0, v1}, Landroid/view/ViewRootImpl;->enableHardwareAcceleration(Landroid/view/WindowManager$LayoutParams;)V

    #@ce
    .line 597
    :cond_3
    const/16 v21, 0x0

    #@d0
    .line 598
    .local v21, "restore":Z
    move-object/from16 v0, p0

    #@d2
    iget-object v3, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@d4
    if-eqz v3, :cond_4

    #@d6
    .line 599
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
    .line 600
    const/16 v21, 0x1

    #@e3
    .line 601
    invoke-virtual/range {p2 .. p2}, Landroid/view/WindowManager$LayoutParams;->backup()V

    #@e6
    .line 602
    move-object/from16 v0, p0

    #@e8
    iget-object v3, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@ea
    move-object/from16 v0, p2

    #@ec
    invoke-virtual {v3, v0}, Landroid/content/res/CompatibilityInfo$Translator;->translateWindowLayout(Landroid/view/WindowManager$LayoutParams;)V

    #@ef
    .line 606
    :cond_4
    invoke-virtual {v13}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    #@f2
    move-result v3

    #@f3
    if-nez v3, :cond_5

    #@f5
    .line 607
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
    .line 608
    const/4 v3, 0x1

    #@100
    move-object/from16 v0, p0

    #@102
    iput-boolean v3, v0, Landroid/view/ViewRootImpl;->mLastInCompatMode:Z

    #@104
    .line 611
    :cond_5
    move-object/from16 v0, p2

    #@106
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    #@108
    move-object/from16 v0, p0

    #@10a
    iput v3, v0, Landroid/view/ViewRootImpl;->mSoftInputMode:I

    #@10c
    .line 612
    const/4 v3, 0x1

    #@10d
    move-object/from16 v0, p0

    #@10f
    iput-boolean v3, v0, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    #@111
    .line 613
    const/4 v3, -0x1

    #@112
    move-object/from16 v0, p0

    #@114
    iput v3, v0, Landroid/view/ViewRootImpl;->mWindowAttributesChangesFlag:I

    #@116
    .line 614
    move-object/from16 v0, p0

    #@118
    iget-object v3, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@11a
    move-object/from16 v0, p1

    #@11c
    iput-object v0, v3, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    #@11e
    .line 615
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
    .line 616
    move-object/from16 v0, p0

    #@12d
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@12f
    .line 617
    move-object/from16 v0, p0

    #@131
    iget-object v3, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@133
    if-nez v3, :cond_b

    #@135
    const/high16 v3, 0x3f800000    # 1.0f

    #@137
    .line 616
    :goto_1
    iput v3, v4, Landroid/view/View$AttachInfo;->mApplicationScale:F

    #@139
    .line 618
    if-eqz p3, :cond_6

    #@13b
    .line 619
    move-object/from16 v0, p0

    #@13d
    iget-object v3, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@13f
    .line 620
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    #@142
    move-result-object v4

    #@143
    .line 619
    iput-object v4, v3, Landroid/view/View$AttachInfo;->mPanelParentWindowToken:Landroid/os/IBinder;

    #@145
    .line 622
    :cond_6
    const/4 v3, 0x1

    #@146
    move-object/from16 v0, p0

    #@148
    iput-boolean v3, v0, Landroid/view/ViewRootImpl;->mAdded:Z

    #@14a
    .line 628
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->requestLayout()V

    #@14d
    .line 629
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
    .line 631
    new-instance v3, Landroid/view/InputChannel;

    #@159
    invoke-direct {v3}, Landroid/view/InputChannel;-><init>()V

    #@15c
    move-object/from16 v0, p0

    #@15e
    iput-object v3, v0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    #@160
    .line 633
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
    .line 636
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
    .line 637
    move-object/from16 v0, p0

    #@17b
    iget-object v3, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@17d
    const/4 v4, 0x1

    #@17e
    iput-boolean v4, v3, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    #@180
    .line 638
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->collectViewAttributes()Z

    #@183
    .line 639
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
    .line 640
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
    .line 641
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
    .line 642
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
    .line 639
    invoke-interface/range {v3 .. v12}, Landroid/view/IWindowSession;->addToDisplay(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/InputChannel;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@1b8
    move-result v20

    #@1b9
    .line 653
    .local v20, "res":I
    if-eqz v21, :cond_8

    #@1bb
    .line 654
    :try_start_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/WindowManager$LayoutParams;->restore()V

    #@1be
    .line 658
    :cond_8
    move-object/from16 v0, p0

    #@1c0
    iget-object v3, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@1c2
    if-eqz v3, :cond_9

    #@1c4
    .line 659
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
    .line 661
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
    .line 662
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
    .line 663
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
    .line 664
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
    .line 665
    move-object/from16 v0, p0

    #@203
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@205
    .line 666
    and-int/lit8 v3, v20, 0x4

    #@207
    if-eqz v3, :cond_e

    #@209
    const/4 v3, 0x1

    #@20a
    .line 665
    :goto_3
    iput-boolean v3, v4, Landroid/view/View$AttachInfo;->mAlwaysConsumeNavBar:Z

    #@20c
    .line 667
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
    .line 669
    if-gez v20, :cond_f

    #@218
    .line 670
    move-object/from16 v0, p0

    #@21a
    iget-object v3, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@21c
    const/4 v4, 0x0

    #@21d
    iput-object v4, v3, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    #@21f
    .line 671
    const/4 v3, 0x0

    #@220
    move-object/from16 v0, p0

    #@222
    iput-boolean v3, v0, Landroid/view/ViewRootImpl;->mAdded:Z

    #@224
    .line 672
    move-object/from16 v0, p0

    #@226
    iget-object v3, v0, Landroid/view/ViewRootImpl;->mFallbackEventHandler:Landroid/view/FallbackEventHandler;

    #@228
    const/4 v4, 0x0

    #@229
    invoke-interface {v3, v4}, Landroid/view/FallbackEventHandler;->setView(Landroid/view/View;)V

    #@22c
    .line 673
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->unscheduleTraversals()V

    #@22f
    .line 674
    const/4 v3, 0x0

    #@230
    const/4 v4, 0x0

    #@231
    move-object/from16 v0, p0

    #@233
    invoke-virtual {v0, v3, v4}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    #@236
    .line 675
    packed-switch v20, :pswitch_data_0

    #@239
    .line 713
    new-instance v3, Ljava/lang/RuntimeException;

    #@23b
    .line 714
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
    .line 713
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@254
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@255
    .line 547
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
    .line 615
    .restart local v13    # "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    .restart local v21    # "restore":Z
    :cond_a
    const/4 v3, 0x0

    #@259
    goto/16 :goto_0

    #@25b
    .line 617
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
    .line 633
    :cond_c
    const/4 v3, 0x0

    #@264
    goto/16 :goto_2

    #@266
    .line 643
    :catch_0
    move-exception v15

    #@267
    .line 644
    .local v15, "e":Landroid/os/RemoteException;
    const/4 v3, 0x0

    #@268
    :try_start_4
    move-object/from16 v0, p0

    #@26a
    iput-boolean v3, v0, Landroid/view/ViewRootImpl;->mAdded:Z

    #@26c
    .line 645
    const/4 v3, 0x0

    #@26d
    move-object/from16 v0, p0

    #@26f
    iput-object v3, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@271
    .line 646
    move-object/from16 v0, p0

    #@273
    iget-object v3, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@275
    const/4 v4, 0x0

    #@276
    iput-object v4, v3, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    #@278
    .line 647
    const/4 v3, 0x0

    #@279
    move-object/from16 v0, p0

    #@27b
    iput-object v3, v0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    #@27d
    .line 648
    move-object/from16 v0, p0

    #@27f
    iget-object v3, v0, Landroid/view/ViewRootImpl;->mFallbackEventHandler:Landroid/view/FallbackEventHandler;

    #@281
    const/4 v4, 0x0

    #@282
    invoke-interface {v3, v4}, Landroid/view/FallbackEventHandler;->setView(Landroid/view/View;)V

    #@285
    .line 649
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->unscheduleTraversals()V

    #@288
    .line 650
    const/4 v3, 0x0

    #@289
    const/4 v4, 0x0

    #@28a
    move-object/from16 v0, p0

    #@28c
    invoke-virtual {v0, v3, v4}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    #@28f
    .line 651
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
    .line 652
    .end local v15    # "e":Landroid/os/RemoteException;
    :catchall_1
    move-exception v3

    #@299
    .line 653
    if-eqz v21, :cond_d

    #@29b
    .line 654
    :try_start_5
    invoke-virtual/range {p2 .. p2}, Landroid/view/WindowManager$LayoutParams;->restore()V

    #@29e
    .line 652
    :cond_d
    throw v3

    #@29f
    .line 666
    .restart local v20    # "res":I
    :cond_e
    const/4 v3, 0x0

    #@2a0
    goto/16 :goto_3

    #@2a2
    .line 678
    :pswitch_0
    new-instance v3, Landroid/view/WindowManager$BadTokenException;

    #@2a4
    .line 679
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
    .line 680
    const-string/jumbo v5, " is not valid; is your activity running?"

    #@2bb
    .line 679
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2be
    move-result-object v4

    #@2bf
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c2
    move-result-object v4

    #@2c3
    .line 678
    invoke-direct {v3, v4}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    #@2c6
    throw v3

    #@2c7
    .line 682
    :pswitch_1
    new-instance v3, Landroid/view/WindowManager$BadTokenException;

    #@2c9
    .line 683
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
    .line 684
    const-string/jumbo v5, " is not for an application"

    #@2e0
    .line 683
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e3
    move-result-object v4

    #@2e4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e7
    move-result-object v4

    #@2e8
    .line 682
    invoke-direct {v3, v4}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    #@2eb
    throw v3

    #@2ec
    .line 686
    :pswitch_2
    new-instance v3, Landroid/view/WindowManager$BadTokenException;

    #@2ee
    .line 687
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
    .line 688
    const-string/jumbo v5, " is exiting"

    #@305
    .line 687
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@308
    move-result-object v4

    #@309
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30c
    move-result-object v4

    #@30d
    .line 686
    invoke-direct {v3, v4}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    #@310
    throw v3

    #@311
    .line 690
    :pswitch_3
    new-instance v3, Landroid/view/WindowManager$BadTokenException;

    #@313
    .line 691
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
    .line 692
    const-string/jumbo v5, " has already been added"

    #@32a
    .line 691
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32d
    move-result-object v4

    #@32e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@331
    move-result-object v4

    #@332
    .line 690
    invoke-direct {v3, v4}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    #@335
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@336
    :pswitch_4
    monitor-exit p0

    #@337
    .line 696
    return-void

    #@338
    .line 698
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
    .line 699
    move-object/from16 v0, p0

    #@348
    iget-object v5, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    #@34a
    .line 698
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@34d
    move-result-object v4

    #@34e
    .line 699
    const-string/jumbo v5, " -- another window of type "

    #@351
    .line 698
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@354
    move-result-object v4

    #@355
    .line 700
    move-object/from16 v0, p0

    #@357
    iget-object v5, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@359
    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    #@35b
    .line 698
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@35e
    move-result-object v4

    #@35f
    .line 700
    const-string/jumbo v5, " already exists"

    #@362
    .line 698
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
    .line 702
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
    .line 703
    move-object/from16 v0, p0

    #@37e
    iget-object v5, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    #@380
    .line 702
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@383
    move-result-object v4

    #@384
    .line 703
    const-string/jumbo v5, " -- permission denied for window type "

    #@387
    .line 702
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38a
    move-result-object v4

    #@38b
    .line 704
    move-object/from16 v0, p0

    #@38d
    iget-object v5, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@38f
    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    #@391
    .line 702
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
    .line 706
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
    .line 707
    move-object/from16 v0, p0

    #@3ad
    iget-object v5, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    #@3af
    .line 706
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3b2
    move-result-object v4

    #@3b3
    .line 707
    const-string/jumbo v5, " -- the specified display can not be found"

    #@3b6
    .line 706
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
    .line 709
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
    .line 710
    move-object/from16 v0, p0

    #@3d2
    iget-object v5, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    #@3d4
    .line 709
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3d7
    move-result-object v4

    #@3d8
    .line 710
    const-string/jumbo v5, " -- the specified window type "

    #@3db
    .line 709
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3de
    move-result-object v4

    #@3df
    .line 711
    move-object/from16 v0, p0

    #@3e1
    iget-object v5, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@3e3
    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    #@3e5
    .line 709
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3e8
    move-result-object v4

    #@3e9
    .line 711
    const-string/jumbo v5, " is not valid"

    #@3ec
    .line 709
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
    .line 717
    :cond_f
    move-object/from16 v0, p1

    #@3fa
    instance-of v3, v0, Lcom/android/internal/view/RootViewSurfaceTaker;

    #@3fc
    if-eqz v3, :cond_10

    #@3fe
    .line 719
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
    .line 718
    move-object/from16 v0, p0

    #@409
    iput-object v3, v0, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    #@40b
    .line 721
    :cond_10
    move-object/from16 v0, p0

    #@40d
    iget-object v3, v0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    #@40f
    if-eqz v3, :cond_12

    #@411
    .line 722
    move-object/from16 v0, p0

    #@413
    iget-object v3, v0, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    #@415
    if-eqz v3, :cond_11

    #@417
    .line 723
    new-instance v3, Landroid/view/InputQueue;

    #@419
    invoke-direct {v3}, Landroid/view/InputQueue;-><init>()V

    #@41c
    move-object/from16 v0, p0

    #@41e
    iput-object v3, v0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    #@420
    .line 724
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
    .line 726
    :cond_11
    new-instance v3, Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    #@42d
    move-object/from16 v0, p0

    #@42f
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    #@431
    .line 727
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@434
    move-result-object v5

    #@435
    .line 726
    move-object/from16 v0, p0

    #@437
    invoke-direct {v3, v0, v4, v5}, Landroid/view/ViewRootImpl$WindowInputEventReceiver;-><init>(Landroid/view/ViewRootImpl;Landroid/view/InputChannel;Landroid/os/Looper;)V

    #@43a
    move-object/from16 v0, p0

    #@43c
    iput-object v3, v0, Landroid/view/ViewRootImpl;->mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    #@43e
    .line 730
    :cond_12
    move-object/from16 v0, p1

    #@440
    move-object/from16 v1, p0

    #@442
    invoke-virtual {v0, v1}, Landroid/view/View;->assignParent(Landroid/view/ViewParent;)V

    #@445
    .line 731
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
    .line 732
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
    .line 734
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
    .line 735
    move-object/from16 v0, p0

    #@463
    iget-object v3, v0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    #@465
    invoke-virtual {v3}, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->ensureConnection()V

    #@468
    .line 738
    :cond_13
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getImportantForAccessibility()I

    #@46b
    move-result v3

    #@46c
    if-nez v3, :cond_14

    #@46e
    .line 739
    const/4 v3, 0x1

    #@46f
    move-object/from16 v0, p1

    #@471
    invoke-virtual {v0, v3}, Landroid/view/View;->setImportantForAccessibility(I)V

    #@474
    .line 743
    :cond_14
    invoke-virtual/range {p2 .. p2}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    #@477
    move-result-object v14

    #@478
    .line 744
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
    .line 745
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
    .line 746
    .local v22, "viewPostImeStage":Landroid/view/ViewRootImpl$InputStage;
    new-instance v18, Landroid/view/ViewRootImpl$NativePostImeInputStage;

    #@492
    .line 747
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
    .line 746
    move-object/from16 v0, v18

    #@4a8
    move-object/from16 v1, p0

    #@4aa
    move-object/from16 v2, v22

    #@4ac
    invoke-direct {v0, v1, v2, v3}, Landroid/view/ViewRootImpl$NativePostImeInputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;Ljava/lang/String;)V

    #@4af
    .line 748
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
    .line 749
    .local v16, "earlyPostImeStage":Landroid/view/ViewRootImpl$InputStage;
    new-instance v17, Landroid/view/ViewRootImpl$ImeInputStage;

    #@4bc
    .line 750
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
    .line 749
    move-object/from16 v0, v17

    #@4d2
    move-object/from16 v1, p0

    #@4d4
    move-object/from16 v2, v16

    #@4d6
    invoke-direct {v0, v1, v2, v3}, Landroid/view/ViewRootImpl$ImeInputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;Ljava/lang/String;)V

    #@4d9
    .line 751
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
    .line 752
    .local v23, "viewPreImeStage":Landroid/view/ViewRootImpl$InputStage;
    new-instance v19, Landroid/view/ViewRootImpl$NativePreImeInputStage;

    #@4e6
    .line 753
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
    .line 752
    move-object/from16 v0, v19

    #@4fc
    move-object/from16 v1, p0

    #@4fe
    move-object/from16 v2, v23

    #@500
    invoke-direct {v0, v1, v2, v3}, Landroid/view/ViewRootImpl$NativePreImeInputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;Ljava/lang/String;)V

    #@503
    .line 755
    .local v19, "nativePreImeStage":Landroid/view/ViewRootImpl$InputStage;
    move-object/from16 v0, v19

    #@505
    move-object/from16 v1, p0

    #@507
    iput-object v0, v1, Landroid/view/ViewRootImpl;->mFirstInputStage:Landroid/view/ViewRootImpl$InputStage;

    #@509
    .line 756
    move-object/from16 v0, v16

    #@50b
    move-object/from16 v1, p0

    #@50d
    iput-object v0, v1, Landroid/view/ViewRootImpl;->mFirstPostImeInputStage:Landroid/view/ViewRootImpl$InputStage;

    #@50f
    .line 757
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
    .line 546
    return-void

    #@529
    .line 731
    .restart local v13    # "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    .restart local v20    # "res":I
    .restart local v21    # "restore":Z
    :cond_16
    const/4 v3, 0x0

    #@52a
    goto/16 :goto_4

    #@52c
    .line 732
    :cond_17
    const/4 v3, 0x0

    #@52d
    goto/16 :goto_5

    #@52f
    .line 675
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
    .line 1131
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mStopped:Z

    #@2
    if-eq v1, p1, :cond_1

    #@4
    .line 1132
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mStopped:Z

    #@6
    .line 1133
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@8
    iget-object v0, v1, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    #@a
    .line 1134
    .local v0, "renderer":Landroid/view/ThreadedRenderer;
    if-eqz v0, :cond_0

    #@c
    .line 1136
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mStopped:Z

    #@e
    invoke-virtual {v0, v1}, Landroid/view/ThreadedRenderer;->setStopped(Z)V

    #@11
    .line 1138
    :cond_0
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mStopped:Z

    #@13
    if-nez v1, :cond_2

    #@15
    .line 1139
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    #@18
    .line 1130
    .end local v0    # "renderer":Landroid/view/ThreadedRenderer;
    :cond_1
    :goto_0
    return-void

    #@19
    .line 1141
    .restart local v0    # "renderer":Landroid/view/ThreadedRenderer;
    :cond_2
    if-eqz v0, :cond_1

    #@1b
    .line 1142
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
    .line 6603
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
    .line 6608
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
    .line 6613
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
    .line 6619
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public synthesizeInputEvent(Landroid/view/InputEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/InputEvent;

    #@0
    .prologue
    .line 6479
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@2
    const/16 v2, 0x18

    #@4
    invoke-virtual {v1, v2, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@7
    move-result-object v0

    #@8
    .line 6480
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    #@9
    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    #@c
    .line 6481
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@e
    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    #@11
    .line 6478
    return-void
.end method

.method transformMatrixToGlobal(Landroid/graphics/Matrix;)V
    .locals 2
    .param p1, "m"    # Landroid/graphics/Matrix;

    #@0
    .prologue
    .line 1380
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
    .line 1379
    return-void
.end method

.method transformMatrixToLocal(Landroid/graphics/Matrix;)V
    .locals 2
    .param p1, "m"    # Landroid/graphics/Matrix;

    #@0
    .prologue
    .line 1390
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
    .line 1389
    return-void
.end method

.method unscheduleConsumeBatchedInput()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 6265
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 6266
    iput-boolean v3, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    #@7
    .line 6267
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    #@9
    .line 6268
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mConsumedBatchedInputRunnable:Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;

    #@b
    const/4 v2, 0x0

    #@c
    .line 6267
    invoke-virtual {v0, v3, v1, v2}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    #@f
    .line 6264
    :cond_0
    return-void
.end method

.method unscheduleTraversals()V
    .locals 4

    #@0
    .prologue
    .line 1229
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1230
    const/4 v0, 0x0

    #@5
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    #@7
    .line 1231
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
    .line 1232
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    #@18
    .line 1233
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTraversalRunnable:Landroid/view/ViewRootImpl$TraversalRunnable;

    #@1a
    const/4 v2, 0x2

    #@1b
    const/4 v3, 0x0

    #@1c
    .line 1232
    invoke-virtual {v0, v2, v1, v3}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    #@1f
    .line 1228
    :cond_0
    return-void
.end method

.method updateConfiguration(Landroid/content/res/Configuration;Z)V
    .locals 9
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "force"    # Z

    #@0
    .prologue
    .line 3308
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
    .line 3309
    .local v0, "ci":Landroid/content/res/CompatibilityInfo;
    sget-object v6, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    #@c
    invoke-virtual {v0, v6}, Landroid/content/res/CompatibilityInfo;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v6

    #@10
    if-nez v6, :cond_0

    #@12
    .line 3310
    new-instance v1, Landroid/content/res/Configuration;

    #@14
    invoke-direct {v1, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    #@17
    .line 3311
    .end local p1    # "config":Landroid/content/res/Configuration;
    .local v1, "config":Landroid/content/res/Configuration;
    iget v6, p0, Landroid/view/ViewRootImpl;->mNoncompatDensity:I

    #@19
    invoke-virtual {v0, v6, v1}, Landroid/content/res/CompatibilityInfo;->applyToConfiguration(ILandroid/content/res/Configuration;)V

    #@1c
    move-object p1, v1

    #@1d
    .line 3314
    .end local v1    # "config":Landroid/content/res/Configuration;
    .restart local p1    # "config":Landroid/content/res/Configuration;
    :cond_0
    sget-object v7, Landroid/view/ViewRootImpl;->sConfigCallbacks:Ljava/util/ArrayList;

    #@1f
    monitor-enter v7

    #@20
    .line 3315
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
    .line 3316
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
    .line 3315
    add-int/lit8 v3, v3, -0x1

    #@37
    goto :goto_0

    #@38
    :cond_1
    monitor-exit v7

    #@39
    .line 3319
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@3b
    if-eqz v6, :cond_4

    #@3d
    .line 3323
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@3f
    invoke-virtual {v6}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    #@42
    move-result-object v5

    #@43
    .line 3324
    .local v5, "localResources":Landroid/content/res/Resources;
    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@46
    move-result-object p1

    #@47
    .line 3325
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
    .line 3327
    :cond_2
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    #@54
    move-result-object v6

    #@55
    .line 3328
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
    .line 3327
    invoke-virtual {v6, v7, v8}, Landroid/app/ResourcesManager;->getAdjustedDisplay(ILandroid/view/DisplayAdjustments;)Landroid/view/Display;

    #@62
    move-result-object v6

    #@63
    iput-object v6, p0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    #@65
    .line 3330
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mLastConfiguration:Landroid/content/res/Configuration;

    #@67
    invoke-virtual {v6}, Landroid/content/res/Configuration;->getLayoutDirection()I

    #@6a
    move-result v4

    #@6b
    .line 3331
    .local v4, "lastLayoutDirection":I
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    #@6e
    move-result v2

    #@6f
    .line 3332
    .local v2, "currentLayoutDirection":I
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mLastConfiguration:Landroid/content/res/Configuration;

    #@71
    invoke-virtual {v6, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    #@74
    .line 3333
    if-eq v4, v2, :cond_3

    #@76
    .line 3334
    iget v6, p0, Landroid/view/ViewRootImpl;->mViewLayoutDirectionInitial:I

    #@78
    const/4 v7, 0x2

    #@79
    if-ne v6, v7, :cond_3

    #@7b
    .line 3335
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@7d
    invoke-virtual {v6, v2}, Landroid/view/View;->setLayoutDirection(I)V

    #@80
    .line 3337
    :cond_3
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@82
    invoke-virtual {v6, p1}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    #@85
    .line 3302
    .end local v2    # "currentLayoutDirection":I
    .end local v4    # "lastLayoutDirection":I
    .end local v5    # "localResources":Landroid/content/res/Resources;
    :cond_4
    return-void

    #@86
    .line 3314
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
    .line 6546
    const/16 v10, 0x1b

    #@4
    .line 6547
    .local v10, "what":I
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@6
    invoke-virtual {v0, v11}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeMessages(I)V

    #@9
    .line 6548
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@c
    move-result-wide v2

    #@d
    .line 6550
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
    .line 6549
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    #@16
    move-result-object v8

    #@17
    .line 6551
    .local v8, "event":Landroid/view/MotionEvent;
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@19
    invoke-virtual {v0, v11, v8}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@1c
    move-result-object v9

    #@1d
    .line 6552
    .local v9, "msg":Landroid/os/Message;
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@1f
    invoke-virtual {v0, v9}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    #@22
    .line 6545
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
    .line 6515
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    #@5
    move-result-object v0

    #@6
    .line 6516
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x6

    #@7
    iput v1, v0, Landroid/os/Message;->what:I

    #@9
    .line 6517
    if-eqz p1, :cond_0

    #@b
    move v1, v2

    #@c
    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    #@e
    .line 6518
    if-eqz p2, :cond_1

    #@10
    :goto_1
    iput v2, v0, Landroid/os/Message;->arg2:I

    #@12
    .line 6519
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@14
    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    #@17
    .line 6514
    return-void

    #@18
    :cond_0
    move v1, v3

    #@19
    .line 6517
    goto :goto_0

    #@1a
    :cond_1
    move v2, v3

    #@1b
    .line 6518
    goto :goto_1
.end method

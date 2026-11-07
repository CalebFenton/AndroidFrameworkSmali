.class public final Landroid/view/inputmethod/InputMethodManager;
.super Ljava/lang/Object;
.source "InputMethodManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/inputmethod/InputMethodManager$H;,
        Landroid/view/inputmethod/InputMethodManager$DelegateImpl;,
        Landroid/view/inputmethod/InputMethodManager$BindState;,
        Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;,
        Landroid/view/inputmethod/InputMethodManager$ReportInputConnectionOpenedRunner;,
        Landroid/view/inputmethod/InputMethodManager$ConnectionlessHandwritingCallbackProxy;,
        Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;,
        Landroid/view/inputmethod/InputMethodManager$PendingEvent;,
        Landroid/view/inputmethod/InputMethodManager$HideFlags;,
        Landroid/view/inputmethod/InputMethodManager$ShowFlags;,
        Landroid/view/inputmethod/InputMethodManager$HandwritingDelegateFlags;
    }
.end annotation


# static fields
.field private static final blacklist ALWAYS_RETURN_TRUE_HIDE_SOFT_INPUT_FROM_WINDOW:J = 0x17932c7eL

.field private static final blacklist CACHE_KEY_CONNECTIONLESS_STYLUS_HANDWRITING_PROPERTY:Ljava/lang/String; = "cache_key.system_server.connectionless_stylus_handwriting"

.field private static final blacklist CACHE_KEY_STYLUS_HANDWRITING_PROPERTY:Ljava/lang/String; = "cache_key.system_server.stylus_handwriting"

.field public static final blacklist CLEAR_SHOW_FORCED_FLAG_WHEN_LEAVING:J = 0xcc1a029L

.field private static final greylist-max-o DEBUG:Z = false

.field public static final greylist-max-o DISPATCH_HANDLED:I = 0x1

.field public static final greylist-max-o DISPATCH_IN_PROGRESS:I = -0x1

.field public static final greylist-max-o DISPATCH_NOT_HANDLED:I = 0x0

.field public static final whitelist HANDWRITING_DELEGATE_FLAG_HOME_DELEGATOR_ALLOWED:I = 0x1

.field public static final whitelist HIDE_IMPLICIT_ONLY:I = 0x1

.field public static final whitelist HIDE_NOT_ALWAYS:I = 0x2

.field private static final greylist-max-o INPUT_METHOD_NOT_RESPONDING_TIMEOUT:J = 0x9c4L

.field static final blacklist INVALID_SEQ_ID:I = -0x1

.field private static final greylist-max-o MSG_BIND:I = 0x2

.field private static final blacklist MSG_BIND_ACCESSIBILITY_SERVICE:I = 0xb

.field private static final greylist-max-o MSG_DUMP:I = 0x1

.field private static final greylist-max-o MSG_FLUSH_INPUT_EVENT:I = 0x7

.field private static final blacklist MSG_ON_SHOW_REQUESTED:I = 0x1f

.field private static final greylist-max-o MSG_REPORT_FULLSCREEN_MODE:I = 0xa

.field private static final greylist-max-o MSG_SEND_INPUT_EVENT:I = 0x5

.field private static final greylist-max-o MSG_SET_ACTIVE:I = 0x4

.field private static final blacklist MSG_SET_INTERACTIVE:I = 0xd

.field private static final blacklist MSG_SET_VISIBILITY:I = 0xe

.field private static final blacklist MSG_START_INPUT_RESULT:I = 0x28

.field private static final greylist-max-o MSG_TIMEOUT_INPUT_EVENT:I = 0x6

.field private static final greylist-max-o MSG_UNBIND:I = 0x3

.field private static final blacklist MSG_UNBIND_ACCESSIBILITY_SERVICE:I = 0xc

.field private static final blacklist NOT_A_SUBTYPE_ID:I = -0x1

.field private static final blacklist OPTIMIZE_NONEDITABLE_VIEWS:Z

.field private static final greylist-max-o PENDING_EVENT_COUNTER:Ljava/lang/String; = "aq:imm"

.field private static final greylist-max-o REQUEST_UPDATE_CURSOR_ANCHOR_INFO_NONE:I = 0x0

.field public static final whitelist RESULT_HIDDEN:I = 0x3

.field public static final whitelist RESULT_SHOWN:I = 0x2

.field public static final whitelist RESULT_UNCHANGED_HIDDEN:I = 0x1

.field public static final whitelist RESULT_UNCHANGED_SHOWN:I = 0x0

.field public static final whitelist SHOW_FORCED:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SHOW_IMPLICIT:I = 0x1

.field public static final greylist-max-o SHOW_IM_PICKER_MODE_AUTO:I = 0x0

.field public static final greylist-max-o SHOW_IM_PICKER_MODE_EXCLUDE_AUXILIARY_SUBTYPES:I = 0x2

.field public static final greylist-max-o SHOW_IM_PICKER_MODE_INCLUDE_AUXILIARY_SUBTYPES:I = 0x1

.field private static final blacklist SUBTYPE_MODE_VOICE:Ljava/lang/String; = "voice"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "InputMethodManager"

.field private static final blacklist USE_ASYNC_SHOW_HIDE_METHOD:J = 0x15042965L

.field static greylist sInstance:Landroid/view/inputmethod/InputMethodManager;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final blacklist sInstanceMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/inputmethod/InputMethodManager;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sLock:Ljava/lang/Object;

.field private static blacklist sPreventImeStartupUnlessTextEditor:Z


# instance fields
.field private final blacklist mAccessibilityInputMethodSession:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mActive:Z

.field private final blacklist mAsyncShowHideMethodEnabled:Z

.field private final blacklist mClient:Lcom/android/internal/inputmethod/IInputMethodClient$Stub;

.field private greylist-max-o mCompletions:[Landroid/view/inputmethod/CompletionInfo;

.field private blacklist mConnectionlessStylusHandwritingAvailableCache:Landroid/app/PropertyInvalidatedCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/PropertyInvalidatedCache<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCurBindState:Landroid/view/inputmethod/InputMethodManager$BindState;

.field private greylist-max-o mCurChannel:Landroid/view/InputChannel;

.field greylist mCurId:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field greylist mCurMethod:Lcom/android/internal/inputmethod/IInputMethodSession;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field blacklist mCurRootView:Landroid/view/ViewRootImpl;

.field blacklist mCurRootViewWindowFocused:Z

.field private greylist-max-o mCurSender:Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;

.field private blacklist mCurrentEditorInfo:Landroid/view/inputmethod/EditorInfo;

.field private greylist-max-o mCursorAnchorInfo:Landroid/view/inputmethod/CursorAnchorInfo;

.field private greylist-max-o mCursorCandEnd:I

.field private greylist-max-o mCursorCandStart:I

.field greylist mCursorRect:Landroid/graphics/Rect;

.field private greylist-max-o mCursorSelEnd:I

.field private greylist-max-o mCursorSelStart:I

.field private final blacklist mDelegate:Landroid/view/inputmethod/InputMethodManager$DelegateImpl;

.field private final blacklist mDisplayId:I

.field private final blacklist mFallbackInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

.field private greylist-max-o mFullscreenMode:Z

.field final greylist-max-p mH:Landroid/view/inputmethod/InputMethodManager$H;

.field private final blacklist mImeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;

.field private blacklist mImeInsetsConsumer:Landroid/view/ImeInsetsSourceConsumer;

.field private blacklist mInitialSelEnd:I

.field private blacklist mInitialSelStart:I

.field private blacklist mLastPendingStartSeqId:I

.field private final greylist-max-o mMainLooper:Landroid/os/Looper;

.field private blacklist mNextServedView:Landroid/view/View;

.field private final greylist-max-o mPendingEventPool:Landroid/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$Pool<",
            "Landroid/view/inputmethod/InputMethodManager$PendingEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mPendingEvents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/inputmethod/InputMethodManager$PendingEvent;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPreviousViewFocusParameters:Landroid/view/inputmethod/ViewFocusParameterInfo;

.field private blacklist mReportInputConnectionOpenedRunner:Landroid/view/inputmethod/InputMethodManager$ReportInputConnectionOpenedRunner;

.field final blacklist mRequestCursorUpdateDisplayIdCheck:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private greylist-max-o mRequestUpdateCursorAnchorInfoMonitorMode:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private greylist-max-o mRestartOnNextWindowFocus:Z

.field private greylist-max-o mServedConnecting:Z

.field private blacklist mServedInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

.field private blacklist mServedInputConnectionHandler:Landroid/os/Handler;

.field private blacklist mServedView:Landroid/view/View;

.field final greylist mService:Lcom/android/internal/view/IInputMethodManager;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private blacklist mStylusHandwritingAvailableCache:Landroid/app/PropertyInvalidatedCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/PropertyInvalidatedCache<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field greylist mTmpCursorRect:Landroid/graphics/Rect;


# direct methods
.method public static synthetic blacklist $r8$lambda$DGY6p8L_fkDmC2zOPedDuVAcbow(Landroid/view/inputmethod/InputMethodManager;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->lambda$startInputInner$5(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$tGD1omxj7ocrnPvqLOGOybCnzd4(Landroid/view/inputmethod/InputMethodManager;IIIILandroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Landroid/view/inputmethod/InputMethodManager;->lambda$updateSelection$7(IIIILandroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAccessibilityInputMethodSession(Landroid/view/inputmethod/InputMethodManager;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Landroid/view/inputmethod/InputMethodManager;->mAccessibilityInputMethodSession:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmActive(Landroid/view/inputmethod/InputMethodManager;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/view/inputmethod/InputMethodManager;->mActive:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmClient(Landroid/view/inputmethod/InputMethodManager;)Lcom/android/internal/inputmethod/IInputMethodClient$Stub;
    .registers 1

    iget-object p0, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/inputmethod/IInputMethodClient$Stub;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCompletions(Landroid/view/inputmethod/InputMethodManager;)[Landroid/view/inputmethod/CompletionInfo;
    .registers 1

    iget-object p0, p0, Landroid/view/inputmethod/InputMethodManager;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCurBindState(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodManager$BindState;
    .registers 1

    iget-object p0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurBindState:Landroid/view/inputmethod/InputMethodManager$BindState;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCurChannel(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/InputChannel;
    .registers 1

    iget-object p0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurChannel:Landroid/view/InputChannel;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCursorCandEnd(Landroid/view/inputmethod/InputMethodManager;)I
    .registers 1

    iget p0, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorCandEnd:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCursorCandStart(Landroid/view/inputmethod/InputMethodManager;)I
    .registers 1

    iget p0, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorCandStart:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCursorSelEnd(Landroid/view/inputmethod/InputMethodManager;)I
    .registers 1

    iget p0, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelEnd:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCursorSelStart(Landroid/view/inputmethod/InputMethodManager;)I
    .registers 1

    iget p0, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelStart:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFallbackInputConnection(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/RemoteInputConnectionImpl;
    .registers 1

    iget-object p0, p0, Landroid/view/inputmethod/InputMethodManager;->mFallbackInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFullscreenMode(Landroid/view/inputmethod/InputMethodManager;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/view/inputmethod/InputMethodManager;->mFullscreenMode:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmImeDispatcher(Landroid/view/inputmethod/InputMethodManager;)Landroid/window/ImeOnBackInvokedDispatcher;
    .registers 1

    iget-object p0, p0, Landroid/view/inputmethod/InputMethodManager;->mImeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmImeInsetsConsumer(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/ImeInsetsSourceConsumer;
    .registers 1

    iget-object p0, p0, Landroid/view/inputmethod/InputMethodManager;->mImeInsetsConsumer:Landroid/view/ImeInsetsSourceConsumer;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInitialSelEnd(Landroid/view/inputmethod/InputMethodManager;)I
    .registers 1

    iget p0, p0, Landroid/view/inputmethod/InputMethodManager;->mInitialSelEnd:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInitialSelStart(Landroid/view/inputmethod/InputMethodManager;)I
    .registers 1

    iget p0, p0, Landroid/view/inputmethod/InputMethodManager;->mInitialSelStart:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLastPendingStartSeqId(Landroid/view/inputmethod/InputMethodManager;)I
    .registers 1

    iget p0, p0, Landroid/view/inputmethod/InputMethodManager;->mLastPendingStartSeqId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNextServedView(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmReportInputConnectionOpenedRunner(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodManager$ReportInputConnectionOpenedRunner;
    .registers 1

    iget-object p0, p0, Landroid/view/inputmethod/InputMethodManager;->mReportInputConnectionOpenedRunner:Landroid/view/inputmethod/InputMethodManager$ReportInputConnectionOpenedRunner;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRestartOnNextWindowFocus(Landroid/view/inputmethod/InputMethodManager;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/view/inputmethod/InputMethodManager;->mRestartOnNextWindowFocus:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmServedInputConnection(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/RemoteInputConnectionImpl;
    .registers 1

    iget-object p0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmServedView(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmActive(Landroid/view/inputmethod/InputMethodManager;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/view/inputmethod/InputMethodManager;->mActive:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCompletions(Landroid/view/inputmethod/InputMethodManager;[Landroid/view/inputmethod/CompletionInfo;)V
    .registers 2

    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCurBindState(Landroid/view/inputmethod/InputMethodManager;Landroid/view/inputmethod/InputMethodManager$BindState;)V
    .registers 2

    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurBindState:Landroid/view/inputmethod/InputMethodManager$BindState;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCurrentEditorInfo(Landroid/view/inputmethod/InputMethodManager;Landroid/view/inputmethod/EditorInfo;)V
    .registers 2

    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentEditorInfo:Landroid/view/inputmethod/EditorInfo;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFullscreenMode(Landroid/view/inputmethod/InputMethodManager;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/view/inputmethod/InputMethodManager;->mFullscreenMode:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLastPendingStartSeqId(Landroid/view/inputmethod/InputMethodManager;I)V
    .registers 2

    iput p1, p0, Landroid/view/inputmethod/InputMethodManager;->mLastPendingStartSeqId:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmNextServedView(Landroid/view/inputmethod/InputMethodManager;Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedView:Landroid/view/View;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmReportInputConnectionOpenedRunner(Landroid/view/inputmethod/InputMethodManager;Landroid/view/inputmethod/InputMethodManager$ReportInputConnectionOpenedRunner;)V
    .registers 2

    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager;->mReportInputConnectionOpenedRunner:Landroid/view/inputmethod/InputMethodManager$ReportInputConnectionOpenedRunner;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRequestUpdateCursorAnchorInfoMonitorMode(Landroid/view/inputmethod/InputMethodManager;I)V
    .registers 2

    iput p1, p0, Landroid/view/inputmethod/InputMethodManager;->mRequestUpdateCursorAnchorInfoMonitorMode:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRestartOnNextWindowFocus(Landroid/view/inputmethod/InputMethodManager;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/view/inputmethod/InputMethodManager;->mRestartOnNextWindowFocus:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmServedConnecting(Landroid/view/inputmethod/InputMethodManager;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedConnecting:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmServedView(Landroid/view/inputmethod/InputMethodManager;Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcheckFocusInternalLocked(Landroid/view/inputmethod/InputMethodManager;ZLandroid/view/ViewRootImpl;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/InputMethodManager;->checkFocusInternalLocked(ZLandroid/view/ViewRootImpl;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mclearAccessibilityBindingLocked(Landroid/view/inputmethod/InputMethodManager;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->clearAccessibilityBindingLocked(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mclearAllAccessibilityBindingLocked(Landroid/view/inputmethod/InputMethodManager;)V
    .registers 1

    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->clearAllAccessibilityBindingLocked()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mclearBindingLocked(Landroid/view/inputmethod/InputMethodManager;)V
    .registers 1

    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->clearBindingLocked()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mclearCurRootViewIfNeeded(Landroid/view/inputmethod/InputMethodManager;)Z
    .registers 1

    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->clearCurRootViewIfNeeded()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mdoDump(Landroid/view/inputmethod/InputMethodManager;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/view/inputmethod/InputMethodManager;->doDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mfinishedInputEvent(Landroid/view/inputmethod/InputMethodManager;IZZ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/view/inputmethod/InputMethodManager;->finishedInputEvent(IZZ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mforAccessibilitySessionsLocked(Landroid/view/inputmethod/InputMethodManager;Ljava/util/function/Consumer;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->forAccessibilitySessionsLocked(Ljava/util/function/Consumer;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetBindSequenceLocked(Landroid/view/inputmethod/InputMethodManager;)I
    .registers 1

    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->getBindSequenceLocked()I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetServedViewLocked(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/View;
    .registers 1

    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->getServedViewLocked()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetStartInputFlags(Landroid/view/inputmethod/InputMethodManager;Landroid/view/View;I)I
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/InputMethodManager;->getStartInputFlags(Landroid/view/View;I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mhasActiveInputConnectionInternal(Landroid/view/inputmethod/InputMethodManager;Landroid/view/View;)Z
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->hasActiveInputConnectionInternal(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misImeSessionAvailableLocked(Landroid/view/inputmethod/InputMethodManager;)Z
    .registers 1

    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->isImeSessionAvailableLocked()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$monImeFocusLost(Landroid/view/inputmethod/InputMethodManager;Landroid/view/ViewRootImpl;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->onImeFocusLost(Landroid/view/ViewRootImpl;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monViewFocusChangedInternal(Landroid/view/inputmethod/InputMethodManager;Landroid/view/View;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/InputMethodManager;->onViewFocusChangedInternal(Landroid/view/View;Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mrecyclePendingEventLocked(Landroid/view/inputmethod/InputMethodManager;Landroid/view/inputmethod/InputMethodManager$PendingEvent;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->recyclePendingEventLocked(Landroid/view/inputmethod/InputMethodManager$PendingEvent;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mreportInputConnectionOpened(Landroid/view/inputmethod/InputMethodManager;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/os/Handler;Landroid/view/View;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/inputmethod/InputMethodManager;->reportInputConnectionOpened(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/os/Handler;Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendInputEventAndReportResultOnMainLooper(Landroid/view/inputmethod/InputMethodManager;Landroid/view/inputmethod/InputMethodManager$PendingEvent;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->sendInputEventAndReportResultOnMainLooper(Landroid/view/inputmethod/InputMethodManager$PendingEvent;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mstartInputInner(Landroid/view/inputmethod/InputMethodManager;ILandroid/os/IBinder;III)Z
    .registers 6

    invoke-direct/range {p0 .. p5}, Landroid/view/inputmethod/InputMethodManager;->startInputInner(ILandroid/os/IBinder;III)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mstartInputOnWindowFocusGainInternal(Landroid/view/inputmethod/InputMethodManager;ILandroid/view/View;III)Z
    .registers 6

    invoke-direct/range {p0 .. p5}, Landroid/view/inputmethod/InputMethodManager;->startInputOnWindowFocusGainInternal(ILandroid/view/View;III)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateInputChannelLocked(Landroid/view/inputmethod/InputMethodManager;Landroid/view/InputChannel;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->updateInputChannelLocked(Landroid/view/InputChannel;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smcanStartInput(Landroid/view/View;)Z
    .registers 1

    invoke-static {p0}, Landroid/view/inputmethod/InputMethodManager;->canStartInput(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smhasViewImeRequestedVisible(Landroid/view/View;)Z
    .registers 1

    invoke-static {p0}, Landroid/view/inputmethod/InputMethodManager;->hasViewImeRequestedVisible(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 387
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/inputmethod/InputMethodManager;->sLock:Ljava/lang/Object;

    .line 407
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/view/inputmethod/InputMethodManager;->sInstanceMap:Landroid/util/SparseArray;

    .line 497
    nop

    .line 498
    const-string v0, "debug.imm.optimize_noneditable_views"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/view/inputmethod/InputMethodManager;->OPTIMIZE_NONEDITABLE_VIEWS:Z

    .line 497
    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/view/IInputMethodManager;ILandroid/os/Looper;)V
    .registers 9
    .param p1, "service"    # Lcom/android/internal/view/IInputMethodManager;
    .param p2, "displayId"    # I
    .param p3, "looper"    # Landroid/os/Looper;

    .line 1691
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    new-instance v0, Landroid/view/inputmethod/InputMethodManager$1;

    .line 317
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager$1;-><init>(Landroid/view/inputmethod/InputMethodManager;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mImeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;

    .line 543
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodManager;->mActive:Z

    .line 550
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/inputmethod/InputMethodManager;->mRestartOnNextWindowFocus:Z

    .line 626
    const/4 v2, -0x1

    iput v2, p0, Landroid/view/inputmethod/InputMethodManager;->mLastPendingStartSeqId:I

    .line 630
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mTmpCursorRect:Landroid/graphics/Rect;

    .line 634
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorRect:Landroid/graphics/Rect;

    .line 643
    nop

    .line 644
    invoke-static {}, Landroid/view/inputmethod/Flags;->compatchangeForZerojankproxy()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 645
    const-wide/32 v2, 0x15042965

    invoke-static {v2, v3}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_36

    goto :goto_38

    :cond_36
    move v2, v0

    goto :goto_39

    :cond_38
    :goto_38
    move v2, v1

    :goto_39
    iput-boolean v2, p0, Landroid/view/inputmethod/InputMethodManager;->mAsyncShowHideMethodEnabled:Z

    .line 685
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorAnchorInfo:Landroid/view/inputmethod/CursorAnchorInfo;

    .line 726
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mAccessibilityInputMethodSession:Landroid/util/SparseArray;

    .line 742
    iput v0, p0, Landroid/view/inputmethod/InputMethodManager;->mRequestUpdateCursorAnchorInfoMonitorMode:I

    .line 752
    new-instance v3, Landroid/util/Pools$SimplePool;

    const/16 v4, 0x14

    invoke-direct {v3, v4}, Landroid/util/Pools$SimplePool;-><init>(I)V

    iput-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEventPool:Landroid/util/Pools$Pool;

    .line 754
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3, v4}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEvents:Landroid/util/SparseArray;

    .line 757
    new-instance v3, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;

    invoke-direct {v3, p0, v2}, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;-><init>(Landroid/view/inputmethod/InputMethodManager;Landroid/view/inputmethod/InputMethodManager-IA;)V

    iput-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mDelegate:Landroid/view/inputmethod/InputMethodManager$DelegateImpl;

    .line 1511
    new-instance v3, Landroid/view/inputmethod/InputMethodManager$2;

    invoke-direct {v3, p0}, Landroid/view/inputmethod/InputMethodManager$2;-><init>(Landroid/view/inputmethod/InputMethodManager;)V

    iput-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/inputmethod/IInputMethodClient$Stub;

    .line 4854
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mRequestCursorUpdateDisplayIdCheck:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1692
    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    .line 1693
    iput-object p3, p0, Landroid/view/inputmethod/InputMethodManager;->mMainLooper:Landroid/os/Looper;

    .line 1694
    new-instance v1, Landroid/view/inputmethod/InputMethodManager$H;

    invoke-direct {v1, p0, p3}, Landroid/view/inputmethod/InputMethodManager$H;-><init>(Landroid/view/inputmethod/InputMethodManager;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    .line 1695
    iput p2, p0, Landroid/view/inputmethod/InputMethodManager;->mDisplayId:I

    .line 1696
    new-instance v1, Landroid/view/inputmethod/RemoteInputConnectionImpl;

    new-instance v3, Landroid/view/inputmethod/BaseInputConnection;

    invoke-direct {v3, p0, v0}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/inputmethod/InputMethodManager;Z)V

    invoke-direct {v1, p3, v3, p0, v2}, Landroid/view/inputmethod/RemoteInputConnectionImpl;-><init>(Landroid/os/Looper;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/InputMethodManager;Landroid/view/View;)V

    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mFallbackInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    .line 1698
    return-void
.end method

.method private static blacklist areSameInputChannel(Landroid/view/InputChannel;Landroid/view/InputChannel;)Z
    .registers 6
    .param p0, "lhs"    # Landroid/view/InputChannel;
    .param p1, "rhs"    # Landroid/view/InputChannel;

    .line 2190
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 2191
    return v0

    .line 2193
    :cond_4
    const/4 v1, 0x0

    if-eqz p0, :cond_17

    if-nez p1, :cond_a

    goto :goto_17

    .line 2196
    :cond_a
    invoke-virtual {p0}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    move-result-object v3

    if-ne v2, v3, :cond_15

    goto :goto_16

    :cond_15
    move v0, v1

    :goto_16
    return v0

    .line 2194
    :cond_17
    :goto_17
    return v1
.end method

.method private static greylist-max-o canStartInput(Landroid/view/View;)Z
    .registers 2
    .param p0, "servedView"    # Landroid/view/View;

    .line 870
    invoke-virtual {p0}, Landroid/view/View;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {p0}, Landroid/view/inputmethod/InputMethodManager;->isAutofillUIShowing(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method private blacklist checkFocusInternalLocked(ZLandroid/view/ViewRootImpl;)Z
    .registers 6
    .param p1, "forceNewFocus"    # Z
    .param p2, "viewRootImpl"    # Landroid/view/ViewRootImpl;

    .line 3792
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    const/4 v1, 0x0

    if-eq v0, p2, :cond_6

    .line 3793
    return v1

    .line 3795
    :cond_6
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedView:Landroid/view/View;

    if-ne v0, v2, :cond_f

    if-nez p1, :cond_f

    .line 3796
    return v1

    .line 3807
    :cond_f
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedView:Landroid/view/View;

    if-nez v0, :cond_1a

    .line 3808
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->finishInputLocked()V

    .line 3809
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->closeCurrentInput()V

    .line 3810
    return v1

    .line 3812
    :cond_1a
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedView:Landroid/view/View;

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    .line 3813
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    if-eqz v0, :cond_27

    .line 3814
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-virtual {v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->finishComposingTextFromImm()V

    .line 3816
    :cond_27
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist clearAccessibilityBindingLocked(I)V
    .registers 3
    .param p1, "id"    # I

    .line 2155
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mAccessibilityInputMethodSession:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 2156
    return-void
.end method

.method private blacklist clearAllAccessibilityBindingLocked()V
    .registers 2

    .line 2164
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mAccessibilityInputMethodSession:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 2165
    return-void
.end method

.method private greylist-max-o clearBindingLocked()V
    .registers 2

    .line 2141
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->clearConnectionLocked()V

    .line 2142
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/inputmethod/InputMethodManager;->updateInputChannelLocked(Landroid/view/InputChannel;)V

    .line 2143
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    .line 2144
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/inputmethod/IInputMethodSession;

    .line 2146
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurBindState:Landroid/view/inputmethod/InputMethodManager$BindState;

    .line 2147
    return-void
.end method

.method private greylist-max-o clearConnectionLocked()V
    .registers 3

    .line 2205
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 2206
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mPreviousViewFocusParameters:Landroid/view/inputmethod/ViewFocusParameterInfo;

    .line 2207
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    if-eqz v1, :cond_12

    .line 2208
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-virtual {v1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->deactivate()V

    .line 2209
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    .line 2210
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnectionHandler:Landroid/os/Handler;

    .line 2212
    :cond_12
    return-void
.end method

.method private blacklist clearCurRootViewIfNeeded()Z
    .registers 3

    .line 2253
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodManager;->mActive:Z

    if-nez v0, :cond_13

    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootViewWindowFocused:Z

    if-nez v0, :cond_13

    .line 2254
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->finishInputLocked()V

    .line 2255
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mDelegate:Landroid/view/inputmethod/InputMethodManager$DelegateImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->-$$Nest$msetCurrentRootViewLocked(Landroid/view/inputmethod/InputMethodManager$DelegateImpl;Landroid/view/ViewRootImpl;)V

    .line 2257
    const/4 v0, 0x1

    return v0

    .line 2260
    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method private static blacklist createInputConnection(Landroid/view/View;)Landroid/util/Pair;
    .registers 4
    .param p0, "servedView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Landroid/util/Pair<",
            "Landroid/view/inputmethod/InputConnection;",
            "Landroid/view/inputmethod/EditorInfo;",
            ">;"
        }
    .end annotation

    .line 5320
    new-instance v0, Landroid/view/inputmethod/EditorInfo;

    invoke-direct {v0}, Landroid/view/inputmethod/EditorInfo;-><init>()V

    .line 5324
    .local v0, "editorInfo":Landroid/view/inputmethod/EditorInfo;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    .line 5325
    invoke-virtual {p0}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/EditorInfo;->setAutofillId(Landroid/view/autofill/AutofillId;)V

    .line 5326
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    iput v1, v0, Landroid/view/inputmethod/EditorInfo;->fieldId:I

    .line 5327
    invoke-virtual {p0, v0}, Landroid/view/View;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 5333
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v1, :cond_2a

    .line 5334
    sget-object v2, Landroid/view/autofill/AutofillId;->NO_AUTOFILL_ID:Landroid/view/autofill/AutofillId;

    invoke-virtual {v0, v2}, Landroid/view/inputmethod/EditorInfo;->setAutofillId(Landroid/view/autofill/AutofillId;)V

    .line 5335
    const/4 v2, 0x0

    iput v2, v0, Landroid/view/inputmethod/EditorInfo;->fieldId:I

    .line 5337
    :cond_2a
    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method private static blacklist createInstance(ILandroid/os/Looper;)Landroid/view/inputmethod/InputMethodManager;
    .registers 3
    .param p0, "displayId"    # I
    .param p1, "looper"    # Landroid/os/Looper;

    .line 1632
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->createStubInstance(ILandroid/os/Looper;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    goto :goto_f

    .line 1633
    :cond_b
    invoke-static {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->createRealInstance(ILandroid/os/Looper;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1632
    :goto_f
    return-object v0
.end method

.method private static blacklist createRealInstance(ILandroid/os/Looper;)Landroid/view/inputmethod/InputMethodManager;
    .registers 8
    .param p0, "displayId"    # I
    .param p1, "looper"    # Landroid/os/Looper;

    .line 1638
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    .line 1639
    .local v0, "service":Lcom/android/internal/view/IInputMethodManager;
    if-eqz v0, :cond_20

    .line 1642
    new-instance v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {v1, v0, p0, p1}, Landroid/view/inputmethod/InputMethodManager;-><init>(Lcom/android/internal/view/IInputMethodManager;ILandroid/os/Looper;)V

    .line 1650
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1652
    .local v2, "identity":J
    :try_start_f
    iget-object v4, v1, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/inputmethod/IInputMethodClient$Stub;

    iget-object v5, v1, Landroid/view/inputmethod/InputMethodManager;->mFallbackInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-static {v4, v5, p0}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->addClient(Lcom/android/internal/inputmethod/IInputMethodClient;Lcom/android/internal/inputmethod/IRemoteInputConnection;I)V
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_1b

    .line 1655
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1656
    nop

    .line 1657
    return-object v1

    .line 1655
    :catchall_1b
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1656
    throw v4

    .line 1640
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v2    # "identity":J
    :cond_20
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "IInputMethodManager is not available"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static blacklist createStubInstance(ILandroid/os/Looper;)Landroid/view/inputmethod/InputMethodManager;
    .registers 6
    .param p0, "displayId"    # I
    .param p1, "looper"    # Landroid/os/Looper;

    .line 1663
    const-class v0, Lcom/android/internal/view/IInputMethodManager;

    .line 1664
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/android/internal/view/IInputMethodManager;>;"
    nop

    .line 1665
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    new-instance v3, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda6;

    invoke-direct {v3}, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda6;-><init>()V

    invoke-static {v1, v2, v3}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/IInputMethodManager;

    .line 1688
    .local v1, "stubInterface":Lcom/android/internal/view/IInputMethodManager;
    new-instance v2, Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {v2, v1, p0, p1}, Landroid/view/inputmethod/InputMethodManager;-><init>(Lcom/android/internal/view/IInputMethodManager;ILandroid/os/Looper;)V

    return-object v2
.end method

.method private greylist-max-o doDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "fout"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 5041
    invoke-direct {p0, p1, p3}, Landroid/view/inputmethod/InputMethodManager;->processDump(Ljava/io/FileDescriptor;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 5042
    return-void

    .line 5045
    :cond_7
    new-instance v0, Landroid/util/PrintWriterPrinter;

    invoke-direct {v0, p2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 5046
    .local v0, "p":Landroid/util/Printer;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Input method client state for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5047
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mFallbackInputConnection="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mFallbackInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5048
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mActive="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/view/inputmethod/InputMethodManager;->mActive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mRestartOnNextWindowFocus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/view/inputmethod/InputMethodManager;->mRestartOnNextWindowFocus:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mBindSequence="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5050
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->getBindSequenceLocked()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCurImeId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5051
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->getImeIdLocked()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5048
    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5052
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mFullscreenMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/view/inputmethod/InputMethodManager;->mFullscreenMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5053
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->isImeSessionAvailableLocked()Z

    move-result v1

    if-eqz v1, :cond_b9

    .line 5054
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCurMethod="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurBindState:Landroid/view/inputmethod/InputMethodManager$BindState;

    iget-object v2, v2, Landroid/view/inputmethod/InputMethodManager$BindState;->mImeSession:Landroid/view/inputmethod/IInputMethodSessionInvoker;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto :goto_be

    .line 5056
    :cond_b9
    const-string v1, "  mCurMethod= null"

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5058
    :goto_be
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_bf
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mAccessibilityInputMethodSession:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_f6

    .line 5059
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mAccessibilityInputMethodSession("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mAccessibilityInputMethodSession:Landroid/util/SparseArray;

    .line 5060
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mAccessibilityInputMethodSession:Landroid/util/SparseArray;

    .line 5061
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5059
    invoke-interface {v0, v2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5058
    add-int/lit8 v1, v1, 0x1

    goto :goto_bf

    .line 5063
    .end local v1    # "i":I
    :cond_f6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCurRootView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5064
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mServedView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->getServedViewLocked()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5065
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mNextServedView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->getNextServedViewLocked()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5066
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mServedConnecting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedConnecting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5067
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-eqz v1, :cond_16c

    .line 5068
    const-string v1, "  mCurrentEditorInfo:"

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5069
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentEditorInfo:Landroid/view/inputmethod/EditorInfo;

    const-string v2, "    "

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/inputmethod/EditorInfo;->dump(Landroid/util/Printer;Ljava/lang/String;Z)V

    goto :goto_171

    .line 5071
    :cond_16c
    const-string v1, "  mCurrentEditorInfo: null"

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5073
    :goto_171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mServedInputConnection="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5074
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mServedInputConnectionHandler="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnectionHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5075
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLastPendingStartSeqId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/inputmethod/InputMethodManager;->mLastPendingStartSeqId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5076
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCompletions="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5077
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCursorRect="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5078
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCursorSelStart="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCursorSelEnd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCursorCandStart="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorCandStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCursorCandEnd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorCandEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5082
    return-void
.end method

.method public static blacklist ensureDefaultInstanceForDefaultDisplayIfNecessary()V
    .registers 2

    .line 382
    invoke-static {}, Landroid/app/ActivityThread;->isSystem()Z

    move-result v0

    if-nez v0, :cond_e

    .line 383
    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->forContextInternal(ILandroid/os/Looper;)Landroid/view/inputmethod/InputMethodManager;

    .line 385
    :cond_e
    return-void
.end method

.method private greylist-max-o finishedInputEvent(IZZ)V
    .registers 11
    .param p1, "seq"    # I
    .param p2, "handled"    # Z
    .param p3, "timeout"    # Z

    .line 4526
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 4527
    :try_start_3
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    .line 4528
    .local v1, "index":I
    if-gez v1, :cond_d

    .line 4529
    monitor-exit v0

    return-void

    .line 4532
    :cond_d
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager$PendingEvent;

    .line 4533
    .local v2, "p":Landroid/view/inputmethod/InputMethodManager$PendingEvent;
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 4534
    const-string v3, "aq:imm"

    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    const-wide/16 v5, 0x4

    invoke-static {v5, v6, v3, v4}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 4536
    if-eqz p3, :cond_44

    .line 4537
    const-string v3, "InputMethodManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Timeout waiting for IME to handle input event after 2500 ms: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mInputMethodId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4a

    .line 4540
    :cond_44
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    const/4 v4, 0x6

    invoke-virtual {v3, v4, v2}, Landroid/view/inputmethod/InputMethodManager$H;->removeMessages(ILjava/lang/Object;)V

    .line 4542
    .end local v1    # "index":I
    :goto_4a
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_3 .. :try_end_4b} :catchall_4f

    .line 4544
    invoke-direct {p0, v2, p2}, Landroid/view/inputmethod/InputMethodManager;->invokeFinishedInputEventCallback(Landroid/view/inputmethod/InputMethodManager$PendingEvent;Z)V

    .line 4545
    return-void

    .line 4542
    .end local v2    # "p":Landroid/view/inputmethod/InputMethodManager$PendingEvent;
    :catchall_4f
    move-exception v1

    :try_start_50
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    throw v1
.end method

.method private greylist-max-o flushPendingEventsLocked()V
    .registers 7

    .line 4565
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager$H;->removeMessages(I)V

    .line 4567
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 4568
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    if-ge v2, v0, :cond_26

    .line 4569
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 4570
    .local v3, "seq":I
    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v3, v5}, Landroid/view/inputmethod/InputMethodManager$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    .line 4571
    .local v4, "msg":Landroid/os/Message;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 4572
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 4568
    .end local v3    # "seq":I
    .end local v4    # "msg":Landroid/os/Message;
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 4574
    .end local v2    # "i":I
    :cond_26
    return-void
.end method

.method private blacklist forAccessibilitySessionsLocked(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;",
            ">;)V"
        }
    .end annotation

    .line 5312
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mAccessibilityInputMethodSession:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 5313
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mAccessibilityInputMethodSession:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 5312
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5315
    .end local v0    # "i":I
    :cond_17
    return-void
.end method

.method public static blacklist forContext(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 1709
    invoke-virtual {p0}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    .line 1712
    .local v0, "displayId":I
    if-nez v0, :cond_b

    .line 1713
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    goto :goto_f

    :cond_b
    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    .line 1716
    .local v1, "looper":Landroid/os/Looper;
    :goto_f
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1110007

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    sput-boolean v2, Landroid/view/inputmethod/InputMethodManager;->sPreventImeStartupUnlessTextEditor:Z

    .line 1718
    invoke-static {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->forContextInternal(ILandroid/os/Looper;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    return-object v2
.end method

.method private static blacklist forContextInternal(ILandroid/os/Looper;)Landroid/view/inputmethod/InputMethodManager;
    .registers 6
    .param p0, "displayId"    # I
    .param p1, "looper"    # Landroid/os/Looper;

    .line 1723
    if-nez p0, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    .line 1724
    .local v0, "isDefaultDisplay":Z
    :goto_5
    sget-object v1, Landroid/view/inputmethod/InputMethodManager;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1725
    :try_start_8
    sget-object v2, Landroid/view/inputmethod/InputMethodManager;->sInstanceMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 1726
    .local v2, "instance":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v2, :cond_14

    .line 1727
    monitor-exit v1

    return-object v2

    .line 1729
    :cond_14
    invoke-static {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->createInstance(ILandroid/os/Looper;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v3

    .line 1731
    .end local v2    # "instance":Landroid/view/inputmethod/InputMethodManager;
    .local v3, "instance":Landroid/view/inputmethod/InputMethodManager;
    sget-object v2, Landroid/view/inputmethod/InputMethodManager;->sInstance:Landroid/view/inputmethod/InputMethodManager;

    if-nez v2, :cond_20

    if-eqz v0, :cond_20

    .line 1732
    sput-object v3, Landroid/view/inputmethod/InputMethodManager;->sInstance:Landroid/view/inputmethod/InputMethodManager;

    .line 1734
    :cond_20
    sget-object v2, Landroid/view/inputmethod/InputMethodManager;->sInstanceMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1735
    monitor-exit v1

    return-object v3

    .line 1736
    .end local v3    # "instance":Landroid/view/inputmethod/InputMethodManager;
    :catchall_27
    move-exception v2

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_27

    throw v2
.end method

.method private blacklist getBindSequenceLocked()I
    .registers 2

    .line 5243
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurBindState:Landroid/view/inputmethod/InputMethodManager$BindState;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurBindState:Landroid/view/inputmethod/InputMethodManager$BindState;

    iget v0, v0, Landroid/view/inputmethod/InputMethodManager$BindState;->mBindSequence:I

    goto :goto_a

    :cond_9
    const/4 v0, -0x1

    :goto_a
    return v0
.end method

.method private blacklist getFallbackInputMethodManagerIfNecessary(Landroid/view/View;)Landroid/view/inputmethod/InputMethodManager;
    .registers 9
    .param p1, "view"    # Landroid/view/View;

    .line 815
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 816
    return-object v0

    .line 824
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    .line 825
    .local v1, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-nez v1, :cond_b

    .line 826
    return-object v0

    .line 828
    :cond_b
    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getDisplayId()I

    move-result v2

    .line 829
    .local v2, "viewRootDisplayId":I
    iget v3, p0, Landroid/view/inputmethod/InputMethodManager;->mDisplayId:I

    if-ne v2, v3, :cond_14

    .line 831
    return-object v0

    .line 833
    :cond_14
    iget-object v3, v1, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    .line 834
    const-class v4, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    .line 835
    .local v3, "fallbackImm":Landroid/view/inputmethod/InputMethodManager;
    const-string v4, "InputMethodManager"

    if-nez v3, :cond_39

    .line 836
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "b/117267690: Failed to get non-null fallback IMM. view="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    return-object v0

    .line 839
    :cond_39
    iget v5, v3, Landroid/view/inputmethod/InputMethodManager;->mDisplayId:I

    if-eq v5, v2, :cond_6a

    .line 840
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "b/117267690: Failed to get fallback IMM with expected displayId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " actual IMM#displayId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/view/inputmethod/InputMethodManager;->mDisplayId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " view="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    return-object v0

    .line 845
    :cond_6a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "b/117267690: Display ID mismatch found. ViewRootImpl displayId="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " InputMethodManager displayId="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v5, p0, Landroid/view/inputmethod/InputMethodManager;->mDisplayId:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ". Use the right InputMethodManager instance to avoid performance overhead."

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4, v0, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 850
    return-object v3
.end method

.method private blacklist getImeIdLocked()Ljava/lang/String;
    .registers 2

    .line 5238
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurBindState:Landroid/view/inputmethod/InputMethodManager$BindState;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurBindState:Landroid/view/inputmethod/InputMethodManager$BindState;

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager$BindState;->mImeId:Ljava/lang/String;

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public static greylist getInstance()Landroid/view/inputmethod/InputMethodManager;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1750
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    const-string v1, "InputMethodManager"

    const-string v2, "InputMethodManager.getInstance() is deprecated because it cannot be compatible with multi-display. Use context.getSystemService(InputMethodManager.class) instead."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1754
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->ensureDefaultInstanceForDefaultDisplayIfNecessary()V

    .line 1755
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getNextServedViewLocked()Landroid/view/View;
    .registers 2

    .line 1138
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedView:Landroid/view/View;

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return-object v0
.end method

.method private blacklist getServedViewLocked()Landroid/view/View;
    .registers 2

    .line 1133
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return-object v0
.end method

.method private blacklist getStartInputFlags(Landroid/view/View;I)I
    .registers 4
    .param p1, "focusedView"    # Landroid/view/View;
    .param p2, "startInputFlags"    # I

    .line 3752
    or-int/lit8 p2, p2, 0x1

    .line 3753
    invoke-virtual {p1}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3754
    or-int/lit8 p2, p2, 0x2

    .line 3756
    :cond_a
    return p2
.end method

.method private blacklist hasActiveInputConnectionInternal(Landroid/view/View;)Z
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .line 1108
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 1109
    :try_start_3
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->hasServedByInputMethodLocked(Landroid/view/View;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_22

    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->isImeSessionAvailableLocked()Z

    move-result v1

    if-nez v1, :cond_11

    goto :goto_22

    .line 1113
    :cond_11
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    if-eqz v1, :cond_1f

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    .line 1114
    invoke-virtual {v1, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->isAssociatedWith(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1f

    const/4 v2, 0x1

    goto :goto_20

    :cond_1f
    nop

    :goto_20
    monitor-exit v0

    .line 1113
    return v2

    .line 1110
    :cond_22
    :goto_22
    monitor-exit v0

    return v2

    .line 1115
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v1
.end method

.method private blacklist hasServedByInputMethodLocked(Landroid/view/View;)Z
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 1146
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->getServedViewLocked()Landroid/view/View;

    move-result-object v0

    .line 1147
    .local v0, "servedView":Landroid/view/View;
    if-eq v0, p1, :cond_11

    if-eqz v0, :cond_f

    .line 1148
    invoke-virtual {v0, p1}, Landroid/view/View;->checkInputConnectionProxy(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_11

    :cond_f
    const/4 v1, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v1, 0x1

    .line 1147
    :goto_12
    return v1
.end method

.method private static blacklist hasViewImeRequestedVisible(Landroid/view/View;)Z
    .registers 5
    .param p0, "view"    # Landroid/view/View;

    .line 885
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_20

    if-eqz p0, :cond_20

    .line 886
    invoke-virtual {p0}, Landroid/view/View;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v0

    .line 887
    .local v0, "controller":Landroid/view/WindowInsetsController;
    if-eqz v0, :cond_20

    .line 888
    invoke-virtual {p0}, Landroid/view/View;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v2

    .line 889
    invoke-interface {v2}, Landroid/view/WindowInsetsController;->getRequestedVisibleTypes()I

    move-result v2

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v3

    and-int/2addr v2, v3

    if-eqz v2, :cond_1f

    const/4 v1, 0x1

    .line 888
    :cond_1f
    return v1

    .line 892
    .end local v0    # "controller":Landroid/view/WindowInsetsController;
    :cond_20
    return v1
.end method

.method private blacklist hideSoftInputFromWindow(Landroid/os/IBinder;ILandroid/os/ResultReceiver;ILandroid/view/inputmethod/ImeTracker$Token;)Z
    .registers 24
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "flags"    # I
    .param p3, "resultReceiver"    # Landroid/os/ResultReceiver;
    .param p4, "reason"    # I
    .param p5, "statsToken"    # Landroid/view/inputmethod/ImeTracker$Token;

    .line 2653
    move-object/from16 v1, p0

    move-object/from16 v6, p3

    move/from16 v7, p4

    iget-object v2, v1, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    .line 2654
    :try_start_9
    invoke-direct {v1}, Landroid/view/inputmethod/InputMethodManager;->getServedViewLocked()Landroid/view/View;

    move-result-object v0

    move-object v9, v0

    .line 2655
    .local v9, "initialServedView":Landroid/view/View;
    monitor-exit v2
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_108

    .line 2657
    if-nez p5, :cond_2d

    .line 2658
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    .line 2659
    invoke-static {v9}, Landroid/view/inputmethod/ImeTracker;->isFromUser(Landroid/view/View;)Z

    move-result v2

    .line 2658
    const/4 v3, 0x2

    const/4 v4, 0x5

    invoke-interface {v0, v3, v4, v7, v2}, Landroid/view/inputmethod/ImeTracker;->onStart(IIIZ)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v0

    .line 2660
    .end local p5    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    .local v0, "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLatency()Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;

    move-result-object v2

    new-instance v3, Landroid/view/InsetsController$$ExternalSyntheticLambda2;

    invoke-direct {v3}, Landroid/view/InsetsController$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v2, v0, v4, v7, v3}, Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;->onRequestHide(Landroid/view/inputmethod/ImeTracker$Token;IILandroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;)V

    move-object v4, v0

    goto :goto_2f

    .line 2657
    .end local v0    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    .restart local p5    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    :cond_2d
    move-object/from16 v4, p5

    .line 2663
    .end local p5    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    .local v4, "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    :goto_2f
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    const-string v2, "InputMethodManager#hideSoftInputFromWindow"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    .line 2665
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 2666
    iget-object v10, v1, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v10

    .line 2668
    :try_start_3f
    invoke-direct {v1}, Landroid/view/inputmethod/InputMethodManager;->getServedViewLocked()Landroid/view/View;

    move-result-object v0

    .line 2669
    .local v0, "servedView":Landroid/view/View;
    const/4 v2, 0x0

    const-wide/32 v11, 0x17932c7e

    const/4 v5, 0x1

    if-eqz v0, :cond_e1

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v8

    move-object/from16 v13, p1

    if-eq v8, v13, :cond_56

    move-wide/from16 v16, v11

    goto/16 :goto_e3

    .line 2679
    :cond_56
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v8

    invoke-interface {v8, v4, v5}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 2681
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v8

    if-eqz v8, :cond_d4

    .line 2683
    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v8

    .line 2684
    .local v8, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v8, :cond_cc

    .line 2685
    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v14

    .line 2686
    .local v14, "vh":Landroid/os/Handler;
    const/16 v15, 0x42

    if-nez v14, :cond_87

    .line 2689
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v3

    invoke-interface {v3, v4, v15}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 2693
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v3

    if-eqz v3, :cond_85

    invoke-static {v11, v12}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v3

    if-eqz v3, :cond_85

    move v2, v5

    :cond_85
    monitor-exit v10

    return v2

    .line 2696
    :cond_87
    move-wide/from16 v16, v11

    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v11

    invoke-interface {v11, v4, v15}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 2699
    nop

    .line 2700
    invoke-virtual {v8}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v11

    .line 2699
    invoke-static {v11}, Landroid/view/inputmethod/InputMethodManager;->hasViewImeRequestedVisible(Landroid/view/View;)Z

    move-result v11

    .line 2701
    .local v11, "imeReqVisible":Z
    if-eqz v6, :cond_a4

    .line 2702
    nop

    .line 2703
    if-nez v11, :cond_9f

    goto :goto_a0

    .line 2704
    :cond_9f
    const/4 v5, 0x3

    :goto_a0
    nop

    .line 2702
    invoke-virtual {v6, v5, v3}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 2706
    :cond_a4
    invoke-virtual {v14}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v5

    if-eq v3, v5, :cond_b9

    .line 2710
    move-object v2, v4

    .line 2711
    .local v2, "finalStatsToken":Landroid/view/inputmethod/ImeTracker$Token;
    new-instance v3, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda2;

    invoke-direct {v3, v8, v2}, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda2;-><init>(Landroid/view/ViewRootImpl;Landroid/view/inputmethod/ImeTracker$Token;)V

    invoke-virtual {v14, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2713
    nop

    .end local v2    # "finalStatsToken":Landroid/view/inputmethod/ImeTracker$Token;
    goto :goto_c4

    .line 2714
    :cond_b9
    invoke-virtual {v8}, Landroid/view/ViewRootImpl;->getInsetsController()Landroid/view/InsetsController;

    move-result-object v3

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v5

    invoke-virtual {v3, v5, v2, v4}, Landroid/view/InsetsController;->hide(IZLandroid/view/inputmethod/ImeTracker$Token;)V

    .line 2717
    :goto_c4
    invoke-static/range {v16 .. v17}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v2

    if-nez v2, :cond_ce

    .line 2721
    monitor-exit v10

    return v11

    .line 2684
    .end local v11    # "imeReqVisible":Z
    .end local v14    # "vh":Landroid/os/Handler;
    :cond_cc
    move-wide/from16 v16, v11

    .line 2725
    :cond_ce
    invoke-static/range {v16 .. v17}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v2

    monitor-exit v10

    return v2

    .line 2728
    .end local v8    # "viewRootImpl":Landroid/view/ViewRootImpl;
    :cond_d4
    iget-object v2, v1, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/inputmethod/IInputMethodClient$Stub;

    iget-boolean v8, v1, Landroid/view/inputmethod/InputMethodManager;->mAsyncShowHideMethodEnabled:Z

    move/from16 v5, p2

    move-object v3, v13

    invoke-static/range {v2 .. v8}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->hideSoftInput(Lcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;IZ)Z

    move-result v2

    monitor-exit v10

    return v2

    .line 2669
    :cond_e1
    move-wide/from16 v16, v11

    .line 2670
    :goto_e3
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v3

    invoke-interface {v3, v4, v5}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 2671
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLatency()Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;

    move-result-object v3

    new-instance v6, Landroid/view/InsetsController$$ExternalSyntheticLambda2;

    invoke-direct {v6}, Landroid/view/InsetsController$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;->onHideFailed(Landroid/view/inputmethod/ImeTracker$Token;ILandroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;)V

    .line 2675
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v3

    if-eqz v3, :cond_103

    invoke-static/range {v16 .. v17}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v3

    if-eqz v3, :cond_103

    move v2, v5

    :cond_103
    monitor-exit v10

    return v2

    .line 2731
    .end local v0    # "servedView":Landroid/view/View;
    :catchall_105
    move-exception v0

    monitor-exit v10
    :try_end_107
    .catchall {:try_start_3f .. :try_end_107} :catchall_105

    throw v0

    .line 2655
    .end local v4    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    .end local v9    # "initialServedView":Landroid/view/View;
    .restart local p5    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    :catchall_108
    move-exception v0

    :try_start_109
    monitor-exit v2
    :try_end_10a
    .catchall {:try_start_109 .. :try_end_10a} :catchall_108

    throw v0
.end method

.method public static blacklist invalidateLocalConnectionlessStylusHandwritingAvailabilityCaches()V
    .registers 1

    .line 794
    const-string v0, "cache_key.system_server.connectionless_stylus_handwriting"

    invoke-static {v0}, Landroid/app/PropertyInvalidatedCache;->invalidateCache(Ljava/lang/String;)V

    .line 796
    return-void
.end method

.method public static blacklist invalidateLocalStylusHandwritingAvailabilityCaches()V
    .registers 1

    .line 784
    const-string v0, "cache_key.system_server.stylus_handwriting"

    invoke-static {v0}, Landroid/app/PropertyInvalidatedCache;->invalidateCache(Ljava/lang/String;)V

    .line 785
    return-void
.end method

.method private greylist-max-o invokeFinishedInputEventCallback(Landroid/view/inputmethod/InputMethodManager$PendingEvent;Z)V
    .registers 5
    .param p1, "p"    # Landroid/view/inputmethod/InputMethodManager$PendingEvent;
    .param p2, "handled"    # Z

    .line 4549
    iput-boolean p2, p1, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mHandled:Z

    .line 4550
    iget-object v0, p1, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 4553
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->run()V

    goto :goto_1f

    .line 4557
    :cond_12
    iget-object v0, p1, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mHandler:Landroid/os/Handler;

    invoke-static {v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    .line 4558
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 4559
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4561
    .end local v0    # "msg":Landroid/os/Message;
    :goto_1f
    return-void
.end method

.method private static greylist-max-o isAutofillUIShowing(Landroid/view/View;)Z
    .registers 3
    .param p0, "servedView"    # Landroid/view/View;

    .line 799
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/autofill/AutofillManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    .line 800
    .local v0, "afm":Landroid/view/autofill/AutofillManager;
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/view/autofill/AutofillManager;->isAutofillUiShowing()Z

    move-result v1

    if-eqz v1, :cond_16

    const/4 v1, 0x1

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    return v1
.end method

.method private blacklist isImeSessionAvailableLocked()Z
    .registers 2

    .line 5233
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurBindState:Landroid/view/inputmethod/InputMethodManager$BindState;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurBindState:Landroid/view/inputmethod/InputMethodManager$BindState;

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager$BindState;->mImeSession:Landroid/view/inputmethod/IInputMethodSessionInvoker;

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private static blacklist isInEditMode()Z
    .registers 1

    .line 1623
    const/4 v0, 0x0

    return v0
.end method

.method static blacklist isInEditModeInternal()Z
    .registers 1

    .line 1627
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->isInEditMode()Z

    move-result v0

    return v0
.end method

.method private blacklist isSwitchingBetweenEquivalentNonEditableViews(Landroid/view/inputmethod/ViewFocusParameterInfo;IIII)Z
    .registers 13
    .param p1, "previousViewFocusParameters"    # Landroid/view/inputmethod/ViewFocusParameterInfo;
    .param p2, "startInputFlags"    # I
    .param p3, "startInputReason"    # I
    .param p4, "softInputMode"    # I
    .param p5, "windowFlags"    # I

    .line 3677
    and-int/lit8 v0, p2, 0x8

    if-nez v0, :cond_19

    and-int/lit8 v0, p2, 0x2

    if-nez v0, :cond_19

    if-eqz p1, :cond_19

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 3680
    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .end local p1    # "previousViewFocusParameters":Landroid/view/inputmethod/ViewFocusParameterInfo;
    .end local p2    # "startInputFlags":I
    .end local p3    # "startInputReason":I
    .end local p4    # "softInputMode":I
    .end local p5    # "windowFlags":I
    .local v1, "previousViewFocusParameters":Landroid/view/inputmethod/ViewFocusParameterInfo;
    .local v3, "startInputFlags":I
    .local v4, "startInputReason":I
    .local v5, "softInputMode":I
    .local v6, "windowFlags":I
    invoke-virtual/range {v1 .. v6}, Landroid/view/inputmethod/ViewFocusParameterInfo;->sameAs(Landroid/view/inputmethod/EditorInfo;IIII)Z

    move-result p1

    if-eqz p1, :cond_1e

    const/4 p1, 0x1

    goto :goto_1f

    .line 3677
    .end local v1    # "previousViewFocusParameters":Landroid/view/inputmethod/ViewFocusParameterInfo;
    .end local v3    # "startInputFlags":I
    .end local v4    # "startInputReason":I
    .end local v5    # "softInputMode":I
    .end local v6    # "windowFlags":I
    .restart local p1    # "previousViewFocusParameters":Landroid/view/inputmethod/ViewFocusParameterInfo;
    .restart local p2    # "startInputFlags":I
    .restart local p3    # "startInputReason":I
    .restart local p4    # "softInputMode":I
    .restart local p5    # "windowFlags":I
    :cond_19
    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 3680
    .end local p1    # "previousViewFocusParameters":Landroid/view/inputmethod/ViewFocusParameterInfo;
    .end local p2    # "startInputFlags":I
    .end local p3    # "startInputReason":I
    .end local p4    # "softInputMode":I
    .end local p5    # "windowFlags":I
    .restart local v1    # "previousViewFocusParameters":Landroid/view/inputmethod/ViewFocusParameterInfo;
    .restart local v3    # "startInputFlags":I
    .restart local v4    # "startInputReason":I
    .restart local v5    # "softInputMode":I
    .restart local v6    # "windowFlags":I
    :cond_1e
    const/4 p1, 0x0

    .line 3677
    :goto_1f
    return p1
.end method

.method static synthetic blacklist lambda$closeCurrentInput$6(Landroid/view/ViewRootImpl;Landroid/view/inputmethod/ImeTracker$Token;)V
    .registers 5
    .param p0, "viewRootImpl"    # Landroid/view/ViewRootImpl;
    .param p1, "statsToken"    # Landroid/view/inputmethod/ImeTracker$Token;

    .line 3894
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->getInsetsController()Landroid/view/InsetsController;

    move-result-object v0

    .line 3895
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    .line 3894
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/view/InsetsController;->hide(IZLandroid/view/inputmethod/ImeTracker$Token;)V

    return-void
.end method

.method static synthetic blacklist lambda$createStubInstance$0(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .param p0, "proxy"    # Ljava/lang/Object;
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1667
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    .line 1668
    .local v0, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    .line 1671
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1668
    if-ne v0, v1, :cond_12

    .line 1669
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 1670
    :cond_12
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_17

    .line 1671
    return-object v3

    .line 1672
    :cond_17
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_22

    .line 1673
    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 1674
    :cond_22
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_27

    .line 1675
    return-object v3

    .line 1676
    :cond_27
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_2c

    .line 1677
    return-object v3

    .line 1678
    :cond_2c
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_31

    .line 1679
    return-object v3

    .line 1680
    :cond_31
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_3b

    .line 1681
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    return-object v1

    .line 1682
    :cond_3b
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_46

    .line 1683
    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    return-object v1

    .line 1685
    :cond_46
    const/4 v1, 0x0

    return-object v1
.end method

.method static synthetic blacklist lambda$doInvalidateInput$4(Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;ILandroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;)V
    .registers 4
    .param p0, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
    .param p1, "accessibilityInputConnection"    # Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;
    .param p2, "sessionId"    # I
    .param p3, "wrapper"    # Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;

    .line 3346
    invoke-virtual {p3, p0, p1, p2}, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;->invalidateInput(Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;I)V

    return-void
.end method

.method static synthetic blacklist lambda$getShortcutInputMethodsAndSubtypes$8(Landroid/view/inputmethod/InputMethodInfo;)I
    .registers 2
    .param p0, "imi"    # Landroid/view/inputmethod/InputMethodInfo;

    .line 4815
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->isSystem()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic blacklist lambda$hideSoftInputFromWindow$2(Landroid/view/ViewRootImpl;Landroid/view/inputmethod/ImeTracker$Token;)V
    .registers 5
    .param p0, "viewRootImpl"    # Landroid/view/ViewRootImpl;
    .param p1, "finalStatsToken"    # Landroid/view/inputmethod/ImeTracker$Token;

    .line 2711
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->getInsetsController()Landroid/view/InsetsController;

    move-result-object v0

    .line 2712
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    .line 2711
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/view/InsetsController;->hide(IZLandroid/view/inputmethod/ImeTracker$Token;)V

    return-void
.end method

.method static synthetic blacklist lambda$sendFailureCallback$3(Ljava/util/function/Consumer;)V
    .registers 2
    .param p0, "callback"    # Ljava/util/function/Consumer;

    .line 2823
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$showSoftInput$1(Landroid/view/ViewRootImpl;Landroid/view/inputmethod/ImeTracker$Token;)V
    .registers 5
    .param p0, "viewRootImpl"    # Landroid/view/ViewRootImpl;
    .param p1, "finalStatsToken"    # Landroid/view/inputmethod/ImeTracker$Token;

    .line 2488
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->getInsetsController()Landroid/view/InsetsController;

    move-result-object v0

    .line 2489
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    .line 2488
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/view/InsetsController;->show(IZLandroid/view/inputmethod/ImeTracker$Token;)V

    return-void
.end method

.method private synthetic blacklist lambda$startInputInner$5(I)V
    .registers 8
    .param p1, "startInputReason"    # I

    .line 3437
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    .end local p1    # "startInputReason":I
    .local v1, "startInputReason":I
    invoke-direct/range {v0 .. v5}, Landroid/view/inputmethod/InputMethodManager;->startInputOnWindowFocusGainInternal(ILandroid/view/View;III)Z

    return-void
.end method

.method private synthetic blacklist lambda$updateSelection$7(IIIILandroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;)V
    .registers 13
    .param p1, "selStart"    # I
    .param p2, "selEnd"    # I
    .param p3, "candidatesStart"    # I
    .param p4, "candidatesEnd"    # I
    .param p5, "wrapper"    # Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;

    .line 4058
    iget v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelStart:I

    iget v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelEnd:I

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v0, p5

    .end local p1    # "selStart":I
    .end local p2    # "selEnd":I
    .end local p3    # "candidatesStart":I
    .end local p4    # "candidatesEnd":I
    .end local p5    # "wrapper":Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;
    .local v0, "wrapper":Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;
    .local v3, "selStart":I
    .local v4, "selEnd":I
    .local v5, "candidatesStart":I
    .local v6, "candidatesEnd":I
    invoke-virtual/range {v0 .. v6}, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;->updateSelection(IIIIII)V

    return-void
.end method

.method private greylist-max-o obtainPendingEventLocked(Landroid/view/InputEvent;Ljava/lang/Object;Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;Landroid/os/Handler;)Landroid/view/inputmethod/InputMethodManager$PendingEvent;
    .registers 9
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "token"    # Ljava/lang/Object;
    .param p3, "inputMethodId"    # Ljava/lang/String;
    .param p4, "callback"    # Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;
    .param p5, "handler"    # Landroid/os/Handler;

    .line 4579
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEventPool:Landroid/util/Pools$Pool;

    invoke-interface {v0}, Landroid/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;

    .line 4580
    .local v0, "p":Landroid/view/inputmethod/InputMethodManager$PendingEvent;
    if-nez v0, :cond_11

    .line 4581
    new-instance v1, Landroid/view/inputmethod/InputMethodManager$PendingEvent;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/view/inputmethod/InputMethodManager$PendingEvent;-><init>(Landroid/view/inputmethod/InputMethodManager;Landroid/view/inputmethod/InputMethodManager-IA;)V

    move-object v0, v1

    .line 4583
    :cond_11
    iput-object p1, v0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mEvent:Landroid/view/InputEvent;

    .line 4584
    iput-object p2, v0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mToken:Ljava/lang/Object;

    .line 4585
    iput-object p3, v0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mInputMethodId:Ljava/lang/String;

    .line 4586
    iput-object p4, v0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mCallback:Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;

    .line 4587
    iput-object p5, v0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mHandler:Landroid/os/Handler;

    .line 4588
    return-object v0
.end method

.method private blacklist onImeFocusLost(Landroid/view/ViewRootImpl;)V
    .registers 9
    .param p1, "previousRootView"    # Landroid/view/ViewRootImpl;

    .line 1053
    iget-object v0, p1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 1054
    .local v0, "softInputMode":I
    and-int/lit8 v1, v0, 0xf

    .line 1056
    .local v1, "state":I
    const/4 v2, 0x3

    if-ne v1, v2, :cond_21

    .line 1059
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v2

    const/4 v3, 0x5

    const/16 v4, 0x3a

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-interface {v2, v5, v3, v4, v6}, Landroid/view/inputmethod/ImeTracker;->onStart(IIIZ)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v2

    .line 1067
    .local v2, "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    invoke-virtual {p1}, Landroid/view/ViewRootImpl;->getInsetsController()Landroid/view/InsetsController;

    move-result-object v3

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v4

    invoke-virtual {v3, v4, v6, v2}, Landroid/view/InsetsController;->hide(IZLandroid/view/inputmethod/ImeTracker$Token;)V

    .line 1070
    .end local v2    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    :cond_21
    return-void
.end method

.method private blacklist onViewFocusChangedInternal(Landroid/view/View;Z)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .line 3821
    if-eqz p1, :cond_31

    invoke-virtual {p1}, Landroid/view/View;->isTemporarilyDetached()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_31

    .line 3824
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 3825
    .local v0, "viewRootImpl":Landroid/view/ViewRootImpl;
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 3826
    :try_start_10
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    if-eq v2, v0, :cond_16

    .line 3827
    monitor-exit v1

    return-void

    .line 3829
    :cond_16
    invoke-virtual {p1}, Landroid/view/View;->hasImeFocus()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-virtual {p1}, Landroid/view/View;->hasWindowFocus()Z

    move-result v2

    if-nez v2, :cond_23

    goto :goto_2c

    .line 3846
    :cond_23
    if-eqz p2, :cond_27

    .line 3847
    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedView:Landroid/view/View;

    .line 3849
    :cond_27
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_10 .. :try_end_28} :catchall_2e

    .line 3850
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->dispatchCheckFocus()V

    .line 3851
    return-void

    .line 3830
    :cond_2c
    :goto_2c
    :try_start_2c
    monitor-exit v1

    return-void

    .line 3849
    :catchall_2e
    move-exception v2

    monitor-exit v1
    :try_end_30
    .catchall {:try_start_2c .. :try_end_30} :catchall_2e

    throw v2

    .line 3822
    .end local v0    # "viewRootImpl":Landroid/view/ViewRootImpl;
    :cond_31
    :goto_31
    return-void
.end method

.method public static greylist peekInstance()Landroid/view/inputmethod/InputMethodManager;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1769
    const-string v0, "InputMethodManager"

    const-string v1, "InputMethodManager.peekInstance() is deprecated because it cannot be compatible with multi-display. Use context.getSystemService(InputMethodManager.class) instead."

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1773
    sget-object v0, Landroid/view/inputmethod/InputMethodManager;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1774
    :try_start_f
    sget-object v1, Landroid/view/inputmethod/InputMethodManager;->sInstance:Landroid/view/inputmethod/InputMethodManager;

    monitor-exit v0

    return-object v1

    .line 1775
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_13

    throw v1
.end method

.method private blacklist processDump(Ljava/io/FileDescriptor;[Ljava/lang/String;)Z
    .registers 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;

    .line 5253
    const/4 v0, 0x0

    if-nez p2, :cond_4

    .line 5254
    return v0

    .line 5257
    :cond_4
    array-length v1, p2

    move v2, v0

    :goto_6
    if-ge v2, v1, :cond_23

    aget-object v3, p2, v2

    .line 5258
    .local v3, "arg":Ljava/lang/String;
    const-string v4, "--proto-com-android-imetracing"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 5259
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 5260
    .local v0, "proto":Landroid/util/proto/ProtoOutputStream;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->dumpDebug(Landroid/util/proto/ProtoOutputStream;[B)V

    .line 5261
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 5262
    const/4 v1, 0x1

    return v1

    .line 5257
    .end local v0    # "proto":Landroid/util/proto/ProtoOutputStream;
    .end local v3    # "arg":Ljava/lang/String;
    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 5265
    :cond_23
    return v0
.end method

.method private greylist-max-o recyclePendingEventLocked(Landroid/view/inputmethod/InputMethodManager$PendingEvent;)V
    .registers 3
    .param p1, "p"    # Landroid/view/inputmethod/InputMethodManager$PendingEvent;

    .line 4593
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->recycle()V

    .line 4594
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEventPool:Landroid/util/Pools$Pool;

    invoke-interface {v0, p1}, Landroid/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 4595
    return-void
.end method

.method private blacklist reportInputConnectionOpened(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/os/Handler;Landroid/view/View;)V
    .registers 7
    .param p1, "ic"    # Landroid/view/inputmethod/InputConnection;
    .param p2, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
    .param p3, "icHandler"    # Landroid/os/Handler;
    .param p4, "view"    # Landroid/view/View;

    .line 3686
    invoke-virtual {p4, p1, p2, p3}, Landroid/view/View;->onInputConnectionOpenedInternal(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/os/Handler;)V

    .line 3687
    invoke-virtual {p4}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 3688
    .local v0, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_10

    .line 3689
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getHandwritingInitiator()Landroid/view/HandwritingInitiator;

    move-result-object v1

    invoke-virtual {v1, p4}, Landroid/view/HandwritingInitiator;->onInputConnectionCreated(Landroid/view/View;)V

    .line 3691
    :cond_10
    return-void
.end method

.method private blacklist sendFailureCallback(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 2820
    .local p2, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    if-eqz p1, :cond_e

    if-nez p2, :cond_5

    goto :goto_e

    .line 2823
    :cond_5
    new-instance v0, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2824
    return-void

    .line 2821
    :cond_e
    :goto_e
    return-void
.end method

.method private greylist-max-o sendInputEventAndReportResultOnMainLooper(Landroid/view/inputmethod/InputMethodManager$PendingEvent;)V
    .registers 5
    .param p1, "p"    # Landroid/view/inputmethod/InputMethodManager$PendingEvent;

    .line 4481
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 4482
    :try_start_3
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->sendInputEventOnMainLooperLocked(Landroid/view/inputmethod/InputMethodManager$PendingEvent;)I

    move-result v1

    .line 4483
    .local v1, "result":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_c

    .line 4484
    monitor-exit v0

    return-void

    .line 4487
    :cond_c
    const/4 v2, 0x1

    if-ne v1, v2, :cond_10

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    .line 4488
    .end local v1    # "result":I
    .local v2, "handled":Z
    :goto_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_16

    .line 4490
    invoke-direct {p0, p1, v2}, Landroid/view/inputmethod/InputMethodManager;->invokeFinishedInputEventCallback(Landroid/view/inputmethod/InputMethodManager$PendingEvent;Z)V

    .line 4491
    return-void

    .line 4488
    .end local v2    # "handled":Z
    :catchall_16
    move-exception v1

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v1
.end method

.method private greylist-max-o sendInputEventOnMainLooperLocked(Landroid/view/inputmethod/InputMethodManager$PendingEvent;)I
    .registers 9
    .param p1, "p"    # Landroid/view/inputmethod/InputMethodManager$PendingEvent;

    .line 4496
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurChannel:Landroid/view/InputChannel;

    const/4 v1, 0x0

    if-eqz v0, :cond_8d

    .line 4497
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurSender:Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;

    if-nez v0, :cond_18

    .line 4498
    new-instance v0, Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurChannel:Landroid/view/InputChannel;

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodManager$H;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, p0, v2, v3}, Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;-><init>(Landroid/view/inputmethod/InputMethodManager;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurSender:Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;

    .line 4501
    :cond_18
    iget-object v0, p1, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mEvent:Landroid/view/InputEvent;

    .line 4502
    .local v0, "event":Landroid/view/InputEvent;
    invoke-virtual {v0}, Landroid/view/InputEvent;->getSequenceNumber()I

    move-result v2

    .line 4503
    .local v2, "seq":I
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mCurSender:Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;

    invoke-virtual {v3, v2, v0}, Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;->sendInputEvent(ILandroid/view/InputEvent;)Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 4504
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v3, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4505
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEvents:Landroid/util/SparseArray;

    .line 4506
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 4505
    const-wide/16 v4, 0x4

    const-string v6, "aq:imm"

    invoke-static {v4, v5, v6, v3}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 4508
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    const/4 v4, 0x6

    invoke-virtual {v3, v4, v2, v1, p1}, Landroid/view/inputmethod/InputMethodManager$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 4509
    .local v1, "msg":Landroid/os/Message;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 4510
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    const-wide/16 v4, 0x9c4

    invoke-virtual {v3, v1, v4, v5}, Landroid/view/inputmethod/InputMethodManager$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4511
    const/4 v3, -0x1

    return v3

    .line 4514
    .end local v1    # "msg":Landroid/os/Message;
    :cond_4c
    sget-boolean v3, Landroid/view/inputmethod/InputMethodManager;->sPreventImeStartupUnlessTextEditor:Z

    const-string v4, "InputMethodManager"

    if-eqz v3, :cond_69

    .line 4515
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dropping event because IME is evicted: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8d

    .line 4517
    :cond_69
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to send input event to IME: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->getImeIdLocked()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " dropping: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4521
    .end local v0    # "event":Landroid/view/InputEvent;
    .end local v2    # "seq":I
    :cond_8d
    :goto_8d
    return v1
.end method

.method private greylist-max-o showInputMethodPickerLocked()V
    .registers 3

    .line 4626
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/inputmethod/IInputMethodClient$Stub;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->showInputMethodPickerFromClient(Lcom/android/internal/inputmethod/IInputMethodClient;I)V

    .line 4628
    return-void
.end method

.method private blacklist showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;I)Z
    .registers 15
    .param p1, "view"    # Landroid/view/View;
    .param p2, "flags"    # I
    .param p3, "resultReceiver"    # Landroid/os/ResultReceiver;
    .param p4, "reason"    # I

    .line 2431
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    .line 2432
    invoke-static {p1}, Landroid/view/inputmethod/ImeTracker;->isFromUser(Landroid/view/View;)Z

    move-result v1

    .line 2431
    const/4 v2, 0x1

    const/4 v3, 0x5

    invoke-interface {v0, v2, v3, p4, v1}, Landroid/view/inputmethod/ImeTracker;->onStart(IIIZ)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v6

    .line 2433
    .local v6, "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    move-object v4, p0

    move-object v5, p1

    move v7, p2

    move-object v8, p3

    move v9, p4

    .end local p1    # "view":Landroid/view/View;
    .end local p2    # "flags":I
    .end local p3    # "resultReceiver":Landroid/os/ResultReceiver;
    .end local p4    # "reason":I
    .local v5, "view":Landroid/view/View;
    .local v7, "flags":I
    .local v8, "resultReceiver":Landroid/os/ResultReceiver;
    .local v9, "reason":I
    invoke-direct/range {v4 .. v9}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;I)Z

    move-result p1

    return p1
.end method

.method private blacklist showSoftInput(Landroid/view/View;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;I)Z
    .registers 17
    .param p1, "view"    # Landroid/view/View;
    .param p2, "statsToken"    # Landroid/view/inputmethod/ImeTracker$Token;
    .param p3, "flags"    # I
    .param p4, "resultReceiver"    # Landroid/os/ResultReceiver;
    .param p5, "reason"    # I

    .line 2439
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLatency()Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;

    move-result-object v0

    new-instance v1, Landroid/view/InsetsController$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Landroid/view/InsetsController$$ExternalSyntheticLambda2;-><init>()V

    const/4 v2, 0x5

    move/from16 v6, p5

    invoke-virtual {v0, p2, v2, v6, v1}, Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;->onRequestShow(Landroid/view/inputmethod/ImeTracker$Token;IILandroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;)V

    .line 2441
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    const-string v1, "InputMethodManager#showSoftInput"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    .line 2444
    invoke-direct/range {p0 .. p1}, Landroid/view/inputmethod/InputMethodManager;->getFallbackInputMethodManagerIfNecessary(Landroid/view/View;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 2445
    .local v1, "fallbackImm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_29

    .line 2446
    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;I)Z

    move-result v0

    move-object v9, v1

    .end local v1    # "fallbackImm":Landroid/view/inputmethod/InputMethodManager;
    .local v9, "fallbackImm":Landroid/view/inputmethod/InputMethodManager;
    return v0

    .line 2449
    .end local v9    # "fallbackImm":Landroid/view/inputmethod/InputMethodManager;
    .restart local v1    # "fallbackImm":Landroid/view/inputmethod/InputMethodManager;
    :cond_29
    move-object v5, p4

    move-object v9, v1

    .end local v1    # "fallbackImm":Landroid/view/inputmethod/InputMethodManager;
    .restart local v9    # "fallbackImm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 2450
    iget-object v10, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v10

    .line 2451
    :try_start_31
    invoke-direct/range {p0 .. p1}, Landroid/view/inputmethod/InputMethodManager;->hasServedByInputMethodLocked(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_6c

    .line 2452
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    invoke-interface {v0, p2, v4}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 2453
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLatency()Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;

    move-result-object v0

    new-instance v2, Landroid/view/InsetsController$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Landroid/view/InsetsController$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v0, p2, v4, v2}, Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;->onShowFailed(Landroid/view/inputmethod/ImeTracker$Token;ILandroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;)V

    .line 2455
    const-string v0, "InputMethodManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring showSoftInput() as view="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " is not served."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2456
    monitor-exit v10

    return v1

    .line 2459
    :cond_6c
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    invoke-interface {v0, p2, v4}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 2461
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v0

    if-eqz v0, :cond_e5

    .line 2462
    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 2467
    .local v0, "viewRootImpl":Landroid/view/ViewRootImpl;
    const/16 v6, 0x3d

    if-eqz v0, :cond_dc

    .line 2468
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getInsetsController()Landroid/view/InsetsController;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/InsetsController;->computeUserAnimatingTypes()I

    move-result v7

    .line 2469
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v8

    and-int/2addr v7, v8

    if-eqz v7, :cond_9a

    .line 2470
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getInsetsController()Landroid/view/InsetsController;

    move-result-object v7

    .line 2471
    invoke-virtual {v7}, Landroid/view/InsetsController;->isPredictiveBackImeHideAnimInProgress()Z

    move-result v7

    if-eqz v7, :cond_dc

    .line 2472
    :cond_9a
    invoke-virtual {p1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v7

    .line 2473
    .local v7, "vh":Landroid/os/Handler;
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v8

    invoke-interface {v8, p2, v6}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 2475
    if-eqz v5, :cond_ba

    .line 2476
    nop

    .line 2477
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v6

    .line 2476
    invoke-static {v6}, Landroid/view/inputmethod/InputMethodManager;->hasViewImeRequestedVisible(Landroid/view/View;)Z

    move-result v6

    .line 2478
    .local v6, "imeReqVisible":Z
    nop

    .line 2479
    if-eqz v6, :cond_b5

    move v8, v1

    goto :goto_b6

    .line 2480
    :cond_b5
    const/4 v8, 0x2

    :goto_b6
    nop

    .line 2478
    invoke-virtual {p4, v8, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 2483
    .end local v6    # "imeReqVisible":Z
    :cond_ba
    invoke-virtual {v7}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v6

    if-eq v2, v6, :cond_cf

    .line 2487
    move-object v1, p2

    .line 2488
    .local v1, "finalStatsToken":Landroid/view/inputmethod/ImeTracker$Token;
    new-instance v2, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda5;

    invoke-direct {v2, v0, v1}, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda5;-><init>(Landroid/view/ViewRootImpl;Landroid/view/inputmethod/ImeTracker$Token;)V

    invoke-virtual {v7, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2490
    nop

    .end local v1    # "finalStatsToken":Landroid/view/inputmethod/ImeTracker$Token;
    goto :goto_da

    .line 2491
    :cond_cf
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getInsetsController()Landroid/view/InsetsController;

    move-result-object v2

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v6

    invoke-virtual {v2, v6, v1, p2}, Landroid/view/InsetsController;->show(IZLandroid/view/inputmethod/ImeTracker$Token;)V

    .line 2494
    :goto_da
    monitor-exit v10

    return v4

    .line 2496
    .end local v7    # "vh":Landroid/os/Handler;
    :cond_dc
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v2

    invoke-interface {v2, p2, v6}, Landroid/view/inputmethod/ImeTracker;->onCancelled(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 2498
    monitor-exit v10

    return v1

    .line 2502
    .end local v0    # "viewRootImpl":Landroid/view/ViewRootImpl;
    :cond_e5
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    const/16 v2, 0x1f

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager$H;->executeOrSendMessage(Landroid/os/Message;)Z

    .line 2503
    const-string v0, "InputMethodManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showSoftInput() view="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " flags="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move v4, p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2504
    invoke-static/range {p5 .. p5}, Lcom/android/internal/inputmethod/InputMethodDebug;->softInputDisplayReasonToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2503
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2505
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/inputmethod/IInputMethodClient$Stub;

    .line 2507
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    .line 2510
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getLastClickToolType()I

    move-result v0

    iget-boolean v8, p0, Landroid/view/inputmethod/InputMethodManager;->mAsyncShowHideMethodEnabled:Z

    .line 2505
    move-object v3, p2

    move/from16 v7, p5

    move-object v6, v5

    move v5, v0

    invoke-static/range {v1 .. v8}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->showSoftInput(Lcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;IILandroid/os/ResultReceiver;IZ)Z

    move-result v0

    monitor-exit v10

    return v0

    .line 2515
    :catchall_13d
    move-exception v0

    monitor-exit v10
    :try_end_13f
    .catchall {:try_start_31 .. :try_end_13f} :catchall_13d

    throw v0
.end method

.method private blacklist startConnectionlessStylusHandwritingInternal(Landroid/view/View;Landroid/view/inputmethod/CursorAnchorInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/view/inputmethod/ConnectionlessHandwritingCallback;)V
    .registers 15
    .param p1, "view"    # Landroid/view/View;
    .param p2, "cursorAnchorInfo"    # Landroid/view/inputmethod/CursorAnchorInfo;
    .param p3, "delegatorPackageName"    # Ljava/lang/String;
    .param p4, "delegatePackageName"    # Ljava/lang/String;
    .param p5, "callbackExecutor"    # Ljava/util/concurrent/Executor;
    .param p6, "callback"    # Landroid/view/inputmethod/ConnectionlessHandwritingCallback;

    .line 2993
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2994
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2995
    invoke-static {p6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2997
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->getFallbackInputMethodManagerIfNecessary(Landroid/view/View;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 2998
    .local v1, "fallbackImm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_1b

    .line 2999
    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .end local p1    # "view":Landroid/view/View;
    .end local p2    # "cursorAnchorInfo":Landroid/view/inputmethod/CursorAnchorInfo;
    .end local p3    # "delegatorPackageName":Ljava/lang/String;
    .end local p4    # "delegatePackageName":Ljava/lang/String;
    .end local p5    # "callbackExecutor":Ljava/util/concurrent/Executor;
    .end local p6    # "callback":Landroid/view/inputmethod/ConnectionlessHandwritingCallback;
    .local v2, "view":Landroid/view/View;
    .local v3, "cursorAnchorInfo":Landroid/view/inputmethod/CursorAnchorInfo;
    .local v4, "delegatorPackageName":Ljava/lang/String;
    .local v5, "delegatePackageName":Ljava/lang/String;
    .local v6, "callbackExecutor":Ljava/util/concurrent/Executor;
    .local v7, "callback":Landroid/view/inputmethod/ConnectionlessHandwritingCallback;
    invoke-direct/range {v1 .. v7}, Landroid/view/inputmethod/InputMethodManager;->startConnectionlessStylusHandwritingInternal(Landroid/view/View;Landroid/view/inputmethod/CursorAnchorInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/view/inputmethod/ConnectionlessHandwritingCallback;)V

    move-object p3, v3

    move-object p5, v4

    .end local v3    # "cursorAnchorInfo":Landroid/view/inputmethod/CursorAnchorInfo;
    .end local v4    # "delegatorPackageName":Ljava/lang/String;
    .end local v5    # "delegatePackageName":Ljava/lang/String;
    .local p3, "cursorAnchorInfo":Landroid/view/inputmethod/CursorAnchorInfo;
    .restart local p4    # "delegatePackageName":Ljava/lang/String;
    .local p5, "delegatorPackageName":Ljava/lang/String;
    goto :goto_20

    .line 2998
    .end local v2    # "view":Landroid/view/View;
    .end local v6    # "callbackExecutor":Ljava/util/concurrent/Executor;
    .end local v7    # "callback":Landroid/view/inputmethod/ConnectionlessHandwritingCallback;
    .restart local p1    # "view":Landroid/view/View;
    .restart local p2    # "cursorAnchorInfo":Landroid/view/inputmethod/CursorAnchorInfo;
    .local p3, "delegatorPackageName":Ljava/lang/String;
    .local p5, "callbackExecutor":Ljava/util/concurrent/Executor;
    .restart local p6    # "callback":Landroid/view/inputmethod/ConnectionlessHandwritingCallback;
    :cond_1b
    move-object v2, p1

    move-object v6, p5

    move-object v7, p6

    move-object p5, p3

    move-object p3, p2

    .line 3003
    .end local p1    # "view":Landroid/view/View;
    .end local p2    # "cursorAnchorInfo":Landroid/view/inputmethod/CursorAnchorInfo;
    .end local p6    # "callback":Landroid/view/inputmethod/ConnectionlessHandwritingCallback;
    .restart local v2    # "view":Landroid/view/View;
    .restart local v6    # "callbackExecutor":Ljava/util/concurrent/Executor;
    .restart local v7    # "callback":Landroid/view/inputmethod/ConnectionlessHandwritingCallback;
    .local p3, "cursorAnchorInfo":Landroid/view/inputmethod/CursorAnchorInfo;
    .local p5, "delegatorPackageName":Ljava/lang/String;
    :goto_20
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 3004
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v3

    .line 3005
    :try_start_26
    invoke-virtual {v2}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p1

    iget-object p2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    if-eq p1, p2, :cond_37

    .line 3006
    const-string p1, "InputMethodManager"

    const-string p2, "Ignoring startConnectionlessStylusHandwriting: View\'s window does not have focus."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3008
    monitor-exit v3

    return-void

    .line 3010
    :cond_37
    iget-object p1, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/inputmethod/IInputMethodClient$Stub;

    .line 3011
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p2

    new-instance p6, Landroid/view/inputmethod/InputMethodManager$ConnectionlessHandwritingCallbackProxy;

    invoke-direct {p6, v6, v7}, Landroid/view/inputmethod/InputMethodManager$ConnectionlessHandwritingCallbackProxy;-><init>(Ljava/util/concurrent/Executor;Landroid/view/inputmethod/ConnectionlessHandwritingCallback;)V

    .line 3010
    invoke-static/range {p1 .. p6}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->startConnectionlessStylusHandwriting(Lcom/android/internal/inputmethod/IInputMethodClient;ILandroid/view/inputmethod/CursorAnchorInfo;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;)Z

    .line 3014
    monitor-exit v3

    .line 3015
    return-void

    .line 3014
    :catchall_47
    move-exception v0

    move-object p1, v0

    monitor-exit v3
    :try_end_4a
    .catchall {:try_start_26 .. :try_end_4a} :catchall_47

    throw p1
.end method

.method private greylist-max-o startInputInner(ILandroid/os/IBinder;III)Z
    .registers 39
    .param p1, "startInputReason"    # I
    .param p2, "windowGainingFocus"    # Landroid/os/IBinder;
    .param p3, "startInputFlags"    # I
    .param p4, "softInputMode"    # I
    .param p5, "windowFlags"    # I

    .line 3405
    move-object/from16 v1, p0

    move/from16 v3, p1

    iget-object v2, v1, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    .line 3406
    :try_start_7
    invoke-direct {v1}, Landroid/view/inputmethod/InputMethodManager;->getServedViewLocked()Landroid/view/View;

    move-result-object v0

    move-object v15, v0

    .line 3413
    .local v15, "view":Landroid/view/View;
    const/4 v7, 0x0

    if-nez v15, :cond_11

    .line 3415
    monitor-exit v2

    return v7

    .line 3417
    :cond_11
    monitor-exit v2
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_4dd

    .line 3423
    invoke-virtual {v15}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v8

    .line 3424
    .local v8, "vh":Landroid/os/Handler;
    if-nez v8, :cond_1c

    .line 3430
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->closeCurrentInput()V

    .line 3431
    return v7

    .line 3433
    :cond_1c
    invoke-virtual {v8}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v0, v2, :cond_2f

    .line 3437
    new-instance v0, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda4;

    invoke-direct {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda4;-><init>(Landroid/view/inputmethod/InputMethodManager;I)V

    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3438
    return v7

    .line 3441
    :cond_2f
    if-nez p2, :cond_59

    .line 3442
    invoke-virtual {v15}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    .line 3443
    .end local p2    # "windowGainingFocus":Landroid/os/IBinder;
    .local v0, "windowGainingFocus":Landroid/os/IBinder;
    if-nez v0, :cond_3f

    .line 3444
    const-string v2, "InputMethodManager"

    const-string v4, "ABORT input: ServedView must be attached to a Window"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3445
    return v7

    .line 3447
    :cond_3f
    move/from16 v4, p3

    invoke-direct {v1, v15, v4}, Landroid/view/inputmethod/InputMethodManager;->getStartInputFlags(Landroid/view/View;I)I

    move-result v2

    .line 3448
    .end local p3    # "startInputFlags":I
    .local v2, "startInputFlags":I
    invoke-virtual {v15}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v4

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 3449
    .end local p4    # "softInputMode":I
    .local v4, "softInputMode":I
    invoke-virtual {v15}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v5

    iget-object v5, v5, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    move-object v9, v0

    move v6, v5

    move v5, v4

    .end local p5    # "windowFlags":I
    .local v5, "windowFlags":I
    goto :goto_62

    .line 3441
    .end local v0    # "windowGainingFocus":Landroid/os/IBinder;
    .end local v2    # "startInputFlags":I
    .end local v4    # "softInputMode":I
    .end local v5    # "windowFlags":I
    .restart local p2    # "windowGainingFocus":Landroid/os/IBinder;
    .restart local p3    # "startInputFlags":I
    .restart local p4    # "softInputMode":I
    .restart local p5    # "windowFlags":I
    :cond_59
    move/from16 v4, p3

    move-object/from16 v9, p2

    move/from16 v5, p4

    move/from16 v6, p5

    move v2, v4

    .line 3455
    .end local p2    # "windowGainingFocus":Landroid/os/IBinder;
    .end local p3    # "startInputFlags":I
    .end local p4    # "softInputMode":I
    .end local p5    # "windowFlags":I
    .restart local v2    # "startInputFlags":I
    .local v5, "softInputMode":I
    .local v6, "windowFlags":I
    .local v9, "windowGainingFocus":Landroid/os/IBinder;
    :goto_62
    invoke-static {v15}, Landroid/view/inputmethod/InputMethodManager;->createInputConnection(Landroid/view/View;)Landroid/util/Pair;

    move-result-object v10

    .line 3456
    .local v10, "connectionPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;>;"
    iget-object v0, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Landroid/view/inputmethod/InputConnection;

    .line 3457
    .local v11, "ic":Landroid/view/inputmethod/InputConnection;
    iget-object v0, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/view/inputmethod/EditorInfo;

    .line 3459
    .local v12, "editorInfo":Landroid/view/inputmethod/EditorInfo;
    const/16 v16, 0x0

    .line 3462
    .local v16, "res":Lcom/android/internal/inputmethod/InputBindResult;
    iget-object v13, v1, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v13

    .line 3465
    :try_start_75
    invoke-direct {v1}, Landroid/view/inputmethod/InputMethodManager;->getServedViewLocked()Landroid/view/View;

    move-result-object v0

    move-object v14, v0

    .line 3466
    .local v14, "servedView":Landroid/view/View;
    if-ne v14, v15, :cond_4a0

    iget-boolean v0, v1, Landroid/view/inputmethod/InputMethodManager;->mServedConnecting:Z

    if-nez v0, :cond_96

    move-object/from16 v19, v11

    move v11, v5

    move-object/from16 v5, v19

    move/from16 v19, v7

    move-object/from16 v24, v8

    move-object/from16 v25, v10

    move-object v7, v12

    move-object/from16 v27, v13

    move-object/from16 v28, v14

    move v12, v6

    move-object v10, v9

    move v9, v3

    move-object v3, v15

    goto/16 :goto_4b4

    .line 3484
    :cond_96
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager;->mCurrentEditorInfo:Landroid/view/inputmethod/EditorInfo;
    :try_end_98
    .catchall {:try_start_75 .. :try_end_98} :catchall_4ca

    if-nez v0, :cond_9e

    .line 3485
    or-int/lit8 v2, v2, 0x4

    move v4, v2

    goto :goto_9f

    .line 3484
    :cond_9e
    move v4, v2

    .line 3488
    .end local v2    # "startInputFlags":I
    .local v4, "startInputFlags":I
    :goto_9f
    :try_start_9f
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getLastClickToolType()I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/view/inputmethod/EditorInfo;->setInitialToolType(I)V

    .line 3491
    invoke-virtual {v12}, Landroid/view/inputmethod/EditorInfo;->createCopyInternal()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    iput-object v0, v1, Landroid/view/inputmethod/InputMethodManager;->mCurrentEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 3494
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    move-object/from16 v17, v0

    .line 3496
    .local v17, "previouslyServedConnection":Landroid/view/inputmethod/RemoteInputConnectionImpl;
    iput-boolean v7, v1, Landroid/view/inputmethod/InputMethodManager;->mServedConnecting:Z

    .line 3497
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;
    :try_end_b6
    .catchall {:try_start_9f .. :try_end_b6} :catchall_48a

    const/4 v2, 0x0

    if-eqz v0, :cond_d5

    .line 3498
    :try_start_b9
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-virtual {v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->deactivate()V

    .line 3499
    iput-object v2, v1, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    .line 3500
    iput-object v2, v1, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnectionHandler:Landroid/os/Handler;

    goto :goto_d5

    .line 3652
    .end local v14    # "servedView":Landroid/view/View;
    .end local v17    # "previouslyServedConnection":Landroid/view/inputmethod/RemoteInputConnectionImpl;
    :catchall_c3
    move-exception v0

    move-object v2, v11

    move v11, v5

    move-object v5, v2

    move v2, v4

    move-object/from16 v24, v8

    move-object/from16 v25, v10

    move-object v7, v12

    move-object/from16 v27, v13

    move v12, v6

    move-object v10, v9

    move v9, v3

    move-object v3, v15

    goto/16 :goto_4d9

    .line 3503
    .restart local v14    # "servedView":Landroid/view/View;
    .restart local v17    # "previouslyServedConnection":Landroid/view/inputmethod/RemoteInputConnectionImpl;
    :cond_d5
    :goto_d5
    if-eqz v11, :cond_119

    .line 3504
    iget v0, v12, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    iput v0, v1, Landroid/view/inputmethod/InputMethodManager;->mCursorSelStart:I

    .line 3505
    iget v0, v12, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    iput v0, v1, Landroid/view/inputmethod/InputMethodManager;->mCursorSelEnd:I

    .line 3506
    iget v0, v1, Landroid/view/inputmethod/InputMethodManager;->mCursorSelStart:I

    iput v0, v1, Landroid/view/inputmethod/InputMethodManager;->mInitialSelStart:I

    .line 3507
    iget v0, v1, Landroid/view/inputmethod/InputMethodManager;->mCursorSelEnd:I

    iput v0, v1, Landroid/view/inputmethod/InputMethodManager;->mInitialSelEnd:I

    .line 3508
    const/4 v0, -0x1

    iput v0, v1, Landroid/view/inputmethod/InputMethodManager;->mCursorCandStart:I

    .line 3509
    iput v0, v1, Landroid/view/inputmethod/InputMethodManager;->mCursorCandEnd:I

    .line 3510
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager;->mCursorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 3511
    iput-object v2, v1, Landroid/view/inputmethod/InputMethodManager;->mCursorAnchorInfo:Landroid/view/inputmethod/CursorAnchorInfo;
    :try_end_f3
    .catchall {:try_start_b9 .. :try_end_f3} :catchall_c3

    .line 3512
    const/16 v18, 0x0

    .line 3514
    .local v18, "handler":Landroid/os/Handler;
    :try_start_f5
    invoke-interface {v11}, Landroid/view/inputmethod/InputConnection;->getHandler()Landroid/os/Handler;

    move-result-object v0
    :try_end_f9
    .catch Ljava/lang/AbstractMethodError; {:try_start_f5 .. :try_end_f9} :catch_fc
    .catchall {:try_start_f5 .. :try_end_f9} :catchall_c3

    move-object/from16 v18, v0

    .line 3517
    goto :goto_fd

    .line 3515
    :catch_fc
    move-exception v0

    .line 3518
    :goto_fd
    move-object/from16 v0, v18

    .line 3519
    .local v0, "icHandler":Landroid/os/Handler;
    :try_start_ff
    iput-object v0, v1, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnectionHandler:Landroid/os/Handler;

    .line 3520
    move/from16 v19, v7

    new-instance v7, Landroid/view/inputmethod/RemoteInputConnectionImpl;

    .line 3521
    if-eqz v0, :cond_10c

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v20

    goto :goto_110

    :cond_10c
    invoke-virtual {v8}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v20

    :goto_110
    move-object/from16 v2, v20

    invoke-direct {v7, v2, v11, v1, v15}, Landroid/view/inputmethod/RemoteInputConnectionImpl;-><init>(Landroid/os/Looper;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/InputMethodManager;Landroid/view/View;)V
    :try_end_115
    .catchall {:try_start_ff .. :try_end_115} :catchall_c3

    .line 3522
    .end local v18    # "handler":Landroid/os/Handler;
    .local v7, "servedInputConnection":Landroid/view/inputmethod/RemoteInputConnectionImpl;
    const/4 v2, 0x0

    move-object/from16 v18, v0

    goto :goto_122

    .line 3523
    .end local v0    # "icHandler":Landroid/os/Handler;
    .end local v7    # "servedInputConnection":Landroid/view/inputmethod/RemoteInputConnectionImpl;
    :cond_119
    move/from16 v19, v7

    const/4 v7, 0x0

    .line 3524
    .restart local v7    # "servedInputConnection":Landroid/view/inputmethod/RemoteInputConnectionImpl;
    const/4 v0, 0x0

    .line 3525
    .restart local v0    # "icHandler":Landroid/os/Handler;
    const/4 v2, 0x0

    :try_start_11e
    iput-object v2, v1, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnectionHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    .line 3527
    .end local v0    # "icHandler":Landroid/os/Handler;
    .local v18, "icHandler":Landroid/os/Handler;
    :goto_122
    iput-object v7, v1, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    .line 3529
    invoke-static {v14}, Landroid/view/inputmethod/InputMethodManager;->hasViewImeRequestedVisible(Landroid/view/View;)Z

    move-result v0

    move/from16 v20, v0

    .line 3539
    .local v20, "imeRequestedVisible":Z
    sget-boolean v0, Landroid/view/inputmethod/InputMethodManager;->OPTIMIZE_NONEDITABLE_VIEWS:Z
    :try_end_12c
    .catchall {:try_start_11e .. :try_end_12c} :catchall_48a

    move-object/from16 v21, v15

    .end local v15    # "view":Landroid/view/View;
    .local v21, "view":Landroid/view/View;
    if-eqz v0, :cond_181

    if-nez v17, :cond_181

    if-nez v11, :cond_181

    move-object/from16 v22, v2

    :try_start_136
    iget-object v2, v1, Landroid/view/inputmethod/InputMethodManager;->mPreviousViewFocusParameters:Landroid/view/inputmethod/ViewFocusParameterInfo;
    :try_end_138
    .catchall {:try_start_136 .. :try_end_138} :catchall_167

    .line 3542
    move/from16 p2, v4

    move v4, v3

    move/from16 v3, p2

    move-object/from16 v15, v22

    const/16 p2, 0x1

    .end local v4    # "startInputFlags":I
    .local v3, "startInputFlags":I
    :try_start_141
    invoke-direct/range {v1 .. v6}, Landroid/view/inputmethod/InputMethodManager;->isSwitchingBetweenEquivalentNonEditableViews(Landroid/view/inputmethod/ViewFocusParameterInfo;IIII)Z

    move-result v0
    :try_end_145
    .catchall {:try_start_141 .. :try_end_145} :catchall_14e

    move v4, v6

    move-object v6, v1

    move v1, v4

    move v4, v3

    .end local v3    # "startInputFlags":I
    .end local v6    # "windowFlags":I
    .local v1, "windowFlags":I
    .restart local v4    # "startInputFlags":I
    if-eqz v0, :cond_189

    move/from16 v0, p2

    goto :goto_18b

    .line 3652
    .end local v1    # "windowFlags":I
    .end local v4    # "startInputFlags":I
    .end local v7    # "servedInputConnection":Landroid/view/inputmethod/RemoteInputConnectionImpl;
    .end local v14    # "servedView":Landroid/view/View;
    .end local v17    # "previouslyServedConnection":Landroid/view/inputmethod/RemoteInputConnectionImpl;
    .end local v18    # "icHandler":Landroid/os/Handler;
    .end local v20    # "imeRequestedVisible":Z
    .restart local v3    # "startInputFlags":I
    .restart local v6    # "windowFlags":I
    :catchall_14e
    move-exception v0

    move v4, v6

    move-object v6, v1

    move v1, v4

    move v4, v3

    move-object v2, v11

    move v11, v5

    move-object v5, v2

    move v2, v4

    move-object/from16 v24, v8

    move-object/from16 v25, v10

    move-object v7, v12

    move-object/from16 v27, v13

    move-object/from16 v3, v21

    move v12, v1

    move-object v1, v6

    move-object v10, v9

    move/from16 v9, p1

    .end local v3    # "startInputFlags":I
    .end local v6    # "windowFlags":I
    .restart local v1    # "windowFlags":I
    .restart local v4    # "startInputFlags":I
    goto/16 :goto_4d9

    .end local v1    # "windowFlags":I
    .restart local v6    # "windowFlags":I
    :catchall_167
    move-exception v0

    move/from16 v32, v6

    move-object v6, v1

    move/from16 v1, v32

    move-object v2, v11

    move v11, v5

    move-object v5, v2

    move v2, v4

    move-object/from16 v24, v8

    move-object/from16 v25, v10

    move-object v7, v12

    move-object/from16 v27, v13

    move-object/from16 v3, v21

    move v12, v1

    move-object v1, v6

    move-object v10, v9

    move/from16 v9, p1

    .end local v6    # "windowFlags":I
    .restart local v1    # "windowFlags":I
    goto/16 :goto_4d9

    .line 3539
    .end local v1    # "windowFlags":I
    .restart local v6    # "windowFlags":I
    .restart local v7    # "servedInputConnection":Landroid/view/inputmethod/RemoteInputConnectionImpl;
    .restart local v14    # "servedView":Landroid/view/View;
    .restart local v17    # "previouslyServedConnection":Landroid/view/inputmethod/RemoteInputConnectionImpl;
    .restart local v18    # "icHandler":Landroid/os/Handler;
    .restart local v20    # "imeRequestedVisible":Z
    :cond_181
    move/from16 p2, v6

    move-object v6, v1

    move/from16 v1, p2

    move-object v15, v2

    const/16 p2, 0x1

    .line 3542
    .end local v6    # "windowFlags":I
    .restart local v1    # "windowFlags":I
    :cond_189
    move/from16 v0, v19

    :goto_18b
    move/from16 v22, v0

    .line 3545
    .local v22, "canSkip":Z
    :try_start_18d
    new-instance v0, Landroid/view/inputmethod/ViewFocusParameterInfo;
    :try_end_18f
    .catchall {:try_start_18d .. :try_end_18f} :catchall_470

    move v2, v4

    move v4, v5

    move v5, v1

    .end local v1    # "windowFlags":I
    .restart local v2    # "startInputFlags":I
    .local v4, "softInputMode":I
    .local v5, "windowFlags":I
    :try_start_192
    iget-object v1, v6, Landroid/view/inputmethod/InputMethodManager;->mCurrentEditorInfo:Landroid/view/inputmethod/EditorInfo;
    :try_end_194
    .catchall {:try_start_192 .. :try_end_194} :catchall_45b

    move/from16 v3, p1

    :try_start_196
    invoke-direct/range {v0 .. v5}, Landroid/view/inputmethod/ViewFocusParameterInfo;-><init>(Landroid/view/inputmethod/EditorInfo;IIII)V
    :try_end_199
    .catchall {:try_start_196 .. :try_end_199} :catchall_448

    move v1, v5

    move v5, v4

    move v4, v2

    .end local v2    # "startInputFlags":I
    .restart local v1    # "windowFlags":I
    .local v4, "startInputFlags":I
    .local v5, "softInputMode":I
    :try_start_19c
    iput-object v0, v6, Landroid/view/inputmethod/InputMethodManager;->mPreviousViewFocusParameters:Landroid/view/inputmethod/ViewFocusParameterInfo;
    :try_end_19e
    .catchall {:try_start_19c .. :try_end_19e} :catchall_470

    .line 3547
    if-eqz v22, :cond_1b7

    .line 3551
    :try_start_1a0
    monitor-exit v13
    :try_end_1a1
    .catchall {:try_start_1a0 .. :try_end_1a1} :catchall_1a2

    return v19

    .line 3652
    .end local v7    # "servedInputConnection":Landroid/view/inputmethod/RemoteInputConnectionImpl;
    .end local v14    # "servedView":Landroid/view/View;
    .end local v17    # "previouslyServedConnection":Landroid/view/inputmethod/RemoteInputConnectionImpl;
    .end local v18    # "icHandler":Landroid/os/Handler;
    .end local v20    # "imeRequestedVisible":Z
    .end local v22    # "canSkip":Z
    :catchall_1a2
    move-exception v0

    move-object v2, v11

    move v11, v5

    move-object v5, v2

    move v2, v4

    move-object/from16 v24, v8

    move-object/from16 v25, v10

    move-object v7, v12

    move-object/from16 v27, v13

    move-object/from16 v3, v21

    move v12, v1

    move-object v1, v6

    move-object v10, v9

    move/from16 v9, p1

    goto/16 :goto_4d9

    .line 3553
    .restart local v7    # "servedInputConnection":Landroid/view/inputmethod/RemoteInputConnectionImpl;
    .restart local v14    # "servedView":Landroid/view/View;
    .restart local v17    # "previouslyServedConnection":Landroid/view/inputmethod/RemoteInputConnectionImpl;
    .restart local v18    # "icHandler":Landroid/os/Handler;
    .restart local v20    # "imeRequestedVisible":Z
    .restart local v22    # "canSkip":Z
    :cond_1b7
    :try_start_1b7
    iget-object v0, v12, Landroid/view/inputmethod/EditorInfo;->targetInputMethodUser:Landroid/os/UserHandle;
    :try_end_1b9
    .catchall {:try_start_1b7 .. :try_end_1b9} :catchall_470

    if-eqz v0, :cond_1c2

    .line 3554
    :try_start_1bb
    iget-object v0, v12, Landroid/view/inputmethod/EditorInfo;->targetInputMethodUser:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0
    :try_end_1c1
    .catchall {:try_start_1bb .. :try_end_1c1} :catchall_1a2

    goto :goto_1c6

    :cond_1c2
    :try_start_1c2
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 3555
    .local v0, "targetUserId":I
    :goto_1c6
    const-string v2, "IMM.startInputOrWindowGainedFocus"
    :try_end_1c8
    .catchall {:try_start_1c2 .. :try_end_1c8} :catchall_470

    move/from16 p4, v0

    move/from16 p3, v1

    .end local v0    # "targetUserId":I
    .end local v1    # "windowFlags":I
    .local p3, "windowFlags":I
    .local p4, "targetUserId":I
    const-wide/16 v0, 0x20

    :try_start_1ce
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3557
    const/16 v23, -0x1

    .line 3558
    .local v23, "startInputSeq":I
    invoke-static {}, Landroid/view/inputmethod/Flags;->useZeroJankProxy()Z

    move-result v2
    :try_end_1d7
    .catchall {:try_start_1ce .. :try_end_1d7} :catchall_42d

    if-eqz v2, :cond_266

    .line 3560
    :try_start_1d9
    iget-object v2, v6, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/inputmethod/IInputMethodClient$Stub;

    .line 3563
    if-nez v7, :cond_1df

    move-object v3, v15

    goto :goto_1e3

    .line 3564
    :cond_1df
    invoke-virtual {v7}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->asIRemoteAccessibilityInputConnection()Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    move-result-object v3

    .line 3565
    :goto_1e3
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_1ed
    .catchall {:try_start_1d9 .. :try_end_1ed} :catchall_24b

    move-object v1, v8

    move-object v8, v7

    move-object v7, v12

    .end local v12    # "editorInfo":Landroid/view/inputmethod/EditorInfo;
    .local v1, "vh":Landroid/os/Handler;
    .local v7, "editorInfo":Landroid/view/inputmethod/EditorInfo;
    .local v8, "servedInputConnection":Landroid/view/inputmethod/RemoteInputConnectionImpl;
    :try_start_1f0
    iget-object v12, v6, Landroid/view/inputmethod/InputMethodManager;->mImeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;

    move-object/from16 v24, v14

    .end local v14    # "servedView":Landroid/view/View;
    .local v24, "servedView":Landroid/view/View;
    iget-boolean v14, v6, Landroid/view/inputmethod/InputMethodManager;->mAsyncShowHideMethodEnabled:Z
    :try_end_1f6
    .catchall {:try_start_1f0 .. :try_end_1f6} :catchall_231

    .line 3560
    move-object v15, v9

    move-object v9, v3

    move-object v3, v15

    move-object v15, v6

    move-object/from16 v25, v10

    move-object/from16 v26, v11

    move-object/from16 v27, v13

    move/from16 v13, v20

    move-object/from16 v28, v24

    const-wide/16 v29, 0x20

    move/from16 v6, p3

    move/from16 v11, p4

    move v10, v0

    move-object/from16 v24, v1

    move/from16 v1, p1

    .end local v1    # "vh":Landroid/os/Handler;
    .end local v9    # "windowGainingFocus":Landroid/os/IBinder;
    .end local v10    # "connectionPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;>;"
    .end local v20    # "imeRequestedVisible":Z
    .end local p3    # "windowFlags":I
    .end local p4    # "targetUserId":I
    .local v3, "windowGainingFocus":Landroid/os/IBinder;
    .restart local v6    # "windowFlags":I
    .local v11, "targetUserId":I
    .local v13, "imeRequestedVisible":Z
    .local v24, "vh":Landroid/os/Handler;
    .local v25, "connectionPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;>;"
    .local v26, "ic":Landroid/view/inputmethod/InputConnection;
    .local v28, "servedView":Landroid/view/View;
    :try_start_20f
    invoke-static/range {v1 .. v14}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->startInputOrWindowGainedFocusAsync(ILcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteInputConnection;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;IILandroid/window/ImeOnBackInvokedDispatcher;ZZ)I

    move-result v0
    :try_end_213
    .catchall {:try_start_20f .. :try_end_213} :catchall_223

    move/from16 v23, v0

    move/from16 v9, p1

    move-object v10, v3

    move v12, v6

    move/from16 v31, v11

    move v14, v13

    move v11, v5

    move-object v13, v8

    move v8, v4

    move/from16 v2, v23

    goto/16 :goto_2a6

    .line 3652
    .end local v8    # "servedInputConnection":Landroid/view/inputmethod/RemoteInputConnectionImpl;
    .end local v11    # "targetUserId":I
    .end local v13    # "imeRequestedVisible":Z
    .end local v17    # "previouslyServedConnection":Landroid/view/inputmethod/RemoteInputConnectionImpl;
    .end local v18    # "icHandler":Landroid/os/Handler;
    .end local v22    # "canSkip":Z
    .end local v23    # "startInputSeq":I
    .end local v28    # "servedView":Landroid/view/View;
    :catchall_223
    move-exception v0

    move/from16 v9, p1

    move-object v10, v3

    move v2, v4

    move v11, v5

    move v12, v6

    move-object v1, v15

    move-object/from16 v3, v21

    move-object/from16 v5, v26

    goto/16 :goto_4d9

    .end local v3    # "windowGainingFocus":Landroid/os/IBinder;
    .end local v6    # "windowFlags":I
    .end local v24    # "vh":Landroid/os/Handler;
    .end local v25    # "connectionPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;>;"
    .end local v26    # "ic":Landroid/view/inputmethod/InputConnection;
    .restart local v1    # "vh":Landroid/os/Handler;
    .restart local v9    # "windowGainingFocus":Landroid/os/IBinder;
    .restart local v10    # "connectionPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;>;"
    .local v11, "ic":Landroid/view/inputmethod/InputConnection;
    .restart local p3    # "windowFlags":I
    :catchall_231
    move-exception v0

    move-object/from16 v24, v1

    move-object v15, v6

    move-object v3, v9

    move-object/from16 v25, v10

    move-object/from16 v26, v11

    move-object/from16 v27, v13

    move/from16 v6, p3

    move/from16 v9, p1

    move-object v10, v3

    move v2, v4

    move v11, v5

    move v12, v6

    move-object v1, v15

    move-object/from16 v3, v21

    move-object/from16 v5, v26

    .end local v1    # "vh":Landroid/os/Handler;
    .end local v9    # "windowGainingFocus":Landroid/os/IBinder;
    .end local v10    # "connectionPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;>;"
    .end local v11    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local p3    # "windowFlags":I
    .restart local v3    # "windowGainingFocus":Landroid/os/IBinder;
    .restart local v6    # "windowFlags":I
    .restart local v24    # "vh":Landroid/os/Handler;
    .restart local v25    # "connectionPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;>;"
    .restart local v26    # "ic":Landroid/view/inputmethod/InputConnection;
    goto/16 :goto_4d9

    .end local v3    # "windowGainingFocus":Landroid/os/IBinder;
    .end local v6    # "windowFlags":I
    .end local v7    # "editorInfo":Landroid/view/inputmethod/EditorInfo;
    .end local v24    # "vh":Landroid/os/Handler;
    .end local v25    # "connectionPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;>;"
    .end local v26    # "ic":Landroid/view/inputmethod/InputConnection;
    .local v8, "vh":Landroid/os/Handler;
    .restart local v9    # "windowGainingFocus":Landroid/os/IBinder;
    .restart local v10    # "connectionPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;>;"
    .restart local v11    # "ic":Landroid/view/inputmethod/InputConnection;
    .restart local v12    # "editorInfo":Landroid/view/inputmethod/EditorInfo;
    .restart local p3    # "windowFlags":I
    :catchall_24b
    move-exception v0

    move-object v15, v6

    move-object/from16 v24, v8

    move-object v3, v9

    move-object/from16 v25, v10

    move-object/from16 v26, v11

    move-object v7, v12

    move-object/from16 v27, v13

    move/from16 v6, p3

    move/from16 v9, p1

    move-object v10, v3

    move v2, v4

    move v11, v5

    move v12, v6

    move-object v1, v15

    move-object/from16 v3, v21

    move-object/from16 v5, v26

    .end local v8    # "vh":Landroid/os/Handler;
    .end local v9    # "windowGainingFocus":Landroid/os/IBinder;
    .end local v10    # "connectionPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;>;"
    .end local v11    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v12    # "editorInfo":Landroid/view/inputmethod/EditorInfo;
    .end local p3    # "windowFlags":I
    .restart local v3    # "windowGainingFocus":Landroid/os/IBinder;
    .restart local v6    # "windowFlags":I
    .restart local v7    # "editorInfo":Landroid/view/inputmethod/EditorInfo;
    .restart local v24    # "vh":Landroid/os/Handler;
    .restart local v25    # "connectionPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;>;"
    .restart local v26    # "ic":Landroid/view/inputmethod/InputConnection;
    goto/16 :goto_4d9

    .line 3568
    .end local v3    # "windowGainingFocus":Landroid/os/IBinder;
    .end local v6    # "windowFlags":I
    .end local v24    # "vh":Landroid/os/Handler;
    .end local v25    # "connectionPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;>;"
    .end local v26    # "ic":Landroid/view/inputmethod/InputConnection;
    .local v7, "servedInputConnection":Landroid/view/inputmethod/RemoteInputConnectionImpl;
    .restart local v8    # "vh":Landroid/os/Handler;
    .restart local v9    # "windowGainingFocus":Landroid/os/IBinder;
    .restart local v10    # "connectionPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;>;"
    .restart local v11    # "ic":Landroid/view/inputmethod/InputConnection;
    .restart local v12    # "editorInfo":Landroid/view/inputmethod/EditorInfo;
    .restart local v14    # "servedView":Landroid/view/View;
    .restart local v17    # "previouslyServedConnection":Landroid/view/inputmethod/RemoteInputConnectionImpl;
    .restart local v18    # "icHandler":Landroid/os/Handler;
    .restart local v20    # "imeRequestedVisible":Z
    .restart local v22    # "canSkip":Z
    .restart local v23    # "startInputSeq":I
    .restart local p3    # "windowFlags":I
    .restart local p4    # "targetUserId":I
    :cond_266
    move-wide/from16 v29, v0

    move-object v15, v6

    move-object/from16 v24, v8

    move-object v3, v9

    move-object/from16 v25, v10

    move-object/from16 v26, v11

    move-object/from16 v27, v13

    move-object/from16 v28, v14

    move/from16 v13, v20

    move/from16 v6, p3

    move/from16 v11, p4

    move-object v8, v7

    move-object v7, v12

    .end local v9    # "windowGainingFocus":Landroid/os/IBinder;
    .end local v10    # "connectionPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;>;"
    .end local v12    # "editorInfo":Landroid/view/inputmethod/EditorInfo;
    .end local v14    # "servedView":Landroid/view/View;
    .end local v20    # "imeRequestedVisible":Z
    .end local p3    # "windowFlags":I
    .end local p4    # "targetUserId":I
    .restart local v3    # "windowGainingFocus":Landroid/os/IBinder;
    .restart local v6    # "windowFlags":I
    .local v7, "editorInfo":Landroid/view/inputmethod/EditorInfo;
    .local v8, "servedInputConnection":Landroid/view/inputmethod/RemoteInputConnectionImpl;
    .local v11, "targetUserId":I
    .restart local v13    # "imeRequestedVisible":Z
    .restart local v24    # "vh":Landroid/os/Handler;
    .restart local v25    # "connectionPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;>;"
    .restart local v26    # "ic":Landroid/view/inputmethod/InputConnection;
    .restart local v28    # "servedView":Landroid/view/View;
    :try_start_27c
    iget-object v2, v15, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/inputmethod/IInputMethodClient$Stub;

    .line 3571
    if-nez v8, :cond_282

    const/4 v9, 0x0

    goto :goto_287

    .line 3572
    :cond_282
    invoke-virtual {v8}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->asIRemoteAccessibilityInputConnection()Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    move-result-object v0

    move-object v9, v0

    .line 3573
    :goto_287
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v10, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iget-object v12, v15, Landroid/view/inputmethod/InputMethodManager;->mImeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;
    :try_end_293
    .catchall {:try_start_27c .. :try_end_293} :catchall_41c

    .line 3568
    move/from16 v1, p1

    :try_start_295
    invoke-static/range {v1 .. v13}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->startInputOrWindowGainedFocus(ILcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteInputConnection;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;IILandroid/window/ImeOnBackInvokedDispatcher;Z)Lcom/android/internal/inputmethod/InputBindResult;

    move-result-object v0
    :try_end_299
    .catchall {:try_start_295 .. :try_end_299} :catchall_419

    move v9, v1

    move-object v10, v3

    move v12, v6

    move/from16 v31, v11

    move v14, v13

    move v11, v5

    move-object v13, v8

    move v8, v4

    .end local v3    # "windowGainingFocus":Landroid/os/IBinder;
    .end local v4    # "startInputFlags":I
    .end local v5    # "softInputMode":I
    .end local v6    # "windowFlags":I
    .local v8, "startInputFlags":I
    .local v10, "windowGainingFocus":Landroid/os/IBinder;
    .local v11, "softInputMode":I
    .local v12, "windowFlags":I
    .local v13, "servedInputConnection":Landroid/view/inputmethod/RemoteInputConnectionImpl;
    .local v14, "imeRequestedVisible":Z
    .local v31, "targetUserId":I
    move-object/from16 v16, v0

    move/from16 v2, v23

    .line 3576
    .end local v23    # "startInputSeq":I
    .local v2, "startInputSeq":I
    :goto_2a6
    :try_start_2a6
    invoke-static/range {v29 .. v30}, Landroid/os/Trace;->traceEnd(J)V

    .line 3577
    invoke-static {}, Landroid/view/inputmethod/Flags;->useZeroJankProxy()Z

    move-result v0
    :try_end_2ad
    .catchall {:try_start_2a6 .. :try_end_2ad} :catchall_40b

    if-eqz v0, :cond_300

    .line 3580
    if-eqz v26, :cond_2f2

    .line 3581
    move-object v5, v7

    .end local v7    # "editorInfo":Landroid/view/inputmethod/EditorInfo;
    .local v5, "editorInfo":Landroid/view/inputmethod/EditorInfo;
    move v7, v2

    .line 3582
    .local v7, "seqId":I
    :try_start_2b3
    invoke-static {}, Landroid/view/inputmethod/Flags;->invalidateInputCallsRestart()Z

    move-result v0
    :try_end_2b7
    .catchall {:try_start_2b3 .. :try_end_2b7} :catchall_2e6

    if-eqz v0, :cond_2c6

    .line 3583
    :try_start_2b9
    iput v7, v15, Landroid/view/inputmethod/InputMethodManager;->mLastPendingStartSeqId:I
    :try_end_2bb
    .catchall {:try_start_2b9 .. :try_end_2bb} :catchall_2bc

    goto :goto_2c6

    .line 3652
    .end local v2    # "startInputSeq":I
    .end local v7    # "seqId":I
    .end local v13    # "servedInputConnection":Landroid/view/inputmethod/RemoteInputConnectionImpl;
    .end local v14    # "imeRequestedVisible":Z
    .end local v17    # "previouslyServedConnection":Landroid/view/inputmethod/RemoteInputConnectionImpl;
    .end local v18    # "icHandler":Landroid/os/Handler;
    .end local v22    # "canSkip":Z
    .end local v28    # "servedView":Landroid/view/View;
    .end local v31    # "targetUserId":I
    :catchall_2bc
    move-exception v0

    move-object v7, v5

    move v2, v8

    move-object v1, v15

    move-object/from16 v3, v21

    move-object/from16 v5, v26

    goto/16 :goto_4d9

    .line 3585
    .restart local v2    # "startInputSeq":I
    .restart local v7    # "seqId":I
    .restart local v13    # "servedInputConnection":Landroid/view/inputmethod/RemoteInputConnectionImpl;
    .restart local v14    # "imeRequestedVisible":Z
    .restart local v17    # "previouslyServedConnection":Landroid/view/inputmethod/RemoteInputConnectionImpl;
    .restart local v18    # "icHandler":Landroid/os/Handler;
    .restart local v22    # "canSkip":Z
    .restart local v28    # "servedView":Landroid/view/View;
    .restart local v31    # "targetUserId":I
    :cond_2c6
    :goto_2c6
    :try_start_2c6
    new-instance v0, Landroid/view/inputmethod/InputMethodManager$6;
    :try_end_2c8
    .catchall {:try_start_2c6 .. :try_end_2c8} :catchall_2e6

    move-object v1, v15

    move-object/from16 v15, v16

    move-object/from16 v6, v18

    move-object/from16 v3, v21

    move-object/from16 v4, v26

    .end local v16    # "res":Lcom/android/internal/inputmethod/InputBindResult;
    .end local v18    # "icHandler":Landroid/os/Handler;
    .end local v21    # "view":Landroid/view/View;
    .end local v26    # "ic":Landroid/view/inputmethod/InputConnection;
    .local v3, "view":Landroid/view/View;
    .local v4, "ic":Landroid/view/inputmethod/InputConnection;
    .local v6, "icHandler":Landroid/os/Handler;
    .local v15, "res":Lcom/android/internal/inputmethod/InputBindResult;
    :try_start_2d1
    invoke-direct/range {v0 .. v7}, Landroid/view/inputmethod/InputMethodManager$6;-><init>(Landroid/view/inputmethod/InputMethodManager;ILandroid/view/View;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/os/Handler;I)V
    :try_end_2d4
    .catchall {:try_start_2d1 .. :try_end_2d4} :catchall_2de

    move-object/from16 v32, v4

    move-object v4, v0

    move v0, v7

    move-object v7, v5

    move-object/from16 v5, v32

    .end local v4    # "ic":Landroid/view/inputmethod/InputConnection;
    .local v0, "seqId":I
    .local v5, "ic":Landroid/view/inputmethod/InputConnection;
    .local v7, "editorInfo":Landroid/view/inputmethod/EditorInfo;
    :try_start_2db
    iput-object v4, v1, Landroid/view/inputmethod/InputMethodManager;->mReportInputConnectionOpenedRunner:Landroid/view/inputmethod/InputMethodManager$ReportInputConnectionOpenedRunner;

    .line 3599
    .end local v0    # "seqId":I
    goto :goto_2fe

    .line 3652
    .end local v2    # "startInputSeq":I
    .end local v6    # "icHandler":Landroid/os/Handler;
    .end local v7    # "editorInfo":Landroid/view/inputmethod/EditorInfo;
    .end local v13    # "servedInputConnection":Landroid/view/inputmethod/RemoteInputConnectionImpl;
    .end local v14    # "imeRequestedVisible":Z
    .end local v17    # "previouslyServedConnection":Landroid/view/inputmethod/RemoteInputConnectionImpl;
    .end local v22    # "canSkip":Z
    .end local v28    # "servedView":Landroid/view/View;
    .end local v31    # "targetUserId":I
    .restart local v4    # "ic":Landroid/view/inputmethod/InputConnection;
    .local v5, "editorInfo":Landroid/view/inputmethod/EditorInfo;
    :catchall_2de
    move-exception v0

    move-object v7, v5

    move-object v5, v4

    move v2, v8

    move-object/from16 v16, v15

    .end local v4    # "ic":Landroid/view/inputmethod/InputConnection;
    .local v5, "ic":Landroid/view/inputmethod/InputConnection;
    .restart local v7    # "editorInfo":Landroid/view/inputmethod/EditorInfo;
    goto/16 :goto_4d9

    .end local v3    # "view":Landroid/view/View;
    .end local v7    # "editorInfo":Landroid/view/inputmethod/EditorInfo;
    .end local v15    # "res":Lcom/android/internal/inputmethod/InputBindResult;
    .local v5, "editorInfo":Landroid/view/inputmethod/EditorInfo;
    .restart local v16    # "res":Lcom/android/internal/inputmethod/InputBindResult;
    .restart local v21    # "view":Landroid/view/View;
    .restart local v26    # "ic":Landroid/view/inputmethod/InputConnection;
    :catchall_2e6
    move-exception v0

    move-object v7, v5

    move-object v1, v15

    move-object/from16 v15, v16

    move-object/from16 v3, v21

    move-object/from16 v5, v26

    move v2, v8

    .end local v16    # "res":Lcom/android/internal/inputmethod/InputBindResult;
    .end local v21    # "view":Landroid/view/View;
    .end local v26    # "ic":Landroid/view/inputmethod/InputConnection;
    .restart local v3    # "view":Landroid/view/View;
    .local v5, "ic":Landroid/view/inputmethod/InputConnection;
    .restart local v7    # "editorInfo":Landroid/view/inputmethod/EditorInfo;
    .restart local v15    # "res":Lcom/android/internal/inputmethod/InputBindResult;
    goto/16 :goto_4d9

    .line 3600
    .end local v3    # "view":Landroid/view/View;
    .end local v5    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v15    # "res":Lcom/android/internal/inputmethod/InputBindResult;
    .restart local v2    # "startInputSeq":I
    .restart local v13    # "servedInputConnection":Landroid/view/inputmethod/RemoteInputConnectionImpl;
    .restart local v14    # "imeRequestedVisible":Z
    .restart local v16    # "res":Lcom/android/internal/inputmethod/InputBindResult;
    .restart local v17    # "previouslyServedConnection":Landroid/view/inputmethod/RemoteInputConnectionImpl;
    .restart local v18    # "icHandler":Landroid/os/Handler;
    .restart local v21    # "view":Landroid/view/View;
    .restart local v22    # "canSkip":Z
    .restart local v26    # "ic":Landroid/view/inputmethod/InputConnection;
    .restart local v28    # "servedView":Landroid/view/View;
    .restart local v31    # "targetUserId":I
    :cond_2f2
    move-object v1, v15

    move-object/from16 v15, v16

    move-object/from16 v6, v18

    move-object/from16 v3, v21

    move-object/from16 v5, v26

    .end local v16    # "res":Lcom/android/internal/inputmethod/InputBindResult;
    .end local v18    # "icHandler":Landroid/os/Handler;
    .end local v21    # "view":Landroid/view/View;
    .end local v26    # "ic":Landroid/view/inputmethod/InputConnection;
    .restart local v3    # "view":Landroid/view/View;
    .restart local v5    # "ic":Landroid/view/inputmethod/InputConnection;
    .restart local v6    # "icHandler":Landroid/os/Handler;
    .restart local v15    # "res":Lcom/android/internal/inputmethod/InputBindResult;
    const/4 v4, 0x0

    iput-object v4, v1, Landroid/view/inputmethod/InputMethodManager;->mReportInputConnectionOpenedRunner:Landroid/view/inputmethod/InputMethodManager$ReportInputConnectionOpenedRunner;

    .line 3602
    :goto_2fe
    monitor-exit v27

    return p2

    .line 3606
    .end local v3    # "view":Landroid/view/View;
    .end local v5    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v6    # "icHandler":Landroid/os/Handler;
    .end local v15    # "res":Lcom/android/internal/inputmethod/InputBindResult;
    .restart local v16    # "res":Lcom/android/internal/inputmethod/InputBindResult;
    .restart local v18    # "icHandler":Landroid/os/Handler;
    .restart local v21    # "view":Landroid/view/View;
    .restart local v26    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_300
    move-object v1, v15

    move-object/from16 v15, v16

    move-object/from16 v6, v18

    move-object/from16 v3, v21

    move-object/from16 v5, v26

    .end local v16    # "res":Lcom/android/internal/inputmethod/InputBindResult;
    .end local v18    # "icHandler":Landroid/os/Handler;
    .end local v21    # "view":Landroid/view/View;
    .end local v26    # "ic":Landroid/view/inputmethod/InputConnection;
    .restart local v3    # "view":Landroid/view/View;
    .restart local v5    # "ic":Landroid/view/inputmethod/InputConnection;
    .restart local v6    # "icHandler":Landroid/os/Handler;
    .restart local v15    # "res":Lcom/android/internal/inputmethod/InputBindResult;
    if-nez v15, :cond_34a

    .line 3607
    const-string v0, "InputMethodManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 p3, v2

    .end local v2    # "startInputSeq":I
    .local p3, "startInputSeq":I
    const-string/jumbo v2, "startInputOrWindowGainedFocus must not return null. startInputReason="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3609
    invoke-static {v9}, Lcom/android/internal/inputmethod/InputMethodDebug;->startInputReasonToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " editorInfo="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " startInputFlags="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3612
    invoke-static {v8}, Lcom/android/internal/inputmethod/InputMethodDebug;->startInputFlagsToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3607
    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3613
    monitor-exit v27
    :try_end_343
    .catchall {:try_start_2db .. :try_end_343} :catchall_344

    return v19

    .line 3652
    .end local v6    # "icHandler":Landroid/os/Handler;
    .end local v13    # "servedInputConnection":Landroid/view/inputmethod/RemoteInputConnectionImpl;
    .end local v14    # "imeRequestedVisible":Z
    .end local v17    # "previouslyServedConnection":Landroid/view/inputmethod/RemoteInputConnectionImpl;
    .end local v22    # "canSkip":Z
    .end local v28    # "servedView":Landroid/view/View;
    .end local v31    # "targetUserId":I
    .end local p3    # "startInputSeq":I
    :catchall_344
    move-exception v0

    move v2, v8

    move-object/from16 v16, v15

    goto/16 :goto_4d9

    .line 3615
    .restart local v2    # "startInputSeq":I
    .restart local v6    # "icHandler":Landroid/os/Handler;
    .restart local v13    # "servedInputConnection":Landroid/view/inputmethod/RemoteInputConnectionImpl;
    .restart local v14    # "imeRequestedVisible":Z
    .restart local v17    # "previouslyServedConnection":Landroid/view/inputmethod/RemoteInputConnectionImpl;
    .restart local v22    # "canSkip":Z
    .restart local v28    # "servedView":Landroid/view/View;
    .restart local v31    # "targetUserId":I
    :cond_34a
    move/from16 p3, v2

    .end local v2    # "startInputSeq":I
    .restart local p3    # "startInputSeq":I
    :try_start_34c
    iget-object v0, v15, Lcom/android/internal/inputmethod/InputBindResult;->id:Ljava/lang/String;

    if-eqz v0, :cond_39f

    .line 3616
    iget-object v0, v15, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    invoke-direct {v1, v0}, Landroid/view/inputmethod/InputMethodManager;->updateInputChannelLocked(Landroid/view/InputChannel;)V

    .line 3617
    iget-object v0, v15, Lcom/android/internal/inputmethod/InputBindResult;->method:Lcom/android/internal/inputmethod/IInputMethodSession;

    iput-object v0, v1, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/inputmethod/IInputMethodSession;

    .line 3618
    new-instance v0, Landroid/view/inputmethod/InputMethodManager$BindState;

    invoke-direct {v0, v15}, Landroid/view/inputmethod/InputMethodManager$BindState;-><init>(Lcom/android/internal/inputmethod/InputBindResult;)V

    iput-object v0, v1, Landroid/view/inputmethod/InputMethodManager;->mCurBindState:Landroid/view/inputmethod/InputMethodManager$BindState;

    .line 3619
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager;->mAccessibilityInputMethodSession:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 3620
    iget-object v0, v15, Lcom/android/internal/inputmethod/InputBindResult;->accessibilitySessions:Landroid/util/SparseArray;

    if-eqz v0, :cond_398

    .line 3621
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_36a
    iget-object v2, v15, Lcom/android/internal/inputmethod/InputBindResult;->accessibilitySessions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_395

    .line 3622
    iget-object v2, v15, Lcom/android/internal/inputmethod/InputBindResult;->accessibilitySessions:Landroid/util/SparseArray;

    .line 3624
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;

    .line 3623
    invoke-static {v2}, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;->createOrNull(Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;)Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;

    move-result-object v2

    .line 3625
    .local v2, "wrapper":Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;
    if-eqz v2, :cond_38e

    .line 3626
    iget-object v4, v1, Landroid/view/inputmethod/InputMethodManager;->mAccessibilityInputMethodSession:Landroid/util/SparseArray;
    :try_end_382
    .catchall {:try_start_34c .. :try_end_382} :catchall_402

    move/from16 p4, v8

    .end local v8    # "startInputFlags":I
    .local p4, "startInputFlags":I
    :try_start_384
    iget-object v8, v15, Lcom/android/internal/inputmethod/InputBindResult;->accessibilitySessions:Landroid/util/SparseArray;

    .line 3627
    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    .line 3626
    invoke-virtual {v4, v8, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_390

    .line 3625
    .end local p4    # "startInputFlags":I
    .restart local v8    # "startInputFlags":I
    :cond_38e
    move/from16 p4, v8

    .line 3621
    .end local v2    # "wrapper":Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;
    .end local v8    # "startInputFlags":I
    .restart local p4    # "startInputFlags":I
    :goto_390
    add-int/lit8 v0, v0, 0x1

    move/from16 v8, p4

    goto :goto_36a

    .end local p4    # "startInputFlags":I
    .restart local v8    # "startInputFlags":I
    :cond_395
    move/from16 p4, v8

    .end local v8    # "startInputFlags":I
    .restart local p4    # "startInputFlags":I
    goto :goto_39a

    .line 3620
    .end local v0    # "i":I
    .end local p4    # "startInputFlags":I
    .restart local v8    # "startInputFlags":I
    :cond_398
    move/from16 p4, v8

    .line 3631
    .end local v8    # "startInputFlags":I
    .restart local p4    # "startInputFlags":I
    :goto_39a
    iget-object v0, v15, Lcom/android/internal/inputmethod/InputBindResult;->id:Ljava/lang/String;

    iput-object v0, v1, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    goto :goto_3b0

    .line 3632
    .end local p4    # "startInputFlags":I
    .restart local v8    # "startInputFlags":I
    :cond_39f
    move/from16 p4, v8

    .end local v8    # "startInputFlags":I
    .restart local p4    # "startInputFlags":I
    iget-object v0, v15, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz v0, :cond_3b0

    iget-object v0, v15, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    iget-object v2, v1, Landroid/view/inputmethod/InputMethodManager;->mCurChannel:Landroid/view/InputChannel;

    if-eq v0, v2, :cond_3b0

    .line 3633
    iget-object v0, v15, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 3636
    :cond_3b0
    :goto_3b0
    iget v0, v15, Lcom/android/internal/inputmethod/InputBindResult;->result:I

    packed-switch v0, :pswitch_data_4e6

    goto :goto_3d2

    .line 3638
    :pswitch_3b6
    move/from16 v0, p2

    iput-boolean v0, v1, Landroid/view/inputmethod/InputMethodManager;->mRestartOnNextWindowFocus:Z

    .line 3639
    invoke-static {}, Landroid/view/inputmethod/Flags;->initiationWithoutInputConnection()Z

    move-result v0

    if-eqz v0, :cond_3cf

    .line 3640
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getHandwritingInitiator()Landroid/view/HandwritingInitiator;

    move-result-object v0

    iget-object v2, v1, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/HandwritingInitiator;->clearFocusedView(Landroid/view/View;)V

    .line 3643
    :cond_3cf
    const/4 v2, 0x0

    iput-object v2, v1, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    .line 3646
    :goto_3d2
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    if-eqz v0, :cond_3e5

    .line 3647
    invoke-direct {v1}, Landroid/view/inputmethod/InputMethodManager;->isImeSessionAvailableLocked()Z

    move-result v0

    if-eqz v0, :cond_3e5

    .line 3648
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager;->mCurBindState:Landroid/view/inputmethod/InputMethodManager$BindState;

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager$BindState;->mImeSession:Landroid/view/inputmethod/IInputMethodSessionInvoker;

    iget-object v2, v1, Landroid/view/inputmethod/InputMethodManager;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    invoke-virtual {v0, v2}, Landroid/view/inputmethod/IInputMethodSessionInvoker;->displayCompletions([Landroid/view/inputmethod/CompletionInfo;)V

    .line 3651
    :cond_3e5
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v0, :cond_3eb

    const/16 v19, 0x1

    .line 3652
    .end local v13    # "servedInputConnection":Landroid/view/inputmethod/RemoteInputConnectionImpl;
    .end local v17    # "previouslyServedConnection":Landroid/view/inputmethod/RemoteInputConnectionImpl;
    .end local v22    # "canSkip":Z
    .end local v28    # "servedView":Landroid/view/View;
    .end local v31    # "targetUserId":I
    .end local p3    # "startInputSeq":I
    .local v19, "hasServedView":Z
    :cond_3eb
    monitor-exit v27
    :try_end_3ec
    .catchall {:try_start_384 .. :try_end_3ec} :catchall_3fb

    .line 3655
    if-eqz v5, :cond_3f9

    if-eqz v15, :cond_3f9

    iget-object v0, v15, Lcom/android/internal/inputmethod/InputBindResult;->method:Lcom/android/internal/inputmethod/IInputMethodSession;

    if-eqz v0, :cond_3f9

    if-eqz v19, :cond_3f9

    .line 3660
    invoke-direct {v1, v5, v7, v6, v3}, Landroid/view/inputmethod/InputMethodManager;->reportInputConnectionOpened(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/os/Handler;Landroid/view/View;)V

    .line 3663
    :cond_3f9
    const/4 v0, 0x1

    return v0

    .line 3652
    .end local v6    # "icHandler":Landroid/os/Handler;
    .end local v14    # "imeRequestedVisible":Z
    .end local v19    # "hasServedView":Z
    :catchall_3fb
    move-exception v0

    move/from16 v2, p4

    move-object/from16 v16, v15

    goto/16 :goto_4d9

    .end local p4    # "startInputFlags":I
    .restart local v8    # "startInputFlags":I
    :catchall_402
    move-exception v0

    move/from16 p4, v8

    move/from16 v2, p4

    move-object/from16 v16, v15

    .end local v8    # "startInputFlags":I
    .restart local p4    # "startInputFlags":I
    goto/16 :goto_4d9

    .end local v3    # "view":Landroid/view/View;
    .end local v5    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v15    # "res":Lcom/android/internal/inputmethod/InputBindResult;
    .end local p4    # "startInputFlags":I
    .restart local v8    # "startInputFlags":I
    .restart local v16    # "res":Lcom/android/internal/inputmethod/InputBindResult;
    .restart local v21    # "view":Landroid/view/View;
    .restart local v26    # "ic":Landroid/view/inputmethod/InputConnection;
    :catchall_40b
    move-exception v0

    move/from16 p4, v8

    move-object v1, v15

    move-object/from16 v15, v16

    move-object/from16 v3, v21

    move-object/from16 v5, v26

    move/from16 v2, p4

    .end local v8    # "startInputFlags":I
    .end local v16    # "res":Lcom/android/internal/inputmethod/InputBindResult;
    .end local v21    # "view":Landroid/view/View;
    .end local v26    # "ic":Landroid/view/inputmethod/InputConnection;
    .restart local v3    # "view":Landroid/view/View;
    .restart local v5    # "ic":Landroid/view/inputmethod/InputConnection;
    .restart local v15    # "res":Lcom/android/internal/inputmethod/InputBindResult;
    .restart local p4    # "startInputFlags":I
    goto/16 :goto_4d9

    .end local v10    # "windowGainingFocus":Landroid/os/IBinder;
    .end local v11    # "softInputMode":I
    .end local v12    # "windowFlags":I
    .end local v15    # "res":Lcom/android/internal/inputmethod/InputBindResult;
    .end local p4    # "startInputFlags":I
    .local v3, "windowGainingFocus":Landroid/os/IBinder;
    .local v4, "startInputFlags":I
    .local v5, "softInputMode":I
    .local v6, "windowFlags":I
    .restart local v16    # "res":Lcom/android/internal/inputmethod/InputBindResult;
    .restart local v21    # "view":Landroid/view/View;
    .restart local v26    # "ic":Landroid/view/inputmethod/InputConnection;
    :catchall_419
    move-exception v0

    move v9, v1

    goto :goto_41f

    :catchall_41c
    move-exception v0

    move/from16 v9, p1

    :goto_41f
    move-object v10, v3

    move/from16 p4, v4

    move v11, v5

    move v12, v6

    move-object v1, v15

    move-object/from16 v3, v21

    move-object/from16 v5, v26

    move/from16 v2, p4

    .end local v4    # "startInputFlags":I
    .end local v6    # "windowFlags":I
    .end local v21    # "view":Landroid/view/View;
    .end local v26    # "ic":Landroid/view/inputmethod/InputConnection;
    .local v3, "view":Landroid/view/View;
    .local v5, "ic":Landroid/view/inputmethod/InputConnection;
    .restart local v10    # "windowGainingFocus":Landroid/os/IBinder;
    .restart local v11    # "softInputMode":I
    .restart local v12    # "windowFlags":I
    .restart local p4    # "startInputFlags":I
    goto/16 :goto_4d9

    .end local v3    # "view":Landroid/view/View;
    .end local v7    # "editorInfo":Landroid/view/inputmethod/EditorInfo;
    .end local v24    # "vh":Landroid/os/Handler;
    .end local v25    # "connectionPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;>;"
    .end local p4    # "startInputFlags":I
    .restart local v4    # "startInputFlags":I
    .local v5, "softInputMode":I
    .local v8, "vh":Landroid/os/Handler;
    .restart local v9    # "windowGainingFocus":Landroid/os/IBinder;
    .local v10, "connectionPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;>;"
    .local v11, "ic":Landroid/view/inputmethod/InputConnection;
    .local v12, "editorInfo":Landroid/view/inputmethod/EditorInfo;
    .restart local v21    # "view":Landroid/view/View;
    .local p3, "windowFlags":I
    :catchall_42d
    move-exception v0

    move-object/from16 p4, v11

    move v11, v5

    move-object/from16 v5, p4

    move/from16 p4, v4

    move-object v1, v6

    move-object/from16 v24, v8

    move-object/from16 v25, v10

    move-object v7, v12

    move-object/from16 v27, v13

    move-object/from16 v3, v21

    move/from16 v12, p3

    move-object v10, v9

    move/from16 v9, p1

    move/from16 v2, p4

    .end local v4    # "startInputFlags":I
    .end local v8    # "vh":Landroid/os/Handler;
    .end local v9    # "windowGainingFocus":Landroid/os/IBinder;
    .end local v21    # "view":Landroid/view/View;
    .end local p3    # "windowFlags":I
    .restart local v3    # "view":Landroid/view/View;
    .local v5, "ic":Landroid/view/inputmethod/InputConnection;
    .restart local v7    # "editorInfo":Landroid/view/inputmethod/EditorInfo;
    .local v10, "windowGainingFocus":Landroid/os/IBinder;
    .local v11, "softInputMode":I
    .local v12, "windowFlags":I
    .restart local v24    # "vh":Landroid/os/Handler;
    .restart local v25    # "connectionPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;>;"
    .restart local p4    # "startInputFlags":I
    goto/16 :goto_4d9

    .end local v3    # "view":Landroid/view/View;
    .end local v7    # "editorInfo":Landroid/view/inputmethod/EditorInfo;
    .end local v24    # "vh":Landroid/os/Handler;
    .end local v25    # "connectionPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;>;"
    .end local p4    # "startInputFlags":I
    .local v2, "startInputFlags":I
    .local v4, "softInputMode":I
    .local v5, "windowFlags":I
    .restart local v8    # "vh":Landroid/os/Handler;
    .restart local v9    # "windowGainingFocus":Landroid/os/IBinder;
    .local v10, "connectionPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;>;"
    .local v11, "ic":Landroid/view/inputmethod/InputConnection;
    .local v12, "editorInfo":Landroid/view/inputmethod/EditorInfo;
    .restart local v21    # "view":Landroid/view/View;
    :catchall_448
    move-exception v0

    move/from16 p4, v2

    move-object v1, v6

    move-object/from16 v24, v8

    move-object/from16 v25, v10

    move-object v7, v12

    move-object/from16 v27, v13

    move v12, v5

    move-object v10, v9

    move-object v5, v11

    move v9, v3

    move v11, v4

    move-object/from16 v3, v21

    goto :goto_46e

    :catchall_45b
    move-exception v0

    move/from16 p4, v2

    move-object v1, v6

    move-object/from16 v24, v8

    move-object/from16 v25, v10

    move-object v7, v12

    move-object/from16 v27, v13

    move-object/from16 v3, v21

    move v12, v5

    move-object v10, v9

    move-object v5, v11

    move/from16 v9, p1

    move v11, v4

    .end local v2    # "startInputFlags":I
    .end local v4    # "softInputMode":I
    .end local v8    # "vh":Landroid/os/Handler;
    .end local v9    # "windowGainingFocus":Landroid/os/IBinder;
    .end local v21    # "view":Landroid/view/View;
    .restart local v3    # "view":Landroid/view/View;
    .local v5, "ic":Landroid/view/inputmethod/InputConnection;
    .restart local v7    # "editorInfo":Landroid/view/inputmethod/EditorInfo;
    .local v10, "windowGainingFocus":Landroid/os/IBinder;
    .local v11, "softInputMode":I
    .local v12, "windowFlags":I
    .restart local v24    # "vh":Landroid/os/Handler;
    .restart local v25    # "connectionPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;>;"
    .restart local p4    # "startInputFlags":I
    :goto_46e
    goto/16 :goto_4d9

    .end local v3    # "view":Landroid/view/View;
    .end local v7    # "editorInfo":Landroid/view/inputmethod/EditorInfo;
    .end local v24    # "vh":Landroid/os/Handler;
    .end local v25    # "connectionPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;>;"
    .end local p4    # "startInputFlags":I
    .local v1, "windowFlags":I
    .local v4, "startInputFlags":I
    .local v5, "softInputMode":I
    .restart local v8    # "vh":Landroid/os/Handler;
    .restart local v9    # "windowGainingFocus":Landroid/os/IBinder;
    .local v10, "connectionPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;>;"
    .local v11, "ic":Landroid/view/inputmethod/InputConnection;
    .local v12, "editorInfo":Landroid/view/inputmethod/EditorInfo;
    .restart local v21    # "view":Landroid/view/View;
    :catchall_470
    move-exception v0

    move-object/from16 p4, v11

    move v11, v5

    move-object/from16 v5, p4

    move/from16 p4, v4

    move-object/from16 v24, v8

    move-object/from16 v25, v10

    move-object v7, v12

    move-object/from16 v27, v13

    move-object/from16 v3, v21

    move v12, v1

    move-object v1, v6

    move-object v10, v9

    move/from16 v9, p1

    move/from16 v2, p4

    .end local v1    # "windowFlags":I
    .end local v4    # "startInputFlags":I
    .end local v8    # "vh":Landroid/os/Handler;
    .end local v9    # "windowGainingFocus":Landroid/os/IBinder;
    .end local v21    # "view":Landroid/view/View;
    .restart local v3    # "view":Landroid/view/View;
    .local v5, "ic":Landroid/view/inputmethod/InputConnection;
    .restart local v7    # "editorInfo":Landroid/view/inputmethod/EditorInfo;
    .local v10, "windowGainingFocus":Landroid/os/IBinder;
    .local v11, "softInputMode":I
    .local v12, "windowFlags":I
    .restart local v24    # "vh":Landroid/os/Handler;
    .restart local v25    # "connectionPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;>;"
    .restart local p4    # "startInputFlags":I
    goto/16 :goto_4d9

    .end local v3    # "view":Landroid/view/View;
    .end local v7    # "editorInfo":Landroid/view/inputmethod/EditorInfo;
    .end local v24    # "vh":Landroid/os/Handler;
    .end local v25    # "connectionPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;>;"
    .end local p4    # "startInputFlags":I
    .restart local v4    # "startInputFlags":I
    .local v5, "softInputMode":I
    .restart local v6    # "windowFlags":I
    .restart local v8    # "vh":Landroid/os/Handler;
    .restart local v9    # "windowGainingFocus":Landroid/os/IBinder;
    .local v10, "connectionPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;>;"
    .local v11, "ic":Landroid/view/inputmethod/InputConnection;
    .local v12, "editorInfo":Landroid/view/inputmethod/EditorInfo;
    .local v15, "view":Landroid/view/View;
    :catchall_48a
    move-exception v0

    move-object/from16 p4, v11

    move v11, v5

    move-object/from16 v5, p4

    move/from16 p4, v4

    move-object/from16 v24, v8

    move-object/from16 v25, v10

    move-object v7, v12

    move-object/from16 v27, v13

    move v12, v6

    move-object v10, v9

    move v9, v3

    move-object v3, v15

    move/from16 v2, p4

    .end local v4    # "startInputFlags":I
    .end local v6    # "windowFlags":I
    .end local v8    # "vh":Landroid/os/Handler;
    .end local v9    # "windowGainingFocus":Landroid/os/IBinder;
    .end local v15    # "view":Landroid/view/View;
    .restart local v3    # "view":Landroid/view/View;
    .local v5, "ic":Landroid/view/inputmethod/InputConnection;
    .restart local v7    # "editorInfo":Landroid/view/inputmethod/EditorInfo;
    .local v10, "windowGainingFocus":Landroid/os/IBinder;
    .local v11, "softInputMode":I
    .local v12, "windowFlags":I
    .restart local v24    # "vh":Landroid/os/Handler;
    .restart local v25    # "connectionPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;>;"
    .restart local p4    # "startInputFlags":I
    goto :goto_4d9

    .line 3466
    .end local v3    # "view":Landroid/view/View;
    .end local v7    # "editorInfo":Landroid/view/inputmethod/EditorInfo;
    .end local v24    # "vh":Landroid/os/Handler;
    .end local v25    # "connectionPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;>;"
    .end local p4    # "startInputFlags":I
    .restart local v2    # "startInputFlags":I
    .local v5, "softInputMode":I
    .restart local v6    # "windowFlags":I
    .restart local v8    # "vh":Landroid/os/Handler;
    .restart local v9    # "windowGainingFocus":Landroid/os/IBinder;
    .local v10, "connectionPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;>;"
    .local v11, "ic":Landroid/view/inputmethod/InputConnection;
    .local v12, "editorInfo":Landroid/view/inputmethod/EditorInfo;
    .local v14, "servedView":Landroid/view/View;
    .restart local v15    # "view":Landroid/view/View;
    :cond_4a0
    move-object/from16 v19, v11

    move v11, v5

    move-object/from16 v5, v19

    move/from16 v19, v7

    move-object/from16 v24, v8

    move-object/from16 v25, v10

    move-object v7, v12

    move-object/from16 v27, v13

    move-object/from16 v28, v14

    move v12, v6

    move-object v10, v9

    move v9, v3

    move-object v3, v15

    .line 3472
    .end local v6    # "windowFlags":I
    .end local v8    # "vh":Landroid/os/Handler;
    .end local v9    # "windowGainingFocus":Landroid/os/IBinder;
    .end local v14    # "servedView":Landroid/view/View;
    .end local v15    # "view":Landroid/view/View;
    .restart local v3    # "view":Landroid/view/View;
    .local v5, "ic":Landroid/view/inputmethod/InputConnection;
    .restart local v7    # "editorInfo":Landroid/view/inputmethod/EditorInfo;
    .local v10, "windowGainingFocus":Landroid/os/IBinder;
    .local v11, "softInputMode":I
    .local v12, "windowFlags":I
    .restart local v24    # "vh":Landroid/os/Handler;
    .restart local v25    # "connectionPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;>;"
    .restart local v28    # "servedView":Landroid/view/View;
    :goto_4b4
    :try_start_4b4
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    if-eqz v0, :cond_4c8

    const/4 v0, 0x6

    if-ne v9, v0, :cond_4c8

    .line 3475
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    .line 3476
    invoke-virtual {v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    iget-object v4, v1, Landroid/view/inputmethod/InputMethodManager;->mCurrentEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget-object v6, v1, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnectionHandler:Landroid/os/Handler;

    .line 3475
    invoke-direct {v1, v0, v4, v6, v3}, Landroid/view/inputmethod/InputMethodManager;->reportInputConnectionOpened(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/os/Handler;Landroid/view/View;)V

    .line 3479
    :cond_4c8
    monitor-exit v27

    return v19

    .line 3652
    .end local v3    # "view":Landroid/view/View;
    .end local v7    # "editorInfo":Landroid/view/inputmethod/EditorInfo;
    .end local v24    # "vh":Landroid/os/Handler;
    .end local v25    # "connectionPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;>;"
    .end local v28    # "servedView":Landroid/view/View;
    .local v5, "softInputMode":I
    .restart local v6    # "windowFlags":I
    .restart local v8    # "vh":Landroid/os/Handler;
    .restart local v9    # "windowGainingFocus":Landroid/os/IBinder;
    .local v10, "connectionPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;>;"
    .local v11, "ic":Landroid/view/inputmethod/InputConnection;
    .local v12, "editorInfo":Landroid/view/inputmethod/EditorInfo;
    .restart local v15    # "view":Landroid/view/View;
    :catchall_4ca
    move-exception v0

    move-object v7, v11

    move v11, v5

    move-object v5, v7

    move-object/from16 v24, v8

    move-object/from16 v25, v10

    move-object v7, v12

    move-object/from16 v27, v13

    move v12, v6

    move-object v10, v9

    move v9, v3

    move-object v3, v15

    .end local v6    # "windowFlags":I
    .end local v8    # "vh":Landroid/os/Handler;
    .end local v9    # "windowGainingFocus":Landroid/os/IBinder;
    .end local v15    # "view":Landroid/view/View;
    .restart local v3    # "view":Landroid/view/View;
    .local v5, "ic":Landroid/view/inputmethod/InputConnection;
    .restart local v7    # "editorInfo":Landroid/view/inputmethod/EditorInfo;
    .local v10, "windowGainingFocus":Landroid/os/IBinder;
    .local v11, "softInputMode":I
    .local v12, "windowFlags":I
    .restart local v24    # "vh":Landroid/os/Handler;
    .restart local v25    # "connectionPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;>;"
    :goto_4d9
    monitor-exit v27
    :try_end_4da
    .catchall {:try_start_4b4 .. :try_end_4da} :catchall_4db

    throw v0

    :catchall_4db
    move-exception v0

    goto :goto_4d9

    .line 3417
    .end local v2    # "startInputFlags":I
    .end local v3    # "view":Landroid/view/View;
    .end local v5    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v7    # "editorInfo":Landroid/view/inputmethod/EditorInfo;
    .end local v10    # "windowGainingFocus":Landroid/os/IBinder;
    .end local v11    # "softInputMode":I
    .end local v12    # "windowFlags":I
    .end local v16    # "res":Lcom/android/internal/inputmethod/InputBindResult;
    .end local v24    # "vh":Landroid/os/Handler;
    .end local v25    # "connectionPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;>;"
    .restart local p2    # "windowGainingFocus":Landroid/os/IBinder;
    .local p3, "startInputFlags":I
    .local p4, "softInputMode":I
    .restart local p5    # "windowFlags":I
    :catchall_4dd
    move-exception v0

    move/from16 v4, p3

    move v9, v3

    :goto_4e1
    :try_start_4e1
    monitor-exit v2
    :try_end_4e2
    .catchall {:try_start_4e1 .. :try_end_4e2} :catchall_4e3

    throw v0

    :catchall_4e3
    move-exception v0

    goto :goto_4e1

    nop

    :pswitch_data_4e6
    .packed-switch 0xc
        :pswitch_3b6
    .end packed-switch
.end method

.method private blacklist startInputOnWindowFocusGainInternal(ILandroid/view/View;III)Z
    .registers 13
    .param p1, "startInputReason"    # I
    .param p2, "focusedView"    # Landroid/view/View;
    .param p3, "startInputFlags"    # I
    .param p4, "softInputMode"    # I
    .param p5, "windowFlags"    # I

    .line 1121
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 1122
    const/4 v0, 0x0

    :try_start_4
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 1123
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 1124
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedConnecting:Z

    .line 1125
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_1e

    .line 1126
    nop

    .line 1127
    if-eqz p2, :cond_13

    invoke-virtual {p2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    :cond_13
    move-object v3, v0

    .line 1126
    move-object v1, p0

    move v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    .end local p1    # "startInputReason":I
    .end local p3    # "startInputFlags":I
    .end local p4    # "softInputMode":I
    .end local p5    # "windowFlags":I
    .local v2, "startInputReason":I
    .local v4, "startInputFlags":I
    .local v5, "softInputMode":I
    .local v6, "windowFlags":I
    invoke-direct/range {v1 .. v6}, Landroid/view/inputmethod/InputMethodManager;->startInputInner(ILandroid/os/IBinder;III)Z

    move-result p1

    return p1

    .line 1125
    .end local v2    # "startInputReason":I
    .end local v4    # "startInputFlags":I
    .end local v5    # "softInputMode":I
    .end local v6    # "windowFlags":I
    .restart local p1    # "startInputReason":I
    .restart local p3    # "startInputFlags":I
    .restart local p4    # "softInputMode":I
    .restart local p5    # "windowFlags":I
    :catchall_1e
    move-exception v0

    move v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move-object p1, v0

    .end local p1    # "startInputReason":I
    .end local p3    # "startInputFlags":I
    .end local p4    # "softInputMode":I
    .end local p5    # "windowFlags":I
    .restart local v2    # "startInputReason":I
    .restart local v4    # "startInputFlags":I
    .restart local v5    # "softInputMode":I
    .restart local v6    # "windowFlags":I
    :goto_24
    :try_start_24
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_26

    throw p1

    :catchall_26
    move-exception v0

    move-object p1, v0

    goto :goto_24
.end method

.method private blacklist startStylusHandwritingInternal(Landroid/view/View;Ljava/lang/String;I)Z
    .registers 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "delegatorPackageName"    # Ljava/lang/String;
    .param p3, "handwritingDelegateFlags"    # I

    .line 2829
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .end local p1    # "view":Landroid/view/View;
    .end local p2    # "delegatorPackageName":Ljava/lang/String;
    .end local p3    # "handwritingDelegateFlags":I
    .local v1, "view":Landroid/view/View;
    .local v2, "delegatorPackageName":Ljava/lang/String;
    .local v3, "handwritingDelegateFlags":I
    invoke-direct/range {v0 .. v5}, Landroid/view/inputmethod/InputMethodManager;->startStylusHandwritingInternal(Landroid/view/View;Ljava/lang/String;ILjava/util/concurrent/Executor;Ljava/util/function/Consumer;)Z

    move-result p1

    return p1
.end method

.method private blacklist startStylusHandwritingInternal(Landroid/view/View;Ljava/lang/String;ILjava/util/concurrent/Executor;Ljava/util/function/Consumer;)Z
    .registers 23
    .param p1, "view"    # Landroid/view/View;
    .param p2, "delegatorPackageName"    # Ljava/lang/String;
    .param p3, "handwritingDelegateFlags"    # I
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 2838
    .local p5, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    move-object/from16 v1, p0

    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2839
    const/4 v0, 0x1

    const/4 v8, 0x0

    if-eqz p5, :cond_b

    move v2, v0

    goto :goto_c

    :cond_b
    move v2, v8

    :goto_c
    move v9, v2

    .line 2842
    .local v9, "useCallback":Z
    invoke-direct/range {p0 .. p1}, Landroid/view/inputmethod/InputMethodManager;->getFallbackInputMethodManagerIfNecessary(Landroid/view/View;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    .line 2843
    .local v2, "fallbackImm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v2, :cond_24

    .line 2844
    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v2 .. v7}, Landroid/view/inputmethod/InputMethodManager;->startStylusHandwritingInternal(Landroid/view/View;Ljava/lang/String;ILjava/util/concurrent/Executor;Ljava/util/function/Consumer;)Z

    move-object v12, v2

    move-object v10, v6

    move-object v11, v7

    .end local v2    # "fallbackImm":Landroid/view/inputmethod/InputMethodManager;
    .local v12, "fallbackImm":Landroid/view/inputmethod/InputMethodManager;
    goto :goto_29

    .line 2843
    .end local v12    # "fallbackImm":Landroid/view/inputmethod/InputMethodManager;
    .restart local v2    # "fallbackImm":Landroid/view/inputmethod/InputMethodManager;
    :cond_24
    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object v12, v2

    .line 2848
    .end local v2    # "fallbackImm":Landroid/view/inputmethod/InputMethodManager;
    .restart local v12    # "fallbackImm":Landroid/view/inputmethod/InputMethodManager;
    :goto_29
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/2addr v2, v0

    move v13, v2

    .line 2850
    .local v13, "useDelegation":Z
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 2851
    iget-object v14, v1, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v14

    .line 2852
    :try_start_35
    invoke-direct/range {p0 .. p1}, Landroid/view/inputmethod/InputMethodManager;->hasServedByInputMethodLocked(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_60

    .line 2853
    const-string v0, "InputMethodManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring startStylusHandwriting as view="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2
    :try_end_48
    .catchall {:try_start_35 .. :try_end_48} :catchall_d3

    move-object/from16 v15, p1

    :try_start_4a
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not served."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2855
    invoke-direct {v1, v10, v11}, Landroid/view/inputmethod/InputMethodManager;->sendFailureCallback(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 2856
    monitor-exit v14

    return v8

    .line 2858
    :cond_60
    move-object/from16 v15, p1

    invoke-virtual {v15}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    iget-object v3, v1, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    if-eq v2, v3, :cond_76

    .line 2859
    const-string v0, "InputMethodManager"

    const-string v2, "Ignoring startStylusHandwriting: View\'s window does not have focus."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2861
    invoke-direct {v1, v10, v11}, Landroid/view/inputmethod/InputMethodManager;->sendFailureCallback(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 2862
    monitor-exit v14

    return v8

    .line 2864
    :cond_76
    if-eqz v13, :cond_c6

    .line 2865
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v10}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object v8, v2

    .line 2866
    .local v8, "executorRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/util/concurrent/Executor;>;"
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v11}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 2867
    .local v2, "callbackRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/util/function/Consumer<Ljava/lang/Boolean;>;>;"
    if-eqz v9, :cond_ac

    .line 2868
    new-instance v7, Landroid/view/inputmethod/InputMethodManager$5;

    invoke-direct {v7, v1, v8, v2}, Landroid/view/inputmethod/InputMethodManager$5;-><init>(Landroid/view/inputmethod/InputMethodManager;Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;)V

    .line 2878
    .local v7, "listener":Lcom/android/internal/inputmethod/IBooleanListener;
    move-object v3, v2

    .end local v2    # "callbackRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/util/function/Consumer<Ljava/lang/Boolean;>;>;"
    .local v3, "callbackRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/util/function/Consumer<Ljava/lang/Boolean;>;>;"
    iget-object v2, v1, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/inputmethod/IInputMethodClient$Stub;

    .line 2879
    move-object v4, v3

    .end local v3    # "callbackRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/util/function/Consumer<Ljava/lang/Boolean;>;>;"
    .local v4, "callbackRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/util/function/Consumer<Ljava/lang/Boolean;>;>;"
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v15}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    .line 2878
    move/from16 v6, p3

    move-object/from16 v16, v4

    move-object v4, v5

    move-object/from16 v5, p2

    .end local v4    # "callbackRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/util/function/Consumer<Ljava/lang/Boolean;>;>;"
    .local v16, "callbackRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/util/function/Consumer<Ljava/lang/Boolean;>;>;"
    invoke-static/range {v2 .. v7}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->acceptStylusHandwritingDelegationAsync(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;ILcom/android/internal/inputmethod/IBooleanListener;)Z

    move-result v2

    if-nez v2, :cond_aa

    .line 2881
    invoke-direct {v1, v10, v11}, Landroid/view/inputmethod/InputMethodManager;->sendFailureCallback(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 2883
    :cond_aa
    monitor-exit v14

    return v0

    .line 2885
    .end local v7    # "listener":Lcom/android/internal/inputmethod/IBooleanListener;
    .end local v16    # "callbackRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/util/function/Consumer<Ljava/lang/Boolean;>;>;"
    .restart local v2    # "callbackRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/util/function/Consumer<Ljava/lang/Boolean;>;>;"
    :cond_ac
    move-object/from16 v16, v2

    .end local v2    # "callbackRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/util/function/Consumer<Ljava/lang/Boolean;>;>;"
    .restart local v16    # "callbackRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/util/function/Consumer<Ljava/lang/Boolean;>;>;"
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/inputmethod/IInputMethodClient$Stub;

    .line 2886
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v15}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3
    :try_end_bc
    .catchall {:try_start_4a .. :try_end_bc} :catchall_d1

    .line 2885
    move-object/from16 v4, p2

    move/from16 v5, p3

    :try_start_c0
    invoke-static {v0, v2, v3, v4, v5}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->acceptStylusHandwritingDelegation(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    monitor-exit v14

    return v0

    .line 2890
    .end local v8    # "executorRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/util/concurrent/Executor;>;"
    .end local v16    # "callbackRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/util/function/Consumer<Ljava/lang/Boolean;>;>;"
    :cond_c6
    move-object/from16 v4, p2

    move/from16 v5, p3

    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/inputmethod/IInputMethodClient$Stub;

    invoke-static {v0}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->startStylusHandwriting(Lcom/android/internal/inputmethod/IInputMethodClient;)V

    .line 2891
    monitor-exit v14

    return v8

    .line 2893
    :catchall_d1
    move-exception v0

    goto :goto_d6

    :catchall_d3
    move-exception v0

    move-object/from16 v15, p1

    :goto_d6
    move-object/from16 v4, p2

    move/from16 v5, p3

    :goto_da
    monitor-exit v14
    :try_end_db
    .catchall {:try_start_c0 .. :try_end_db} :catchall_dc

    throw v0

    :catchall_dc
    move-exception v0

    goto :goto_da
.end method

.method static blacklist tearDownEditMode()V
    .registers 2

    .line 1607
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1611
    sget-object v0, Landroid/view/inputmethod/InputMethodManager;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1612
    const/4 v1, 0x0

    :try_start_a
    sput-object v1, Landroid/view/inputmethod/InputMethodManager;->sInstance:Landroid/view/inputmethod/InputMethodManager;

    .line 1613
    monitor-exit v0

    .line 1614
    return-void

    .line 1613
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_e

    throw v1

    .line 1608
    :cond_11
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This method must be called only from layoutlib"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist updateInputChannelLocked(Landroid/view/InputChannel;)V
    .registers 3
    .param p1, "channel"    # Landroid/view/InputChannel;

    .line 2169
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurChannel:Landroid/view/InputChannel;

    invoke-static {v0, p1}, Landroid/view/inputmethod/InputMethodManager;->areSameInputChannel(Landroid/view/InputChannel;Landroid/view/InputChannel;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2170
    return-void

    .line 2176
    :cond_9
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurSender:Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;

    if-eqz v0, :cond_18

    .line 2177
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->flushPendingEventsLocked()V

    .line 2178
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurSender:Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;->dispose()V

    .line 2179
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurSender:Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;

    .line 2182
    :cond_18
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurChannel:Landroid/view/InputChannel;

    if-eqz v0, :cond_21

    .line 2183
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 2185
    :cond_21
    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurChannel:Landroid/view/InputChannel;

    .line 2186
    return-void
.end method


# virtual methods
.method public whitelist acceptStylusHandwritingDelegation(Landroid/view/View;Ljava/lang/String;ILjava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 6
    .param p1, "delegateView"    # Landroid/view/View;
    .param p2, "delegatorPackageName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 3213
    .local p5, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3214
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3215
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3216
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3218
    invoke-direct/range {p0 .. p5}, Landroid/view/inputmethod/InputMethodManager;->startStylusHandwritingInternal(Landroid/view/View;Ljava/lang/String;ILjava/util/concurrent/Executor;Ljava/util/function/Consumer;)Z

    .line 3220
    return-void
.end method

.method public whitelist acceptStylusHandwritingDelegation(Landroid/view/View;Ljava/lang/String;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 12
    .param p1, "delegateView"    # Landroid/view/View;
    .param p2, "delegatorPackageName"    # Ljava/lang/String;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 3174
    .local p4, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3175
    const/4 v0, 0x0

    .line 3176
    .local v0, "flags":I
    invoke-static {}, Landroid/view/inputmethod/Flags;->homeScreenHandwritingDelegator()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 3177
    invoke-virtual {p1}, Landroid/view/View;->getHandwritingDelegateFlags()I

    move-result v0

    move v4, v0

    goto :goto_11

    .line 3176
    :cond_10
    move v4, v0

    .line 3179
    .end local v0    # "flags":I
    .local v4, "flags":I
    :goto_11
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    .end local p1    # "delegateView":Landroid/view/View;
    .end local p2    # "delegatorPackageName":Ljava/lang/String;
    .end local p3    # "executor":Ljava/util/concurrent/Executor;
    .end local p4    # "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    .local v2, "delegateView":Landroid/view/View;
    .local v3, "delegatorPackageName":Ljava/lang/String;
    .local v5, "executor":Ljava/util/concurrent/Executor;
    .local v6, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    invoke-virtual/range {v1 .. v6}, Landroid/view/inputmethod/InputMethodManager;->acceptStylusHandwritingDelegation(Landroid/view/View;Ljava/lang/String;ILjava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 3181
    return-void
.end method

.method public whitelist acceptStylusHandwritingDelegation(Landroid/view/View;)Z
    .registers 4
    .param p1, "delegateView"    # Landroid/view/View;

    .line 3109
    nop

    .line 3110
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 3111
    invoke-virtual {p1}, Landroid/view/View;->getHandwritingDelegateFlags()I

    move-result v1

    .line 3109
    invoke-direct {p0, p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->startStylusHandwritingInternal(Landroid/view/View;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public whitelist acceptStylusHandwritingDelegation(Landroid/view/View;Ljava/lang/String;)Z
    .registers 4
    .param p1, "delegateView"    # Landroid/view/View;
    .param p2, "delegatorPackageName"    # Ljava/lang/String;

    .line 3140
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3141
    nop

    .line 3142
    invoke-virtual {p1}, Landroid/view/View;->getHandwritingDelegateFlags()I

    move-result v0

    .line 3141
    invoke-direct {p0, p1, p2, v0}, Landroid/view/inputmethod/InputMethodManager;->startStylusHandwritingInternal(Landroid/view/View;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public blacklist addVirtualStylusIdForTestSession()V
    .registers 3

    .line 3700
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 3701
    :try_start_3
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/inputmethod/IInputMethodClient$Stub;

    invoke-static {v1}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->addVirtualStylusIdForTestSession(Lcom/android/internal/inputmethod/IInputMethodClient;)V

    .line 3702
    monitor-exit v0

    .line 3703
    return-void

    .line 3702
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public greylist checkFocus()V
    .registers 9

    .line 3766
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 3767
    :try_start_3
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    if-nez v0, :cond_9

    .line 3768
    monitor-exit v1

    return-void

    .line 3770
    :cond_9
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0}, Landroid/view/inputmethod/InputMethodManager;->checkFocusInternalLocked(ZLandroid/view/ViewRootImpl;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 3771
    monitor-exit v1

    return-void

    .line 3773
    :cond_14
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_1f

    .line 3774
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x5

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Landroid/view/inputmethod/InputMethodManager;->startInputOnWindowFocusGainInternal(ILandroid/view/View;III)Z

    .line 3777
    return-void

    .line 3773
    :catchall_1f
    move-exception v0

    :try_start_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method greylist closeCurrentInput()V
    .registers 14

    .line 3855
    const/16 v1, 0x26

    .line 3856
    .local v1, "reason":I
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    const/4 v2, 0x2

    const/4 v3, 0x5

    const/16 v4, 0x26

    const/4 v5, 0x0

    invoke-interface {v0, v2, v3, v4, v5}, Landroid/view/inputmethod/ImeTracker;->onStart(IIIZ)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v8

    .line 3858
    .local v8, "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLatency()Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;

    move-result-object v0

    new-instance v2, Landroid/view/InsetsController$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Landroid/view/InsetsController$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v0, v8, v3, v4, v2}, Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;->onRequestHide(Landroid/view/inputmethod/ImeTracker$Token;IILandroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;)V

    .line 3862
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    .line 3863
    :try_start_1e
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    if-eqz v0, :cond_29

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v0

    goto :goto_2a

    :cond_29
    const/4 v0, 0x0

    :goto_2a
    move-object v3, v0

    .line 3864
    .local v3, "rootView":Landroid/view/View;
    const/4 v0, 0x1

    if-nez v3, :cond_4a

    .line 3865
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v4

    invoke-interface {v4, v8, v0}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 3866
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLatency()Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;

    move-result-object v4

    new-instance v5, Landroid/view/InsetsController$$ExternalSyntheticLambda2;

    invoke-direct {v5}, Landroid/view/InsetsController$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v4, v8, v0, v5}, Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;->onHideFailed(Landroid/view/inputmethod/ImeTracker$Token;ILandroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;)V

    .line 3868
    const-string v0, "InputMethodManager"

    const-string v4, "No current root view, ignoring closeCurrentInput()"

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3869
    monitor-exit v2

    return-void

    .line 3872
    :cond_4a
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v4

    invoke-interface {v4, v8, v0}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 3874
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 3875
    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v4
    :try_end_5a
    .catchall {:try_start_1e .. :try_end_5a} :catchall_ab

    .line 3876
    :try_start_5a
    invoke-virtual {v3}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 3877
    .local v0, "vh":Landroid/os/Handler;
    const/16 v6, 0x42

    if-nez v0, :cond_6c

    .line 3880
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v5

    invoke-interface {v5, v8, v6}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 3882
    monitor-exit v4
    :try_end_6a
    .catchall {:try_start_5a .. :try_end_6a} :catchall_98

    :try_start_6a
    monitor-exit v2
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_ab

    return-void

    .line 3884
    :cond_6c
    :try_start_6c
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v7

    invoke-interface {v7, v8, v6}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 3887
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v7

    if-eq v6, v7, :cond_89

    .line 3893
    iget-object v5, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    .line 3894
    .local v5, "viewRootImpl":Landroid/view/ViewRootImpl;
    new-instance v6, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda7;

    invoke-direct {v6, v5, v8}, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda7;-><init>(Landroid/view/ViewRootImpl;Landroid/view/inputmethod/ImeTracker$Token;)V

    invoke-virtual {v0, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3896
    nop

    .end local v5    # "viewRootImpl":Landroid/view/ViewRootImpl;
    goto :goto_96

    .line 3897
    :cond_89
    iget-object v6, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    invoke-virtual {v6}, Landroid/view/ViewRootImpl;->getInsetsController()Landroid/view/InsetsController;

    move-result-object v6

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v7

    invoke-virtual {v6, v7, v5, v8}, Landroid/view/InsetsController;->hide(IZLandroid/view/inputmethod/ImeTracker$Token;)V

    .line 3900
    .end local v0    # "vh":Landroid/os/Handler;
    :goto_96
    monitor-exit v4

    goto :goto_a9

    :catchall_98
    move-exception v0

    monitor-exit v4
    :try_end_9a
    .catchall {:try_start_6c .. :try_end_9a} :catchall_98

    .end local v1    # "reason":I
    .end local v8    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    .end local p0    # "this":Landroid/view/inputmethod/InputMethodManager;
    :try_start_9a
    throw v0

    .line 3902
    .restart local v1    # "reason":I
    .restart local v8    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    .restart local p0    # "this":Landroid/view/inputmethod/InputMethodManager;
    :cond_9b
    iget-object v6, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/inputmethod/IInputMethodClient$Stub;

    .line 3904
    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v7

    .line 3902
    const/4 v9, 0x2

    const/4 v10, 0x0

    const/16 v11, 0x26

    const/4 v12, 0x1

    invoke-static/range {v6 .. v12}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->hideSoftInput(Lcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;IZ)Z

    .line 3911
    .end local v3    # "rootView":Landroid/view/View;
    :goto_a9
    monitor-exit v2

    .line 3912
    return-void

    .line 3911
    :catchall_ab
    move-exception v0

    monitor-exit v2
    :try_end_ad
    .catchall {:try_start_9a .. :try_end_ad} :catchall_ab

    throw v0
.end method

.method public greylist-max-o dispatchInputEvent(Landroid/view/InputEvent;Ljava/lang/Object;Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;Landroid/os/Handler;)I
    .registers 14
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "token"    # Ljava/lang/Object;
    .param p3, "callback"    # Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;
    .param p4, "handler"    # Landroid/os/Handler;

    .line 4409
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 4410
    :try_start_3
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->isImeSessionAvailableLocked()Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 4411
    instance-of v0, p1, Landroid/view/KeyEvent;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_66

    const/4 v2, 0x1

    if-eqz v0, :cond_31

    .line 4412
    :try_start_e
    move-object v0, p1

    check-cast v0, Landroid/view/KeyEvent;

    .line 4413
    .local v0, "keyEvent":Landroid/view/KeyEvent;
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_31

    .line 4414
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x3f

    if-ne v3, v4, :cond_31

    .line 4415
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_31

    .line 4416
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPickerLocked()V

    .line 4417
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_e .. :try_end_29} :catchall_2a

    return v2

    .line 4438
    .end local v0    # "keyEvent":Landroid/view/KeyEvent;
    :catchall_2a
    move-exception v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v7, p3

    move-object v8, p4

    goto :goto_6c

    .line 4425
    :cond_31
    :try_start_31
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurBindState:Landroid/view/inputmethod/InputMethodManager$BindState;

    iget-object v6, v0, Landroid/view/inputmethod/InputMethodManager$BindState;->mImeId:Ljava/lang/String;
    :try_end_35
    .catchall {:try_start_31 .. :try_end_35} :catchall_66

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v7, p3

    move-object v8, p4

    .end local p1    # "event":Landroid/view/InputEvent;
    .end local p2    # "token":Ljava/lang/Object;
    .end local p3    # "callback":Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;
    .end local p4    # "handler":Landroid/os/Handler;
    .local v4, "event":Landroid/view/InputEvent;
    .local v5, "token":Ljava/lang/Object;
    .local v7, "callback":Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;
    .local v8, "handler":Landroid/os/Handler;
    :try_start_3a
    invoke-direct/range {v3 .. v8}, Landroid/view/inputmethod/InputMethodManager;->obtainPendingEventLocked(Landroid/view/InputEvent;Ljava/lang/Object;Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;Landroid/os/Handler;)Landroid/view/inputmethod/InputMethodManager$PendingEvent;

    move-result-object p1

    .line 4427
    .local p1, "p":Landroid/view/inputmethod/InputMethodManager$PendingEvent;
    iget-object p2, v3, Landroid/view/inputmethod/InputMethodManager;->mMainLooper:Landroid/os/Looper;

    invoke-virtual {p2}, Landroid/os/Looper;->isCurrentThread()Z

    move-result p2

    if-eqz p2, :cond_4c

    .line 4429
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->sendInputEventOnMainLooperLocked(Landroid/view/inputmethod/InputMethodManager$PendingEvent;)I

    move-result p2

    monitor-exit v1

    return p2

    .line 4433
    :cond_4c
    iget-object p2, v3, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    const/4 p3, 0x5

    invoke-virtual {p2, p3, p1}, Landroid/view/inputmethod/InputMethodManager$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    .line 4434
    .local p2, "msg":Landroid/os/Message;
    invoke-virtual {p2, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 4435
    iget-object p3, v3, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    invoke-virtual {p3, p2}, Landroid/view/inputmethod/InputMethodManager$H;->sendMessage(Landroid/os/Message;)Z

    .line 4436
    monitor-exit v1

    const/4 p3, -0x1

    return p3

    .line 4438
    .end local v4    # "event":Landroid/view/InputEvent;
    .end local v5    # "token":Ljava/lang/Object;
    .end local v7    # "callback":Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;
    .end local v8    # "handler":Landroid/os/Handler;
    .local p1, "event":Landroid/view/InputEvent;
    .local p2, "token":Ljava/lang/Object;
    .restart local p3    # "callback":Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;
    .restart local p4    # "handler":Landroid/os/Handler;
    :cond_5e
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v7, p3

    move-object v8, p4

    .end local p1    # "event":Landroid/view/InputEvent;
    .end local p2    # "token":Ljava/lang/Object;
    .end local p3    # "callback":Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;
    .end local p4    # "handler":Landroid/os/Handler;
    .restart local v4    # "event":Landroid/view/InputEvent;
    .restart local v5    # "token":Ljava/lang/Object;
    .restart local v7    # "callback":Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;
    .restart local v8    # "handler":Landroid/os/Handler;
    monitor-exit v1

    .line 4439
    const/4 p1, 0x0

    return p1

    .line 4438
    .end local v4    # "event":Landroid/view/InputEvent;
    .end local v5    # "token":Ljava/lang/Object;
    .end local v7    # "callback":Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;
    .end local v8    # "handler":Landroid/os/Handler;
    .restart local p1    # "event":Landroid/view/InputEvent;
    .restart local p2    # "token":Ljava/lang/Object;
    .restart local p3    # "callback":Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;
    .restart local p4    # "handler":Landroid/os/Handler;
    :catchall_66
    move-exception v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v7, p3

    move-object v8, p4

    .end local p1    # "event":Landroid/view/InputEvent;
    .end local p2    # "token":Ljava/lang/Object;
    .end local p3    # "callback":Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;
    .end local p4    # "handler":Landroid/os/Handler;
    .restart local v4    # "event":Landroid/view/InputEvent;
    .restart local v5    # "token":Ljava/lang/Object;
    .restart local v7    # "callback":Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;
    .restart local v8    # "handler":Landroid/os/Handler;
    :goto_6c
    monitor-exit v1
    :try_end_6d
    .catchall {:try_start_3a .. :try_end_6d} :catchall_6e

    throw v0

    :catchall_6e
    move-exception v0

    goto :goto_6c
.end method

.method public whitelist dispatchKeyEventFromInputMethod(Landroid/view/View;Landroid/view/KeyEvent;)V
    .registers 8
    .param p1, "targetView"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 4458
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->getFallbackInputMethodManagerIfNecessary(Landroid/view/View;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 4459
    .local v0, "fallbackImm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_a

    .line 4460
    invoke-virtual {v0, p1, p2}, Landroid/view/inputmethod/InputMethodManager;->dispatchKeyEventFromInputMethod(Landroid/view/View;Landroid/view/KeyEvent;)V

    .line 4461
    return-void

    .line 4464
    :cond_a
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 4465
    if-eqz p1, :cond_16

    :try_start_f
    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    goto :goto_17

    .line 4475
    :catchall_14
    move-exception v2

    goto :goto_2b

    .line 4465
    :cond_16
    const/4 v2, 0x0

    .line 4466
    .local v2, "viewRootImpl":Landroid/view/ViewRootImpl;
    :goto_17
    if-nez v2, :cond_24

    .line 4467
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->getServedViewLocked()Landroid/view/View;

    move-result-object v3

    .line 4468
    .local v3, "servedView":Landroid/view/View;
    if-eqz v3, :cond_24

    .line 4469
    invoke-virtual {v3}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v4

    move-object v2, v4

    .line 4472
    .end local v3    # "servedView":Landroid/view/View;
    :cond_24
    if-eqz v2, :cond_29

    .line 4473
    invoke-virtual {v2, p2}, Landroid/view/ViewRootImpl;->dispatchKeyFromIme(Landroid/view/KeyEvent;)V

    .line 4475
    .end local v2    # "viewRootImpl":Landroid/view/ViewRootImpl;
    :cond_29
    monitor-exit v1

    .line 4476
    return-void

    .line 4475
    :goto_2b
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_14

    throw v2
.end method

.method public whitelist displayCompletions(Landroid/view/View;[Landroid/view/inputmethod/CompletionInfo;)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "completions"    # [Landroid/view/inputmethod/CompletionInfo;

    .line 2265
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->getFallbackInputMethodManagerIfNecessary(Landroid/view/View;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 2266
    .local v0, "fallbackImm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_a

    .line 2267
    invoke-virtual {v0, p1, p2}, Landroid/view/inputmethod/InputMethodManager;->displayCompletions(Landroid/view/View;[Landroid/view/inputmethod/CompletionInfo;)V

    .line 2268
    return-void

    .line 2271
    :cond_a
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 2272
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 2273
    :try_start_10
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->hasServedByInputMethodLocked(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 2274
    monitor-exit v1

    return-void

    .line 2277
    :cond_18
    iput-object p2, p0, Landroid/view/inputmethod/InputMethodManager;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 2278
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->isImeSessionAvailableLocked()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 2279
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurBindState:Landroid/view/inputmethod/InputMethodManager$BindState;

    iget-object v2, v2, Landroid/view/inputmethod/InputMethodManager$BindState;->mImeSession:Landroid/view/inputmethod/IInputMethodSessionInvoker;

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    invoke-virtual {v2, v3}, Landroid/view/inputmethod/IInputMethodSessionInvoker;->displayCompletions([Landroid/view/inputmethod/CompletionInfo;)V

    .line 2281
    :cond_29
    monitor-exit v1

    .line 2282
    return-void

    .line 2281
    :catchall_2b
    move-exception v2

    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_10 .. :try_end_2d} :catchall_2b

    throw v2
.end method

.method public blacklist doInvalidateInput(Landroid/view/inputmethod/RemoteInputConnectionImpl;Landroid/view/inputmethod/TextSnapshot;I)Z
    .registers 9
    .param p1, "inputConnection"    # Landroid/view/inputmethod/RemoteInputConnectionImpl;
    .param p2, "textSnapshot"    # Landroid/view/inputmethod/TextSnapshot;
    .param p3, "sessionId"    # I

    .line 3326
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 3327
    :try_start_3
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    const/4 v2, 0x1

    if-ne v1, p1, :cond_5e

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-nez v1, :cond_d

    goto :goto_5e

    .line 3331
    :cond_d
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->isImeSessionAvailableLocked()Z

    move-result v1

    if-nez v1, :cond_16

    .line 3333
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 3335
    :cond_16
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {v1}, Landroid/view/inputmethod/EditorInfo;->createCopyInternal()Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    .line 3336
    .local v1, "editorInfo":Landroid/view/inputmethod/EditorInfo;
    invoke-virtual {p2}, Landroid/view/inputmethod/TextSnapshot;->getSelectionStart()I

    move-result v3

    iput v3, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelStart:I

    iput v3, v1, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    .line 3337
    invoke-virtual {p2}, Landroid/view/inputmethod/TextSnapshot;->getSelectionEnd()I

    move-result v3

    iput v3, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelEnd:I

    iput v3, v1, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    .line 3338
    invoke-virtual {p2}, Landroid/view/inputmethod/TextSnapshot;->getCompositionStart()I

    move-result v3

    iput v3, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorCandStart:I

    .line 3339
    invoke-virtual {p2}, Landroid/view/inputmethod/TextSnapshot;->getCompositionEnd()I

    move-result v3

    iput v3, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorCandEnd:I

    .line 3340
    invoke-virtual {p2}, Landroid/view/inputmethod/TextSnapshot;->getCursorCapsMode()I

    move-result v3

    iput v3, v1, Landroid/view/inputmethod/EditorInfo;->initialCapsMode:I

    .line 3341
    invoke-virtual {p2}, Landroid/view/inputmethod/TextSnapshot;->getSurroundingText()Landroid/view/inputmethod/SurroundingText;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/inputmethod/EditorInfo;->setInitialSurroundingTextInternal(Landroid/view/inputmethod/SurroundingText;)V

    .line 3342
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mCurBindState:Landroid/view/inputmethod/InputMethodManager$BindState;

    iget-object v3, v3, Landroid/view/inputmethod/InputMethodManager$BindState;->mImeSession:Landroid/view/inputmethod/IInputMethodSessionInvoker;

    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-virtual {v3, v1, v4, p3}, Landroid/view/inputmethod/IInputMethodSessionInvoker;->invalidateInput(Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteInputConnection;I)V

    .line 3344
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    .line 3345
    invoke-virtual {v3}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->asIRemoteAccessibilityInputConnection()Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    move-result-object v3

    .line 3346
    .local v3, "accessibilityInputConnection":Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;
    new-instance v4, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda3;

    invoke-direct {v4, v1, v3, p3}, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda3;-><init>(Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;I)V

    invoke-direct {p0, v4}, Landroid/view/inputmethod/InputMethodManager;->forAccessibilitySessionsLocked(Ljava/util/function/Consumer;)V

    .line 3348
    monitor-exit v0

    return v2

    .line 3329
    .end local v1    # "editorInfo":Landroid/view/inputmethod/EditorInfo;
    .end local v3    # "accessibilityInputConnection":Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;
    :cond_5e
    :goto_5e
    monitor-exit v0

    return v2

    .line 3349
    :catchall_60
    move-exception v1

    monitor-exit v0
    :try_end_62
    .catchall {:try_start_3 .. :try_end_62} :catchall_60

    throw v1
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;[B)V
    .registers 9
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "icProto"    # [B

    .line 5277
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 5278
    :try_start_3
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->isImeSessionAvailableLocked()Z

    move-result v1

    if-nez v1, :cond_b

    .line 5279
    monitor-exit v0

    return-void

    .line 5282
    :cond_b
    iget v1, p0, Landroid/view/inputmethod/InputMethodManager;->mDisplayId:I

    const-wide v2, 0x10500000001L

    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 5283
    const-wide v1, 0x10b00000002L

    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 5284
    .local v1, "token":J
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mCurBindState:Landroid/view/inputmethod/InputMethodManager$BindState;

    iget-object v3, v3, Landroid/view/inputmethod/InputMethodManager$BindState;->mImeId:Ljava/lang/String;

    const-wide v4, 0x10900000001L

    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 5285
    iget-boolean v3, p0, Landroid/view/inputmethod/InputMethodManager;->mFullscreenMode:Z

    const-wide v4, 0x10800000002L

    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 5286
    iget-boolean v3, p0, Landroid/view/inputmethod/InputMethodManager;->mActive:Z

    const-wide v4, 0x10800000004L

    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 5287
    iget-boolean v3, p0, Landroid/view/inputmethod/InputMethodManager;->mServedConnecting:Z

    const-wide v4, 0x10800000005L

    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 5288
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-static {v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-wide v4, 0x10900000006L

    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 5289
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedView:Landroid/view/View;

    invoke-static {v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-wide v4, 0x10900000007L

    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 5290
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 5291
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    if-eqz v3, :cond_75

    .line 5292
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    const-wide v4, 0x10b00000003L

    invoke-virtual {v3, p1, v4, v5}, Landroid/view/ViewRootImpl;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 5294
    :cond_75
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-eqz v3, :cond_83

    .line 5295
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentEditorInfo:Landroid/view/inputmethod/EditorInfo;

    const-wide v4, 0x10b00000006L

    invoke-virtual {v3, p1, v4, v5}, Landroid/view/inputmethod/EditorInfo;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 5297
    :cond_83
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mImeInsetsConsumer:Landroid/view/ImeInsetsSourceConsumer;

    if-eqz v3, :cond_91

    .line 5298
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mImeInsetsConsumer:Landroid/view/ImeInsetsSourceConsumer;

    const-wide v4, 0x10b00000005L

    invoke-virtual {v3, p1, v4, v5}, Landroid/view/ImeInsetsSourceConsumer;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 5300
    :cond_91
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    if-eqz v3, :cond_9f

    .line 5301
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    const-wide v4, 0x10b00000008L

    invoke-virtual {v3, p1, v4, v5}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 5303
    :cond_9f
    if-eqz p2, :cond_a9

    .line 5304
    const-wide v3, 0x10b00000009L

    invoke-virtual {p1, v3, v4, p2}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V

    .line 5306
    .end local v1    # "token":J
    :cond_a9
    monitor-exit v0

    .line 5307
    return-void

    .line 5306
    :catchall_ab
    move-exception v1

    monitor-exit v0
    :try_end_ad
    .catchall {:try_start_3 .. :try_end_ad} :catchall_ab

    throw v1
.end method

.method greylist finishInputLocked()V
    .registers 4

    .line 2220
    const/4 v0, 0x0

    .line 2221
    .local v0, "clearedView":Landroid/view/View;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedView:Landroid/view/View;

    .line 2222
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v2, :cond_23

    .line 2223
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    .line 2224
    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    .line 2225
    invoke-static {}, Landroid/view/inputmethod/Flags;->initiationWithoutInputConnection()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    if-eqz v2, :cond_23

    .line 2226
    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getHandwritingInitiator()Landroid/view/HandwritingInitiator;

    move-result-object v2

    .line 2227
    invoke-virtual {v2, v0}, Landroid/view/HandwritingInitiator;->clearFocusedView(Landroid/view/View;)V

    .line 2230
    :cond_23
    if-eqz v0, :cond_30

    .line 2235
    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 2236
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedConnecting:Z

    .line 2237
    const/4 v2, -0x1

    iput v2, p0, Landroid/view/inputmethod/InputMethodManager;->mLastPendingStartSeqId:I

    .line 2238
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->clearConnectionLocked()V

    .line 2240
    :cond_30
    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mReportInputConnectionOpenedRunner:Landroid/view/inputmethod/InputMethodManager$ReportInputConnectionOpenedRunner;

    .line 2242
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mImeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;

    invoke-virtual {v1}, Landroid/window/ImeOnBackInvokedDispatcher;->clear()V

    .line 2243
    return-void
.end method

.method public blacklist finishTrackingPendingImeVisibilityRequests()V
    .registers 1

    .line 4696
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->finishTrackingPendingImeVisibilityRequests()V

    .line 4697
    return-void
.end method

.method public whitelist getCurrentInputMethodInfo()Landroid/view/inputmethod/InputMethodInfo;
    .registers 2

    .line 1918
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 1917
    invoke-static {v0}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getCurrentInputMethodInfoAsUser(I)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCurrentInputMethodInfoAsUser(Landroid/os/UserHandle;)Landroid/view/inputmethod/InputMethodInfo;
    .registers 3
    .param p1, "user"    # Landroid/os/UserHandle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1932
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1933
    nop

    .line 1934
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 1933
    invoke-static {v0}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getCurrentInputMethodInfoAsUser(I)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;
    .registers 2

    .line 4735
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {v0}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getCurrentInputMethodSubtype(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDelegate()Landroid/view/inputmethod/InputMethodManager$DelegateImpl;
    .registers 2

    .line 1074
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mDelegate:Landroid/view/inputmethod/InputMethodManager$DelegateImpl;

    return-object v0
.end method

.method public blacklist getDisplayId()I
    .registers 2

    .line 5037
    iget v0, p0, Landroid/view/inputmethod/InputMethodManager;->mDisplayId:I

    return v0
.end method

.method public whitelist getEnabledInputMethodList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 1949
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {v0}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getEnabledInputMethodList(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getEnabledInputMethodListAsUser(Landroid/os/UserHandle;)Ljava/util/List;
    .registers 3
    .param p1, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 1968
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {v0}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getEnabledInputMethodList(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;
    .registers 5
    .param p1, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p2, "allowsImplicitlyEnabledSubtypes"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/inputmethod/InputMethodInfo;",
            "Z)",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation

    .line 1986
    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_8

    :cond_4
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v0

    .line 1988
    :goto_8
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 1985
    invoke-static {v0, p2, v1}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getEnabledInputMethodSubtypeList(Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getEnabledInputMethodSubtypeListAsUser(Ljava/lang/String;ZLandroid/os/UserHandle;)Ljava/util/List;
    .registers 6
    .param p1, "imeId"    # Ljava/lang/String;
    .param p2, "allowsImplicitlyEnabledSubtypes"    # Z
    .param p3, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation

    .line 2011
    nop

    .line 2012
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2013
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 2011
    invoke-static {v0, p2, v1}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getEnabledInputMethodSubtypeList(Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method blacklist getFallbackContextFromServedView()Landroid/content/Context;
    .registers 4

    .line 859
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 860
    :try_start_3
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 861
    monitor-exit v0

    return-object v2

    .line 863
    :cond_a
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v1, :cond_14

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    :cond_14
    monitor-exit v0

    return-object v2

    .line 864
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public blacklist getImeOnBackInvokedDispatcher()Landroid/window/ImeOnBackInvokedDispatcher;
    .registers 2

    .line 3784
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mImeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;

    return-object v0
.end method

.method public whitelist getInputMethodList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 1790
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getInputMethodList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getInputMethodListAsUser(I)Ljava/util/List;
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 1883
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getInputMethodList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getInputMethodListAsUser(II)Ljava/util/List;
    .registers 4
    .param p1, "userId"    # I
    .param p2, "directBootAwareness"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 1903
    invoke-static {p1, p2}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getInputMethodList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public greylist getInputMethodWindowVisibleHeight()I
    .registers 2

    .line 4846
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/inputmethod/IInputMethodClient$Stub;

    invoke-static {v0}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getInputMethodWindowVisibleHeight(Lcom/android/internal/inputmethod/IInputMethodClient;)I

    move-result v0

    return v0
.end method

.method public whitelist getLastInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;
    .registers 2

    .line 5027
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {v0}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getLastInputMethodSubtype(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getShortcutInputMethodsAndSubtypes()Ljava/util/Map;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;>;"
        }
    .end annotation

    .line 4812
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v0

    .line 4815
    .local v0, "enabledImes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    new-instance v1, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v1}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 4817
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 4818
    .local v1, "numEnabledImes":I
    const/4 v2, 0x0

    .local v2, "imiIndex":I
    :goto_15
    if-ge v2, v1, :cond_49

    .line 4819
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    .line 4820
    .local v3, "imi":Landroid/view/inputmethod/InputMethodInfo;
    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v4

    .line 4822
    .local v4, "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 4823
    .local v5, "subtypeCount":I
    const/4 v6, 0x0

    .local v6, "subtypeIndex":I
    :goto_27
    if-ge v6, v5, :cond_46

    .line 4824
    invoke-virtual {v3, v6}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v7

    .line 4825
    .local v7, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    const-string/jumbo v8, "voice"

    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_43

    .line 4826
    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-static {v3, v8}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v8

    return-object v8

    .line 4823
    .end local v7    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_43
    add-int/lit8 v6, v6, 0x1

    goto :goto_27

    .line 4818
    .end local v3    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v4    # "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v5    # "subtypeCount":I
    .end local v6    # "subtypeIndex":I
    :cond_46
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 4830
    .end local v2    # "imiIndex":I
    :cond_49
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    return-object v2
.end method

.method public blacklist hasActiveInputConnection(Landroid/view/View;)Z
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 1091
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 1092
    :try_start_3
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    if-eqz v1, :cond_21

    if-eqz p1, :cond_21

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-ne v1, p1, :cond_21

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    if-eqz v1, :cond_21

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    .line 1096
    invoke-virtual {v1, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->isAssociatedWith(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 1097
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->isImeSessionAvailableLocked()Z

    move-result v1

    if-eqz v1, :cond_21

    const/4 v1, 0x1

    goto :goto_22

    :cond_21
    const/4 v1, 0x0

    :goto_22
    monitor-exit v0

    .line 1092
    return v1

    .line 1098
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v1
.end method

.method public blacklist hasPendingImeVisibilityRequests()Z
    .registers 2

    .line 4683
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->hasPendingImeVisibilityRequests()Z

    move-result v0

    return v0
.end method

.method public whitelist hideSoftInputFromInputMethod(Landroid/os/IBinder;I)V
    .registers 9
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "flags"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4368
    const/16 v0, 0x20

    .line 4369
    .local v0, "reason":I
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x5

    const/16 v5, 0x20

    invoke-interface {v1, v3, v4, v5, v2}, Landroid/view/inputmethod/ImeTracker;->onStart(IIIZ)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v1

    .line 4371
    .local v1, "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    invoke-static {p1}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->get(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    move-result-object v2

    invoke-virtual {v2, v1, p2, v5}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->hideMySoftInput(Landroid/view/inputmethod/ImeTracker$Token;II)V

    .line 4373
    return-void
.end method

.method public blacklist hideSoftInputFromServerForTest()V
    .registers 1

    .line 2792
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->hideSoftInputFromServerForTest()V

    .line 2793
    return-void
.end method

.method public blacklist hideSoftInputFromView(Landroid/view/View;I)Z
    .registers 21
    .param p1, "view"    # Landroid/view/View;
    .param p2, "flags"    # I

    .line 2743
    move-object/from16 v1, p0

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 2744
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->hasWindowFocus()Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_15

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_15

    move v0, v3

    goto :goto_16

    :cond_15
    move v0, v2

    :goto_16
    move v7, v0

    .line 2745
    .local v7, "isFocusedAndWindowFocused":Z
    iget-object v8, v1, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v8

    .line 2746
    :try_start_1a
    invoke-direct/range {p0 .. p1}, Landroid/view/inputmethod/InputMethodManager;->hasServedByInputMethodLocked(Landroid/view/View;)Z

    move-result v0

    .line 2747
    .local v0, "hasServedByInputMethod":Z
    if-nez v7, :cond_24

    if-nez v0, :cond_24

    .line 2750
    monitor-exit v8

    return v2

    .line 2753
    :cond_24
    const/16 v9, 0x27

    .line 2754
    .local v9, "reason":I
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v4

    .line 2755
    invoke-static/range {p1 .. p1}, Landroid/view/inputmethod/ImeTracker;->isFromUser(Landroid/view/View;)Z

    move-result v5

    .line 2754
    const/16 v6, 0x27

    const/4 v10, 0x5

    const/4 v11, 0x2

    invoke-interface {v4, v11, v10, v6, v5}, Landroid/view/inputmethod/ImeTracker;->onStart(IIIZ)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v4

    move-object v13, v4

    .line 2756
    .local v13, "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLatency()Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;

    move-result-object v4

    new-instance v5, Landroid/view/InsetsController$$ExternalSyntheticLambda2;

    invoke-direct {v5}, Landroid/view/InsetsController$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v4, v13, v10, v6, v5}, Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;->onRequestHide(Landroid/view/inputmethod/ImeTracker$Token;IILandroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;)V

    .line 2758
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v4

    const-string v5, "InputMethodManager#hideSoftInputFromView"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v1, v6}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    .line 2761
    if-nez v0, :cond_84

    .line 2762
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v4

    invoke-interface {v4, v13, v3}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 2763
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLatency()Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;

    move-result-object v4

    new-instance v5, Landroid/view/InsetsController$$ExternalSyntheticLambda2;

    invoke-direct {v5}, Landroid/view/InsetsController$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v4, v13, v3, v5}, Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;->onShowFailed(Landroid/view/inputmethod/ImeTracker$Token;ILandroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;)V

    .line 2765
    const-string v3, "InputMethodManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring hideSoftInputFromView() as view="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4
    :try_end_6f
    .catchall {:try_start_1a .. :try_end_6f} :catchall_b8

    move-object/from16 v10, p1

    :try_start_71
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not served."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2766
    monitor-exit v8

    return v2

    .line 2769
    :cond_84
    move-object/from16 v10, p1

    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v2

    invoke-interface {v2, v13, v3}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 2771
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v2

    if-eqz v2, :cond_a3

    .line 2772
    invoke-virtual {v10}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v4, 0x0

    const/16 v5, 0x27

    move/from16 v3, p2

    move-object v6, v13

    .end local v13    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    .local v6, "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    invoke-direct/range {v1 .. v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;ILandroid/os/ResultReceiver;ILandroid/view/inputmethod/ImeTracker$Token;)Z

    move-result v2

    .end local v6    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    .restart local v13    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    monitor-exit v8

    return v2

    .line 2775
    :cond_a3
    iget-object v11, v1, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/inputmethod/IInputMethodClient$Stub;

    .line 2776
    invoke-virtual {v10}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v12

    iget-boolean v2, v1, Landroid/view/inputmethod/InputMethodManager;->mAsyncShowHideMethodEnabled:Z

    .line 2775
    const/4 v15, 0x0

    const/16 v16, 0x27

    move/from16 v14, p2

    move/from16 v17, v2

    invoke-static/range {v11 .. v17}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->hideSoftInput(Lcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;IZ)Z

    move-result v2

    monitor-exit v8

    return v2

    .line 2779
    .end local v0    # "hasServedByInputMethod":Z
    .end local v9    # "reason":I
    .end local v13    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    :catchall_b8
    move-exception v0

    move-object/from16 v10, p1

    :goto_bb
    monitor-exit v8
    :try_end_bc
    .catchall {:try_start_71 .. :try_end_bc} :catchall_bd

    throw v0

    :catchall_bd
    move-exception v0

    goto :goto_bb
.end method

.method public whitelist hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    .registers 4
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "flags"    # I

    .line 2605
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;ILandroid/os/ResultReceiver;)Z

    move-result v0

    return v0
.end method

.method public whitelist hideSoftInputFromWindow(Landroid/os/IBinder;ILandroid/os/ResultReceiver;)Z
    .registers 10
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "flags"    # I
    .param p3, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 2644
    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    .end local p1    # "windowToken":Landroid/os/IBinder;
    .end local p2    # "flags":I
    .end local p3    # "resultReceiver":Landroid/os/ResultReceiver;
    .local v1, "windowToken":Landroid/os/IBinder;
    .local v2, "flags":I
    .local v3, "resultReceiver":Landroid/os/ResultReceiver;
    invoke-direct/range {v0 .. v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;ILandroid/os/ResultReceiver;ILandroid/view/inputmethod/ImeTracker$Token;)Z

    move-result p1

    return p1
.end method

.method public whitelist hideStatusIcon(Landroid/os/IBinder;)V
    .registers 5
    .param p1, "imeToken"    # Landroid/os/IBinder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2034
    invoke-static {p1}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->get(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->updateStatusIconAsync(Ljava/lang/String;I)V

    .line 2035
    return-void
.end method

.method public whitelist invalidateInput(Landroid/view/View;)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;

    .line 3371
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3377
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->getFallbackInputMethodManagerIfNecessary(Landroid/view/View;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 3378
    .local v0, "fallbackImm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_d

    .line 3379
    invoke-virtual {v0, p1}, Landroid/view/inputmethod/InputMethodManager;->invalidateInput(Landroid/view/View;)V

    .line 3380
    return-void

    .line 3383
    :cond_d
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 3384
    :try_start_10
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    if-eqz v2, :cond_2a

    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->getServedViewLocked()Landroid/view/View;

    move-result-object v2

    if-eq v2, p1, :cond_1b

    goto :goto_2a

    .line 3387
    :cond_1b
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    iget v3, p0, Landroid/view/inputmethod/InputMethodManager;->mLastPendingStartSeqId:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_24

    const/4 v3, 0x1

    goto :goto_25

    :cond_24
    const/4 v3, 0x0

    :goto_25
    invoke-virtual {v2, v3}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->scheduleInvalidateInput(Z)V

    .line 3389
    monitor-exit v1

    .line 3390
    return-void

    .line 3385
    :cond_2a
    :goto_2a
    monitor-exit v1

    return-void

    .line 3389
    :catchall_2c
    move-exception v2

    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_10 .. :try_end_2e} :catchall_2c

    throw v2
.end method

.method public whitelist isAcceptingText()Z
    .registers 3

    .line 2119
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 2120
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 2121
    :try_start_6
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    monitor-exit v0

    return v1

    .line 2122
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public whitelist isActive()Z
    .registers 3

    .line 2094
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 2095
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 2096
    :try_start_6
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->getServedViewLocked()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_12

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    monitor-exit v0

    return v1

    .line 2097
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public whitelist isActive(Landroid/view/View;)Z
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .line 2079
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->getFallbackInputMethodManagerIfNecessary(Landroid/view/View;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 2080
    .local v0, "fallbackImm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_b

    .line 2081
    invoke-virtual {v0, p1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    return v1

    .line 2084
    :cond_b
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 2085
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 2086
    :try_start_11
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->hasServedByInputMethodLocked(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1d

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-eqz v2, :cond_1d

    const/4 v2, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v2, 0x0

    :goto_1e
    monitor-exit v1

    return v2

    .line 2087
    :catchall_20
    move-exception v2

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_11 .. :try_end_22} :catchall_20

    throw v2
.end method

.method public whitelist isConnectionlessStylusHandwritingAvailable()Z
    .registers 5

    .line 1851
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    if-nez v0, :cond_8

    .line 1852
    const/4 v0, 0x0

    return v0

    .line 1854
    :cond_8
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 1855
    :try_start_b
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mConnectionlessStylusHandwritingAvailableCache:Landroid/app/PropertyInvalidatedCache;

    if-nez v1, :cond_19

    .line 1856
    new-instance v1, Landroid/view/inputmethod/InputMethodManager$4;

    const-string v2, "cache_key.system_server.connectionless_stylus_handwriting"

    const/4 v3, 0x4

    invoke-direct {v1, p0, v3, v2}, Landroid/view/inputmethod/InputMethodManager$4;-><init>(Landroid/view/inputmethod/InputMethodManager;ILjava/lang/String;)V

    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mConnectionlessStylusHandwritingAvailableCache:Landroid/app/PropertyInvalidatedCache;

    .line 1865
    :cond_19
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mConnectionlessStylusHandwritingAvailableCache:Landroid/app/PropertyInvalidatedCache;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/PropertyInvalidatedCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1866
    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_b .. :try_end_31} :catchall_2f

    throw v1
.end method

.method public blacklist isCurrentRootView(Landroid/view/View;)Z
    .registers 5
    .param p1, "attachedView"    # Landroid/view/View;

    .line 2109
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 2110
    :try_start_3
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    if-ne v1, v2, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    monitor-exit v0

    return v1

    .line 2111
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public greylist-max-r isCursorAnchorInfoEnabled()Z
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4126
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 4127
    :try_start_3
    iget v1, p0, Landroid/view/inputmethod/InputMethodManager;->mRequestUpdateCursorAnchorInfoMonitorMode:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    const/4 v3, 0x0

    if-eqz v1, :cond_c

    move v1, v2

    goto :goto_d

    :cond_c
    move v1, v3

    .line 4129
    .local v1, "isImmediate":Z
    :goto_d
    iget v4, p0, Landroid/view/inputmethod/InputMethodManager;->mRequestUpdateCursorAnchorInfoMonitorMode:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_15

    move v4, v2

    goto :goto_16

    :cond_15
    move v4, v3

    .line 4131
    .local v4, "isMonitoring":Z
    :goto_16
    if-nez v1, :cond_1c

    if-eqz v4, :cond_1b

    goto :goto_1c

    :cond_1b
    move v2, v3

    :cond_1c
    :goto_1c
    monitor-exit v0

    return v2

    .line 4132
    .end local v1    # "isImmediate":Z
    .end local v4    # "isMonitoring":Z
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public whitelist isFullscreenMode()Z
    .registers 3

    .line 2069
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 2070
    :try_start_3
    iget-boolean v1, p0, Landroid/view/inputmethod/InputMethodManager;->mFullscreenMode:Z

    monitor-exit v0

    return v1

    .line 2071
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public blacklist isInputMethodPickerShown()Z
    .registers 2

    .line 4644
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->isInputMethodPickerShownForTest()Z

    move-result v0

    return v0
.end method

.method public whitelist isInputMethodSuppressingSpellChecker()Z
    .registers 3

    .line 2129
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 2130
    :try_start_3
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurBindState:Landroid/view/inputmethod/InputMethodManager$BindState;

    if-eqz v1, :cond_f

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurBindState:Landroid/view/inputmethod/InputMethodManager$BindState;

    iget-boolean v1, v1, Landroid/view/inputmethod/InputMethodManager$BindState;->mIsInputMethodSuppressingSpellChecker:Z

    if-eqz v1, :cond_f

    const/4 v1, 0x1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    monitor-exit v0

    return v1

    .line 2132
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public whitelist isStylusHandwritingAvailable()Z
    .registers 2

    .line 1802
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/inputmethod/InputMethodManager;->isStylusHandwritingAvailableAsUser(Landroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method public blacklist isStylusHandwritingAvailableAsUser(Landroid/os/UserHandle;)Z
    .registers 7
    .param p1, "user"    # Landroid/os/UserHandle;

    .line 1824
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 1825
    .local v0, "fallbackContext":Landroid/content/Context;
    if-nez v0, :cond_8

    .line 1826
    const/4 v1, 0x0

    return v1

    .line 1829
    :cond_8
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 1830
    :try_start_b
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mStylusHandwritingAvailableCache:Landroid/app/PropertyInvalidatedCache;

    if-nez v2, :cond_19

    .line 1831
    new-instance v2, Landroid/view/inputmethod/InputMethodManager$3;

    const-string v3, "cache_key.system_server.stylus_handwriting"

    const/4 v4, 0x4

    invoke-direct {v2, p0, v4, v3}, Landroid/view/inputmethod/InputMethodManager$3;-><init>(Landroid/view/inputmethod/InputMethodManager;ILjava/lang/String;)V

    iput-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mStylusHandwritingAvailableCache:Landroid/app/PropertyInvalidatedCache;

    .line 1840
    :cond_19
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mStylusHandwritingAvailableCache:Landroid/app/PropertyInvalidatedCache;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/PropertyInvalidatedCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1841
    .local v2, "isAvailable":Z
    monitor-exit v1

    .line 1842
    return v2

    .line 1841
    .end local v2    # "isAvailable":Z
    :catchall_2f
    move-exception v2

    monitor-exit v1
    :try_end_31
    .catchall {:try_start_b .. :try_end_31} :catchall_2f

    throw v2
.end method

.method public whitelist isWatchingCursor(Landroid/view/View;)Z
    .registers 3
    .param p1, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4113
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist notifyImeHidden(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;)V
    .registers 13
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "statsToken"    # Landroid/view/inputmethod/ImeTracker$Token;

    .line 3984
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLatency()Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;

    move-result-object v0

    new-instance v1, Landroid/view/InsetsController$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Landroid/view/InsetsController$$ExternalSyntheticLambda2;-><init>()V

    const/4 v2, 0x5

    const/16 v3, 0x1c

    invoke-virtual {v0, p2, v2, v3, v1}, Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;->onRequestHide(Landroid/view/inputmethod/ImeTracker$Token;IILandroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;)V

    .line 3987
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    const-string v1, "InputMethodManager#notifyImeHidden"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    .line 3989
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 3990
    :try_start_1c
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->isImeSessionAvailableLocked()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_47

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    if-eqz v0, :cond_47

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    .line 3991
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eq v0, p1, :cond_32

    move-object v4, p1

    move-object v5, p2

    goto :goto_49

    .line 3998
    :cond_32
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    invoke-interface {v0, p2, v2}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 4000
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/inputmethod/IInputMethodClient$Stub;
    :try_end_3b
    .catchall {:try_start_1c .. :try_end_3b} :catchall_5e

    const/16 v8, 0x1c

    const/4 v9, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, p1

    move-object v5, p2

    .end local p1    # "windowToken":Landroid/os/IBinder;
    .end local p2    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    .local v4, "windowToken":Landroid/os/IBinder;
    .local v5, "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    :try_start_42
    invoke-static/range {v3 .. v9}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->hideSoftInput(Lcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;IZ)Z

    .line 4003
    monitor-exit v1

    .line 4004
    return-void

    .line 3990
    .end local v4    # "windowToken":Landroid/os/IBinder;
    .end local v5    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    .restart local p1    # "windowToken":Landroid/os/IBinder;
    .restart local p2    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    :cond_47
    move-object v4, p1

    move-object v5, p2

    .line 3992
    .end local p1    # "windowToken":Landroid/os/IBinder;
    .end local p2    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    .restart local v4    # "windowToken":Landroid/os/IBinder;
    .restart local v5    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    :goto_49
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p1

    invoke-interface {p1, v5, v2}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 3993
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLatency()Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;

    move-result-object p1

    new-instance p2, Landroid/view/InsetsController$$ExternalSyntheticLambda2;

    invoke-direct {p2}, Landroid/view/InsetsController$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p1, v5, v2, p2}, Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;->onHideFailed(Landroid/view/inputmethod/ImeTracker$Token;ILandroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;)V

    .line 3995
    monitor-exit v1

    return-void

    .line 4003
    .end local v4    # "windowToken":Landroid/os/IBinder;
    .end local v5    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    .restart local p1    # "windowToken":Landroid/os/IBinder;
    .restart local p2    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    :catchall_5e
    move-exception v0

    move-object v4, p1

    move-object v5, p2

    move-object p1, v0

    .end local p1    # "windowToken":Landroid/os/IBinder;
    .end local p2    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    .restart local v4    # "windowToken":Landroid/os/IBinder;
    .restart local v5    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    :goto_62
    monitor-exit v1
    :try_end_63
    .catchall {:try_start_42 .. :try_end_63} :catchall_64

    throw p1

    :catchall_64
    move-exception v0

    move-object p1, v0

    goto :goto_62
.end method

.method public greylist notifySuggestionPicked(Landroid/text/style/SuggestionSpan;Ljava/lang/String;I)V
    .registers 6
    .param p1, "span"    # Landroid/text/style/SuggestionSpan;
    .param p2, "originalString"    # Ljava/lang/String;
    .param p3, "index"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2060
    const-string v0, "InputMethodManager"

    const-string v1, "notifySuggestionPicked() is deprecated.  Does nothing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2061
    return-void
.end method

.method public greylist-max-p notifyUserAction()V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4803
    const-string v0, "InputMethodManager"

    const-string v1, "notifyUserAction() is a hidden method, which is now just a stub method that does nothing.  Leave comments in b.android.com/114740982 if your  application still depends on the previous behavior of this method."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4806
    return-void
.end method

.method public blacklist onImeSwitchButtonClickFromSystem(I)V
    .registers 2
    .param p1, "displayId"    # I

    .line 4658
    invoke-static {p1}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->onImeSwitchButtonClickFromSystem(I)V

    .line 4659
    return-void
.end method

.method public whitelist prepareStylusHandwritingDelegation(Landroid/view/View;)V
    .registers 3
    .param p1, "delegatorView"    # Landroid/view/View;

    .line 3040
    nop

    .line 3041
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 3040
    invoke-virtual {p0, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->prepareStylusHandwritingDelegation(Landroid/view/View;Ljava/lang/String;)V

    .line 3042
    return-void
.end method

.method public whitelist prepareStylusHandwritingDelegation(Landroid/view/View;Ljava/lang/String;)V
    .registers 7
    .param p1, "delegatorView"    # Landroid/view/View;
    .param p2, "delegatePackageName"    # Ljava/lang/String;

    .line 3070
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3071
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3074
    nop

    .line 3075
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->getFallbackInputMethodManagerIfNecessary(Landroid/view/View;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 3076
    .local v0, "fallbackImm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_10

    .line 3077
    invoke-virtual {v0, p1, p2}, Landroid/view/inputmethod/InputMethodManager;->prepareStylusHandwritingDelegation(Landroid/view/View;Ljava/lang/String;)V

    .line 3080
    :cond_10
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/inputmethod/IInputMethodClient$Stub;

    .line 3082
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 3084
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    .line 3080
    invoke-static {v1, v2, p2, v3}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->prepareStylusHandwritingDelegation(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;)V

    .line 3085
    return-void
.end method

.method public blacklist registerImeConsumer(Landroid/view/ImeInsetsSourceConsumer;)V
    .registers 4
    .param p1, "imeInsetsConsumer"    # Landroid/view/ImeInsetsSourceConsumer;

    .line 3920
    if-eqz p1, :cond_c

    .line 3924
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 3925
    :try_start_5
    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager;->mImeInsetsConsumer:Landroid/view/ImeInsetsSourceConsumer;

    .line 3926
    monitor-exit v0

    .line 3927
    return-void

    .line 3926
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_9

    throw v1

    .line 3921
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ImeInsetsSourceConsumer cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist registerSuggestionSpansForNotification([Landroid/text/style/SuggestionSpan;)V
    .registers 4
    .param p1, "spans"    # [Landroid/text/style/SuggestionSpan;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2048
    const-string v0, "InputMethodManager"

    const-string/jumbo v1, "registerSuggestionSpansForNotification() is deprecated.  Does nothing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2049
    return-void
.end method

.method public blacklist removeImeSurface(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "windowToken"    # Landroid/os/IBinder;

    .line 4012
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 4013
    :try_start_3
    invoke-static {p1}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->removeImeSurfaceFromWindowAsync(Landroid/os/IBinder;)V

    .line 4014
    monitor-exit v0

    .line 4015
    return-void

    .line 4014
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public blacklist reportPerceptible(Landroid/os/IBinder;Z)V
    .registers 3
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "perceptible"    # Z

    .line 879
    invoke-static {p1, p2}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->reportPerceptibleAsync(Landroid/os/IBinder;Z)V

    .line 880
    return-void
.end method

.method public blacklist requestImeShow(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;)Z
    .registers 11
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "statsToken"    # Landroid/view/inputmethod/ImeTracker$Token;

    .line 3957
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 3958
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 3959
    :try_start_6
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->getServedViewLocked()Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    .line 3960
    .local v3, "servedView":Landroid/view/View;
    const/16 v0, 0x25

    if-eqz v3, :cond_2a

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eq v2, p1, :cond_17

    move-object v4, p2

    goto :goto_2b

    .line 3966
    :cond_17
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v2

    invoke-interface {v2, p2, v0}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_35

    .line 3969
    const/4 v6, 0x0

    const/16 v7, 0x1a

    const/4 v5, 0x0

    move-object v2, p0

    move-object v4, p2

    .end local p2    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    .local v4, "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    :try_start_24
    invoke-direct/range {v2 .. v7}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;I)Z

    .line 3971
    monitor-exit v1

    const/4 p2, 0x1

    return p2

    .line 3960
    .end local v4    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    .restart local p2    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    :cond_2a
    move-object v4, p2

    .line 3961
    .end local p2    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    .restart local v4    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    :goto_2b
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p2

    invoke-interface {p2, v4, v0}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 3963
    monitor-exit v1

    const/4 p2, 0x0

    return p2

    .line 3972
    .end local v3    # "servedView":Landroid/view/View;
    .end local v4    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    .restart local p2    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    :catchall_35
    move-exception v0

    move-object v4, p2

    move-object p2, v0

    .end local p2    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    .restart local v4    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    :goto_38
    monitor-exit v1
    :try_end_39
    .catchall {:try_start_24 .. :try_end_39} :catchall_3a

    throw p2

    :catchall_3a
    move-exception v0

    move-object p2, v0

    goto :goto_38
.end method

.method public whitelist restartInput(Landroid/view/View;)V
    .registers 11
    .param p1, "view"    # Landroid/view/View;

    .line 3296
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->getFallbackInputMethodManagerIfNecessary(Landroid/view/View;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 3297
    .local v1, "fallbackImm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_a

    .line 3298
    invoke-virtual {v1, p1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 3299
    return-void

    .line 3302
    :cond_a
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 3303
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    .line 3304
    :try_start_10
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->hasServedByInputMethodLocked(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 3305
    monitor-exit v2

    return-void

    .line 3308
    :cond_18
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedConnecting:Z

    .line 3309
    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_10 .. :try_end_1c} :catchall_26

    .line 3311
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Landroid/view/inputmethod/InputMethodManager;->startInputInner(ILandroid/os/IBinder;III)Z

    .line 3312
    return-void

    .line 3309
    :catchall_26
    move-exception v0

    :try_start_27
    monitor-exit v2
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v0
.end method

.method public whitelist sendAppPrivateCommand(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "data"    # Landroid/os/Bundle;

    .line 4233
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->getFallbackInputMethodManagerIfNecessary(Landroid/view/View;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 4234
    .local v0, "fallbackImm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_a

    .line 4235
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/inputmethod/InputMethodManager;->sendAppPrivateCommand(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 4236
    return-void

    .line 4239
    :cond_a
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 4240
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 4241
    :try_start_10
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->hasServedByInputMethodLocked(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2a

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-eqz v2, :cond_2a

    .line 4242
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->isImeSessionAvailableLocked()Z

    move-result v2

    if-nez v2, :cond_21

    goto :goto_2a

    .line 4246
    :cond_21
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurBindState:Landroid/view/inputmethod/InputMethodManager$BindState;

    iget-object v2, v2, Landroid/view/inputmethod/InputMethodManager$BindState;->mImeSession:Landroid/view/inputmethod/IInputMethodSessionInvoker;

    invoke-virtual {v2, p2, p3}, Landroid/view/inputmethod/IInputMethodSessionInvoker;->appPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 4247
    monitor-exit v1

    .line 4248
    return-void

    .line 4243
    :cond_2a
    :goto_2a
    monitor-exit v1

    return-void

    .line 4247
    :catchall_2c
    move-exception v2

    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_10 .. :try_end_2e} :catchall_2c

    throw v2
.end method

.method public whitelist setAdditionalInputMethodSubtypes(Ljava/lang/String;[Landroid/view/inputmethod/InputMethodSubtype;)V
    .registers 4
    .param p1, "imiId"    # Ljava/lang/String;
    .param p2, "subtypes"    # [Landroid/view/inputmethod/InputMethodSubtype;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4966
    nop

    .line 4967
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 4966
    invoke-static {p1, p2, v0}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->setAdditionalInputMethodSubtypes(Ljava/lang/String;[Landroid/view/inputmethod/InputMethodSubtype;I)V

    .line 4968
    return-void
.end method

.method public whitelist setCurrentInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)Z
    .registers 12
    .param p1, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4753
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x3e8

    const/4 v2, 0x0

    if-ne v0, v1, :cond_11

    .line 4754
    const-string v0, "InputMethodManager"

    const-string v1, "System process should not call setCurrentInputMethodSubtype() because almost always it is a bug under multi-user / multi-profile environment. Consider directly interacting with InputMethodManagerService via LocalServices."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4758
    return v2

    .line 4760
    :cond_11
    if-nez p1, :cond_14

    .line 4762
    return v2

    .line 4764
    :cond_14
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 4765
    .local v0, "fallbackContext":Landroid/content/Context;
    if-nez v0, :cond_1b

    .line 4766
    return v2

    .line 4768
    :cond_1b
    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_24

    .line 4770
    return v2

    .line 4772
    :cond_24
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 4773
    .local v1, "contentResolver":Landroid/content/ContentResolver;
    const-string v3, "default_input_method"

    invoke-static {v1, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4775
    .local v3, "imeId":Ljava/lang/String;
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    if-nez v4, :cond_35

    .line 4777
    return v2

    .line 4779
    :cond_35
    nop

    .line 4781
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    .line 4780
    const/4 v5, 0x1

    invoke-static {v3, v5, v4}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getEnabledInputMethodSubtypeList(Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v4

    .line 4782
    .local v4, "enabledSubtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    .line 4783
    .local v6, "numSubtypes":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_44
    if-ge v7, v6, :cond_61

    .line 4784
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/inputmethod/InputMethodSubtype;

    .line 4785
    .local v8, "enabledSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v8, p1}, Landroid/view/inputmethod/InputMethodSubtype;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5e

    .line 4786
    nop

    .line 4787
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v2

    .line 4786
    const-string/jumbo v9, "selected_input_method_subtype"

    invoke-static {v1, v9, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4788
    return v5

    .line 4783
    .end local v8    # "enabledSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_5e
    add-int/lit8 v7, v7, 0x1

    goto :goto_44

    .line 4791
    .end local v7    # "i":I
    :cond_61
    return v2
.end method

.method public whitelist setExplicitlyEnabledInputMethodSubtypes(Ljava/lang/String;[I)V
    .registers 4
    .param p1, "imiId"    # Ljava/lang/String;
    .param p2, "subtypeHashCodes"    # [I

    .line 5016
    nop

    .line 5017
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 5016
    invoke-static {p1, p2, v0}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->setExplicitlyEnabledInputMethodSubtypes(Ljava/lang/String;[II)V

    .line 5018
    return-void
.end method

.method public whitelist setInputMethod(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 11
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "id"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4272
    if-nez p1, :cond_7b

    .line 4276
    if-nez p2, :cond_5

    .line 4277
    return-void

    .line 4279
    :cond_5
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x3e8

    const-string v2, "InputMethodManager"

    if-ne v0, v1, :cond_15

    .line 4280
    const-string v0, "System process should not be calling setInputMethod() because almost always it is a bug under multi-user / multi-profile environment. Consider interacting with InputMethodManagerService directly via LocalServices."

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4284
    return-void

    .line 4286
    :cond_15
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 4287
    .local v0, "fallbackContext":Landroid/content/Context;
    if-nez v0, :cond_1c

    .line 4288
    return-void

    .line 4290
    :cond_1c
    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_25

    .line 4292
    return-void

    .line 4294
    :cond_25
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v1

    .line 4295
    .local v1, "imis":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 4296
    .local v3, "numImis":I
    const/4 v4, 0x0

    .line 4297
    .local v4, "found":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2f
    if-ge v5, v3, :cond_46

    .line 4298
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodInfo;

    .line 4299
    .local v6, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_43

    .line 4300
    const/4 v4, 0x1

    .line 4301
    goto :goto_46

    .line 4297
    .end local v6    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_43
    add-int/lit8 v5, v5, 0x1

    goto :goto_2f

    .line 4304
    .end local v5    # "i":I
    :cond_46
    :goto_46
    if-nez v4, :cond_65

    .line 4305
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring setInputMethod(null, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") because the specified id not found in enabled IMEs."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4307
    return-void

    .line 4309
    :cond_65
    const-string v5, "The undocumented behavior that setInputMethod() accepts null token when the caller has WRITE_SECURE_SETTINGS is deprecated. This behavior may be completely removed in a future version.  Update secure settings directly instead."

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4313
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 4314
    .local v2, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v5, "selected_input_method_subtype"

    const/4 v6, -0x1

    invoke-static {v2, v5, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4316
    const-string v5, "default_input_method"

    invoke-static {v2, v5, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 4317
    return-void

    .line 4319
    .end local v0    # "fallbackContext":Landroid/content/Context;
    .end local v1    # "imis":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    .end local v3    # "numImis":I
    .end local v4    # "found":Z
    :cond_7b
    invoke-static {p1}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->get(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->setInputMethod(Ljava/lang/String;)V

    .line 4320
    return-void
.end method

.method public whitelist setInputMethodAndSubtype(Landroid/os/IBinder;Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4346
    if-nez p1, :cond_b

    .line 4347
    const-string v0, "InputMethodManager"

    const-string/jumbo v1, "setInputMethodAndSubtype() does not accept null token on Android Q and later."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4349
    return-void

    .line 4351
    :cond_b
    invoke-static {p1}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->get(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->setInputMethodAndSubtype(Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 4352
    return-void
.end method

.method public blacklist setRequestCursorUpdateDisplayIdCheck(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 4872
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mRequestCursorUpdateDisplayIdCheck:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4873
    return-void
.end method

.method public blacklist setStylusWindowIdleTimeoutForTest(J)V
    .registers 5
    .param p1, "timeout"    # J

    .line 3714
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 3715
    :try_start_3
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/inputmethod/IInputMethodClient$Stub;

    invoke-static {v1, p1, p2}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->setStylusWindowIdleTimeoutForTest(Lcom/android/internal/inputmethod/IInputMethodClient;J)V

    .line 3716
    monitor-exit v0

    .line 3717
    return-void

    .line 3716
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public greylist-max-r setUpdateCursorAnchorInfoMode(I)V
    .registers 4
    .param p1, "flags"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4144
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 4145
    :try_start_3
    iput p1, p0, Landroid/view/inputmethod/InputMethodManager;->mRequestUpdateCursorAnchorInfoMonitorMode:I

    .line 4146
    monitor-exit v0

    .line 4147
    return-void

    .line 4146
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public whitelist shouldOfferSwitchingToNextInputMethod(Landroid/os/IBinder;)Z
    .registers 3
    .param p1, "imeToken"    # Landroid/os/IBinder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4927
    invoke-static {p1}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->get(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    move-result-object v0

    .line 4928
    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->shouldOfferSwitchingToNextInputMethod()Z

    move-result v0

    .line 4927
    return v0
.end method

.method public blacklist shouldShowImeSwitcherButtonForTest()Z
    .registers 2

    .line 4671
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->shouldShowImeSwitcherButtonForTest()Z

    move-result v0

    return v0
.end method

.method public whitelist showInputMethodAndSubtypeEnabler(Ljava/lang/String;)V
    .registers 6
    .param p1, "imiId"    # Ljava/lang/String;

    .line 4706
    const/4 v0, 0x0

    .line 4707
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 4708
    :try_start_4
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    if-eqz v2, :cond_d

    .line 4709
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    move-object v0, v2

    .line 4711
    :cond_d
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_41

    .line 4712
    if-nez v0, :cond_26

    .line 4713
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    .line 4714
    .local v1, "appContext":Landroid/content/Context;
    const-class v2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManager;

    .line 4715
    .local v2, "displayManager":Landroid/hardware/display/DisplayManager;
    iget v3, p0, Landroid/view/inputmethod/InputMethodManager;->mDisplayId:I

    invoke-virtual {v2, v3}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v0

    .line 4718
    .end local v1    # "appContext":Landroid/content/Context;
    .end local v2    # "displayManager":Landroid/hardware/display/DisplayManager;
    :cond_26
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.INPUT_METHOD_SUBTYPE_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4719
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x14200000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4722
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3d

    .line 4723
    const-string v2, "input_method_id"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4725
    :cond_3d
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 4726
    return-void

    .line 4711
    .end local v1    # "intent":Landroid/content/Intent;
    :catchall_41
    move-exception v2

    :try_start_42
    monitor-exit v1
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw v2
.end method

.method public whitelist showInputMethodPicker()V
    .registers 3

    .line 4604
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 4605
    :try_start_3
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPickerLocked()V

    .line 4606
    monitor-exit v0

    .line 4607
    return-void

    .line 4606
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public blacklist showInputMethodPickerFromSystem(ZI)V
    .registers 4
    .param p1, "showAuxiliarySubtypes"    # Z
    .param p2, "displayId"    # I

    .line 4618
    if-eqz p1, :cond_4

    .line 4619
    const/4 v0, 0x1

    goto :goto_5

    .line 4620
    :cond_4
    const/4 v0, 0x2

    :goto_5
    nop

    .line 4621
    .local v0, "mode":I
    invoke-static {v0, p2}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->showInputMethodPickerFromSystem(II)V

    .line 4622
    return-void
.end method

.method public whitelist showSoftInput(Landroid/view/View;I)Z
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "flags"    # I

    .line 2348
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->getFallbackInputMethodManagerIfNecessary(Landroid/view/View;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 2349
    .local v0, "fallbackImm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_b

    .line 2350
    invoke-virtual {v0, p1, p2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v1

    return v1

    .line 2353
    :cond_b
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    move-result v1

    return v1
.end method

.method public whitelist showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "flags"    # I
    .param p3, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 2425
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;I)Z

    move-result v0

    return v0
.end method

.method public whitelist showSoftInputFromInputMethod(Landroid/os/IBinder;I)V
    .registers 9
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "flags"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4390
    const/16 v0, 0x36

    .line 4391
    .local v0, "reason":I
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x5

    const/16 v5, 0x36

    invoke-interface {v1, v3, v4, v5, v2}, Landroid/view/inputmethod/ImeTracker;->onStart(IIIZ)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v1

    .line 4393
    .local v1, "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    invoke-static {p1}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->get(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    move-result-object v2

    invoke-virtual {v2, v1, p2, v5}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->showMySoftInput(Landroid/view/inputmethod/ImeTracker$Token;II)V

    .line 4395
    return-void
.end method

.method public greylist-max-p showSoftInputUnchecked(ILandroid/os/ResultReceiver;)V
    .registers 19
    .param p1, "flags"    # I
    .param p2, "resultReceiver"    # Landroid/os/ResultReceiver;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2529
    move-object/from16 v1, p0

    iget-object v7, v1, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v7

    .line 2530
    const/4 v0, 0x1

    .line 2531
    .local v0, "reason":I
    :try_start_6
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v2

    const/4 v3, 0x5

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-interface {v2, v5, v3, v5, v4}, Landroid/view/inputmethod/ImeTracker;->onStart(IIIZ)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v3

    .line 2534
    .local v3, "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    const-string v2, "InputMethodManager"

    const-string/jumbo v4, "showSoftInputUnchecked() is a hidden method, which will be removed soon. If you are using androidx.appcompat.widget.SearchView, please update to version 26.0 or newer version."

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2537
    iget-object v2, v1, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    if-eqz v2, :cond_24

    iget-object v2, v1, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v2

    goto :goto_25

    :cond_24
    const/4 v2, 0x0

    .line 2538
    .local v2, "rootView":Landroid/view/View;
    :goto_25
    if-nez v2, :cond_37

    .line 2539
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v4

    invoke-interface {v4, v3, v5}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 2540
    const-string v4, "InputMethodManager"

    const-string v5, "No current root view, ignoring showSoftInputUnchecked()"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2541
    monitor-exit v7

    return-void

    .line 2544
    :cond_37
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v4

    if-eqz v4, :cond_47

    .line 2545
    const/4 v6, 0x1

    move/from16 v4, p1

    move-object/from16 v5, p2

    invoke-direct/range {v1 .. v6}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;I)Z

    .line 2546
    monitor-exit v7

    return-void

    .line 2549
    :cond_47
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v4

    invoke-interface {v4, v3, v5}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 2553
    iget-object v4, v1, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    iget-object v5, v1, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    const/16 v6, 0x1f

    invoke-static {v5, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/inputmethod/InputMethodManager$H;->executeOrSendMessage(Landroid/os/Message;)Z

    .line 2554
    iget-object v8, v1, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/inputmethod/IInputMethodClient$Stub;

    .line 2556
    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v9

    iget-object v4, v1, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    .line 2559
    invoke-virtual {v4}, Landroid/view/ViewRootImpl;->getLastClickToolType()I

    move-result v12

    iget-boolean v15, v1, Landroid/view/inputmethod/InputMethodManager;->mAsyncShowHideMethodEnabled:Z

    .line 2554
    const/4 v14, 0x1

    move/from16 v11, p1

    move-object/from16 v13, p2

    move-object v10, v3

    .end local v3    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    .local v10, "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    invoke-static/range {v8 .. v15}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->showSoftInput(Lcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;IILandroid/os/ResultReceiver;IZ)Z

    .line 2563
    .end local v10    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    .restart local v3    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    nop

    .end local v0    # "reason":I
    .end local v2    # "rootView":Landroid/view/View;
    .end local v3    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    monitor-exit v7

    .line 2564
    return-void

    .line 2563
    :catchall_75
    move-exception v0

    monitor-exit v7
    :try_end_77
    .catchall {:try_start_6 .. :try_end_77} :catchall_75

    throw v0
.end method

.method public whitelist showStatusIcon(Landroid/os/IBinder;Ljava/lang/String;I)V
    .registers 5
    .param p1, "imeToken"    # Landroid/os/IBinder;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "iconId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2023
    invoke-static {p1}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->get(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    move-result-object v0

    .line 2024
    invoke-virtual {v0, p2, p3}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->updateStatusIconAsync(Ljava/lang/String;I)V

    .line 2025
    return-void
.end method

.method public whitelist startConnectionlessStylusHandwriting(Landroid/view/View;Landroid/view/inputmethod/CursorAnchorInfo;Ljava/util/concurrent/Executor;Landroid/view/inputmethod/ConnectionlessHandwritingCallback;)V
    .registers 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "cursorAnchorInfo"    # Landroid/view/inputmethod/CursorAnchorInfo;
    .param p3, "callbackExecutor"    # Ljava/util/concurrent/Executor;
    .param p4, "callback"    # Landroid/view/inputmethod/ConnectionlessHandwritingCallback;

    .line 2919
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    .end local p1    # "view":Landroid/view/View;
    .end local p2    # "cursorAnchorInfo":Landroid/view/inputmethod/CursorAnchorInfo;
    .end local p3    # "callbackExecutor":Ljava/util/concurrent/Executor;
    .end local p4    # "callback":Landroid/view/inputmethod/ConnectionlessHandwritingCallback;
    .local v1, "view":Landroid/view/View;
    .local v2, "cursorAnchorInfo":Landroid/view/inputmethod/CursorAnchorInfo;
    .local v5, "callbackExecutor":Ljava/util/concurrent/Executor;
    .local v6, "callback":Landroid/view/inputmethod/ConnectionlessHandwritingCallback;
    invoke-direct/range {v0 .. v6}, Landroid/view/inputmethod/InputMethodManager;->startConnectionlessStylusHandwritingInternal(Landroid/view/View;Landroid/view/inputmethod/CursorAnchorInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/view/inputmethod/ConnectionlessHandwritingCallback;)V

    .line 2921
    return-void
.end method

.method public whitelist startConnectionlessStylusHandwritingForDelegation(Landroid/view/View;Landroid/view/inputmethod/CursorAnchorInfo;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/view/inputmethod/ConnectionlessHandwritingCallback;)V
    .registers 14
    .param p1, "delegatorView"    # Landroid/view/View;
    .param p2, "cursorAnchorInfo"    # Landroid/view/inputmethod/CursorAnchorInfo;
    .param p3, "delegatePackageName"    # Ljava/lang/String;
    .param p4, "callbackExecutor"    # Ljava/util/concurrent/Executor;
    .param p5, "callback"    # Landroid/view/inputmethod/ConnectionlessHandwritingCallback;

    .line 2981
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2982
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    .line 2983
    .local v4, "delegatorPackageName":Ljava/lang/String;
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    .end local p1    # "delegatorView":Landroid/view/View;
    .end local p2    # "cursorAnchorInfo":Landroid/view/inputmethod/CursorAnchorInfo;
    .end local p3    # "delegatePackageName":Ljava/lang/String;
    .end local p4    # "callbackExecutor":Ljava/util/concurrent/Executor;
    .end local p5    # "callback":Landroid/view/inputmethod/ConnectionlessHandwritingCallback;
    .local v2, "delegatorView":Landroid/view/View;
    .local v3, "cursorAnchorInfo":Landroid/view/inputmethod/CursorAnchorInfo;
    .local v5, "delegatePackageName":Ljava/lang/String;
    .local v6, "callbackExecutor":Ljava/util/concurrent/Executor;
    .local v7, "callback":Landroid/view/inputmethod/ConnectionlessHandwritingCallback;
    invoke-direct/range {v1 .. v7}, Landroid/view/inputmethod/InputMethodManager;->startConnectionlessStylusHandwritingInternal(Landroid/view/View;Landroid/view/inputmethod/CursorAnchorInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/view/inputmethod/ConnectionlessHandwritingCallback;)V

    .line 2985
    return-void
.end method

.method public whitelist startConnectionlessStylusHandwritingForDelegation(Landroid/view/View;Landroid/view/inputmethod/CursorAnchorInfo;Ljava/util/concurrent/Executor;Landroid/view/inputmethod/ConnectionlessHandwritingCallback;)V
    .registers 13
    .param p1, "delegatorView"    # Landroid/view/View;
    .param p2, "cursorAnchorInfo"    # Landroid/view/inputmethod/CursorAnchorInfo;
    .param p3, "callbackExecutor"    # Ljava/util/concurrent/Executor;
    .param p4, "callback"    # Landroid/view/inputmethod/ConnectionlessHandwritingCallback;

    .line 2949
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    .line 2950
    .local v4, "delegatorPackageName":Ljava/lang/String;
    move-object v5, v4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    move-object v7, p4

    .end local p1    # "delegatorView":Landroid/view/View;
    .end local p2    # "cursorAnchorInfo":Landroid/view/inputmethod/CursorAnchorInfo;
    .end local p3    # "callbackExecutor":Ljava/util/concurrent/Executor;
    .end local p4    # "callback":Landroid/view/inputmethod/ConnectionlessHandwritingCallback;
    .local v2, "delegatorView":Landroid/view/View;
    .local v3, "cursorAnchorInfo":Landroid/view/inputmethod/CursorAnchorInfo;
    .local v6, "callbackExecutor":Ljava/util/concurrent/Executor;
    .local v7, "callback":Landroid/view/inputmethod/ConnectionlessHandwritingCallback;
    invoke-direct/range {v1 .. v7}, Landroid/view/inputmethod/InputMethodManager;->startConnectionlessStylusHandwritingInternal(Landroid/view/View;Landroid/view/inputmethod/CursorAnchorInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/view/inputmethod/ConnectionlessHandwritingCallback;)V

    .line 2952
    return-void
.end method

.method public whitelist startStylusHandwriting(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 2814
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->startStylusHandwritingInternal(Landroid/view/View;Ljava/lang/String;I)Z

    .line 2816
    return-void
.end method

.method public whitelist switchToLastInputMethod(Landroid/os/IBinder;)Z
    .registers 3
    .param p1, "imeToken"    # Landroid/os/IBinder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4889
    invoke-static {p1}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->get(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->switchToPreviousInputMethod()Z

    move-result v0

    return v0
.end method

.method public whitelist switchToNextInputMethod(Landroid/os/IBinder;Z)Z
    .registers 4
    .param p1, "imeToken"    # Landroid/os/IBinder;
    .param p2, "onlyCurrentIme"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4907
    invoke-static {p1}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->get(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    move-result-object v0

    .line 4908
    invoke-virtual {v0, p2}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->switchToNextInputMethod(Z)Z

    move-result v0

    .line 4907
    return v0
.end method

.method public whitelist toggleSoftInput(II)V
    .registers 14
    .param p1, "showFlags"    # I
    .param p2, "hideFlags"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3264
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    const-string v1, "InputMethodManager#toggleSoftInput"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    .line 3267
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 3268
    :try_start_d
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->getServedViewLocked()Landroid/view/View;

    move-result-object v0

    .line 3269
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_39

    .line 3270
    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v3

    .line 3271
    .local v3, "rootInsets":Landroid/view/WindowInsets;
    if-eqz v3, :cond_31

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/WindowInsets;->isVisible(I)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 3272
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6
    :try_end_27
    .catchall {:try_start_d .. :try_end_27} :catchall_3d

    const/16 v9, 0x19

    const/4 v10, 0x0

    const/4 v8, 0x0

    move-object v5, p0

    move v7, p2

    .end local p2    # "hideFlags":I
    .local v7, "hideFlags":I
    :try_start_2d
    invoke-direct/range {v5 .. v10}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;ILandroid/os/ResultReceiver;ILandroid/view/inputmethod/ImeTracker$Token;)Z

    goto :goto_3b

    .line 3271
    .end local v7    # "hideFlags":I
    .restart local p2    # "hideFlags":I
    :cond_31
    move-object v5, p0

    move v7, p2

    .line 3276
    .end local p2    # "hideFlags":I
    .restart local v7    # "hideFlags":I
    const/16 p2, 0x18

    invoke-direct {p0, v0, p1, v2, p2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;I)Z

    goto :goto_3b

    .line 3269
    .end local v3    # "rootInsets":Landroid/view/WindowInsets;
    .end local v7    # "hideFlags":I
    .restart local p2    # "hideFlags":I
    :cond_39
    move-object v5, p0

    move v7, p2

    .line 3280
    .end local v0    # "view":Landroid/view/View;
    .end local p2    # "hideFlags":I
    .restart local v7    # "hideFlags":I
    :goto_3b
    monitor-exit v1

    .line 3281
    return-void

    .line 3280
    .end local v7    # "hideFlags":I
    .restart local p2    # "hideFlags":I
    :catchall_3d
    move-exception v0

    move-object v5, p0

    move v7, p2

    move-object p2, v0

    .end local p2    # "hideFlags":I
    .restart local v7    # "hideFlags":I
    :goto_41
    monitor-exit v1
    :try_end_42
    .catchall {:try_start_2d .. :try_end_42} :catchall_43

    throw p2

    :catchall_43
    move-exception v0

    move-object p2, v0

    goto :goto_41
.end method

.method public whitelist toggleSoftInputFromWindow(Landroid/os/IBinder;II)V
    .registers 7
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "showFlags"    # I
    .param p3, "hideFlags"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3238
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    const-string v1, "InputMethodManager#toggleSoftInputFromWindow"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    .line 3241
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 3242
    :try_start_d
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->getServedViewLocked()Landroid/view/View;

    move-result-object v1

    .line 3243
    .local v1, "servedView":Landroid/view/View;
    if-eqz v1, :cond_1f

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eq v2, p1, :cond_1a

    goto :goto_1f

    .line 3246
    :cond_1a
    invoke-virtual {p0, p2, p3}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 3247
    .end local v1    # "servedView":Landroid/view/View;
    monitor-exit v0

    .line 3248
    return-void

    .line 3244
    .restart local v1    # "servedView":Landroid/view/View;
    :cond_1f
    :goto_1f
    monitor-exit v0

    return-void

    .line 3247
    .end local v1    # "servedView":Landroid/view/View;
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_d .. :try_end_23} :catchall_21

    throw v1
.end method

.method public blacklist unregisterImeConsumer(Landroid/view/ImeInsetsSourceConsumer;)V
    .registers 4
    .param p1, "imeInsetsConsumer"    # Landroid/view/ImeInsetsSourceConsumer;

    .line 3935
    if-eqz p1, :cond_11

    .line 3939
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 3940
    :try_start_5
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mImeInsetsConsumer:Landroid/view/ImeInsetsSourceConsumer;

    if-ne v1, p1, :cond_c

    .line 3941
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mImeInsetsConsumer:Landroid/view/ImeInsetsSourceConsumer;

    .line 3943
    :cond_c
    monitor-exit v0

    .line 3944
    return-void

    .line 3943
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_e

    throw v1

    .line 3936
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ImeInsetsSourceConsumer cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist updateCursor(Landroid/view/View;IIII)V
    .registers 13
    .param p1, "view"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4157
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->getFallbackInputMethodManagerIfNecessary(Landroid/view/View;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 4158
    .local v1, "fallbackImm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_f

    .line 4159
    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .end local p1    # "view":Landroid/view/View;
    .end local p2    # "left":I
    .end local p3    # "top":I
    .end local p4    # "right":I
    .end local p5    # "bottom":I
    .local v2, "view":Landroid/view/View;
    .local v3, "left":I
    .local v4, "top":I
    .local v5, "right":I
    .local v6, "bottom":I
    invoke-virtual/range {v1 .. v6}, Landroid/view/inputmethod/InputMethodManager;->updateCursor(Landroid/view/View;IIII)V

    .line 4160
    return-void

    .line 4163
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "left":I
    .end local v4    # "top":I
    .end local v5    # "right":I
    .end local v6    # "bottom":I
    .restart local p1    # "view":Landroid/view/View;
    .restart local p2    # "left":I
    .restart local p3    # "top":I
    .restart local p4    # "right":I
    .restart local p5    # "bottom":I
    :cond_f
    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .end local p1    # "view":Landroid/view/View;
    .end local p2    # "left":I
    .end local p3    # "top":I
    .end local p4    # "right":I
    .end local p5    # "bottom":I
    .restart local v2    # "view":Landroid/view/View;
    .restart local v3    # "left":I
    .restart local v4    # "top":I
    .restart local v5    # "right":I
    .restart local v6    # "bottom":I
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 4164
    iget-object p1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter p1

    .line 4165
    :try_start_1a
    invoke-direct {p0, v2}, Landroid/view/inputmethod/InputMethodManager;->hasServedByInputMethodLocked(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_4c

    iget-object p2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-eqz p2, :cond_4c

    .line 4166
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->isImeSessionAvailableLocked()Z

    move-result p2

    if-nez p2, :cond_2b

    goto :goto_4c

    .line 4170
    :cond_2b
    iget-object p2, p0, Landroid/view/inputmethod/InputMethodManager;->mTmpCursorRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 4171
    iget-object p2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorRect:Landroid/graphics/Rect;

    iget-object p3, p0, Landroid/view/inputmethod/InputMethodManager;->mTmpCursorRect:Landroid/graphics/Rect;

    invoke-virtual {p2, p3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4a

    .line 4174
    iget-object p2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurBindState:Landroid/view/inputmethod/InputMethodManager$BindState;

    iget-object p2, p2, Landroid/view/inputmethod/InputMethodManager$BindState;->mImeSession:Landroid/view/inputmethod/IInputMethodSessionInvoker;

    iget-object p3, p0, Landroid/view/inputmethod/InputMethodManager;->mTmpCursorRect:Landroid/graphics/Rect;

    invoke-virtual {p2, p3}, Landroid/view/inputmethod/IInputMethodSessionInvoker;->updateCursor(Landroid/graphics/Rect;)V

    .line 4175
    iget-object p2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorRect:Landroid/graphics/Rect;

    iget-object p3, p0, Landroid/view/inputmethod/InputMethodManager;->mTmpCursorRect:Landroid/graphics/Rect;

    invoke-virtual {p2, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4177
    :cond_4a
    monitor-exit p1

    .line 4178
    return-void

    .line 4167
    :cond_4c
    :goto_4c
    monitor-exit p1

    return-void

    .line 4177
    :catchall_4e
    move-exception v0

    move-object p2, v0

    monitor-exit p1
    :try_end_51
    .catchall {:try_start_1a .. :try_end_51} :catchall_4e

    throw p2
.end method

.method public whitelist updateCursorAnchorInfo(Landroid/view/View;Landroid/view/inputmethod/CursorAnchorInfo;)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "cursorAnchorInfo"    # Landroid/view/inputmethod/CursorAnchorInfo;

    .line 4185
    if-eqz p1, :cond_51

    if-nez p2, :cond_5

    goto :goto_51

    .line 4189
    :cond_5
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->getFallbackInputMethodManagerIfNecessary(Landroid/view/View;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 4190
    .local v0, "fallbackImm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_f

    .line 4191
    invoke-virtual {v0, p1, p2}, Landroid/view/inputmethod/InputMethodManager;->updateCursorAnchorInfo(Landroid/view/View;Landroid/view/inputmethod/CursorAnchorInfo;)V

    .line 4192
    return-void

    .line 4195
    :cond_f
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 4196
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 4197
    :try_start_15
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->hasServedByInputMethodLocked(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_4c

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-eqz v2, :cond_4c

    .line 4198
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->isImeSessionAvailableLocked()Z

    move-result v2

    if-nez v2, :cond_26

    goto :goto_4c

    .line 4203
    :cond_26
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    if-eqz v2, :cond_34

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    .line 4204
    invoke-virtual {v2}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->resetHasPendingImmediateCursorAnchorInfoUpdate()Z

    move-result v2

    if-eqz v2, :cond_34

    const/4 v2, 0x1

    goto :goto_35

    :cond_34
    const/4 v2, 0x0

    .line 4205
    .local v2, "isImmediate":Z
    :goto_35
    if-nez v2, :cond_41

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorAnchorInfo:Landroid/view/inputmethod/CursorAnchorInfo;

    invoke-static {v3, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_41

    .line 4212
    monitor-exit v1

    return-void

    .line 4215
    :cond_41
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mCurBindState:Landroid/view/inputmethod/InputMethodManager$BindState;

    iget-object v3, v3, Landroid/view/inputmethod/InputMethodManager$BindState;->mImeSession:Landroid/view/inputmethod/IInputMethodSessionInvoker;

    invoke-virtual {v3, p2}, Landroid/view/inputmethod/IInputMethodSessionInvoker;->updateCursorAnchorInfo(Landroid/view/inputmethod/CursorAnchorInfo;)V

    .line 4216
    iput-object p2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorAnchorInfo:Landroid/view/inputmethod/CursorAnchorInfo;

    .line 4217
    .end local v2    # "isImmediate":Z
    monitor-exit v1

    .line 4218
    return-void

    .line 4199
    :cond_4c
    :goto_4c
    monitor-exit v1

    return-void

    .line 4217
    :catchall_4e
    move-exception v2

    monitor-exit v1
    :try_end_50
    .catchall {:try_start_15 .. :try_end_50} :catchall_4e

    throw v2

    .line 4186
    .end local v0    # "fallbackImm":Landroid/view/inputmethod/InputMethodManager;
    :cond_51
    :goto_51
    return-void
.end method

.method public whitelist updateExtractedText(Landroid/view/View;ILandroid/view/inputmethod/ExtractedText;)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "token"    # I
    .param p3, "text"    # Landroid/view/inputmethod/ExtractedText;

    .line 2286
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->getFallbackInputMethodManagerIfNecessary(Landroid/view/View;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 2287
    .local v0, "fallbackImm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_a

    .line 2288
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/inputmethod/InputMethodManager;->updateExtractedText(Landroid/view/View;ILandroid/view/inputmethod/ExtractedText;)V

    .line 2289
    return-void

    .line 2292
    :cond_a
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 2293
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 2294
    :try_start_10
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->hasServedByInputMethodLocked(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 2295
    monitor-exit v1

    return-void

    .line 2298
    :cond_18
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->isImeSessionAvailableLocked()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 2299
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurBindState:Landroid/view/inputmethod/InputMethodManager$BindState;

    iget-object v2, v2, Landroid/view/inputmethod/InputMethodManager$BindState;->mImeSession:Landroid/view/inputmethod/IInputMethodSessionInvoker;

    invoke-virtual {v2, p2, p3}, Landroid/view/inputmethod/IInputMethodSessionInvoker;->updateExtractedText(ILandroid/view/inputmethod/ExtractedText;)V

    .line 2301
    :cond_25
    monitor-exit v1

    .line 2302
    return-void

    .line 2301
    :catchall_27
    move-exception v2

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_10 .. :try_end_29} :catchall_27

    throw v2
.end method

.method public whitelist updateSelection(Landroid/view/View;IIII)V
    .registers 16
    .param p1, "view"    # Landroid/view/View;
    .param p2, "selStart"    # I
    .param p3, "selEnd"    # I
    .param p4, "candidatesStart"    # I
    .param p5, "candidatesEnd"    # I

    .line 4031
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->getFallbackInputMethodManagerIfNecessary(Landroid/view/View;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 4032
    .local v1, "fallbackImm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_f

    .line 4033
    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .end local p1    # "view":Landroid/view/View;
    .end local p2    # "selStart":I
    .end local p3    # "selEnd":I
    .end local p4    # "candidatesStart":I
    .end local p5    # "candidatesEnd":I
    .local v2, "view":Landroid/view/View;
    .local v3, "selStart":I
    .local v4, "selEnd":I
    .local v5, "candidatesStart":I
    .local v6, "candidatesEnd":I
    invoke-virtual/range {v1 .. v6}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    .line 4034
    return-void

    .line 4037
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "selStart":I
    .end local v4    # "selEnd":I
    .end local v5    # "candidatesStart":I
    .end local v6    # "candidatesEnd":I
    .restart local p1    # "view":Landroid/view/View;
    .restart local p2    # "selStart":I
    .restart local p3    # "selEnd":I
    .restart local p4    # "candidatesStart":I
    .restart local p5    # "candidatesEnd":I
    :cond_f
    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .end local p1    # "view":Landroid/view/View;
    .end local p2    # "selStart":I
    .end local p3    # "selEnd":I
    .end local p4    # "candidatesStart":I
    .end local p5    # "candidatesEnd":I
    .restart local v2    # "view":Landroid/view/View;
    .restart local v3    # "selStart":I
    .restart local v4    # "selEnd":I
    .restart local v5    # "candidatesStart":I
    .restart local v6    # "candidatesEnd":I
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 4038
    iget-object p1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter p1

    .line 4039
    :try_start_1a
    invoke-direct {p0, v2}, Landroid/view/inputmethod/InputMethodManager;->hasServedByInputMethodLocked(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_a4

    iget-object p2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-eqz p2, :cond_a4

    .line 4040
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->isImeSessionAvailableLocked()Z

    move-result p2

    if-nez p2, :cond_2e

    move v7, v4

    move-object v4, p0

    goto/16 :goto_a6

    .line 4044
    :cond_2e
    iget-object p2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;
    :try_end_30
    .catchall {:try_start_1a .. :try_end_30} :catchall_a8

    if-eqz p2, :cond_42

    :try_start_32
    iget-object p2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-virtual {p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->hasPendingInvalidation()Z

    move-result p2

    if-eqz p2, :cond_42

    .line 4045
    monitor-exit p1
    :try_end_3b
    .catchall {:try_start_32 .. :try_end_3b} :catchall_3c

    return-void

    .line 4065
    :catchall_3c
    move-exception v0

    move-object p2, v0

    move v7, v4

    move-object v4, p0

    goto/16 :goto_ac

    .line 4048
    :cond_42
    :try_start_42
    iget p2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelStart:I
    :try_end_44
    .catchall {:try_start_42 .. :try_end_44} :catchall_a8

    if-ne p2, v3, :cond_56

    :try_start_46
    iget p2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelEnd:I

    if-ne p2, v4, :cond_56

    iget p2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorCandStart:I

    if-ne p2, v5, :cond_56

    iget p2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorCandEnd:I
    :try_end_50
    .catchall {:try_start_46 .. :try_end_50} :catchall_3c

    if-eq p2, v6, :cond_53

    goto :goto_56

    :cond_53
    move v7, v4

    move-object v4, p0

    goto :goto_85

    .line 4056
    :cond_56
    :goto_56
    :try_start_56
    iget-object p2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurBindState:Landroid/view/inputmethod/InputMethodManager$BindState;

    iget-object p2, p2, Landroid/view/inputmethod/InputMethodManager$BindState;->mImeSession:Landroid/view/inputmethod/IInputMethodSessionInvoker;
    :try_end_5a
    .catchall {:try_start_56 .. :try_end_5a} :catchall_a8

    move v7, v4

    .end local v4    # "selEnd":I
    .local v7, "selEnd":I
    :try_start_5b
    iget v4, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelStart:I
    :try_end_5d
    .catchall {:try_start_5b .. :try_end_5d} :catchall_a1

    move v8, v5

    .end local v5    # "candidatesStart":I
    .local v8, "candidatesStart":I
    :try_start_5e
    iget v5, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelEnd:I
    :try_end_60
    .catchall {:try_start_5e .. :try_end_60} :catchall_9c

    move v9, v6

    move v6, v3

    move-object v3, p2

    .end local v3    # "selStart":I
    .local v6, "selStart":I
    .local v9, "candidatesEnd":I
    :try_start_63
    invoke-virtual/range {v3 .. v9}, Landroid/view/inputmethod/IInputMethodSessionInvoker;->updateSelection(IIIIII)V
    :try_end_66
    .catchall {:try_start_63 .. :try_end_66} :catchall_95

    move v3, v6

    move v4, v7

    move v5, v8

    move v6, v9

    .line 4058
    .end local v7    # "selEnd":I
    .end local v8    # "candidatesStart":I
    .end local v9    # "candidatesEnd":I
    .restart local v3    # "selStart":I
    .restart local v4    # "selEnd":I
    .restart local v5    # "candidatesStart":I
    .local v6, "candidatesEnd":I
    move v8, v5

    move v5, v3

    .end local v3    # "selStart":I
    .local v5, "selStart":I
    .restart local v8    # "candidatesStart":I
    :try_start_6c
    new-instance v3, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda8;
    :try_end_6e
    .catchall {:try_start_6c .. :try_end_6e} :catchall_8e

    move v7, v8

    move v8, v6

    move v6, v4

    move-object v4, p0

    .end local v4    # "selEnd":I
    .local v6, "selEnd":I
    .local v7, "candidatesStart":I
    .local v8, "candidatesEnd":I
    :try_start_72
    invoke-direct/range {v3 .. v8}, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda8;-><init>(Landroid/view/inputmethod/InputMethodManager;IIII)V
    :try_end_75
    .catchall {:try_start_72 .. :try_end_75} :catchall_87

    move-object p2, v3

    move v3, v5

    move v5, v7

    move v7, v6

    move v6, v8

    .end local v8    # "candidatesEnd":I
    .restart local v3    # "selStart":I
    .local v5, "candidatesStart":I
    .local v6, "candidatesEnd":I
    .local v7, "selEnd":I
    :try_start_7a
    invoke-direct {p0, p2}, Landroid/view/inputmethod/InputMethodManager;->forAccessibilitySessionsLocked(Ljava/util/function/Consumer;)V

    .line 4060
    iput v3, v4, Landroid/view/inputmethod/InputMethodManager;->mCursorSelStart:I

    .line 4061
    iput v7, v4, Landroid/view/inputmethod/InputMethodManager;->mCursorSelEnd:I

    .line 4062
    iput v5, v4, Landroid/view/inputmethod/InputMethodManager;->mCursorCandStart:I

    .line 4063
    iput v6, v4, Landroid/view/inputmethod/InputMethodManager;->mCursorCandEnd:I

    .line 4065
    :goto_85
    monitor-exit p1

    .line 4066
    return-void

    .line 4065
    .end local v3    # "selStart":I
    .local v5, "selStart":I
    .local v6, "selEnd":I
    .local v7, "candidatesStart":I
    .restart local v8    # "candidatesEnd":I
    :catchall_87
    move-exception v0

    move v3, v5

    move v5, v7

    move v7, v6

    move v6, v8

    move-object p2, v0

    .end local v8    # "candidatesEnd":I
    .restart local v3    # "selStart":I
    .local v5, "candidatesStart":I
    .local v6, "candidatesEnd":I
    .local v7, "selEnd":I
    goto :goto_ac

    .end local v3    # "selStart":I
    .end local v7    # "selEnd":I
    .restart local v4    # "selEnd":I
    .local v5, "selStart":I
    .local v8, "candidatesStart":I
    :catchall_8e
    move-exception v0

    move v7, v4

    move v3, v5

    move v5, v8

    move-object v4, p0

    move-object p2, v0

    .end local v4    # "selEnd":I
    .end local v8    # "candidatesStart":I
    .restart local v3    # "selStart":I
    .local v5, "candidatesStart":I
    .restart local v7    # "selEnd":I
    goto :goto_ac

    .end local v3    # "selStart":I
    .end local v5    # "candidatesStart":I
    .local v6, "selStart":I
    .restart local v8    # "candidatesStart":I
    .restart local v9    # "candidatesEnd":I
    :catchall_95
    move-exception v0

    move-object v4, p0

    move v3, v6

    move v5, v8

    move v6, v9

    move-object p2, v0

    .end local v8    # "candidatesStart":I
    .end local v9    # "candidatesEnd":I
    .restart local v3    # "selStart":I
    .restart local v5    # "candidatesStart":I
    .local v6, "candidatesEnd":I
    goto :goto_ac

    .end local v5    # "candidatesStart":I
    .restart local v8    # "candidatesStart":I
    :catchall_9c
    move-exception v0

    move-object v4, p0

    move v5, v8

    move-object p2, v0

    .end local v8    # "candidatesStart":I
    .restart local v5    # "candidatesStart":I
    goto :goto_ac

    :catchall_a1
    move-exception v0

    move-object v4, p0

    goto :goto_af

    .line 4039
    .end local v7    # "selEnd":I
    .restart local v4    # "selEnd":I
    :cond_a4
    move v7, v4

    move-object v4, p0

    .line 4041
    .end local v4    # "selEnd":I
    .restart local v7    # "selEnd":I
    :goto_a6
    monitor-exit p1

    return-void

    .line 4065
    .end local v7    # "selEnd":I
    .restart local v4    # "selEnd":I
    :catchall_a8
    move-exception v0

    move v7, v4

    move-object v4, p0

    move-object p2, v0

    .end local v4    # "selEnd":I
    .restart local v7    # "selEnd":I
    :goto_ac
    monitor-exit p1
    :try_end_ad
    .catchall {:try_start_7a .. :try_end_ad} :catchall_ae

    throw p2

    :catchall_ae
    move-exception v0

    :goto_af
    move-object p2, v0

    goto :goto_ac
.end method

.method public whitelist viewClicked(Landroid/view/View;)V
    .registers 8
    .param p1, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4081
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->getFallbackInputMethodManagerIfNecessary(Landroid/view/View;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 4082
    .local v0, "fallbackImm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_a

    .line 4083
    invoke-virtual {v0, p1}, Landroid/view/inputmethod/InputMethodManager;->viewClicked(Landroid/view/View;)V

    .line 4084
    return-void

    .line 4089
    :cond_a
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 4090
    :try_start_d
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->getServedViewLocked()Landroid/view/View;

    move-result-object v2

    .line 4091
    .local v2, "servedView":Landroid/view/View;
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->getNextServedViewLocked()Landroid/view/View;

    move-result-object v3

    .line 4092
    .local v3, "nextServedView":Landroid/view/View;
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_41

    .line 4093
    if-eq v2, v3, :cond_1a

    const/4 v1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    move v4, v1

    .line 4094
    .local v4, "focusChanged":Z
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 4095
    iget-object v5, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v5

    .line 4096
    :try_start_22
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->hasServedByInputMethodLocked(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_3c

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-eqz v1, :cond_3c

    .line 4097
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->isImeSessionAvailableLocked()Z

    move-result v1

    if-nez v1, :cond_33

    goto :goto_3c

    .line 4101
    :cond_33
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurBindState:Landroid/view/inputmethod/InputMethodManager$BindState;

    iget-object v1, v1, Landroid/view/inputmethod/InputMethodManager$BindState;->mImeSession:Landroid/view/inputmethod/IInputMethodSessionInvoker;

    invoke-virtual {v1, v4}, Landroid/view/inputmethod/IInputMethodSessionInvoker;->viewClicked(Z)V

    .line 4102
    monitor-exit v5

    .line 4103
    return-void

    .line 4098
    :cond_3c
    :goto_3c
    monitor-exit v5

    return-void

    .line 4102
    :catchall_3e
    move-exception v1

    monitor-exit v5
    :try_end_40
    .catchall {:try_start_22 .. :try_end_40} :catchall_3e

    throw v1

    .line 4092
    .end local v2    # "servedView":Landroid/view/View;
    .end local v3    # "nextServedView":Landroid/view/View;
    .end local v4    # "focusChanged":Z
    :catchall_41
    move-exception v2

    :try_start_42
    monitor-exit v1
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw v2
.end method

.method public greylist-max-q windowDismissed(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "appWindowToken"    # Landroid/os/IBinder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3749
    return-void
.end method

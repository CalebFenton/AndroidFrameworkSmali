.class public Landroid/inputmethodservice/InputMethodService;
.super Landroid/inputmethodservice/AbstractInputMethodService;
.source "InputMethodService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/InputMethodService$Insets;,
        Landroid/inputmethodservice/InputMethodService$SettingsObserver;,
        Landroid/inputmethodservice/InputMethodService$InputMethodImpl;,
        Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;,
        Landroid/inputmethodservice/InputMethodService$ImeWindowVisibility;,
        Landroid/inputmethodservice/InputMethodService$BackDispositionMode;
    }
.end annotation


# static fields
.field public static final whitelist BACK_DISPOSITION_ADJUST_NOTHING:I = 0x3

.field public static final whitelist BACK_DISPOSITION_DEFAULT:I = 0x0

.field private static final greylist-max-o BACK_DISPOSITION_MAX:I = 0x3

.field private static final greylist-max-o BACK_DISPOSITION_MIN:I = 0x0

.field public static final whitelist BACK_DISPOSITION_WILL_DISMISS:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist BACK_DISPOSITION_WILL_NOT_DISMISS:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final greylist-max-o DEBUG:Z = false

.field public static final blacklist DISALLOW_INPUT_METHOD_INTERFACE_OVERRIDE:J = 0x8d39f80L

.field public static final blacklist FINISH_INPUT_NO_FALLBACK_CONNECTION:J = 0x94fa793L

.field public static final greylist-max-o IME_ACTIVE:I = 0x1

.field public static final greylist-max-o IME_VISIBLE:I = 0x2

.field private static final blacklist MAX_EVENTS_BUFFER:I = 0x1f4

.field static final greylist-max-o MOVEMENT_DOWN:I = -0x1

.field static final greylist-max-o MOVEMENT_UP:I = -0x2

.field private static final blacklist PROP_CAN_RENDER_GESTURAL_NAV_BUTTONS:Ljava/lang/String; = "persist.sys.ime.can_render_gestural_nav_buttons"

.field private static final blacklist STYLUS_HANDWRITING_IDLE_TIMEOUT_MAX_MS:J = 0x7530L

.field private static final blacklist STYLUS_HANDWRITING_IDLE_TIMEOUT_MS:J = 0x2710L

.field private static final blacklist STYLUS_WINDOW_IDLE_TIMEOUT_MILLIS:J = 0x493e0L

.field static final greylist-max-o TAG:Ljava/lang/String; = "InputMethodService"

.field private static final blacklist TIMEOUT_SURFACE_REMOVAL_MILLIS:J = 0x1f4L


# instance fields
.field final greylist-max-o mActionClickListener:Landroid/view/View$OnClickListener;

.field private blacklist mBackCallbackRegistered:Z

.field greylist-max-o mBackDisposition:I

.field private final blacklist mCanImeRenderGesturalNavButtons:Z

.field greylist-max-o mCandidatesFrame:Landroid/widget/FrameLayout;

.field greylist-max-o mCandidatesViewStarted:Z

.field greylist-max-o mCandidatesVisibility:I

.field private final blacklist mCompatBackCallback:Landroid/window/CompatOnBackInvokedCallback;

.field private blacklist mConfigTracker:Landroid/inputmethodservice/ImsConfigurationTracker;

.field private blacklist mConnectionlessHandwritingCallback:Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;

.field greylist-max-o mCurCompletions:[Landroid/view/inputmethod/CompletionInfo;

.field private blacklist mCurHideInputToken:Landroid/os/IBinder;

.field private blacklist mCurShowInputToken:Landroid/os/IBinder;

.field private blacklist mCurStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

.field private blacklist mCustomImeSwitcherButtonRequestedVisible:Z

.field blacklist mDecorViewVisible:Z

.field blacklist mDecorViewWasVisible:Z

.field private blacklist mDestroyed:Z

.field private final blacklist mDumper:Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;

.field greylist-max-o mExtractAccessories:Landroid/view/ViewGroup;

.field greylist-max-o mExtractAction:Landroid/view/View;

.field greylist mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

.field greylist-max-o mExtractFrame:Landroid/widget/FrameLayout;

.field greylist mExtractView:Landroid/view/View;

.field greylist-max-o mExtractViewHidden:Z

.field greylist-max-o mExtractedText:Landroid/view/inputmethod/ExtractedText;

.field greylist-max-o mExtractedToken:I

.field private blacklist mFinishHwRunnable:Ljava/lang/Runnable;

.field greylist-max-o mFullscreenApplied:Z

.field greylist-max-o mFullscreenArea:Landroid/view/ViewGroup;

.field private blacklist mHandler:Landroid/os/Handler;

.field private blacklist mHandwritingDelegationText:Ljava/lang/CharSequence;

.field private blacklist mHandwritingEventReceiver:Landroid/view/InputEventReceiver;

.field private blacklist mHandwritingRequestId:Ljava/util/OptionalInt;

.field private blacklist mImeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;

.field private blacklist mImeSurfaceRemoverRunnable:Ljava/lang/Runnable;

.field private blacklist mImeWindowVisibility:I

.field greylist-max-o mImm:Landroid/view/inputmethod/InputMethodManager;

.field greylist-max-o mInShowWindow:Z

.field greylist-max-o mInflater:Landroid/view/LayoutInflater;

.field greylist-max-o mInitialized:Z

.field private blacklist mInkWindow:Landroid/inputmethodservice/InkWindow;

.field private blacklist mInlineSuggestionSessionController:Landroid/inputmethodservice/InlineSuggestionSessionController;

.field greylist-max-o mInputBinding:Landroid/view/inputmethod/InputBinding;

.field greylist-max-o mInputConnection:Landroid/view/inputmethod/InputConnection;

.field greylist-max-o mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

.field greylist-max-o mInputFrame:Landroid/widget/FrameLayout;

.field greylist-max-o mInputStarted:Z

.field greylist-max-o mInputView:Landroid/view/View;

.field greylist-max-o mInputViewStarted:Z

.field final greylist-max-o mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

.field private blacklist mIsConnectionlessHandwritingForDelegation:Z

.field greylist-max-o mIsFullscreen:Z

.field greylist-max-o mIsInputViewShown:Z

.field private blacklist mLastHandwritingRegion:Landroid/graphics/Region;

.field greylist-max-o mLastShowInputRequested:Z

.field private blacklist mLastWasInFullscreenMode:Z

.field private blacklist mLock:Ljava/lang/Object;

.field private final blacklist mNavigationBarController:Landroid/inputmethodservice/NavigationBarController;

.field private blacklist mNotifyUserActionSent:Z

.field private blacklist mOnPreparedStylusHwCalled:Z

.field private blacklist mPendingEvents:Lcom/android/internal/util/RingBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/RingBuffer<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPrivOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

.field greylist mRootView:Landroid/view/View;

.field private greylist-max-r mSettingsObserver:Landroid/inputmethodservice/InputMethodService$SettingsObserver;

.field greylist-max-o mShowInputFlags:I

.field greylist-max-o mShowInputRequested:Z

.field greylist-max-o mStartedInputConnection:Landroid/view/inputmethod/InputConnection;

.field greylist-max-o mStatusIcon:I

.field private blacklist mStylusHwSessionsTimeout:J

.field private blacklist mStylusWindowIdleTimeoutForTest:J

.field private blacklist mStylusWindowIdleTimeoutRunnable:Ljava/lang/Runnable;

.field greylist-max-p mTheme:I

.field greylist-max-o mThemeAttrs:Landroid/content/res/TypedArray;

.field final greylist-max-p mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

.field final greylist-max-o mTmpLocation:[I

.field greylist-max-o mToken:Landroid/os/IBinder;

.field private blacklist mUsingCtrlShiftShortcut:Z

.field blacklist mViewsCreated:Z

.field greylist-max-o mWindow:Landroid/inputmethodservice/SoftInputWindow;

.field greylist-max-o mWindowVisible:Z


# direct methods
.method public static synthetic blacklist $r8$lambda$-ED5AL7BIiM9Pb2cd0YhrcpZDp4(Landroid/inputmethodservice/InputMethodService;Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/inputmethodservice/InputMethodService;->lambda$new$0(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$64CCF769URG4UxhThxsOaNifSZ8(Landroid/inputmethodservice/InputMethodService;)Landroid/os/IBinder;
    .registers 1

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->getHostInputToken()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$9GKzNPRsVqAtJ86Wppe4BntF300(Landroid/inputmethodservice/InputMethodService;)V
    .registers 1

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->lambda$onStylusHandwritingMotionEvent$3()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$A0c9lqSsOJBj4WezJ0EY5v9wSC8(Landroid/inputmethodservice/InputMethodService;)V
    .registers 1

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->lambda$scheduleImeSurfaceRemoval$2()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$H_GdHZP8tu6Q6TE1DL_T8E6qLZM(Landroid/inputmethodservice/InputMethodService;)V
    .registers 1

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->lambda$getStylusWindowIdleTimeoutRunnable$4()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$dprTlUrqmp7gkpceDaSVD_xgHHM(Landroid/inputmethodservice/InputMethodService;)V
    .registers 1

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->lambda$getFinishHandwritingRunnable$5()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$efLNqwKcMrpEkZFhflQPR8Y7qp8(Landroid/inputmethodservice/InputMethodService;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/inputmethodservice/InputMethodService;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$lURwGg9PN5eodMDPZKp4MOQxhlk(Landroid/inputmethodservice/InputMethodService;)V
    .registers 1

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->compatHandleBack()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$oRMkK66rOxqNaqhjifweqVkTB4Q(Landroid/inputmethodservice/InputMethodService;)V
    .registers 1

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->resetStateForNewConfiguration()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCanImeRenderGesturalNavButtons(Landroid/inputmethodservice/InputMethodService;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/inputmethodservice/InputMethodService;->mCanImeRenderGesturalNavButtons:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmConfigTracker(Landroid/inputmethodservice/InputMethodService;)Landroid/inputmethodservice/ImsConfigurationTracker;
    .registers 1

    iget-object p0, p0, Landroid/inputmethodservice/InputMethodService;->mConfigTracker:Landroid/inputmethodservice/ImsConfigurationTracker;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCurStatsToken(Landroid/inputmethodservice/InputMethodService;)Landroid/view/inputmethod/ImeTracker$Token;
    .registers 1

    iget-object p0, p0, Landroid/inputmethodservice/InputMethodService;->mCurStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCustomImeSwitcherButtonRequestedVisible(Landroid/inputmethodservice/InputMethodService;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/inputmethodservice/InputMethodService;->mCustomImeSwitcherButtonRequestedVisible:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDestroyed(Landroid/inputmethodservice/InputMethodService;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/inputmethodservice/InputMethodService;->mDestroyed:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDumper(Landroid/inputmethodservice/InputMethodService;)Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;
    .registers 1

    iget-object p0, p0, Landroid/inputmethodservice/InputMethodService;->mDumper:Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandwritingRequestId(Landroid/inputmethodservice/InputMethodService;)Ljava/util/OptionalInt;
    .registers 1

    iget-object p0, p0, Landroid/inputmethodservice/InputMethodService;->mHandwritingRequestId:Ljava/util/OptionalInt;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInkWindow(Landroid/inputmethodservice/InputMethodService;)Landroid/inputmethodservice/InkWindow;
    .registers 1

    iget-object p0, p0, Landroid/inputmethodservice/InputMethodService;->mInkWindow:Landroid/inputmethodservice/InkWindow;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInlineSuggestionSessionController(Landroid/inputmethodservice/InputMethodService;)Landroid/inputmethodservice/InlineSuggestionSessionController;
    .registers 1

    iget-object p0, p0, Landroid/inputmethodservice/InputMethodService;->mInlineSuggestionSessionController:Landroid/inputmethodservice/InlineSuggestionSessionController;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLock(Landroid/inputmethodservice/InputMethodService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/inputmethodservice/InputMethodService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNavigationBarController(Landroid/inputmethodservice/InputMethodService;)Landroid/inputmethodservice/NavigationBarController;
    .registers 1

    iget-object p0, p0, Landroid/inputmethodservice/InputMethodService;->mNavigationBarController:Landroid/inputmethodservice/NavigationBarController;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNotifyUserActionSent(Landroid/inputmethodservice/InputMethodService;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/inputmethodservice/InputMethodService;->mNotifyUserActionSent:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnPreparedStylusHwCalled(Landroid/inputmethodservice/InputMethodService;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/inputmethodservice/InputMethodService;->mOnPreparedStylusHwCalled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPrivOps(Landroid/inputmethodservice/InputMethodService;)Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;
    .registers 1

    iget-object p0, p0, Landroid/inputmethodservice/InputMethodService;->mPrivOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSettingsObserver(Landroid/inputmethodservice/InputMethodService;)Landroid/inputmethodservice/InputMethodService$SettingsObserver;
    .registers 1

    iget-object p0, p0, Landroid/inputmethodservice/InputMethodService;->mSettingsObserver:Landroid/inputmethodservice/InputMethodService$SettingsObserver;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmConnectionlessHandwritingCallback(Landroid/inputmethodservice/InputMethodService;Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;)V
    .registers 2

    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService;->mConnectionlessHandwritingCallback:Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCurHideInputToken(Landroid/inputmethodservice/InputMethodService;Landroid/os/IBinder;)V
    .registers 2

    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService;->mCurHideInputToken:Landroid/os/IBinder;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCurShowInputToken(Landroid/inputmethodservice/InputMethodService;Landroid/os/IBinder;)V
    .registers 2

    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService;->mCurShowInputToken:Landroid/os/IBinder;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCurStatsToken(Landroid/inputmethodservice/InputMethodService;Landroid/view/inputmethod/ImeTracker$Token;)V
    .registers 2

    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService;->mCurStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCustomImeSwitcherButtonRequestedVisible(Landroid/inputmethodservice/InputMethodService;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/inputmethodservice/InputMethodService;->mCustomImeSwitcherButtonRequestedVisible:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmHandwritingEventReceiver(Landroid/inputmethodservice/InputMethodService;Landroid/view/InputEventReceiver;)V
    .registers 2

    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService;->mHandwritingEventReceiver:Landroid/view/InputEventReceiver;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmHandwritingRequestId(Landroid/inputmethodservice/InputMethodService;Ljava/util/OptionalInt;)V
    .registers 2

    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService;->mHandwritingRequestId:Ljava/util/OptionalInt;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmImeDispatcher(Landroid/inputmethodservice/InputMethodService;Landroid/window/ImeOnBackInvokedDispatcher;)V
    .registers 2

    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService;->mImeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmInkWindow(Landroid/inputmethodservice/InputMethodService;Landroid/inputmethodservice/InkWindow;)V
    .registers 2

    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService;->mInkWindow:Landroid/inputmethodservice/InkWindow;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsConnectionlessHandwritingForDelegation(Landroid/inputmethodservice/InputMethodService;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/inputmethodservice/InputMethodService;->mIsConnectionlessHandwritingForDelegation:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLastHandwritingRegion(Landroid/inputmethodservice/InputMethodService;Landroid/graphics/Region;)V
    .registers 2

    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService;->mLastHandwritingRegion:Landroid/graphics/Region;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmNotifyUserActionSent(Landroid/inputmethodservice/InputMethodService;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/inputmethodservice/InputMethodService;->mNotifyUserActionSent:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmOnPreparedStylusHwCalled(Landroid/inputmethodservice/InputMethodService;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/inputmethodservice/InputMethodService;->mOnPreparedStylusHwCalled:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmStylusWindowIdleTimeoutForTest(Landroid/inputmethodservice/InputMethodService;J)V
    .registers 3

    iput-wide p1, p0, Landroid/inputmethodservice/InputMethodService;->mStylusWindowIdleTimeoutForTest:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcancelStylusWindowIdleTimeout(Landroid/inputmethodservice/InputMethodService;)V
    .registers 1

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->cancelStylusWindowIdleTimeout()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcommitHandwritingDelegationTextIfAvailable(Landroid/inputmethodservice/InputMethodService;)V
    .registers 1

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->commitHandwritingDelegationTextIfAvailable()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcomputeImeWindowVis(Landroid/inputmethodservice/InputMethodService;)I
    .registers 1

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->computeImeWindowVis()I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mcreateStatsToken(Landroid/inputmethodservice/InputMethodService;ZIZ)Landroid/view/inputmethod/ImeTracker$Token;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/inputmethodservice/InputMethodService;->createStatsToken(ZIZ)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mdiscardHandwritingDelegationText(Landroid/inputmethodservice/InputMethodService;)V
    .registers 1

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->discardHandwritingDelegationText()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdispatchOnCurrentInputMethodSubtypeChanged(Landroid/inputmethodservice/InputMethodService;Landroid/view/inputmethod/InputMethodSubtype;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/inputmethodservice/InputMethodService;->dispatchOnCurrentInputMethodSubtypeChanged(Landroid/view/inputmethod/InputMethodSubtype;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdispatchOnShowInputRequested(Landroid/inputmethodservice/InputMethodService;IZ)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->dispatchOnShowInputRequested(IZ)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mfinishAndRemoveStylusHandwritingWindow(Landroid/inputmethodservice/InputMethodService;)V
    .registers 1

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->finishAndRemoveStylusHandwritingWindow()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monToggleSoftInput(Landroid/inputmethodservice/InputMethodService;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onToggleSoftInput(II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mreportFullscreenMode(Landroid/inputmethodservice/InputMethodService;)V
    .registers 1

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->reportFullscreenMode()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mresetStateForNewConfiguration(Landroid/inputmethodservice/InputMethodService;)V
    .registers 1

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->resetStateForNewConfiguration()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mscheduleHandwritingSessionTimeout(Landroid/inputmethodservice/InputMethodService;)V
    .registers 1

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->scheduleHandwritingSessionTimeout()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mscheduleImeSurfaceRemoval(Landroid/inputmethodservice/InputMethodService;)V
    .registers 1

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->scheduleImeSurfaceRemoval()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mscheduleStylusWindowIdleTimeout(Landroid/inputmethodservice/InputMethodService;)V
    .registers 1

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->scheduleStylusWindowIdleTimeout()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetImeWindowVisibility(Landroid/inputmethodservice/InputMethodService;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/inputmethodservice/InputMethodService;->setImeWindowVisibility(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateEditorToolTypeInternal(Landroid/inputmethodservice/InputMethodService;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/inputmethodservice/InputMethodService;->updateEditorToolTypeInternal(I)V

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 4

    .line 343
    invoke-direct {p0}, Landroid/inputmethodservice/AbstractInputMethodService;-><init>()V

    .line 397
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mBackCallbackRegistered:Z

    .line 398
    new-instance v1, Landroid/inputmethodservice/InputMethodService$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Landroid/inputmethodservice/InputMethodService$$ExternalSyntheticLambda2;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    iput-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mCompatBackCallback:Landroid/window/CompatOnBackInvokedCallback;

    .line 401
    const-wide/16 v1, 0x2710

    iput-wide v1, p0, Landroid/inputmethodservice/InputMethodService;->mStylusHwSessionsTimeout:J

    .line 408
    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mUsingCtrlShiftShortcut:Z

    .line 440
    invoke-static {}, Landroid/inputmethodservice/InputMethodService;->canImeRenderGesturalNavButtons()Z

    move-result v1

    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mCanImeRenderGesturalNavButtons:Z

    .line 566
    new-instance v1, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    invoke-direct {v1}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;-><init>()V

    iput-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mPrivOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    .line 568
    new-instance v1, Landroid/inputmethodservice/NavigationBarController;

    invoke-direct {v1, p0}, Landroid/inputmethodservice/NavigationBarController;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    iput-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mNavigationBarController:Landroid/inputmethodservice/NavigationBarController;

    .line 575
    iput v0, p0, Landroid/inputmethodservice/InputMethodService;->mTheme:I

    .line 678
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mLock:Ljava/lang/Object;

    .line 682
    new-instance v0, Landroid/inputmethodservice/InputMethodService$Insets;

    invoke-direct {v0}, Landroid/inputmethodservice/InputMethodService$Insets;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    .line 684
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mTmpLocation:[I

    .line 688
    invoke-static {}, Ljava/util/OptionalInt;->empty()Ljava/util/OptionalInt;

    move-result-object v0

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mHandwritingRequestId:Ljava/util/OptionalInt;

    .line 691
    new-instance v0, Landroid/inputmethodservice/ImsConfigurationTracker;

    invoke-direct {v0}, Landroid/inputmethodservice/ImsConfigurationTracker;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mConfigTracker:Landroid/inputmethodservice/ImsConfigurationTracker;

    .line 734
    new-instance v0, Landroid/inputmethodservice/InputMethodService$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/InputMethodService$$ExternalSyntheticLambda3;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    .line 761
    new-instance v0, Landroid/inputmethodservice/InputMethodService$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/InputMethodService$$ExternalSyntheticLambda4;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mActionClickListener:Landroid/view/View$OnClickListener;

    .line 4714
    new-instance v0, Landroid/inputmethodservice/InputMethodService$2;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/InputMethodService$2;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mDumper:Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;

    return-void
.end method

.method private blacklist applyVisibilityInInsetsConsumerIfNecessary(ZLandroid/view/inputmethod/ImeTracker$Token;)V
    .registers 7
    .param p1, "setVisible"    # Z
    .param p2, "statsToken"    # Landroid/view/inputmethod/ImeTracker$Token;

    .line 3345
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mDumper:Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;

    const/4 v2, 0x0

    const-string v3, "InputMethodService#applyVisibilityInInsetsConsumerIfNecessary"

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/internal/inputmethod/ImeTracing;->triggerServiceDump(Ljava/lang/String;Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;[B)V

    .line 3348
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mPrivOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    if-eqz p1, :cond_13

    .line 3349
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mCurShowInputToken:Landroid/os/IBinder;

    goto :goto_15

    :cond_13
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mCurHideInputToken:Landroid/os/IBinder;

    .line 3348
    :goto_15
    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->applyImeVisibilityAsync(Landroid/os/IBinder;ZLandroid/view/inputmethod/ImeTracker$Token;)V

    .line 3350
    return-void
.end method

.method public static blacklist canImeRenderGesturalNavButtons()Z
    .registers 2

    .line 431
    invoke-static {}, Landroid/view/inputmethod/Flags;->disallowDisablingImeNavigationBar()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 432
    return v1

    .line 434
    :cond_8
    const-string v0, "persist.sys.ime.can_render_gestural_nav_buttons"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private blacklist cancelImeSurfaceRemoval()V
    .registers 3

    .line 1383
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mImeSurfaceRemoverRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_f

    .line 1384
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mImeSurfaceRemoverRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1386
    :cond_f
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mImeSurfaceRemoverRunnable:Ljava/lang/Runnable;

    .line 1387
    return-void
.end method

.method private blacklist cancelStylusWindowIdleTimeout()V
    .registers 3

    .line 2979
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mStylusWindowIdleTimeoutRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_f

    .line 2980
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mStylusWindowIdleTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2982
    :cond_f
    return-void
.end method

.method private blacklist commitHandwritingDelegationTextIfAvailable()V
    .registers 4

    .line 2944
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mHandwritingDelegationText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 2945
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 2946
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_14

    .line 2948
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mHandwritingDelegationText:Ljava/lang/CharSequence;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 2951
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_14
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mHandwritingDelegationText:Ljava/lang/CharSequence;

    .line 2952
    return-void
.end method

.method private blacklist compatHandleBack()V
    .registers 6

    .line 4756
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mDecorViewVisible:Z

    if-nez v0, :cond_f

    .line 4757
    const-string v0, "InputMethodService"

    const-string v1, "Back callback invoked on a hidden IME. Removing the callback..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4758
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->unregisterDefaultOnBackInvokedCallback()V

    .line 4759
    return-void

    .line 4761
    :cond_f
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/inputmethodservice/InputMethodService;->createBackKeyEvent(IZ)Landroid/view/KeyEvent;

    move-result-object v1

    .line 4763
    .local v1, "downEvent":Landroid/view/KeyEvent;
    const/4 v2, 0x4

    invoke-virtual {p0, v2, v1}, Landroid/inputmethodservice/InputMethodService;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 4764
    nop

    .line 4765
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    and-int/2addr v3, v4

    const/4 v4, 0x1

    if-eqz v3, :cond_24

    move v0, v4

    .line 4766
    .local v0, "hasStartedTracking":Z
    :cond_24
    invoke-direct {p0, v4, v0}, Landroid/inputmethodservice/InputMethodService;->createBackKeyEvent(IZ)Landroid/view/KeyEvent;

    move-result-object v3

    .line 4767
    .local v3, "upEvent":Landroid/view/KeyEvent;
    invoke-virtual {p0, v2, v3}, Landroid/inputmethodservice/InputMethodService;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 4768
    return-void
.end method

.method private blacklist computeImeWindowVis()I
    .registers 2

    .line 4637
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isInputViewShown()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x2

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    or-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private blacklist createBackKeyEvent(IZ)Landroid/view/KeyEvent;
    .registers 16
    .param p1, "action"    # I
    .param p2, "isTracking"    # Z

    .line 3286
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 3287
    .local v1, "when":J
    new-instance v0, Landroid/view/KeyEvent;

    .line 3291
    if-eqz p2, :cond_b

    const/16 v3, 0x200

    goto :goto_c

    :cond_b
    const/4 v3, 0x0

    :goto_c
    or-int/lit8 v11, v3, 0x48

    const/16 v12, 0x101

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    move-wide v3, v1

    move v5, p1

    .end local p1    # "action":I
    .local v5, "action":I
    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 3287
    return-object v0
.end method

.method private blacklist createStatsToken(ZIZ)Landroid/view/inputmethod/ImeTracker$Token;
    .registers 7
    .param p1, "show"    # Z
    .param p2, "reason"    # I
    .param p3, "isFromUser"    # Z

    .line 4650
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    if-eqz p1, :cond_8

    const/4 v1, 0x1

    goto :goto_9

    :cond_8
    const/4 v1, 0x2

    :goto_9
    const/4 v2, 0x7

    invoke-interface {v0, v1, v2, p2, p3}, Landroid/view/inputmethod/ImeTracker;->onStart(IIIZ)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v0

    return-object v0
.end method

.method private blacklist discardHandwritingDelegationText()V
    .registers 2

    .line 2955
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mHandwritingDelegationText:Ljava/lang/CharSequence;

    .line 2956
    return-void
.end method

.method private blacklist dispatchOnCurrentInputMethodSubtypeChanged(Landroid/view/inputmethod/InputMethodSubtype;)V
    .registers 4
    .param p1, "newSubtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    .line 4443
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4444
    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mNotifyUserActionSent:Z

    .line 4445
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_b

    .line 4446
    invoke-virtual {p0, p1}, Landroid/inputmethodservice/InputMethodService;->onCurrentInputMethodSubtypeChanged(Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 4447
    return-void

    .line 4445
    :catchall_b
    move-exception v1

    :try_start_c
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw v1
.end method

.method private greylist-max-o dispatchOnShowInputRequested(IZ)Z
    .registers 5
    .param p1, "flags"    # I
    .param p2, "configChange"    # Z

    .line 3133
    invoke-virtual {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onShowInputRequested(IZ)Z

    move-result v0

    .line 3134
    .local v0, "result":Z
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInlineSuggestionSessionController:Landroid/inputmethodservice/InlineSuggestionSessionController;

    invoke-virtual {v1, v0}, Landroid/inputmethodservice/InlineSuggestionSessionController;->notifyOnShowInputRequested(Z)V

    .line 3135
    if-eqz v0, :cond_e

    .line 3136
    iput p1, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputFlags:I

    goto :goto_11

    .line 3138
    :cond_e
    const/4 v1, 0x0

    iput v1, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputFlags:I

    .line 3140
    :goto_11
    return v0
.end method

.method private blacklist finishAndRemoveStylusHandwritingWindow()V
    .registers 4

    .line 2964
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->cancelStylusWindowIdleTimeout()V

    .line 2965
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mOnPreparedStylusHwCalled:Z

    .line 2966
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mStylusWindowIdleTimeoutRunnable:Ljava/lang/Runnable;

    .line 2967
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInkWindow:Landroid/inputmethodservice/InkWindow;

    if-eqz v1, :cond_25

    .line 2968
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mHandwritingRequestId:Ljava/util/OptionalInt;

    invoke-virtual {v1}, Ljava/util/OptionalInt;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 2970
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->finishStylusHandwriting()V

    .line 2972
    :cond_18
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInkWindow:Landroid/inputmethodservice/InkWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/inputmethodservice/InkWindow;->hide(Z)V

    .line 2973
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInkWindow:Landroid/inputmethodservice/InkWindow;

    invoke-virtual {v1}, Landroid/inputmethodservice/InkWindow;->destroy()V

    .line 2974
    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInkWindow:Landroid/inputmethodservice/InkWindow;

    .line 2976
    :cond_25
    return-void
.end method

.method private blacklist finishViews(Z)V
    .registers 3
    .param p1, "finishingInput"    # Z

    .line 3367
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    if-eqz v0, :cond_d

    .line 3369
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInlineSuggestionSessionController:Landroid/inputmethodservice/InlineSuggestionSessionController;

    invoke-virtual {v0}, Landroid/inputmethodservice/InlineSuggestionSessionController;->notifyOnFinishInputView()V

    .line 3370
    invoke-virtual {p0, p1}, Landroid/inputmethodservice/InputMethodService;->onFinishInputView(Z)V

    goto :goto_14

    .line 3371
    :cond_d
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    if-eqz v0, :cond_14

    .line 3373
    invoke-virtual {p0, p1}, Landroid/inputmethodservice/InputMethodService;->onFinishCandidatesView(Z)V

    .line 3375
    :cond_14
    :goto_14
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    .line 3376
    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    .line 3377
    return-void
.end method

.method private greylist-max-o getExtractEditTextIfVisible()Landroid/inputmethodservice/ExtractEditText;
    .registers 2

    .line 3746
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isExtractViewShown()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isInputViewShown()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_10

    .line 3749
    :cond_d
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    return-object v0

    .line 3747
    :cond_10
    :goto_10
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist getFinishHandwritingRunnable()Ljava/lang/Runnable;
    .registers 2

    .line 3059
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mFinishHwRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_7

    .line 3060
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mFinishHwRunnable:Ljava/lang/Runnable;

    return-object v0

    .line 3062
    :cond_7
    new-instance v0, Landroid/inputmethodservice/InputMethodService$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/InputMethodService$$ExternalSyntheticLambda7;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mFinishHwRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private blacklist getHostInputToken()Landroid/os/IBinder;
    .registers 3

    .line 1344
    const/4 v0, 0x0

    .line 1345
    .local v0, "viewRoot":Landroid/view/ViewRootImpl;
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    if-eqz v1, :cond_b

    .line 1346
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 1348
    :cond_b
    if-nez v0, :cond_f

    const/4 v1, 0x0

    goto :goto_13

    :cond_f
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getInputToken()Landroid/os/IBinder;

    move-result-object v1

    :goto_13
    return-object v1
.end method

.method private greylist-max-o getIconForImeAction(I)I
    .registers 3
    .param p1, "imeOptions"    # I

    .line 4287
    and-int/lit16 v0, p1, 0xff

    packed-switch v0, :pswitch_data_22

    .line 4301
    const v0, 0x1080455

    return v0

    .line 4299
    :pswitch_9
    const v0, 0x1080454

    return v0

    .line 4297
    :pswitch_d
    const v0, 0x1080451

    return v0

    .line 4295
    :pswitch_11
    const v0, 0x1080453

    return v0

    .line 4293
    :pswitch_15
    const v0, 0x1080457

    return v0

    .line 4291
    :pswitch_19
    const v0, 0x1080456

    return v0

    .line 4289
    :pswitch_1d
    const v0, 0x1080452

    return v0

    nop

    :pswitch_data_22
    .packed-switch 0x2
        :pswitch_1d
        :pswitch_19
        :pswitch_15
        :pswitch_11
        :pswitch_d
        :pswitch_9
    .end packed-switch
.end method

.method public static final whitelist getStylusHandwritingIdleTimeoutMax()Ljava/time/Duration;
    .registers 2

    .line 3041
    const-wide/16 v0, 0x7530

    invoke-static {v0, v1}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getStylusWindowIdleTimeoutRunnable()Ljava/lang/Runnable;
    .registers 2

    .line 2995
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mStylusWindowIdleTimeoutRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_b

    .line 2996
    new-instance v0, Landroid/inputmethodservice/InputMethodService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/InputMethodService$$ExternalSyntheticLambda0;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mStylusWindowIdleTimeoutRunnable:Ljava/lang/Runnable;

    .line 3002
    :cond_b
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mStylusWindowIdleTimeoutRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private greylist-max-o handleBack(Z)Z
    .registers 6
    .param p1, "doIt"    # Z

    .line 3718
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    const/16 v1, 0x1d

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_e

    .line 3721
    if-eqz p1, :cond_d

    .line 3722
    invoke-direct {p0, v3, v1}, Landroid/inputmethodservice/InputMethodService;->requestHideSelf(II)V

    .line 3724
    :cond_d
    return v2

    .line 3725
    :cond_e
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mDecorViewVisible:Z

    if-eqz v0, :cond_22

    .line 3726
    iget v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    if-nez v0, :cond_1c

    .line 3729
    if-eqz p1, :cond_21

    invoke-virtual {p0, v3}, Landroid/inputmethodservice/InputMethodService;->setCandidatesViewShown(Z)V

    goto :goto_21

    .line 3734
    :cond_1c
    if-eqz p1, :cond_21

    invoke-direct {p0, v1}, Landroid/inputmethodservice/InputMethodService;->hideWindowWithToken(I)V

    .line 3736
    :cond_21
    :goto_21
    return v2

    .line 3738
    :cond_22
    return v3
.end method

.method private blacklist hideWindowWithToken(I)V
    .registers 4
    .param p1, "reason"    # I

    .line 3388
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    invoke-static {v0}, Landroid/view/inputmethod/ImeTracker;->isFromUser(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    const/16 v0, 0x1d

    if-ne p1, v0, :cond_e

    goto :goto_10

    :cond_e
    move v0, v1

    goto :goto_11

    :cond_10
    :goto_10
    const/4 v0, 0x1

    .line 3390
    .local v0, "isFromUser":Z
    :goto_11
    invoke-direct {p0, v1, p1, v0}, Landroid/inputmethodservice/InputMethodService;->createStatsToken(ZIZ)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v1

    iput-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mCurStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    .line 3391
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->hideWindow()V

    .line 3392
    return-void
.end method

.method private blacklist initConfigurationTracker()V
    .registers 10

    .line 1882
    const-string v0, "InputMethodService"

    const v1, 0x8080

    .line 1884
    .local v1, "flags":I
    new-instance v2, Landroid/content/ComponentName;

    .line 1885
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1886
    .local v2, "imeComponent":Landroid/content/ComponentName;
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    .line 1889
    .local v3, "imeId":Ljava/lang/String;
    :try_start_1a
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 1890
    const-wide/32 v5, 0x8080

    invoke-static {v5, v6}, Landroid/content/pm/PackageManager$ComponentInfoFlags;->of(J)Landroid/content/pm/PackageManager$ComponentInfoFlags;

    move-result-object v5

    .line 1889
    invoke-virtual {v4, v2, v5}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;Landroid/content/pm/PackageManager$ComponentInfoFlags;)Landroid/content/pm/ServiceInfo;

    move-result-object v4
    :try_end_29
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1a .. :try_end_29} :catch_92

    .line 1894
    .local v4, "si":Landroid/content/pm/ServiceInfo;
    nop

    .line 1895
    :try_start_2a
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "android.view.im"

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v5
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_34} :catch_7a

    .line 1897
    .local v5, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_34
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v5}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v7

    sget-object v8, Lcom/android/internal/R$styleable;->InputMethod:[I

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6
    :try_end_42
    .catchall {:try_start_34 .. :try_end_42} :catchall_6e

    .line 1899
    .local v6, "sa":Landroid/content/res/TypedArray;
    if-eqz v5, :cond_5b

    .line 1903
    const/4 v7, 0x0

    :try_start_45
    invoke-virtual {v6, v7, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 1905
    .local v7, "handledConfigChanges":I
    iget-object v8, p0, Landroid/inputmethodservice/InputMethodService;->mConfigTracker:Landroid/inputmethodservice/ImsConfigurationTracker;

    invoke-virtual {v8, v7}, Landroid/inputmethodservice/ImsConfigurationTracker;->onInitialize(I)V
    :try_end_4e
    .catchall {:try_start_45 .. :try_end_4e} :catchall_59

    .line 1906
    .end local v7    # "handledConfigChanges":I
    if-eqz v6, :cond_53

    :try_start_50
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->close()V
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_6e

    .end local v6    # "sa":Landroid/content/res/TypedArray;
    :cond_53
    if-eqz v5, :cond_58

    :try_start_55
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_58} :catch_7a

    .line 1908
    .end local v5    # "parser":Landroid/content/res/XmlResourceParser;
    :cond_58
    goto :goto_91

    .line 1895
    .restart local v5    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v6    # "sa":Landroid/content/res/TypedArray;
    :catchall_59
    move-exception v7

    goto :goto_63

    .line 1900
    :cond_5b
    :try_start_5b
    new-instance v7, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v8, "No android.view.im meta-data"

    invoke-direct {v7, v8}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .end local v1    # "flags":I
    .end local v2    # "imeComponent":Landroid/content/ComponentName;
    .end local v3    # "imeId":Ljava/lang/String;
    .end local v4    # "si":Landroid/content/pm/ServiceInfo;
    .end local v5    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v6    # "sa":Landroid/content/res/TypedArray;
    .end local p0    # "this":Landroid/inputmethodservice/InputMethodService;
    throw v7
    :try_end_63
    .catchall {:try_start_5b .. :try_end_63} :catchall_59

    .line 1895
    .restart local v1    # "flags":I
    .restart local v2    # "imeComponent":Landroid/content/ComponentName;
    .restart local v3    # "imeId":Ljava/lang/String;
    .restart local v4    # "si":Landroid/content/pm/ServiceInfo;
    .restart local v5    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v6    # "sa":Landroid/content/res/TypedArray;
    .restart local p0    # "this":Landroid/inputmethodservice/InputMethodService;
    :goto_63
    if-eqz v6, :cond_6d

    :try_start_65
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->close()V
    :try_end_68
    .catchall {:try_start_65 .. :try_end_68} :catchall_69

    goto :goto_6d

    :catchall_69
    move-exception v8

    :try_start_6a
    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "flags":I
    .end local v2    # "imeComponent":Landroid/content/ComponentName;
    .end local v3    # "imeId":Ljava/lang/String;
    .end local v4    # "si":Landroid/content/pm/ServiceInfo;
    .end local v5    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "this":Landroid/inputmethodservice/InputMethodService;
    :cond_6d
    :goto_6d
    throw v7
    :try_end_6e
    .catchall {:try_start_6a .. :try_end_6e} :catchall_6e

    .end local v6    # "sa":Landroid/content/res/TypedArray;
    .restart local v1    # "flags":I
    .restart local v2    # "imeComponent":Landroid/content/ComponentName;
    .restart local v3    # "imeId":Ljava/lang/String;
    .restart local v4    # "si":Landroid/content/pm/ServiceInfo;
    .restart local v5    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "this":Landroid/inputmethodservice/InputMethodService;
    :catchall_6e
    move-exception v6

    if-eqz v5, :cond_79

    :try_start_71
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_74
    .catchall {:try_start_71 .. :try_end_74} :catchall_75

    goto :goto_79

    :catchall_75
    move-exception v7

    :try_start_76
    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "flags":I
    .end local v2    # "imeComponent":Landroid/content/ComponentName;
    .end local v3    # "imeId":Ljava/lang/String;
    .end local v4    # "si":Landroid/content/pm/ServiceInfo;
    .end local p0    # "this":Landroid/inputmethodservice/InputMethodService;
    :cond_79
    :goto_79
    throw v6
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_7a} :catch_7a

    .line 1906
    .end local v5    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v1    # "flags":I
    .restart local v2    # "imeComponent":Landroid/content/ComponentName;
    .restart local v3    # "imeId":Ljava/lang/String;
    .restart local v4    # "si":Landroid/content/pm/ServiceInfo;
    .restart local p0    # "this":Landroid/inputmethodservice/InputMethodService;
    :catch_7a
    move-exception v5

    .line 1907
    .local v5, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to load input method "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6, v5}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1909
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_91
    return-void

    .line 1891
    .end local v4    # "si":Landroid/content/pm/ServiceInfo;
    :catch_92
    move-exception v4

    .line 1892
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to find input method "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1893
    return-void
.end method

.method private synthetic blacklist lambda$getFinishHandwritingRunnable$5()V
    .registers 3

    .line 3063
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_b

    .line 3064
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mFinishHwRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3066
    :cond_b
    const-string v0, "InputMethodService"

    const-string v1, "Stylus handwriting idle timed-out. calling finishStylusHandwriting()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3067
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mFinishHwRunnable:Ljava/lang/Runnable;

    .line 3068
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->finishStylusHandwriting()V

    .line 3069
    return-void
.end method

.method private synthetic blacklist lambda$getStylusWindowIdleTimeoutRunnable$4()V
    .registers 2

    .line 2997
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->finishAndRemoveStylusHandwritingWindow()V

    .line 2998
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mStylusWindowIdleTimeoutRunnable:Ljava/lang/Runnable;

    .line 2999
    return-void
.end method

.method private synthetic blacklist lambda$new$0(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .registers 7
    .param p1, "info"    # Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    .line 735
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->onComputeInsets(Landroid/inputmethodservice/InputMethodService$Insets;)V

    .line 736
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mNavigationBarController:Landroid/inputmethodservice/NavigationBarController;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/NavigationBarController;->updateInsets(Landroid/inputmethodservice/InputMethodService$Insets;)V

    .line 737
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mViewsCreated:Z

    const/4 v1, 0x0

    if-nez v0, :cond_15

    .line 739
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    iput v1, v0, Landroid/inputmethodservice/InputMethodService$Insets;->visibleTopInsets:I

    .line 741
    :cond_15
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isExtractViewShown()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 744
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getWindow()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 745
    .local v0, "decor":Landroid/view/View;
    iget-object v2, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->contentInsets:Landroid/graphics/Rect;

    iget-object v3, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->visibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->top:I

    iput v4, v2, Landroid/graphics/Rect;->top:I

    .line 746
    iget-object v2, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v2}, Landroid/graphics/Region;->setEmpty()V

    .line 747
    invoke-virtual {p1, v1}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    .line 748
    .end local v0    # "decor":Landroid/view/View;
    goto :goto_5c

    .line 749
    :cond_3c
    iget-object v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->contentInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    iget v1, v1, Landroid/inputmethodservice/InputMethodService$Insets;->contentTopInsets:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 750
    iget-object v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->visibleInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    iget v1, v1, Landroid/inputmethodservice/InputMethodService$Insets;->visibleTopInsets:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 751
    iget-object v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    iget-object v1, v1, Landroid/inputmethodservice/InputMethodService$Insets;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 752
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    iget v0, v0, Landroid/inputmethodservice/InputMethodService$Insets;->touchableInsets:I

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    .line 754
    :goto_5c
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mNavigationBarController:Landroid/inputmethodservice/NavigationBarController;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    invoke-virtual {v0, v1, p1}, Landroid/inputmethodservice/NavigationBarController;->updateTouchableInsets(Landroid/inputmethodservice/InputMethodService$Insets;Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V

    .line 756
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_6e

    .line 757
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    iget v0, v0, Landroid/inputmethodservice/InputMethodService$Insets;->visibleTopInsets:I

    invoke-direct {p0, v0}, Landroid/inputmethodservice/InputMethodService;->setImeExclusionRect(I)V

    .line 759
    :cond_6e
    return-void
.end method

.method private synthetic blacklist lambda$new$1(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .line 762
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    .line 763
    .local v0, "ei":Landroid/view/inputmethod/EditorInfo;
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 764
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_24

    if-eqz v1, :cond_24

    .line 765
    iget v2, v0, Landroid/view/inputmethod/EditorInfo;->actionId:I

    if-eqz v2, :cond_16

    .line 766
    iget v2, v0, Landroid/view/inputmethod/EditorInfo;->actionId:I

    invoke-interface {v1, v2}, Landroid/view/inputmethod/InputConnection;->performEditorAction(I)Z

    goto :goto_24

    .line 767
    :cond_16
    iget v2, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x1

    if-eq v2, v3, :cond_24

    .line 768
    iget v2, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 v2, v2, 0xff

    invoke-interface {v1, v2}, Landroid/view/inputmethod/InputConnection;->performEditorAction(I)Z

    .line 771
    :cond_24
    :goto_24
    return-void
.end method

.method private synthetic blacklist lambda$onStylusHandwritingMotionEvent$3()V
    .registers 6

    .line 2811
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mPendingEvents:Lcom/android/internal/util/RingBuffer;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mPendingEvents:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v0}, Lcom/android/internal/util/RingBuffer;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 2812
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mPendingEvents:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v0}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/MotionEvent;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_16
    if-ge v2, v1, :cond_27

    aget-object v3, v0, v2

    .line 2813
    .local v3, "event":Landroid/view/MotionEvent;
    iget-object v4, p0, Landroid/inputmethodservice/InputMethodService;->mInkWindow:Landroid/inputmethodservice/InkWindow;

    if-nez v4, :cond_1f

    .line 2814
    goto :goto_27

    .line 2816
    :cond_1f
    iget-object v4, p0, Landroid/inputmethodservice/InputMethodService;->mInkWindow:Landroid/inputmethodservice/InkWindow;

    invoke-virtual {v4, v3}, Landroid/inputmethodservice/InkWindow;->dispatchHandwritingEvent(Landroid/view/MotionEvent;)V

    .line 2812
    .end local v3    # "event":Landroid/view/MotionEvent;
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 2818
    :cond_27
    :goto_27
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mPendingEvents:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v0}, Lcom/android/internal/util/RingBuffer;->clear()V

    .line 2820
    :cond_2c
    return-void
.end method

.method private synthetic blacklist lambda$scheduleImeSurfaceRemoval$2()V
    .registers 1

    .line 1368
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->removeImeSurface()V

    .line 1369
    return-void
.end method

.method private varargs blacklist methodIsOverridden(Ljava/lang/String;[Ljava/lang/Class;)Z
    .registers 6
    .param p1, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 4772
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/inputmethodservice/InputMethodService;
    :try_end_e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_e} :catch_14

    if-eq v0, v1, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0

    .line 4774
    :catch_14
    move-exception v0

    .line 4775
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Method must exist."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private blacklist notifyPreImeWindowVisibilityChanged(ZLandroid/view/inputmethod/ImeTracker$Token;)V
    .registers 4
    .param p1, "visible"    # Z
    .param p2, "statsToken"    # Landroid/view/inputmethod/ImeTracker$Token;

    .line 3360
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getWindow()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 3361
    .local v0, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_15

    .line 3362
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewRootImpl;->notifyImeVisibilityChanged(ZLandroid/view/inputmethod/ImeTracker$Token;)V

    .line 3364
    :cond_15
    return-void
.end method

.method private greylist-max-o onToggleSoftInput(II)V
    .registers 4
    .param p1, "showFlags"    # I
    .param p2, "hideFlags"    # I

    .line 3950
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isInputViewShown()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 3951
    const/16 v0, 0x1e

    invoke-direct {p0, p2, v0}, Landroid/inputmethodservice/InputMethodService;->requestHideSelf(II)V

    goto :goto_11

    .line 3954
    :cond_c
    const/16 v0, 0x35

    invoke-direct {p0, p1, v0}, Landroid/inputmethodservice/InputMethodService;->requestShowSelf(II)V

    .line 3957
    :goto_11
    return-void
.end method

.method private blacklist prepareWindow(Z)Z
    .registers 5
    .param p1, "showInput"    # Z

    .line 3296
    const/4 v0, 0x0

    .line 3297
    .local v0, "doShowInput":Z
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mDecorViewVisible:Z

    .line 3298
    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    if-nez v2, :cond_11

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mInputStarted:Z

    if-eqz v2, :cond_11

    if-eqz p1, :cond_11

    .line 3299
    const/4 v0, 0x1

    .line 3300
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    .line 3304
    :cond_11
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->initialize()V

    .line 3305
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->updateFullscreenMode()V

    .line 3306
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->updateInputViewShown()V

    .line 3308
    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mViewsCreated:Z

    if-nez v2, :cond_2c

    .line 3309
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mViewsCreated:Z

    .line 3310
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->initialize()V

    .line 3312
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onCreateCandidatesView()Landroid/view/View;

    move-result-object v1

    .line 3314
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_2c

    .line 3315
    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->setCandidatesView(Landroid/view/View;)V

    .line 3318
    .end local v1    # "v":Landroid/view/View;
    :cond_2c
    return v0
.end method

.method private blacklist registerDefaultOnBackInvokedCallback()V
    .registers 4

    .line 3255
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mBackCallbackRegistered:Z

    if-eqz v0, :cond_5

    .line 3256
    return-void

    .line 3258
    :cond_5
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    if-eqz v0, :cond_34

    .line 3259
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isOnBackInvokedCallbackEnabled()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-static {}, Landroid/view/inputmethod/Flags;->predictiveBackIme()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 3264
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object v0

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mCompatBackCallback:Landroid/window/CompatOnBackInvokedCallback;

    invoke-interface {v0, v1}, Landroid/window/OnBackInvokedDispatcher;->registerSystemOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    goto :goto_31

    .line 3267
    :cond_25
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mCompatBackCallback:Landroid/window/CompatOnBackInvokedCallback;

    invoke-interface {v0, v1, v2}, Landroid/window/OnBackInvokedDispatcher;->registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V

    .line 3270
    :goto_31
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mBackCallbackRegistered:Z

    .line 3272
    :cond_34
    return-void
.end method

.method private blacklist removeImeSurface()V
    .registers 2

    .line 1375
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->cancelImeSurfaceRemoval()V

    .line 1377
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    if-eqz v0, :cond_c

    .line 1378
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->hide()V

    .line 1380
    :cond_c
    return-void
.end method

.method private blacklist reportFullscreenMode()V
    .registers 3

    .line 2212
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mPrivOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    iget-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mIsFullscreen:Z

    invoke-virtual {v0, v1}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->reportFullscreenModeAsync(Z)V

    .line 2213
    return-void
.end method

.method private blacklist requestHideSelf(II)V
    .registers 9
    .param p1, "flags"    # I
    .param p2, "reason"    # I

    .line 3692
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    invoke-static {v0}, Landroid/view/inputmethod/ImeTracker;->isFromUser(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    const/16 v0, 0x1d

    if-ne p2, v0, :cond_e

    goto :goto_10

    :cond_e
    move v0, v1

    goto :goto_11

    :cond_10
    :goto_10
    const/4 v0, 0x1

    .line 3694
    .local v0, "isFromUser":Z
    :goto_11
    invoke-direct {p0, v1, p2, v0}, Landroid/inputmethodservice/InputMethodService;->createStatsToken(ZIZ)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v1

    .line 3695
    .local v1, "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v2

    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mDumper:Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;

    const/4 v4, 0x0

    const-string v5, "InputMethodService#requestHideSelf"

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/internal/inputmethod/ImeTracing;->triggerServiceDump(Ljava/lang/String;Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;[B)V

    .line 3697
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mPrivOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    invoke-virtual {v2, v1, p1, p2}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->hideMySoftInput(Landroid/view/inputmethod/ImeTracker$Token;II)V

    .line 3698
    return-void
.end method

.method private blacklist requestShowSelf(II)V
    .registers 8
    .param p1, "flags"    # I
    .param p2, "reason"    # I

    .line 3710
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    .line 3711
    invoke-static {v0}, Landroid/view/inputmethod/ImeTracker;->isFromUser(Landroid/view/View;)Z

    move-result v0

    .line 3710
    const/4 v1, 0x1

    invoke-direct {p0, v1, p2, v0}, Landroid/inputmethodservice/InputMethodService;->createStatsToken(ZIZ)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v0

    .line 3712
    .local v0, "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mDumper:Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;

    const/4 v3, 0x0

    const-string v4, "InputMethodService#requestShowSelf"

    invoke-virtual {v1, v4, v2, v3}, Lcom/android/internal/inputmethod/ImeTracing;->triggerServiceDump(Ljava/lang/String;Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;[B)V

    .line 3714
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mPrivOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    invoke-virtual {v1, v0, p1, p2}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->showMySoftInput(Landroid/view/inputmethod/ImeTracker$Token;II)V

    .line 3715
    return-void
.end method

.method private greylist-max-o resetStateForNewConfiguration()V
    .registers 11

    .line 2007
    const-string v0, "IMS.resetStateForNewConfiguration"

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2008
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mDecorViewVisible:Z

    .line 2009
    .local v0, "visible":Z
    iget v3, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputFlags:I

    .line 2010
    .local v3, "showFlags":I
    iget-boolean v4, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    .line 2011
    .local v4, "showingInput":Z
    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mCurCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 2012
    .local v5, "completions":[Landroid/view/inputmethod/CompletionInfo;
    iget-object v6, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v6

    iget-object v7, p0, Landroid/inputmethodservice/InputMethodService;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v6, v7}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 2013
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->initViews()V

    .line 2014
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    .line 2015
    iput-boolean v6, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    .line 2016
    iget-boolean v7, p0, Landroid/inputmethodservice/InputMethodService;->mInputStarted:Z

    const/4 v8, 0x1

    if-eqz v7, :cond_32

    .line 2017
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v7

    .line 2018
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v9

    .line 2017
    invoke-virtual {p0, v7, v9, v8}, Landroid/inputmethodservice/InputMethodService;->doStartInput(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Z)V

    .line 2020
    :cond_32
    if-eqz v0, :cond_63

    .line 2021
    const/16 v7, 0x2c

    if-eqz v4, :cond_4d

    .line 2023
    invoke-direct {p0, v3, v8}, Landroid/inputmethodservice/InputMethodService;->dispatchOnShowInputRequested(IZ)Z

    move-result v9

    if-eqz v9, :cond_49

    .line 2024
    invoke-direct {p0, v8, v7}, Landroid/inputmethodservice/InputMethodService;->showWindowWithToken(ZI)V

    .line 2026
    if-eqz v5, :cond_58

    .line 2027
    iput-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mCurCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 2028
    invoke-virtual {p0, v5}, Landroid/inputmethodservice/InputMethodService;->onDisplayCompletions([Landroid/view/inputmethod/CompletionInfo;)V

    goto :goto_58

    .line 2031
    :cond_49
    invoke-direct {p0, v7}, Landroid/inputmethodservice/InputMethodService;->hideWindowWithToken(I)V

    goto :goto_58

    .line 2033
    :cond_4d
    iget v9, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    if-nez v9, :cond_55

    .line 2036
    invoke-direct {p0, v6, v7}, Landroid/inputmethodservice/InputMethodService;->showWindowWithToken(ZI)V

    goto :goto_58

    .line 2040
    :cond_55
    invoke-direct {p0, v7}, Landroid/inputmethodservice/InputMethodService;->hideWindowWithToken(I)V

    .line 2043
    :cond_58
    :goto_58
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onEvaluateInputViewShown()Z

    move-result v7

    .line 2044
    .local v7, "showing":Z
    if-eqz v7, :cond_5f

    const/4 v6, 0x2

    :cond_5f
    or-int/2addr v6, v8

    invoke-direct {p0, v6}, Landroid/inputmethodservice/InputMethodService;->setImeWindowVisibility(I)V

    .line 2046
    .end local v7    # "showing":Z
    :cond_63
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 2047
    return-void
.end method

.method private blacklist scheduleHandwritingSessionTimeout()V
    .registers 5

    .line 3073
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_f

    .line 3074
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mHandler:Landroid/os/Handler;

    .line 3076
    :cond_f
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mFinishHwRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1a

    .line 3077
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mFinishHwRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3079
    :cond_1a
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->getFinishHandwritingRunnable()Ljava/lang/Runnable;

    move-result-object v1

    iget-wide v2, p0, Landroid/inputmethodservice/InputMethodService;->mStylusHwSessionsTimeout:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3080
    return-void
.end method

.method private blacklist scheduleImeSurfaceRemoval()V
    .registers 5

    .line 1352
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    if-nez v0, :cond_39

    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    if-nez v0, :cond_39

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    if-eqz v0, :cond_39

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mImeSurfaceRemoverRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_11

    goto :goto_39

    .line 1356
    :cond_11
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_20

    .line 1357
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mHandler:Landroid/os/Handler;

    .line 1360
    :cond_20
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mLastWasInFullscreenMode:Z

    if-eqz v0, :cond_28

    .line 1365
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->removeImeSurface()V

    goto :goto_38

    .line 1367
    :cond_28
    new-instance v0, Landroid/inputmethodservice/InputMethodService$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/InputMethodService$$ExternalSyntheticLambda6;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mImeSurfaceRemoverRunnable:Ljava/lang/Runnable;

    .line 1370
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mImeSurfaceRemoverRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1372
    :goto_38
    return-void

    .line 1354
    :cond_39
    :goto_39
    return-void
.end method

.method private blacklist scheduleStylusWindowIdleTimeout()V
    .registers 5

    .line 2985
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_5

    .line 2986
    return-void

    .line 2988
    :cond_5
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->cancelStylusWindowIdleTimeout()V

    .line 2989
    iget-wide v0, p0, Landroid/inputmethodservice/InputMethodService;->mStylusWindowIdleTimeoutForTest:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_13

    .line 2990
    iget-wide v0, p0, Landroid/inputmethodservice/InputMethodService;->mStylusWindowIdleTimeoutForTest:J

    goto :goto_16

    :cond_13
    const-wide/32 v0, 0x493e0

    .line 2991
    .local v0, "timeout":J
    :goto_16
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->getStylusWindowIdleTimeoutRunnable()Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2992
    return-void
.end method

.method private blacklist setImeExclusionRect(I)V
    .registers 9
    .param p1, "visibleTopInsets"    # I

    .line 1409
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 1410
    .local v0, "rootView":Landroid/view/View;
    nop

    .line 1411
    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v1

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemGestures()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v1

    .line 1412
    .local v1, "systemGesture":Landroid/graphics/Insets;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1413
    .local v2, "exclusionRects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    new-instance v3, Landroid/graphics/Rect;

    iget v4, v1, Landroid/graphics/Insets;->left:I

    .line 1416
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v3, v6, p1, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1413
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1417
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    iget v5, v1, Landroid/graphics/Insets;->right:I

    sub-int/2addr v4, v5

    .line 1419
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 1420
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-direct {v3, v4, p1, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1417
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1421
    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemGestureExclusionRects(Ljava/util/List;)V

    .line 1422
    return-void
.end method

.method private blacklist setImeWindowStatus(II)V
    .registers 4
    .param p1, "vis"    # I
    .param p2, "backDisposition"    # I

    .line 1404
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mPrivOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->setImeWindowStatusAsync(II)V

    .line 1405
    return-void
.end method

.method private blacklist setImeWindowVisibility(I)V
    .registers 4
    .param p1, "vis"    # I

    .line 1395
    iget v0, p0, Landroid/inputmethodservice/InputMethodService;->mImeWindowVisibility:I

    if-ne p1, v0, :cond_5

    .line 1396
    return-void

    .line 1398
    :cond_5
    iput p1, p0, Landroid/inputmethodservice/InputMethodService;->mImeWindowVisibility:I

    .line 1399
    iget v0, p0, Landroid/inputmethodservice/InputMethodService;->mImeWindowVisibility:I

    iget v1, p0, Landroid/inputmethodservice/InputMethodService;->mBackDisposition:I

    invoke-direct {p0, v0, v1}, Landroid/inputmethodservice/InputMethodService;->setImeWindowStatus(II)V

    .line 1400
    return-void
.end method

.method private blacklist showWindowWithToken(ZI)V
    .registers 5
    .param p1, "showInput"    # Z
    .param p2, "reason"    # I

    .line 3151
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    .line 3152
    invoke-static {v0}, Landroid/view/inputmethod/ImeTracker;->isFromUser(Landroid/view/View;)Z

    move-result v0

    .line 3151
    const/4 v1, 0x1

    invoke-direct {p0, v1, p2, v0}, Landroid/inputmethodservice/InputMethodService;->createStatsToken(ZIZ)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v0

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mCurStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    .line 3153
    invoke-virtual {p0, p1}, Landroid/inputmethodservice/InputMethodService;->showWindow(Z)V

    .line 3154
    return-void
.end method

.method private blacklist startViews(Z)V
    .registers 5
    .param p1, "doShowInput"    # Z

    .line 3322
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_17

    .line 3323
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    if-nez v0, :cond_22

    .line 3325
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    .line 3326
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInlineSuggestionSessionController:Landroid/inputmethodservice/InlineSuggestionSessionController;

    invoke-virtual {v0}, Landroid/inputmethodservice/InlineSuggestionSessionController;->notifyOnStartInputView()V

    .line 3327
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {p0, v0, v2}, Landroid/inputmethodservice/InputMethodService;->onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V

    goto :goto_22

    .line 3329
    :cond_17
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    if-nez v0, :cond_22

    .line 3331
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    .line 3332
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {p0, v0, v2}, Landroid/inputmethodservice/InputMethodService;->onStartCandidatesView(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 3334
    :cond_22
    :goto_22
    if-eqz p1, :cond_27

    invoke-virtual {p0, v2}, Landroid/inputmethodservice/InputMethodService;->startExtractingText(Z)V

    .line 3335
    :cond_27
    return-void
.end method

.method private blacklist unregisterDefaultOnBackInvokedCallback()V
    .registers 3

    .line 3275
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mBackCallbackRegistered:Z

    if-nez v0, :cond_5

    .line 3276
    return-void

    .line 3278
    :cond_5
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    if-eqz v0, :cond_17

    .line 3279
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object v0

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mCompatBackCallback:Landroid/window/CompatOnBackInvokedCallback;

    .line 3280
    invoke-interface {v0, v1}, Landroid/window/OnBackInvokedDispatcher;->unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    .line 3281
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mBackCallbackRegistered:Z

    .line 3283
    :cond_17
    return-void
.end method

.method private blacklist updateEditorToolTypeInternal(I)V
    .registers 3
    .param p1, "toolType"    # I

    .line 1425
    invoke-static {}, Landroid/view/inputmethod/Flags;->useHandwritingListenerForTooltype()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1426
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-eqz v0, :cond_f

    .line 1427
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {v0, p1}, Landroid/view/inputmethod/EditorInfo;->setInitialToolType(I)V

    .line 1430
    :cond_f
    invoke-virtual {p0, p1}, Landroid/inputmethodservice/InputMethodService;->onUpdateEditorToolType(I)V

    .line 1431
    return-void
.end method


# virtual methods
.method final blacklist createInputMethodServiceInternal()Landroid/inputmethodservice/InputMethodServiceInternal;
    .registers 2

    .line 4546
    new-instance v0, Landroid/inputmethodservice/InputMethodService$1;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/InputMethodService$1;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    return-object v0
.end method

.method greylist-max-o doFinishInput()V
    .registers 5

    .line 3486
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mDumper:Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;

    const-string v2, "InputMethodService#doFinishInput"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/internal/inputmethod/ImeTracing;->triggerServiceDump(Ljava/lang/String;Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;[B)V

    .line 3488
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/inputmethodservice/InputMethodService;->finishViews(Z)V

    .line 3489
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputStarted:Z

    if-eqz v0, :cond_1c

    .line 3490
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInlineSuggestionSessionController:Landroid/inputmethodservice/InlineSuggestionSessionController;

    invoke-virtual {v0}, Landroid/inputmethodservice/InlineSuggestionSessionController;->notifyOnFinishInput()V

    .line 3492
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onFinishInput()V

    .line 3494
    :cond_1c
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputStarted:Z

    .line 3495
    iput-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mStartedInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 3496
    iput-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mCurCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 3497
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mOnPreparedStylusHwCalled:Z

    if-nez v0, :cond_2a

    .line 3499
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->finishStylusHandwriting()V

    .line 3504
    :cond_2a
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->unregisterDefaultOnBackInvokedCallback()V

    .line 3505
    return-void
.end method

.method greylist-max-o doMovementKey(ILandroid/view/KeyEvent;I)Z
    .registers 13
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "count"    # I

    .line 3982
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->getExtractEditTextIfVisible()Landroid/inputmethodservice/ExtractEditText;

    move-result-object v0

    .line 3983
    .local v0, "eet":Landroid/inputmethodservice/ExtractEditText;
    const/4 v1, 0x0

    if-eqz v0, :cond_74

    .line 3987
    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v2

    .line 3988
    .local v2, "movement":Landroid/text/method/MovementMethod;
    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->getLayout()Landroid/text/Layout;

    move-result-object v3

    .line 3989
    .local v3, "layout":Landroid/text/Layout;
    const/4 v4, 0x1

    if-eqz v2, :cond_6f

    if-eqz v3, :cond_6f

    .line 3992
    const/4 v5, -0x1

    if-ne p3, v5, :cond_25

    .line 3993
    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v2, v0, v5, p1, p2}, Landroid/text/method/MovementMethod;->onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_6f

    .line 3994
    invoke-virtual {p0, p1, v4}, Landroid/inputmethodservice/InputMethodService;->reportExtractedMovement(II)V

    .line 3995
    return v4

    .line 3997
    :cond_25
    const/4 v6, -0x2

    if-ne p3, v6, :cond_33

    .line 3998
    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v2, v0, v5, p1, p2}, Landroid/text/method/MovementMethod;->onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_6f

    .line 3999
    return v4

    .line 4002
    :cond_33
    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v2, v0, v6, p2}, Landroid/text/method/MovementMethod;->onKeyOther(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/KeyEvent;)Z

    move-result v6

    if-eqz v6, :cond_41

    .line 4003
    invoke-virtual {p0, p1, p3}, Landroid/inputmethodservice/InputMethodService;->reportExtractedMovement(II)V

    goto :goto_6f

    .line 4005
    :cond_41
    invoke-static {p2, v1}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v6

    .line 4006
    .local v6, "down":Landroid/view/KeyEvent;
    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v2, v0, v7, p1, v6}, Landroid/text/method/MovementMethod;->onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    move-result v7

    if-eqz v7, :cond_6f

    .line 4007
    invoke-static {p2, v4}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v7

    .line 4008
    .local v7, "up":Landroid/view/KeyEvent;
    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v2, v0, v8, p1, v7}, Landroid/text/method/MovementMethod;->onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    .line 4009
    :goto_5a
    add-int/2addr p3, v5

    if-lez p3, :cond_6c

    .line 4010
    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v2, v0, v8, p1, v6}, Landroid/text/method/MovementMethod;->onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    .line 4011
    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v2, v0, v8, p1, v7}, Landroid/text/method/MovementMethod;->onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    goto :goto_5a

    .line 4013
    :cond_6c
    invoke-virtual {p0, p1, p3}, Landroid/inputmethodservice/InputMethodService;->reportExtractedMovement(II)V

    .line 4020
    .end local v6    # "down":Landroid/view/KeyEvent;
    .end local v7    # "up":Landroid/view/KeyEvent;
    :cond_6f
    :goto_6f
    packed-switch p1, :pswitch_data_76

    goto :goto_74

    .line 4025
    :pswitch_73
    return v4

    .line 4029
    .end local v2    # "movement":Landroid/text/method/MovementMethod;
    .end local v3    # "layout":Landroid/text/Layout;
    :cond_74
    :goto_74
    return v1

    nop

    :pswitch_data_76
    .packed-switch 0x13
        :pswitch_73
        :pswitch_73
        :pswitch_73
        :pswitch_73
    .end packed-switch
.end method

.method greylist-max-o doStartInput(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Z)V
    .registers 8
    .param p1, "ic"    # Landroid/view/inputmethod/InputConnection;
    .param p2, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
    .param p3, "restarting"    # Z

    .line 3508
    if-nez p3, :cond_9

    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputStarted:Z

    if-eqz v0, :cond_9

    .line 3509
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->doFinishInput()V

    .line 3511
    :cond_9
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    const-string v1, "InputMethodService#doStartInput"

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mDumper:Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/inputmethod/ImeTracing;->triggerServiceDump(Ljava/lang/String;Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;[B)V

    .line 3513
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputStarted:Z

    .line 3514
    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService;->mStartedInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 3515
    iput-object p2, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 3516
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->initialize()V

    .line 3517
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInlineSuggestionSessionController:Landroid/inputmethodservice/InlineSuggestionSessionController;

    .line 3518
    if-nez p2, :cond_25

    move-object v2, v3

    goto :goto_27

    :cond_25
    iget-object v2, p2, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    .line 3519
    :goto_27
    if-nez p2, :cond_2a

    goto :goto_2e

    :cond_2a
    invoke-virtual {p2}, Landroid/view/inputmethod/EditorInfo;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v3

    .line 3517
    :goto_2e
    invoke-virtual {v1, v2, v3}, Landroid/inputmethodservice/InlineSuggestionSessionController;->notifyOnStartInput(Ljava/lang/String;Landroid/view/autofill/AutofillId;)V

    .line 3521
    invoke-virtual {p0, p2, p3}, Landroid/inputmethodservice/InputMethodService;->onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 3522
    iget-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mDecorViewVisible:Z

    if-eqz v1, :cond_5a

    .line 3523
    iget-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    if-eqz v1, :cond_4f

    .line 3525
    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    .line 3526
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInlineSuggestionSessionController:Landroid/inputmethodservice/InlineSuggestionSessionController;

    invoke-virtual {v1}, Landroid/inputmethodservice/InlineSuggestionSessionController;->notifyOnStartInputView()V

    .line 3527
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {p0, v1, p3}, Landroid/inputmethodservice/InputMethodService;->onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 3528
    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->startExtractingText(Z)V

    .line 3532
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->registerDefaultOnBackInvokedCallback()V

    goto :goto_5a

    .line 3533
    :cond_4f
    iget v1, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    if-nez v1, :cond_5a

    .line 3535
    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    .line 3536
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {p0, v0, p3}, Landroid/inputmethodservice/InputMethodService;->onStartCandidatesView(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 3539
    :cond_5a
    :goto_5a
    return-void
.end method

.method protected whitelist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "fout"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 4659
    new-instance v0, Landroid/util/PrintWriterPrinter;

    invoke-direct {v0, p2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 4660
    .local v0, "p":Landroid/util/Printer;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Input method service state for "

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

    .line 4661
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mViewsCreated="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mViewsCreated:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4662
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDecorViewVisible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mDecorViewVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mDecorViewWasVisible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mDecorViewWasVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mWindowVisible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mInShowWindow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mInShowWindow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4666
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Configuration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4667
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4668
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mInputBinding="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mInputBinding:Landroid/view/inputmethod/InputBinding;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4669
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mInputConnection="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4670
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mStartedInputConnection="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mStartedInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4671
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mInputStarted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mInputStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mInputViewStarted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCandidatesViewStarted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4675
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-eqz v1, :cond_135

    .line 4676
    const-string v1, "  mInputEditorInfo:"

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4677
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    const-string v2, "    "

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/inputmethod/EditorInfo;->dump(Landroid/util/Printer;Ljava/lang/String;Z)V

    goto :goto_13a

    .line 4679
    :cond_135
    const-string v1, "  mInputEditorInfo: null"

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4682
    :goto_13a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mShowInputRequested="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mLastShowInputRequested="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mLastShowInputRequested:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mShowInputFlags=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputFlags:I

    .line 4684
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4682
    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4685
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCandidatesVisibility="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mFullscreenApplied="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenApplied:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mIsFullscreen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mIsFullscreen:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mExtractViewHidden="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractViewHidden:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4690
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    if-eqz v1, :cond_21a

    .line 4691
    const-string v1, "  mExtractedText:"

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4692
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    text="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    iget-object v2, v2, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " chars startOffset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    iget v2, v2, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4694
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    selectionStart="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    iget v2, v2, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " selectionEnd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    iget v2, v2, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " flags=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    iget v2, v2, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 4696
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4694
    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto :goto_21f

    .line 4698
    :cond_21a
    const-string v1, "  mExtractedText: null"

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4700
    :goto_21f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mExtractedToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedToken:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4701
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mIsInputViewShown="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mIsInputViewShown:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mStatusIcon="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/inputmethodservice/InputMethodService;->mStatusIcon:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4703
    const-string v1, "  Last computed insets:"

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4704
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    contentTopInsets="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    iget v2, v2, Landroid/inputmethodservice/InputMethodService$Insets;->contentTopInsets:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " visibleTopInsets="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    iget v2, v2, Landroid/inputmethodservice/InputMethodService$Insets;->visibleTopInsets:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " touchableInsets="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    iget v2, v2, Landroid/inputmethodservice/InputMethodService$Insets;->touchableInsets:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " touchableRegion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    iget-object v2, v2, Landroid/inputmethodservice/InputMethodService$Insets;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4708
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mSettingsObserver="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mSettingsObserver:Landroid/inputmethodservice/InputMethodService$SettingsObserver;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4709
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mNavigationBarController="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mNavigationBarController:Landroid/inputmethodservice/NavigationBarController;

    invoke-virtual {v2}, Landroid/inputmethodservice/NavigationBarController;->toDebugString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4710
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCustomImeSwitcherButtonRequestedVisible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mCustomImeSwitcherButtonRequestedVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4712
    return-void
.end method

.method public whitelist enableHardwareAcceleration()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1794
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    if-nez v0, :cond_9

    .line 1797
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v0

    return v0

    .line 1795
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must be called before onCreate()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist finishConnectionlessStylusHandwriting(Ljava/lang/CharSequence;)V
    .registers 5
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 2924
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mConnectionlessHandwritingCallback:Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;

    if-eqz v0, :cond_28

    .line 2926
    :try_start_4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 2927
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mConnectionlessHandwritingCallback:Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;

    invoke-interface {v0, p1}, Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;->onResult(Ljava/lang/CharSequence;)V

    .line 2928
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mIsConnectionlessHandwritingForDelegation:Z

    if-eqz v0, :cond_1c

    .line 2929
    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService;->mHandwritingDelegationText:Ljava/lang/CharSequence;

    goto :goto_1c

    .line 2932
    :cond_16
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mConnectionlessHandwritingCallback:Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;->onError(I)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_1c} :catch_1d

    .line 2937
    :cond_1c
    :goto_1c
    goto :goto_25

    .line 2935
    :catch_1d
    move-exception v0

    .line 2936
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "InputMethodService"

    const-string v2, "Couldn\'t send connectionless handwriting result"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2938
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_25
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mConnectionlessHandwritingCallback:Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;

    .line 2940
    :cond_28
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->finishStylusHandwriting()V

    .line 2941
    return-void
.end method

.method public final whitelist finishStylusHandwriting()V
    .registers 7

    .line 2875
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInkWindow:Landroid/inputmethodservice/InkWindow;

    if-nez v0, :cond_5

    .line 2876
    return-void

    .line 2878
    :cond_5
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mHandwritingRequestId:Ljava/util/OptionalInt;

    invoke-virtual {v0}, Ljava/util/OptionalInt;->isPresent()Z

    move-result v0

    if-nez v0, :cond_e

    .line 2879
    return-void

    .line 2881
    :cond_e
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mFinishHwRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1d

    .line 2882
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mFinishHwRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2884
    :cond_1d
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mFinishHwRunnable:Ljava/lang/Runnable;

    .line 2885
    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mLastHandwritingRegion:Landroid/graphics/Region;

    .line 2887
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mHandwritingRequestId:Ljava/util/OptionalInt;

    invoke-virtual {v1}, Ljava/util/OptionalInt;->getAsInt()I

    move-result v1

    .line 2888
    .local v1, "requestId":I
    invoke-static {}, Ljava/util/OptionalInt;->empty()Ljava/util/OptionalInt;

    move-result-object v2

    iput-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mHandwritingRequestId:Ljava/util/OptionalInt;

    .line 2890
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mHandwritingEventReceiver:Landroid/view/InputEventReceiver;

    invoke-virtual {v2}, Landroid/view/InputEventReceiver;->dispose()V

    .line 2891
    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mHandwritingEventReceiver:Landroid/view/InputEventReceiver;

    .line 2892
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mInkWindow:Landroid/inputmethodservice/InkWindow;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/inputmethodservice/InkWindow;->hide(Z)V

    .line 2894
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mConnectionlessHandwritingCallback:Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;

    if-eqz v2, :cond_55

    .line 2895
    const-string v2, "Connectionless handwriting session did not complete successfully"

    const-string v4, "InputMethodService"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2897
    :try_start_46
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mConnectionlessHandwritingCallback:Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;

    const/4 v5, 0x2

    invoke-interface {v2, v5}, Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;->onError(I)V
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_4c} :catch_4d

    .line 2900
    goto :goto_53

    .line 2898
    :catch_4d
    move-exception v2

    .line 2899
    .local v2, "e":Landroid/os/RemoteException;
    const-string v5, "Couldn\'t send connectionless handwriting error result"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2901
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_53
    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mConnectionlessHandwritingCallback:Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;

    .line 2903
    :cond_55
    iput-boolean v3, p0, Landroid/inputmethodservice/InputMethodService;->mIsConnectionlessHandwritingForDelegation:Z

    .line 2905
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mPrivOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    invoke-virtual {v0, v1}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->resetStylusHandwriting(I)V

    .line 2906
    iput-boolean v3, p0, Landroid/inputmethodservice/InputMethodService;->mOnPreparedStylusHwCalled:Z

    .line 2907
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onFinishStylusHandwriting()V

    .line 2908
    return-void
.end method

.method public whitelist getBackDisposition()I
    .registers 2

    .line 2122
    iget v0, p0, Landroid/inputmethodservice/InputMethodService;->mBackDisposition:I

    return v0
.end method

.method public whitelist getCandidatesHiddenVisibility()I
    .registers 2

    .line 2527
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isExtractViewShown()Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x8

    goto :goto_a

    :cond_9
    const/4 v0, 0x4

    :goto_a
    return v0
.end method

.method public whitelist getCurrentInputBinding()Landroid/view/inputmethod/InputBinding;
    .registers 2

    .line 2152
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputBinding:Landroid/view/inputmethod/InputBinding;

    return-object v0
.end method

.method public whitelist getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;
    .registers 3

    .line 2160
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mStartedInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 2161
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_5

    .line 2162
    return-object v0

    .line 2164
    :cond_5
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    return-object v1
.end method

.method public whitelist getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;
    .registers 2

    .line 2208
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    return-object v0
.end method

.method public whitelist getCurrentInputStarted()Z
    .registers 2

    .line 2204
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputStarted:Z

    return v0
.end method

.method public whitelist getInputMethodWindowRecommendedHeight()I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4480
    const-string v0, "InputMethodService"

    const-string v1, "getInputMethodWindowRecommendedHeight() is deprecated and now always returns 0. Do not use this method."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4482
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getLayoutInflater()Landroid/view/LayoutInflater;
    .registers 2

    .line 2084
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public whitelist getMaxWidth()I
    .registers 3

    .line 2142
    const-class v0, Landroid/view/WindowManager;

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 2143
    .local v0, "windowManager":Landroid/view/WindowManager;
    nop

    .line 2144
    invoke-interface {v0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v1

    .line 2143
    invoke-static {v1}, Landroid/window/WindowMetricsHelper;->getBoundsExcludingNavigationBarAndCutout(Landroid/view/WindowMetrics;)Landroid/graphics/Rect;

    move-result-object v1

    .line 2144
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 2143
    return v1
.end method

.method public final blacklist getShouldShowImeWithHardKeyboardForTesting()Z
    .registers 2

    .line 1757
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mSettingsObserver:Landroid/inputmethodservice/InputMethodService$SettingsObserver;

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->-$$Nest$mshouldShowImeWithHardKeyboard(Landroid/inputmethodservice/InputMethodService$SettingsObserver;)Z

    move-result v0

    return v0
.end method

.method public final whitelist getStylusHandwritingSessionTimeout()Ljava/time/Duration;
    .registers 3

    .line 3055
    iget-wide v0, p0, Landroid/inputmethodservice/InputMethodService;->mStylusHwSessionsTimeout:J

    invoke-static {v0, v1}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist getStylusHandwritingWindow()Landroid/view/Window;
    .registers 2

    .line 2854
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInkWindow:Landroid/inputmethodservice/InkWindow;

    return-object v0
.end method

.method public whitelist getTextForImeAction(I)Ljava/lang/CharSequence;
    .registers 3
    .param p1, "imeOptions"    # I

    .line 4257
    and-int/lit16 v0, p1, 0xff

    packed-switch v0, :pswitch_data_40

    .line 4273
    const v0, 0x10404ce

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 4271
    :pswitch_d
    const v0, 0x10404d2

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 4269
    :pswitch_15
    const v0, 0x10404cf

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 4267
    :pswitch_1d
    const v0, 0x10404d1

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 4265
    :pswitch_25
    const v0, 0x10404d4

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 4263
    :pswitch_2d
    const v0, 0x10404d3

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 4261
    :pswitch_35
    const v0, 0x10404d0

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 4259
    :pswitch_3d
    const/4 v0, 0x0

    return-object v0

    nop

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_3d
        :pswitch_35
        :pswitch_2d
        :pswitch_25
        :pswitch_1d
        :pswitch_15
        :pswitch_d
    .end packed-switch
.end method

.method public whitelist getWindow()Landroid/app/Dialog;
    .registers 2

    .line 2088
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    return-object v0
.end method

.method public whitelist hideStatusIcon()V
    .registers 4

    .line 2536
    const/4 v0, 0x0

    iput v0, p0, Landroid/inputmethodservice/InputMethodService;->mStatusIcon:I

    .line 2537
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mPrivOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->updateStatusIconAsync(Ljava/lang/String;I)V

    .line 2538
    return-void
.end method

.method public whitelist hideWindow()V
    .registers 7

    .line 3397
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mCurStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mCurStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    goto :goto_14

    .line 3398
    :cond_8
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    .line 3400
    invoke-static {v0}, Landroid/view/inputmethod/ImeTracker;->isFromUser(Landroid/view/View;)Z

    move-result v0

    .line 3398
    const/16 v2, 0x2b

    invoke-direct {p0, v1, v2, v0}, Landroid/inputmethodservice/InputMethodService;->createStatsToken(ZIZ)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v0

    :goto_14
    nop

    .line 3401
    .local v0, "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mCurStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    .line 3403
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v3

    const/16 v4, 0x2d

    invoke-interface {v3, v0, v4}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 3404
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v3

    const-string v4, "InputMethodService#hideWindow"

    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mDumper:Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;

    invoke-virtual {v3, v4, v5, v2}, Lcom/android/internal/inputmethod/ImeTracing;->triggerServiceDump(Ljava/lang/String;Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;[B)V

    .line 3406
    invoke-direct {p0, v1}, Landroid/inputmethodservice/InputMethodService;->setImeWindowVisibility(I)V

    .line 3407
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 3410
    invoke-direct {p0, v1, v0}, Landroid/inputmethodservice/InputMethodService;->notifyPreImeWindowVisibilityChanged(ZLandroid/view/inputmethod/ImeTracker$Token;)V

    goto :goto_3c

    .line 3412
    :cond_39
    invoke-direct {p0, v1, v0}, Landroid/inputmethodservice/InputMethodService;->applyVisibilityInInsetsConsumerIfNecessary(ZLandroid/view/inputmethod/ImeTracker$Token;)V

    .line 3414
    :goto_3c
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    .line 3415
    invoke-direct {p0, v1}, Landroid/inputmethodservice/InputMethodService;->finishViews(Z)V

    .line 3416
    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mDecorViewVisible:Z

    if-eqz v2, :cond_57

    .line 3418
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mInputView:Landroid/view/View;

    if-eqz v2, :cond_50

    .line 3419
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mInputView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->dispatchWindowVisibilityChanged(I)V

    .line 3421
    :cond_50
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mDecorViewVisible:Z

    .line 3422
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onWindowHidden()V

    .line 3423
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mDecorViewWasVisible:Z

    .line 3425
    :cond_57
    iget-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mIsFullscreen:Z

    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mLastWasInFullscreenMode:Z

    .line 3426
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->updateFullscreenMode()V

    .line 3427
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->unregisterDefaultOnBackInvokedCallback()V

    .line 3428
    return-void
.end method

.method greylist-max-o initViews()V
    .registers 7

    .line 1929
    const-string v0, "IMS.initViews"

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1930
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mInitialized:Z

    .line 1931
    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mViewsCreated:Z

    .line 1932
    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    .line 1933
    iput v0, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputFlags:I

    .line 1935
    sget-object v3, Landroid/R$styleable;->InputMethodService:[I

    invoke-virtual {p0, v3}, Landroid/inputmethodservice/InputMethodService;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v3

    iput-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mThemeAttrs:Landroid/content/res/TypedArray;

    .line 1936
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x1090090

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    .line 1938
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    iget-object v4, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/inputmethodservice/SoftInputWindow;->setContentView(Landroid/view/View;)V

    .line 1939
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    iget-object v4, p0, Landroid/inputmethodservice/InputMethodService;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 1940
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    const v4, 0x102033e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    .line 1941
    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractViewHidden:Z

    .line 1942
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    const v4, 0x102001c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mExtractFrame:Landroid/widget/FrameLayout;

    .line 1943
    iput-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mExtractView:Landroid/view/View;

    .line 1944
    iput-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    .line 1945
    iput-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAccessories:Landroid/view/ViewGroup;

    .line 1946
    iput-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/view/View;

    .line 1947
    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenApplied:Z

    .line 1949
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    const v4, 0x102001d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesFrame:Landroid/widget/FrameLayout;

    .line 1950
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    const v4, 0x102001e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    .line 1951
    iput-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mInputView:Landroid/view/View;

    .line 1952
    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mIsInputViewShown:Z

    .line 1954
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractFrame:Landroid/widget/FrameLayout;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1955
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCandidatesHiddenVisibility()I

    move-result v0

    iput v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    .line 1956
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesFrame:Landroid/widget/FrameLayout;

    iget v4, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1957
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1958
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mNavigationBarController:Landroid/inputmethodservice/NavigationBarController;

    invoke-virtual {v0}, Landroid/inputmethodservice/NavigationBarController;->onViewInitialized()V

    .line 1959
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1960
    return-void
.end method

.method greylist-max-o initialize()V
    .registers 2

    .line 1922
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mInitialized:Z

    if-nez v0, :cond_a

    .line 1923
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mInitialized:Z

    .line 1924
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onInitializeInterface()V

    .line 1926
    :cond_a
    return-void
.end method

.method public whitelist isExtractViewShown()Z
    .registers 2

    .line 2355
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mIsFullscreen:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractViewHidden:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public whitelist isFullscreenMode()Z
    .registers 2

    .line 2301
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mIsFullscreen:Z

    return v0
.end method

.method public final blacklist isImeNavigationBarShownForTesting()Z
    .registers 2

    .line 4492
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mNavigationBarController:Landroid/inputmethodservice/NavigationBarController;

    invoke-virtual {v0}, Landroid/inputmethodservice/NavigationBarController;->isShown()Z

    move-result v0

    return v0
.end method

.method public whitelist isInputViewShown()Z
    .registers 2

    .line 2460
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mDecorViewVisible:Z

    return v0
.end method

.method public whitelist isShowInputRequested()Z
    .registers 2

    .line 2451
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    return v0
.end method

.method public whitelist onAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .line 3942
    return-void
.end method

.method public whitelist onBindInput()V
    .registers 1

    .line 3456
    return-void
.end method

.method public whitelist onComputeInsets(Landroid/inputmethodservice/InputMethodService$Insets;)V
    .registers 8
    .param p1, "outInsets"    # Landroid/inputmethodservice/InputMethodService$Insets;

    .line 2400
    const-string v0, "IMS.onComputeInsets"

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2401
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mTmpLocation:[I

    .line 2402
    .local v0, "loc":[I
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_18

    .line 2403
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->getLocationInWindow([I)V

    goto :goto_2a

    .line 2405
    :cond_18
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getWindow()Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    .line 2406
    .local v3, "decor":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v5

    aput v5, v0, v4

    .line 2408
    .end local v3    # "decor":Landroid/view/View;
    :goto_2a
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isFullscreenMode()Z

    move-result v3

    if-eqz v3, :cond_43

    .line 2410
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getWindow()Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    .line 2411
    .restart local v3    # "decor":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v5

    iput v5, p1, Landroid/inputmethodservice/InputMethodService$Insets;->contentTopInsets:I

    .line 2412
    .end local v3    # "decor":Landroid/view/View;
    goto :goto_47

    .line 2413
    :cond_43
    aget v3, v0, v4

    iput v3, p1, Landroid/inputmethodservice/InputMethodService$Insets;->contentTopInsets:I

    .line 2415
    :goto_47
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_54

    .line 2416
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->getLocationInWindow([I)V

    .line 2418
    :cond_54
    aget v3, v0, v4

    iput v3, p1, Landroid/inputmethodservice/InputMethodService$Insets;->visibleTopInsets:I

    .line 2419
    const/4 v3, 0x2

    iput v3, p1, Landroid/inputmethodservice/InputMethodService$Insets;->touchableInsets:I

    .line 2420
    iget-object v3, p1, Landroid/inputmethodservice/InputMethodService$Insets;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->setEmpty()V

    .line 2421
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 2422
    return-void
.end method

.method public whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 2002
    invoke-super {p0, p1}, Landroid/inputmethodservice/AbstractInputMethodService;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2003
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mConfigTracker:Landroid/inputmethodservice/ImsConfigurationTracker;

    new-instance v1, Landroid/inputmethodservice/InputMethodService$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Landroid/inputmethodservice/InputMethodService$$ExternalSyntheticLambda5;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    invoke-virtual {v0, p1, v1}, Landroid/inputmethodservice/ImsConfigurationTracker;->onConfigurationChanged(Landroid/content/res/Configuration;Ljava/lang/Runnable;)V

    .line 2004
    return-void
.end method

.method public whitelist onConfigureWindow(Landroid/view/Window;ZZ)V
    .registers 8
    .param p1, "win"    # Landroid/view/Window;
    .param p2, "isFullscreen"    # Z
    .param p3, "isCandidatesOnly"    # Z

    .line 2284
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 2285
    .local v0, "currentHeight":I
    const/4 v1, -0x1

    if-eqz p2, :cond_11

    move v2, v1

    goto :goto_12

    :cond_11
    const/4 v2, -0x2

    .line 2286
    .local v2, "newHeight":I
    :goto_12
    nop

    .line 2292
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v3}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 2293
    return-void
.end method

.method public whitelist onCreate()V
    .registers 11

    .line 1801
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    const-string v2, "onCreateInputMethodSessionInterface"

    invoke-direct {p0, v2, v1}, Landroid/inputmethodservice/InputMethodService;->methodIsOverridden(Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1802
    const-wide/32 v1, 0x8d39f80

    invoke-static {v1, v2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v1

    if-nez v1, :cond_15

    goto :goto_1d

    .line 1803
    :cond_15
    new-instance v0, Ljava/lang/LinkageError;

    const-string v1, "InputMethodService#onCreateInputMethodSessionInterface() can no longer be overridden!"

    invoke-direct {v0, v1}, Ljava/lang/LinkageError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1806
    :cond_1d
    :goto_1d
    const-string v1, "IMS.onCreate"

    const-wide/16 v2, 0x20

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1807
    iget v4, p0, Landroid/inputmethodservice/InputMethodService;->mTheme:I

    .line 1808
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v5, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 1807
    const v6, 0x1030054

    const v7, 0x103007f

    const v8, 0x103013e

    const v9, 0x103013e

    invoke-static/range {v4 .. v9}, Landroid/content/res/Resources;->selectSystemTheme(IIIIII)I

    move-result v1

    iput v1, p0, Landroid/inputmethodservice/InputMethodService;->mTheme:I

    .line 1813
    iget v1, p0, Landroid/inputmethodservice/InputMethodService;->mTheme:I

    invoke-super {p0, v1}, Landroid/inputmethodservice/AbstractInputMethodService;->setTheme(I)V

    .line 1814
    invoke-super {p0}, Landroid/inputmethodservice/AbstractInputMethodService;->onCreate()V

    .line 1815
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 1816
    invoke-static {p0}, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->createAndRegister(Landroid/inputmethodservice/InputMethodService;)Landroid/inputmethodservice/InputMethodService$SettingsObserver;

    move-result-object v1

    iput-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mSettingsObserver:Landroid/inputmethodservice/InputMethodService$SettingsObserver;

    .line 1819
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mSettingsObserver:Landroid/inputmethodservice/InputMethodService$SettingsObserver;

    invoke-static {v1}, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->-$$Nest$mshouldShowImeWithHardKeyboard(Landroid/inputmethodservice/InputMethodService$SettingsObserver;)Z

    .line 1821
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x11101c1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 1824
    .local v1, "hideNavBarForKeyboard":Z
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->initConfigurationTracker()V

    .line 1829
    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Landroid/inputmethodservice/InputMethodService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    iput-object v4, p0, Landroid/inputmethodservice/InputMethodService;->mInflater:Landroid/view/LayoutInflater;

    .line 1831
    const-string v4, "IMS.initSoftInputWindow"

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1832
    new-instance v4, Landroid/inputmethodservice/SoftInputWindow;

    iget v5, p0, Landroid/inputmethodservice/InputMethodService;->mTheme:I

    iget-object v6, p0, Landroid/inputmethodservice/InputMethodService;->mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

    invoke-direct {v4, p0, v5, v6}, Landroid/inputmethodservice/SoftInputWindow;-><init>(Landroid/inputmethodservice/InputMethodService;ILandroid/view/KeyEvent$DispatcherState;)V

    iput-object v4, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    .line 1833
    iget-object v4, p0, Landroid/inputmethodservice/InputMethodService;->mImeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;

    if-eqz v4, :cond_96

    .line 1834
    iget-object v4, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v4}, Landroid/inputmethodservice/SoftInputWindow;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object v4

    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mImeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;

    .line 1835
    invoke-interface {v4, v5}, Landroid/window/OnBackInvokedDispatcher;->setImeOnBackInvokedDispatcher(Landroid/window/ImeOnBackInvokedDispatcher;)V

    .line 1837
    :cond_96
    iget-object v4, p0, Landroid/inputmethodservice/InputMethodService;->mNavigationBarController:Landroid/inputmethodservice/NavigationBarController;

    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v4, v5}, Landroid/inputmethodservice/NavigationBarController;->onSoftInputWindowCreated(Landroid/inputmethodservice/SoftInputWindow;)V

    .line 1839
    iget-object v4, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v4}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 1841
    .local v4, "window":Landroid/view/Window;
    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    .line 1842
    .local v5, "lp":Landroid/view/WindowManager$LayoutParams;
    const-string v6, "InputMethod"

    invoke-virtual {v5, v6}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1843
    const/16 v6, 0x7db

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1844
    const/4 v6, -0x1

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1845
    const/4 v6, -0x2

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1846
    const/16 v6, 0x50

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1847
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v6

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v7

    or-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 1848
    invoke-static {}, Landroid/view/WindowInsets$Side;->all()I

    move-result v6

    and-int/lit8 v6, v6, -0x9

    invoke-virtual {v5, v6}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsSides(I)V

    .line 1849
    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/view/WindowManager$LayoutParams;->receiveInsetsIgnoringZOrder:Z

    .line 1850
    invoke-virtual {v4, v5}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1855
    .end local v5    # "lp":Landroid/view/WindowManager$LayoutParams;
    const v5, -0x7ffffef8

    .line 1858
    .local v5, "windowFlags":I
    const v6, -0x7ffffef6

    .line 1860
    .local v6, "windowFlagsMask":I
    const v7, -0x7ffffef8

    const v8, -0x7ffffef6

    invoke-virtual {v4, v7, v8}, Landroid/view/Window;->setFlags(II)V

    .line 1867
    if-eqz v1, :cond_e9

    .line 1868
    invoke-virtual {v4, v0}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    .line 1872
    .end local v4    # "window":Landroid/view/Window;
    .end local v5    # "windowFlags":I
    .end local v6    # "windowFlagsMask":I
    :cond_e9
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->initViews()V

    .line 1873
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1875
    new-instance v0, Landroid/inputmethodservice/InlineSuggestionSessionController;

    new-instance v4, Landroid/inputmethodservice/InputMethodService$$ExternalSyntheticLambda8;

    invoke-direct {v4, p0}, Landroid/inputmethodservice/InputMethodService$$ExternalSyntheticLambda8;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    new-instance v5, Landroid/inputmethodservice/InputMethodService$$ExternalSyntheticLambda9;

    invoke-direct {v5, p0}, Landroid/inputmethodservice/InputMethodService$$ExternalSyntheticLambda9;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    new-instance v6, Landroid/inputmethodservice/InputMethodService$$ExternalSyntheticLambda10;

    invoke-direct {v6, p0}, Landroid/inputmethodservice/InputMethodService$$ExternalSyntheticLambda10;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    invoke-direct {v0, v4, v5, v6}, Landroid/inputmethodservice/InlineSuggestionSessionController;-><init>(Ljava/util/function/Function;Ljava/util/function/Supplier;Ljava/util/function/Consumer;)V

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInlineSuggestionSessionController:Landroid/inputmethodservice/InlineSuggestionSessionController;

    .line 1878
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1879
    return-void
.end method

.method public whitelist onCreateCandidatesView()Landroid/view/View;
    .registers 2

    .line 2636
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onCreateExtractTextView()Landroid/view/View;
    .registers 4

    .line 2621
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x1090091

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onCreateInlineSuggestionsRequest(Landroid/os/Bundle;)Landroid/view/inputmethod/InlineSuggestionsRequest;
    .registers 3
    .param p1, "uiExtras"    # Landroid/os/Bundle;

    .line 1323
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onCreateInputMethodInterface()Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodImpl;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2061
    new-instance v0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    return-object v0
.end method

.method public whitelist onCreateInputMethodSessionInterface()Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodSessionImpl;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2080
    new-instance v0, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    return-object v0
.end method

.method public whitelist onCreateInputView()Landroid/view/View;
    .registers 2

    .line 2651
    const/4 v0, 0x0

    return-object v0
.end method

.method protected whitelist onCurrentInputMethodSubtypeChanged(Landroid/view/inputmethod/InputMethodSubtype;)V
    .registers 2
    .param p1, "newSubtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    .line 4464
    return-void
.end method

.method public whitelist onCustomImeSwitcherButtonRequestedVisible(Z)V
    .registers 2
    .param p1, "visible"    # Z

    .line 4525
    return-void
.end method

.method public whitelist onDestroy()V
    .registers 3

    .line 1963
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mDestroyed:Z

    .line 1964
    invoke-super {p0}, Landroid/inputmethodservice/AbstractInputMethodService;->onDestroy()V

    .line 1965
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 1967
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->doFinishInput()V

    .line 1968
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mNavigationBarController:Landroid/inputmethodservice/NavigationBarController;

    invoke-virtual {v0}, Landroid/inputmethodservice/NavigationBarController;->onDestroy()V

    .line 1969
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->dismissForDestroyIfNecessary()V

    .line 1970
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mSettingsObserver:Landroid/inputmethodservice/InputMethodService$SettingsObserver;

    const/4 v1, 0x0

    if-eqz v0, :cond_2a

    .line 1971
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mSettingsObserver:Landroid/inputmethodservice/InputMethodService$SettingsObserver;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->unregister()V

    .line 1972
    iput-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mSettingsObserver:Landroid/inputmethodservice/InputMethodService$SettingsObserver;

    .line 1974
    :cond_2a
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    if-eqz v0, :cond_33

    .line 1977
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    invoke-static {v0}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->remove(Landroid/os/IBinder;)V

    .line 1979
    :cond_33
    iput-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mImeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;

    .line 1980
    return-void
.end method

.method public whitelist onDisplayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    .registers 2
    .param p1, "completions"    # [Landroid/view/inputmethod/CompletionInfo;

    .line 3571
    return-void
.end method

.method public whitelist onEvaluateFullscreenMode()Z
    .registers 6

    .line 2313
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 2314
    .local v0, "config":Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_f

    .line 2315
    return v3

    .line 2317
    :cond_f
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    const/4 v2, 0x1

    if-eqz v1, :cond_25

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v1, v1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v4, 0x2000000

    and-int/2addr v1, v4

    if-nez v1, :cond_24

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v1, v1, Landroid/view/inputmethod/EditorInfo;->internalImeOptions:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_25

    .line 2323
    :cond_24
    return v3

    .line 2325
    :cond_25
    return v2
.end method

.method public whitelist onEvaluateInputViewShown()Z
    .registers 6

    .line 2476
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mSettingsObserver:Landroid/inputmethodservice/InputMethodService$SettingsObserver;

    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 2477
    const-string v0, "InputMethodService"

    const-string v2, "onEvaluateInputViewShown: mSettingsObserver must not be null here."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2478
    return v1

    .line 2480
    :cond_d
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mSettingsObserver:Landroid/inputmethodservice/InputMethodService$SettingsObserver;

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->-$$Nest$mshouldShowImeWithHardKeyboard(Landroid/inputmethodservice/InputMethodService$SettingsObserver;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_17

    .line 2481
    return v2

    .line 2483
    :cond_17
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 2484
    .local v0, "config":Landroid/content/res/Configuration;
    iget v3, v0, Landroid/content/res/Configuration;->keyboard:I

    if-eq v3, v2, :cond_28

    iget v3, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_29

    :cond_28
    move v1, v2

    :cond_29
    return v1
.end method

.method public whitelist onExtractTextContextMenuItem(I)Z
    .registers 4
    .param p1, "id"    # I

    .line 4238
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 4239
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_9

    .line 4240
    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->performContextMenuAction(I)Z

    .line 4242
    :cond_9
    const/4 v1, 0x1

    return v1
.end method

.method public whitelist onExtractedCursorMovement(II)V
    .registers 4
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .line 4221
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    if-eqz v0, :cond_14

    if-nez p2, :cond_7

    goto :goto_14

    .line 4224
    :cond_7
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->hasVerticalScrollBar()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 4225
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->setCandidatesViewShown(Z)V

    .line 4227
    :cond_13
    return-void

    .line 4222
    :cond_14
    :goto_14
    return-void
.end method

.method public greylist onExtractedDeleteText(II)V
    .registers 6
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 4157
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 4158
    .local v0, "conn":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_12

    .line 4159
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 4160
    invoke-interface {v0, p1, p1}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    .line 4161
    const/4 v1, 0x0

    sub-int v2, p2, p1

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 4163
    :cond_12
    return-void
.end method

.method public greylist onExtractedReplaceText(IILjava/lang/CharSequence;)V
    .registers 6
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "text"    # Ljava/lang/CharSequence;

    .line 4170
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 4171
    .local v0, "conn":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_d

    .line 4172
    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->setComposingRegion(II)Z

    .line 4173
    const/4 v1, 0x1

    invoke-interface {v0, p3, v1}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 4175
    :cond_d
    return-void
.end method

.method public whitelist onExtractedSelectionChanged(II)V
    .registers 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 4146
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 4147
    .local v0, "conn":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_9

    .line 4148
    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    .line 4150
    :cond_9
    return-void
.end method

.method public greylist onExtractedSetSpan(Ljava/lang/Object;III)V
    .registers 11
    .param p1, "span"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "flags"    # I

    .line 4182
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 4183
    .local v0, "conn":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_27

    .line 4184
    invoke-interface {v0, p2, p3}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    move-result v1

    if-nez v1, :cond_d

    return-void

    .line 4185
    :cond_d
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->getSelectedText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 4186
    .local v2, "text":Ljava/lang/CharSequence;
    instance-of v3, v2, Landroid/text/Spannable;

    if-eqz v3, :cond_27

    .line 4187
    move-object v3, v2

    check-cast v3, Landroid/text/Spannable;

    const/4 v4, 0x0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-interface {v3, p1, v4, v5, p4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 4188
    invoke-interface {v0, p2, p3}, Landroid/view/inputmethod/InputConnection;->setComposingRegion(II)Z

    .line 4189
    invoke-interface {v0, v2, v1}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 4192
    .end local v2    # "text":Ljava/lang/CharSequence;
    :cond_27
    return-void
.end method

.method public whitelist onExtractedTextClicked()V
    .registers 2

    .line 4202
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    if-nez v0, :cond_5

    .line 4203
    return-void

    .line 4205
    :cond_5
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->hasVerticalScrollBar()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 4206
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->setCandidatesViewShown(Z)V

    .line 4208
    :cond_11
    return-void
.end method

.method public whitelist onExtractingInputChanged(Landroid/view/inputmethod/EditorInfo;)V
    .registers 4
    .param p1, "ei"    # Landroid/view/inputmethod/EditorInfo;

    .line 4387
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-nez v0, :cond_a

    .line 4388
    const/4 v0, 0x2

    const/16 v1, 0x1f

    invoke-direct {p0, v0, v1}, Landroid/inputmethodservice/InputMethodService;->requestHideSelf(II)V

    .line 4391
    :cond_a
    return-void
.end method

.method public whitelist onFinishCandidatesView(Z)V
    .registers 3
    .param p1, "finishingInput"    # Z

    .line 2728
    if-nez p1, :cond_b

    .line 2729
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 2730
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_b

    .line 2731
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 2734
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_b
    return-void
.end method

.method public whitelist onFinishInput()V
    .registers 2

    .line 3554
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 3555
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_9

    .line 3556
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 3558
    :cond_9
    return-void
.end method

.method public whitelist onFinishInputView(Z)V
    .registers 3
    .param p1, "finishingInput"    # Z

    .line 2683
    if-nez p1, :cond_b

    .line 2684
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 2685
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_b

    .line 2686
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 2689
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_b
    return-void
.end method

.method public whitelist onFinishStylusHandwriting()V
    .registers 1

    .line 2839
    return-void
.end method

.method public whitelist onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 3935
    const/4 v0, 0x0

    return v0
.end method

.method final blacklist onImeSwitchButtonClickFromClient()V
    .registers 3

    .line 4535
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mPrivOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->onImeSwitchButtonClickFromClient(I)V

    .line 4536
    return-void
.end method

.method public whitelist onInitializeInterface()V
    .registers 1

    .line 1919
    return-void
.end method

.method public whitelist onInlineSuggestionsResponse(Landroid/view/inputmethod/InlineSuggestionsResponse;)Z
    .registers 3
    .param p1, "response"    # Landroid/view/inputmethod/InlineSuggestionsResponse;

    .line 1336
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 8
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 3775
    invoke-static {}, Landroid/view/inputmethod/Flags;->useHandwritingListenerForTooltype()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 3777
    invoke-direct {p0, v1}, Landroid/inputmethodservice/InputMethodService;->updateEditorToolTypeInternal(I)V

    .line 3780
    :cond_a
    const/4 v0, 0x4

    const/4 v2, 0x1

    if-ne p1, v0, :cond_26

    .line 3781
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->getExtractEditTextIfVisible()Landroid/inputmethodservice/ExtractEditText;

    move-result-object v0

    .line 3782
    .local v0, "eet":Landroid/inputmethodservice/ExtractEditText;
    if-eqz v0, :cond_1b

    invoke-virtual {v0, p2}, Landroid/inputmethodservice/ExtractEditText;->handleBackInTextActionModeIfNeeded(Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 3783
    return v2

    .line 3785
    :cond_1b
    invoke-direct {p0, v1}, Landroid/inputmethodservice/InputMethodService;->handleBack(Z)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 3786
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 3787
    return v2

    .line 3789
    :cond_25
    return v1

    .line 3790
    .end local v0    # "eet":Landroid/inputmethodservice/ExtractEditText;
    :cond_26
    const/16 v0, 0x3e

    const/4 v3, -0x1

    const/16 v4, 0x1000

    if-ne p1, v0, :cond_54

    .line 3791
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    and-int/lit16 v0, v0, -0xc2

    .line 3790
    invoke-static {v0, v4}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 3792
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mDecorViewVisible:Z

    if-eqz v0, :cond_54

    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    if-eqz v0, :cond_54

    .line 3793
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    and-int/lit16 v0, v0, 0xc1

    if-eqz v0, :cond_4a

    goto :goto_4b

    :cond_4a
    move v3, v2

    .line 3794
    .local v3, "direction":I
    :goto_4b
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mPrivOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    invoke-virtual {v0, v3}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->switchKeyboardLayoutAsync(I)V

    .line 3795
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 3796
    return v2

    .line 3801
    .end local v3    # "direction":I
    :cond_54
    invoke-static {}, Landroid/view/inputmethod/Flags;->ctrlShiftShortcut()Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 3802
    const/16 v0, 0x3b

    if-eq p1, v0, :cond_7d

    const/16 v0, 0x3c

    if-ne p1, v0, :cond_63

    goto :goto_7d

    .line 3807
    :cond_63
    const/16 v0, 0x71

    if-eq p1, v0, :cond_6f

    const/16 v0, 0x72

    if-ne p1, v0, :cond_6c

    goto :goto_6f

    .line 3813
    :cond_6c
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mUsingCtrlShiftShortcut:Z

    goto :goto_8a

    .line 3810
    :cond_6f
    :goto_6f
    nop

    .line 3811
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    and-int/lit16 v0, v0, -0x7001

    .line 3810
    invoke-static {v0, v2}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v0

    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mUsingCtrlShiftShortcut:Z

    goto :goto_8a

    .line 3805
    :cond_7d
    :goto_7d
    nop

    .line 3806
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    and-int/lit16 v0, v0, -0xc2

    .line 3805
    invoke-static {v0, v4}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v0

    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mUsingCtrlShiftShortcut:Z

    .line 3817
    :cond_8a
    :goto_8a
    invoke-virtual {p0, p1, p2, v3}, Landroid/inputmethodservice/InputMethodService;->doMovementKey(ILandroid/view/KeyEvent;I)Z

    move-result v0

    return v0
.end method

.method public whitelist onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 3843
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "keyCode"    # I
    .param p2, "count"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 3859
    invoke-virtual {p0, p1, p3, p2}, Landroid/inputmethodservice/InputMethodService;->doMovementKey(ILandroid/view/KeyEvent;I)Z

    move-result v0

    return v0
.end method

.method public whitelist onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 3875
    invoke-static {}, Landroid/view/inputmethod/Flags;->ctrlShiftShortcut()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_34

    .line 3876
    const/16 v0, 0x3b

    const/4 v2, 0x0

    if-eq p1, v0, :cond_1c

    const/16 v0, 0x3c

    if-eq p1, v0, :cond_1c

    const/16 v0, 0x71

    if-eq p1, v0, :cond_1c

    const/16 v0, 0x72

    if-ne p1, v0, :cond_19

    goto :goto_1c

    .line 3891
    :cond_19
    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mUsingCtrlShiftShortcut:Z

    goto :goto_34

    .line 3880
    :cond_1c
    :goto_1c
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mUsingCtrlShiftShortcut:Z

    if-eqz v0, :cond_34

    .line 3881
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 3882
    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mUsingCtrlShiftShortcut:Z

    .line 3883
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mDecorViewVisible:Z

    if-eqz v0, :cond_34

    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    if-eqz v0, :cond_34

    .line 3885
    invoke-virtual {p0, v2}, Landroid/inputmethodservice/InputMethodService;->switchToNextInputMethod(Z)Z

    .line 3887
    return v1

    .line 3895
    :cond_34
    :goto_34
    const/4 v0, 0x4

    if-ne p1, v0, :cond_55

    .line 3896
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->getExtractEditTextIfVisible()Landroid/inputmethodservice/ExtractEditText;

    move-result-object v0

    .line 3897
    .local v0, "eet":Landroid/inputmethodservice/ExtractEditText;
    if-eqz v0, :cond_44

    invoke-virtual {v0, p2}, Landroid/inputmethodservice/ExtractEditText;->handleBackInTextActionModeIfNeeded(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 3898
    return v1

    .line 3900
    :cond_44
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v2

    if-eqz v2, :cond_66

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_66

    .line 3901
    invoke-direct {p0, v1}, Landroid/inputmethodservice/InputMethodService;->handleBack(Z)Z

    move-result v1

    return v1

    .line 3903
    .end local v0    # "eet":Landroid/inputmethodservice/ExtractEditText;
    :cond_55
    const/16 v0, 0x3e

    if-ne p1, v0, :cond_66

    .line 3904
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_67

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_67

    .line 3905
    return v1

    .line 3903
    :cond_66
    nop

    .line 3909
    :cond_67
    const/4 v0, -0x2

    invoke-virtual {p0, p1, p2, v0}, Landroid/inputmethodservice/InputMethodService;->doMovementKey(ILandroid/view/KeyEvent;I)Z

    move-result v0

    return v0
.end method

.method public whitelist onPrepareStylusHandwriting()V
    .registers 1

    .line 2746
    return-void
.end method

.method public whitelist onShouldVerifyKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .line 3834
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onShowInputRequested(IZ)Z
    .registers 6
    .param p1, "flags"    # I
    .param p2, "configChange"    # Z

    .line 3096
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onEvaluateInputViewShown()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 3097
    return v1

    .line 3099
    :cond_8
    and-int/lit8 v0, p1, 0x1

    const/4 v2, 0x1

    if-nez v0, :cond_31

    .line 3100
    if-nez p2, :cond_1c

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onEvaluateFullscreenMode()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isInputViewShown()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 3106
    return v1

    .line 3108
    :cond_1c
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mSettingsObserver:Landroid/inputmethodservice/InputMethodService$SettingsObserver;

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->-$$Nest$mshouldShowImeWithHardKeyboard(Landroid/inputmethodservice/InputMethodService$SettingsObserver;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 3109
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->keyboard:I

    if-eq v0, v2, :cond_31

    .line 3113
    return v1

    .line 3116
    :cond_31
    return v2
.end method

.method public whitelist onStartCandidatesView(Landroid/view/inputmethod/EditorInfo;Z)V
    .registers 3
    .param p1, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
    .param p2, "restarting"    # Z

    .line 2712
    return-void
.end method

.method public whitelist onStartConnectionlessStylusHandwriting(ILandroid/view/inputmethod/CursorAnchorInfo;)Z
    .registers 4
    .param p1, "inputType"    # I
    .param p2, "cursorAnchorInfo"    # Landroid/view/inputmethod/CursorAnchorInfo;

    .line 2790
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V
    .registers 3
    .param p1, "attribute"    # Landroid/view/inputmethod/EditorInfo;
    .param p2, "restarting"    # Z

    .line 3482
    return-void
.end method

.method public whitelist onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V
    .registers 3
    .param p1, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
    .param p2, "restarting"    # Z

    .line 2667
    return-void
.end method

.method public whitelist onStartStylusHandwriting()Z
    .registers 2

    .line 2764
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onStylusHandwritingMotionEvent(Landroid/view/MotionEvent;)V
    .registers 5
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .line 2802
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInkWindow:Landroid/inputmethodservice/InkWindow;

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInkWindow:Landroid/inputmethodservice/InkWindow;

    invoke-virtual {v0}, Landroid/inputmethodservice/InkWindow;->isInkViewVisible()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2803
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInkWindow:Landroid/inputmethodservice/InkWindow;

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/InkWindow;->dispatchHandwritingEvent(Landroid/view/MotionEvent;)V

    goto :goto_34

    .line 2805
    :cond_12
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mPendingEvents:Lcom/android/internal/util/RingBuffer;

    if-nez v0, :cond_21

    .line 2806
    new-instance v0, Lcom/android/internal/util/RingBuffer;

    const-class v1, Landroid/view/MotionEvent;

    const/16 v2, 0x1f4

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mPendingEvents:Lcom/android/internal/util/RingBuffer;

    .line 2808
    :cond_21
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mPendingEvents:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 2809
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInkWindow:Landroid/inputmethodservice/InkWindow;

    if-eqz v0, :cond_34

    .line 2810
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInkWindow:Landroid/inputmethodservice/InkWindow;

    new-instance v1, Landroid/inputmethodservice/InputMethodService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroid/inputmethodservice/InputMethodService$$ExternalSyntheticLambda1;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/InkWindow;->setInkViewVisibilityListener(Landroid/inputmethodservice/InkWindow$InkVisibilityListener;)V

    .line 2825
    :cond_34
    :goto_34
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3d

    .line 2826
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->scheduleStylusWindowIdleTimeout()V

    .line 2828
    :cond_3d
    return-void
.end method

.method public whitelist onTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 3922
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onUnbindInput()V
    .registers 1

    .line 3466
    return-void
.end method

.method public whitelist onUpdateCursor(Landroid/graphics/Rect;)V
    .registers 2
    .param p1, "newCursor"    # Landroid/graphics/Rect;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3665
    return-void
.end method

.method public whitelist onUpdateCursorAnchorInfo(Landroid/view/inputmethod/CursorAnchorInfo;)V
    .registers 2
    .param p1, "cursorAnchorInfo"    # Landroid/view/inputmethod/CursorAnchorInfo;

    .line 3676
    return-void
.end method

.method public whitelist onUpdateEditorToolType(I)V
    .registers 2
    .param p1, "toolType"    # I

    .line 3654
    return-void
.end method

.method public whitelist onUpdateExtractedText(ILandroid/view/inputmethod/ExtractedText;)V
    .registers 4
    .param p1, "token"    # I
    .param p2, "text"    # Landroid/view/inputmethod/ExtractedText;

    .line 3580
    iget v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedToken:I

    if-eq v0, p1, :cond_5

    .line 3581
    return-void

    .line 3583
    :cond_5
    if-eqz p2, :cond_12

    .line 3584
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    if-eqz v0, :cond_12

    .line 3585
    iput-object p2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    .line 3586
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    invoke-virtual {v0, p2}, Landroid/inputmethodservice/ExtractEditText;->setExtractedText(Landroid/view/inputmethod/ExtractedText;)V

    .line 3589
    :cond_12
    return-void
.end method

.method public whitelist onUpdateExtractingViews(Landroid/view/inputmethod/EditorInfo;)V
    .registers 6
    .param p1, "ei"    # Landroid/view/inputmethod/EditorInfo;

    .line 4341
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isExtractViewShown()Z

    move-result v0

    if-nez v0, :cond_7

    .line 4342
    return-void

    .line 4345
    :cond_7
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAccessories:Landroid/view/ViewGroup;

    if-nez v0, :cond_c

    .line 4346
    return-void

    .line 4348
    :cond_c
    iget-object v0, p1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_25

    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 v0, v0, 0xff

    if-eq v0, v2, :cond_24

    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v3, 0x20000000

    and-int/2addr v0, v3

    if-nez v0, :cond_24

    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-eqz v0, :cond_24

    goto :goto_25

    :cond_24
    move v2, v1

    .line 4352
    .local v2, "hasAction":Z
    :cond_25
    :goto_25
    if-eqz v2, :cond_7e

    .line 4353
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAccessories:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4354
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/view/View;

    if-eqz v0, :cond_8f

    .line 4355
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ImageButton;

    if-eqz v0, :cond_5b

    .line 4356
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageButton;

    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 4357
    invoke-direct {p0, v1}, Landroid/inputmethodservice/InputMethodService;->getIconForImeAction(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 4358
    iget-object v0, p1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    if-eqz v0, :cond_4f

    .line 4359
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/view/View;

    iget-object v1, p1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_76

    .line 4361
    :cond_4f
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/view/View;

    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->getTextForImeAction(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_76

    .line 4364
    :cond_5b
    iget-object v0, p1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    if-eqz v0, :cond_69

    .line 4365
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_76

    .line 4367
    :cond_69
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->getTextForImeAction(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4370
    :goto_76
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/view/View;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mActionClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_8f

    .line 4373
    :cond_7e
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAccessories:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4374
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/view/View;

    if-eqz v0, :cond_8f

    .line 4375
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4378
    :cond_8f
    :goto_8f
    return-void
.end method

.method public whitelist onUpdateExtractingVisibility(Landroid/view/inputmethod/EditorInfo;)V
    .registers 4
    .param p1, "ei"    # Landroid/view/inputmethod/EditorInfo;

    .line 4315
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-eqz v0, :cond_11

    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_c

    goto :goto_11

    .line 4322
    :cond_c
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->setExtractViewShown(Z)V

    .line 4323
    return-void

    .line 4318
    :cond_11
    :goto_11
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->setExtractViewShown(Z)V

    .line 4319
    return-void
.end method

.method public whitelist onUpdateSelection(IIIIII)V
    .registers 10
    .param p1, "oldSelStart"    # I
    .param p2, "oldSelEnd"    # I
    .param p3, "newSelStart"    # I
    .param p4, "newSelEnd"    # I
    .param p5, "candidatesStart"    # I
    .param p6, "candidatesEnd"    # I

    .line 3603
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    .line 3604
    .local v0, "eet":Landroid/inputmethodservice/ExtractEditText;
    if-eqz v0, :cond_33

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isFullscreenMode()Z

    move-result v1

    if-eqz v1, :cond_33

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    if-eqz v1, :cond_33

    .line 3605
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    iget v1, v1, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    .line 3606
    .local v1, "off":I
    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->startInternalChanges()V

    .line 3607
    sub-int/2addr p3, v1

    .line 3608
    sub-int/2addr p4, v1

    .line 3609
    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    .line 3610
    .local v2, "len":I
    if-gez p3, :cond_23

    const/4 p3, 0x0

    goto :goto_26

    .line 3611
    :cond_23
    if-le p3, v2, :cond_26

    move p3, v2

    .line 3612
    :cond_26
    :goto_26
    if-gez p4, :cond_2a

    const/4 p4, 0x0

    goto :goto_2d

    .line 3613
    :cond_2a
    if-le p4, v2, :cond_2d

    move p4, v2

    .line 3614
    :cond_2d
    :goto_2d
    invoke-virtual {v0, p3, p4}, Landroid/inputmethodservice/ExtractEditText;->setSelection(II)V

    .line 3615
    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->finishInternalChanges()V

    .line 3617
    .end local v1    # "off":I
    .end local v2    # "len":I
    :cond_33
    return-void
.end method

.method public whitelist onViewClicked(Z)V
    .registers 2
    .param p1, "focusChanged"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3638
    return-void
.end method

.method public whitelist onWindowHidden()V
    .registers 1

    .line 3445
    return-void
.end method

.method public whitelist onWindowShown()V
    .registers 1

    .line 3437
    return-void
.end method

.method greylist-max-o reportExtractedMovement(II)V
    .registers 5
    .param p1, "keyCode"    # I
    .param p2, "count"    # I

    .line 3963
    const/4 v0, 0x0

    .local v0, "dx":I
    const/4 v1, 0x0

    .line 3964
    .local v1, "dy":I
    packed-switch p1, :pswitch_data_12

    goto :goto_e

    .line 3969
    :pswitch_6
    move v0, p2

    .line 3970
    goto :goto_e

    .line 3966
    :pswitch_8
    neg-int v0, p2

    .line 3967
    goto :goto_e

    .line 3975
    :pswitch_a
    move v1, p2

    goto :goto_e

    .line 3972
    :pswitch_c
    neg-int v1, p2

    .line 3973
    nop

    .line 3978
    :goto_e
    invoke-virtual {p0, v0, v1}, Landroid/inputmethodservice/InputMethodService;->onExtractedCursorMovement(II)V

    .line 3979
    return-void

    :pswitch_data_12
    .packed-switch 0x13
        :pswitch_c
        :pswitch_a
        :pswitch_8
        :pswitch_6
    .end packed-switch
.end method

.method public whitelist requestHideSelf(I)V
    .registers 3
    .param p1, "flags"    # I

    .line 3685
    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Landroid/inputmethodservice/InputMethodService;->requestHideSelf(II)V

    .line 3686
    return-void
.end method

.method public final whitelist requestShowSelf(I)V
    .registers 3
    .param p1, "flags"    # I

    .line 3705
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Landroid/inputmethodservice/InputMethodService;->requestShowSelf(II)V

    .line 3706
    return-void
.end method

.method public whitelist sendDefaultEditorAction(Z)Z
    .registers 6
    .param p1, "fromEnterKey"    # Z

    .line 4085
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    .line 4086
    .local v0, "ei":Landroid/view/inputmethod/EditorInfo;
    if-eqz v0, :cond_24

    if-eqz p1, :cond_f

    iget v1, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v2, 0x40000000    # 2.0f

    and-int/2addr v1, v2

    if-nez v1, :cond_24

    :cond_f
    iget v1, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x1

    if-eq v1, v2, :cond_24

    .line 4094
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 4095
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v1, :cond_23

    .line 4096
    iget v3, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 v3, v3, 0xff

    invoke-interface {v1, v3}, Landroid/view/inputmethod/InputConnection;->performEditorAction(I)Z

    .line 4098
    :cond_23
    return v2

    .line 4101
    .end local v1    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_24
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist sendDownUpKeyEvents(I)V
    .registers 15
    .param p1, "keyEventCode"    # I

    .line 4052
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 4053
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v0, :cond_7

    return-void

    .line 4054
    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 4055
    .local v2, "eventTime":J
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v11, 0x0

    const/4 v12, 0x6

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    move-wide v4, v2

    move v7, p1

    .end local p1    # "keyEventCode":I
    .local v7, "keyEventCode":I
    invoke-direct/range {v1 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 4058
    new-instance v1, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-direct/range {v1 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 4061
    return-void
.end method

.method public whitelist sendKeyChar(C)V
    .registers 5
    .param p1, "charCode"    # C

    .line 4119
    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_2e

    .line 4127
    const/16 v1, 0x30

    if-lt p1, v1, :cond_20

    const/16 v1, 0x39

    if-gt p1, v1, :cond_20

    .line 4128
    add-int/lit8 v0, p1, -0x30

    add-int/lit8 v0, v0, 0x7

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->sendDownUpKeyEvents(I)V

    goto :goto_2d

    .line 4121
    :pswitch_14
    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->sendDefaultEditorAction(Z)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 4122
    const/16 v0, 0x42

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->sendDownUpKeyEvents(I)V

    goto :goto_2d

    .line 4130
    :cond_20
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 4131
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v1, :cond_2d

    .line 4132
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 4137
    .end local v1    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_2d
    :goto_2d
    return-void

    :pswitch_data_2e
    .packed-switch 0xa
        :pswitch_14
    .end packed-switch
.end method

.method public whitelist setBackDisposition(I)V
    .registers 4
    .param p1, "disposition"    # I

    .line 2103
    iget v0, p0, Landroid/inputmethodservice/InputMethodService;->mBackDisposition:I

    if-ne p1, v0, :cond_5

    .line 2104
    return-void

    .line 2106
    :cond_5
    const/4 v0, 0x3

    if-gt p1, v0, :cond_15

    if-gez p1, :cond_b

    goto :goto_15

    .line 2110
    :cond_b
    iput p1, p0, Landroid/inputmethodservice/InputMethodService;->mBackDisposition:I

    .line 2111
    iget v0, p0, Landroid/inputmethodservice/InputMethodService;->mImeWindowVisibility:I

    iget v1, p0, Landroid/inputmethodservice/InputMethodService;->mBackDisposition:I

    invoke-direct {p0, v0, v1}, Landroid/inputmethodservice/InputMethodService;->setImeWindowStatus(II)V

    .line 2112
    return-void

    .line 2107
    :cond_15
    :goto_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid back disposition value ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") specified."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputMethodService"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2108
    return-void
.end method

.method public whitelist setCandidatesView(Landroid/view/View;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;

    .line 2596
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 2597
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesFrame:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2598
    return-void
.end method

.method public whitelist setCandidatesViewShown(Z)V
    .registers 4
    .param p1, "shown"    # Z

    .line 2493
    invoke-virtual {p0, p1}, Landroid/inputmethodservice/InputMethodService;->updateCandidatesVisibility(Z)V

    .line 2494
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    if-nez v0, :cond_17

    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mDecorViewVisible:Z

    if-eq v0, p1, :cond_17

    .line 2498
    const/16 v0, 0x2d

    if-eqz p1, :cond_14

    .line 2499
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Landroid/inputmethodservice/InputMethodService;->showWindowWithToken(ZI)V

    goto :goto_17

    .line 2502
    :cond_14
    invoke-direct {p0, v0}, Landroid/inputmethodservice/InputMethodService;->hideWindowWithToken(I)V

    .line 2506
    :cond_17
    :goto_17
    return-void
.end method

.method public whitelist setExtractView(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .line 2568
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 2569
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractFrame:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2570
    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractView:Landroid/view/View;

    .line 2571
    if-eqz p1, :cond_41

    .line 2572
    const v0, 0x1020025

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/ExtractEditText;

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    .line 2574
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    invoke-virtual {v0, p0}, Landroid/inputmethodservice/ExtractEditText;->setIME(Landroid/inputmethodservice/InputMethodService;)V

    .line 2575
    const v0, 0x1020059

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/view/View;

    .line 2577
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/view/View;

    if-eqz v0, :cond_3c

    .line 2578
    const v0, 0x102005a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAccessories:Landroid/view/ViewGroup;

    .line 2581
    :cond_3c
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->startExtractingText(Z)V

    goto :goto_48

    .line 2583
    :cond_41
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    .line 2584
    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAccessories:Landroid/view/ViewGroup;

    .line 2585
    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/view/View;

    .line 2587
    :goto_48
    return-void
.end method

.method public whitelist setExtractViewShown(Z)V
    .registers 3
    .param p1, "shown"    # Z

    .line 2338
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractViewHidden:Z

    if-ne v0, p1, :cond_b

    .line 2339
    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractViewHidden:Z

    .line 2340
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->updateExtractFrameVisibility()V

    .line 2342
    :cond_b
    return-void
.end method

.method public whitelist setInputView(Landroid/view/View;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;

    .line 2607
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 2608
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2609
    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService;->mInputView:Landroid/view/View;

    .line 2610
    return-void
.end method

.method public final whitelist setStylusHandwritingRegion(Landroid/graphics/Region;)V
    .registers 5
    .param p1, "handwritingRegion"    # Landroid/graphics/Region;

    .line 3234
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0, p1}, Landroid/graphics/Region;-><init>(Landroid/graphics/Region;)V

    .line 3235
    .local v0, "immutableHandwritingRegion":Landroid/graphics/Region;
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mLastHandwritingRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v1}, Landroid/graphics/Region;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 3236
    const-string v1, "InputMethodService"

    const-string v2, "Failed to set setStylusHandwritingRegion(): same region set twice."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3238
    return-void

    .line 3245
    :cond_15
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mPrivOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    invoke-virtual {v1, v0}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->setHandwritingTouchableRegion(Landroid/graphics/Region;)V

    .line 3246
    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mLastHandwritingRegion:Landroid/graphics/Region;

    .line 3247
    return-void
.end method

.method public final whitelist setStylusHandwritingSessionTimeout(Ljava/time/Duration;)V
    .registers 6
    .param p1, "duration"    # Ljava/time/Duration;

    .line 3020
    invoke-virtual {p1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    .line 3021
    .local v0, "timeoutMs":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_18

    .line 3025
    const-wide/16 v2, 0x7530

    cmp-long v2, v0, v2

    if-lez v2, :cond_12

    .line 3026
    const-wide/16 v0, 0x7530

    .line 3028
    :cond_12
    iput-wide v0, p0, Landroid/inputmethodservice/InputMethodService;->mStylusHwSessionsTimeout:J

    .line 3029
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->scheduleHandwritingSessionTimeout()V

    .line 3030
    return-void

    .line 3022
    :cond_18
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "A positive value should be set for Stylus handwriting session timeout."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public whitelist setTheme(I)V
    .registers 4
    .param p1, "theme"    # I

    .line 1770
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    if-nez v0, :cond_7

    .line 1773
    iput p1, p0, Landroid/inputmethodservice/InputMethodService;->mTheme:I

    .line 1774
    return-void

    .line 1771
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must be called before onCreate()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist shouldOfferSwitchingToNextInputMethod()Z
    .registers 2

    .line 2200
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mPrivOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->shouldOfferSwitchingToNextInputMethod()Z

    move-result v0

    return v0
.end method

.method public whitelist showStatusIcon(I)V
    .registers 4
    .param p1, "iconResId"    # I

    .line 2531
    iput p1, p0, Landroid/inputmethodservice/InputMethodService;->mStatusIcon:I

    .line 2532
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mPrivOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->updateStatusIconAsync(Ljava/lang/String;I)V

    .line 2533
    return-void
.end method

.method public whitelist showWindow(Z)V
    .registers 8
    .param p1, "showInput"    # Z

    .line 3165
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mCurStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mCurStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    goto :goto_14

    .line 3166
    :cond_8
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    .line 3168
    invoke-static {v0}, Landroid/view/inputmethod/ImeTracker;->isFromUser(Landroid/view/View;)Z

    move-result v0

    .line 3166
    const/16 v2, 0x2a

    invoke-direct {p0, v1, v2, v0}, Landroid/inputmethodservice/InputMethodService;->createStatsToken(ZIZ)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v0

    :goto_14
    nop

    .line 3169
    .local v0, "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mCurStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    .line 3171
    iget-boolean v3, p0, Landroid/inputmethodservice/InputMethodService;->mInShowWindow:Z

    const/16 v4, 0x2c

    if-eqz v3, :cond_2d

    .line 3172
    const-string v1, "InputMethodService"

    const-string v2, "Re-entrance in to showWindow"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3173
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v1

    invoke-interface {v1, v0, v4}, Landroid/view/inputmethod/ImeTracker;->onCancelled(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 3174
    return-void

    .line 3177
    :cond_2d
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v3

    invoke-interface {v3, v0, v4}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 3179
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 3183
    invoke-direct {p0, v1, v0}, Landroid/inputmethodservice/InputMethodService;->notifyPreImeWindowVisibilityChanged(ZLandroid/view/inputmethod/ImeTracker$Token;)V

    .line 3186
    :cond_3d
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v3

    const-string v4, "InputMethodService#showWindow"

    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mDumper:Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;

    invoke-virtual {v3, v4, v5, v2}, Lcom/android/internal/inputmethod/ImeTracing;->triggerServiceDump(Ljava/lang/String;Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;[B)V

    .line 3188
    const-string v2, "IMS.showWindow"

    const-wide/16 v3, 0x20

    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3189
    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mDecorViewVisible:Z

    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mDecorViewWasVisible:Z

    .line 3190
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mInShowWindow:Z

    .line 3191
    invoke-direct {p0, p1}, Landroid/inputmethodservice/InputMethodService;->prepareWindow(Z)Z

    move-result v2

    invoke-direct {p0, v2}, Landroid/inputmethodservice/InputMethodService;->startViews(Z)V

    .line 3192
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->computeImeWindowVis()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/inputmethodservice/InputMethodService;->setImeWindowVisibility(I)V

    .line 3194
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mNavigationBarController:Landroid/inputmethodservice/NavigationBarController;

    invoke-virtual {v2}, Landroid/inputmethodservice/NavigationBarController;->onWindowShown()V

    .line 3196
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onWindowShown()V

    .line 3197
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    .line 3201
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v2}, Landroid/inputmethodservice/SoftInputWindow;->show()V

    .line 3202
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mDecorViewWasVisible:Z

    .line 3203
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v2

    if-nez v2, :cond_7d

    .line 3204
    invoke-direct {p0, v1, v0}, Landroid/inputmethodservice/InputMethodService;->applyVisibilityInInsetsConsumerIfNecessary(ZLandroid/view/inputmethod/ImeTracker$Token;)V

    .line 3206
    :cond_7d
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->cancelImeSurfaceRemoval()V

    .line 3207
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mInShowWindow:Z

    .line 3208
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 3209
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->registerDefaultOnBackInvokedCallback()V

    .line 3210
    return-void
.end method

.method greylist-max-o startExtractingText(Z)V
    .registers 9
    .param p1, "inputChanged"    # Z

    .line 4394
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    .line 4395
    .local v0, "eet":Landroid/inputmethodservice/ExtractEditText;
    if-eqz v0, :cond_a9

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputStarted()Z

    move-result v1

    if-eqz v1, :cond_a9

    .line 4396
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isFullscreenMode()Z

    move-result v1

    if-eqz v1, :cond_a9

    .line 4397
    iget v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedToken:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedToken:I

    .line 4398
    new-instance v1, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v1}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    .line 4399
    .local v1, "req":Landroid/view/inputmethod/ExtractedTextRequest;
    iget v3, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedToken:I

    iput v3, v1, Landroid/view/inputmethod/ExtractedTextRequest;->token:I

    .line 4400
    iput v2, v1, Landroid/view/inputmethod/ExtractedTextRequest;->flags:I

    .line 4401
    const/16 v3, 0xa

    iput v3, v1, Landroid/view/inputmethod/ExtractedTextRequest;->hintMaxLines:I

    .line 4402
    const/16 v3, 0x2710

    iput v3, v1, Landroid/view/inputmethod/ExtractedTextRequest;->hintMaxChars:I

    .line 4403
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v3

    .line 4404
    .local v3, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v3, :cond_31

    const/4 v4, 0x0

    goto :goto_35

    .line 4405
    :cond_31
    invoke-interface {v3, v1, v2}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v4

    :goto_35
    iput-object v4, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    .line 4406
    iget-object v4, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    if-eqz v4, :cond_3d

    if-nez v3, :cond_61

    .line 4407
    :cond_3d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected null in startExtractingText : mExtractedText = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", input connection = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "InputMethodService"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4410
    :cond_61
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v4

    .line 4413
    .local v4, "ei":Landroid/view/inputmethod/EditorInfo;
    :try_start_65
    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->startInternalChanges()V

    .line 4414
    invoke-virtual {p0, v4}, Landroid/inputmethodservice/InputMethodService;->onUpdateExtractingVisibility(Landroid/view/inputmethod/EditorInfo;)V

    .line 4415
    invoke-virtual {p0, v4}, Landroid/inputmethodservice/InputMethodService;->onUpdateExtractingViews(Landroid/view/inputmethod/EditorInfo;)V

    .line 4416
    iget v5, v4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 4417
    .local v5, "inputType":I
    and-int/lit8 v6, v5, 0xf

    if-ne v6, v2, :cond_7c

    .line 4419
    const/high16 v6, 0x40000

    and-int/2addr v6, v5

    if-eqz v6, :cond_7c

    .line 4420
    const/high16 v6, 0x20000

    or-int/2addr v5, v6

    .line 4423
    :cond_7c
    invoke-virtual {v0, v5}, Landroid/inputmethodservice/ExtractEditText;->setInputType(I)V

    .line 4424
    iget-object v6, v4, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v6}, Landroid/inputmethodservice/ExtractEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 4425
    iget-object v6, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    if-eqz v6, :cond_91

    .line 4426
    invoke-virtual {v0, v2}, Landroid/inputmethodservice/ExtractEditText;->setEnabled(Z)V

    .line 4427
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    invoke-virtual {v0, v2}, Landroid/inputmethodservice/ExtractEditText;->setExtractedText(Landroid/view/inputmethod/ExtractedText;)V

    goto :goto_9a

    .line 4429
    :cond_91
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/inputmethodservice/ExtractEditText;->setEnabled(Z)V

    .line 4430
    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/inputmethodservice/ExtractEditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_9a
    .catchall {:try_start_65 .. :try_end_9a} :catchall_a4

    .line 4433
    .end local v5    # "inputType":I
    :goto_9a
    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->finishInternalChanges()V

    .line 4434
    nop

    .line 4436
    if-eqz p1, :cond_a9

    .line 4437
    invoke-virtual {p0, v4}, Landroid/inputmethodservice/InputMethodService;->onExtractingInputChanged(Landroid/view/inputmethod/EditorInfo;)V

    goto :goto_a9

    .line 4433
    :catchall_a4
    move-exception v2

    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->finishInternalChanges()V

    .line 4434
    throw v2

    .line 4440
    .end local v1    # "req":Landroid/view/inputmethod/ExtractedTextRequest;
    .end local v3    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v4    # "ei":Landroid/view/inputmethod/EditorInfo;
    :cond_a9
    :goto_a9
    return-void
.end method

.method public whitelist switchInputMethod(Ljava/lang/String;)V
    .registers 3
    .param p1, "id"    # Ljava/lang/String;

    .line 2550
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mPrivOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    invoke-virtual {v0, p1}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->setInputMethod(Ljava/lang/String;)V

    .line 2551
    return-void
.end method

.method public final whitelist switchInputMethod(Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V
    .registers 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    .line 2564
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mPrivOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->setInputMethodAndSubtype(Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 2565
    return-void
.end method

.method public final whitelist switchToNextInputMethod(Z)Z
    .registers 3
    .param p1, "onlyCurrentIme"    # Z

    .line 2187
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mPrivOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    invoke-virtual {v0, p1}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->switchToNextInputMethod(Z)Z

    move-result v0

    return v0
.end method

.method public final whitelist switchToPreviousInputMethod()Z
    .registers 2

    .line 2175
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mPrivOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->switchToPreviousInputMethod()Z

    move-result v0

    return v0
.end method

.method greylist-max-o updateCandidatesVisibility(Z)V
    .registers 4
    .param p1, "shown"    # Z

    .line 2509
    if-eqz p1, :cond_4

    const/4 v0, 0x0

    goto :goto_8

    :cond_4
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCandidatesHiddenVisibility()I

    move-result v0

    .line 2510
    .local v0, "vis":I
    :goto_8
    iget v1, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    if-eq v1, v0, :cond_13

    .line 2511
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2512
    iput v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    .line 2514
    :cond_13
    return-void
.end method

.method greylist-max-o updateExtractFrameVisibility()V
    .registers 6

    .line 2360
    iget v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_8

    move v0, v1

    goto :goto_9

    :cond_8
    move v0, v2

    :goto_9
    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->updateCandidatesVisibility(Z)V

    .line 2362
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isFullscreenMode()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 2363
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractViewHidden:Z

    if-eqz v0, :cond_18

    const/4 v0, 0x4

    goto :goto_19

    :cond_18
    move v0, v2

    .line 2365
    .local v0, "vis":I
    :goto_19
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mExtractFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_28

    .line 2369
    .end local v0    # "vis":I
    :cond_1f
    iget v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    .line 2370
    .restart local v0    # "vis":I
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mExtractFrame:Landroid/widget/FrameLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2373
    :goto_28
    iget-boolean v3, p0, Landroid/inputmethodservice/InputMethodService;->mDecorViewWasVisible:Z

    if-eqz v3, :cond_4a

    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-eq v3, v0, :cond_4a

    .line 2374
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mThemeAttrs:Landroid/content/res/TypedArray;

    if-nez v0, :cond_39

    .line 2375
    goto :goto_3a

    .line 2376
    :cond_39
    const/4 v1, 0x2

    :goto_3a
    nop

    .line 2374
    invoke-virtual {v3, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 2378
    .local v1, "animRes":I
    if-eqz v1, :cond_4a

    .line 2379
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2383
    .end local v1    # "animRes":I
    :cond_4a
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2384
    return-void
.end method

.method public whitelist updateFullscreenMode()V
    .registers 10

    .line 2224
    const-string v0, "IMS.updateFullscreenMode"

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2225
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onEvaluateFullscreenMode()Z

    move-result v0

    if-eqz v0, :cond_15

    move v0, v3

    goto :goto_16

    :cond_15
    move v0, v4

    .line 2226
    .local v0, "isFullscreen":Z
    :goto_16
    iget-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mLastShowInputRequested:Z

    iget-boolean v6, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    if-eq v5, v6, :cond_1e

    move v5, v3

    goto :goto_1f

    :cond_1e
    move v5, v4

    .line 2227
    .local v5, "changed":Z
    :goto_1f
    iget-boolean v6, p0, Landroid/inputmethodservice/InputMethodService;->mIsFullscreen:Z

    if-ne v6, v0, :cond_27

    iget-boolean v6, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenApplied:Z

    if-nez v6, :cond_7c

    .line 2228
    :cond_27
    const/4 v5, 0x1

    .line 2229
    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mIsFullscreen:Z

    .line 2230
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->reportFullscreenMode()V

    .line 2231
    iput-boolean v3, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenApplied:Z

    .line 2232
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->initialize()V

    .line 2233
    iget-object v6, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    .line 2234
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 2235
    .local v6, "lp":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v0, :cond_4e

    .line 2236
    iget-object v7, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    iget-object v8, p0, Landroid/inputmethodservice/InputMethodService;->mThemeAttrs:Landroid/content/res/TypedArray;

    invoke-virtual {v8, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2238
    iput v4, v6, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 2239
    const/high16 v7, 0x3f800000    # 1.0f

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_5a

    .line 2241
    :cond_4e
    iget-object v7, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2242
    const/4 v7, -0x2

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 2243
    const/4 v7, 0x0

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 2245
    :goto_5a
    iget-object v7, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    iget-object v8, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    invoke-virtual {v7, v8, v6}, Landroid/view/ViewGroup;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2247
    if-eqz v0, :cond_79

    .line 2248
    iget-object v7, p0, Landroid/inputmethodservice/InputMethodService;->mExtractView:Landroid/view/View;

    if-nez v7, :cond_76

    .line 2249
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onCreateExtractTextView()Landroid/view/View;

    move-result-object v7

    .line 2250
    .local v7, "v":Landroid/view/View;
    if-eqz v7, :cond_76

    .line 2251
    invoke-virtual {p0, v7}, Landroid/inputmethodservice/InputMethodService;->setExtractView(Landroid/view/View;)V

    .line 2254
    .end local v7    # "v":Landroid/view/View;
    :cond_76
    invoke-virtual {p0, v4}, Landroid/inputmethodservice/InputMethodService;->startExtractingText(Z)V

    .line 2256
    :cond_79
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->updateExtractFrameVisibility()V

    .line 2259
    .end local v6    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_7c
    if-eqz v5, :cond_8e

    .line 2260
    iget-object v4, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v4}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v4

    iget-boolean v6, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    xor-int/2addr v3, v6

    invoke-virtual {p0, v4, v0, v3}, Landroid/inputmethodservice/InputMethodService;->onConfigureWindow(Landroid/view/Window;ZZ)V

    .line 2261
    iget-boolean v3, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    iput-boolean v3, p0, Landroid/inputmethodservice/InputMethodService;->mLastShowInputRequested:Z

    .line 2263
    :cond_8e
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 2264
    return-void
.end method

.method public whitelist updateInputViewShown()V
    .registers 4

    .line 2433
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onEvaluateInputViewShown()Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    move v0, v1

    .line 2434
    .local v0, "isShown":Z
    :goto_e
    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mIsInputViewShown:Z

    if-eq v2, v0, :cond_32

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mDecorViewVisible:Z

    if-eqz v2, :cond_32

    .line 2435
    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mIsInputViewShown:Z

    .line 2436
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/16 v1, 0x8

    :goto_1f
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2437
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputView:Landroid/view/View;

    if-nez v1, :cond_32

    .line 2438
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->initialize()V

    .line 2439
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onCreateInputView()Landroid/view/View;

    move-result-object v1

    .line 2440
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_32

    .line 2441
    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->setInputView(Landroid/view/View;)V

    .line 2445
    .end local v1    # "v":Landroid/view/View;
    :cond_32
    return-void
.end method

.class public final Landroid/view/autofill/AutofillManager;
.super Ljava/lang/Object;
.source "AutofillManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/autofill/AutofillManager$AutofillClient;,
        Landroid/view/autofill/AutofillManager$CompatibilityBridge;,
        Landroid/view/autofill/AutofillManager$TrackedViews;,
        Landroid/view/autofill/AutofillManager$AutofillCallback;,
        Landroid/view/autofill/AutofillManager$AutofillManagerClient;,
        Landroid/view/autofill/AutofillManager$AugmentedAutofillManagerClient;,
        Landroid/view/autofill/AutofillManager$AutofillCommitReason;,
        Landroid/view/autofill/AutofillManager$SmartSuggestionMode;
    }
.end annotation


# static fields
.field public static final blacklist ACTION_RESPONSE_EXPIRED:I = 0x5

.field public static final greylist-max-o ACTION_START_SESSION:I = 0x1

.field public static final greylist-max-o ACTION_VALUE_CHANGED:I = 0x4

.field public static final greylist-max-o ACTION_VIEW_ENTERED:I = 0x2

.field public static final greylist-max-o ACTION_VIEW_EXITED:I = 0x3

.field public static final blacklist ANY_HINT:Ljava/lang/String; = "any"

.field private static final greylist-max-o AUTHENTICATION_ID_DATASET_ID_MASK:I = 0xffff

.field private static final greylist-max-o AUTHENTICATION_ID_DATASET_ID_SHIFT:I = 0x10

.field public static final greylist-max-o AUTHENTICATION_ID_DATASET_ID_UNDEFINED:I = 0xffff

.field public static final blacklist COMMIT_REASON_ACTIVITY_FINISHED:I = 0x1

.field public static final blacklist COMMIT_REASON_SESSION_DESTROYED:I = 0x5

.field public static final blacklist COMMIT_REASON_UNKNOWN:I = 0x0

.field public static final blacklist COMMIT_REASON_VIEW_CHANGED:I = 0x4

.field public static final blacklist COMMIT_REASON_VIEW_CLICKED:I = 0x3

.field public static final blacklist COMMIT_REASON_VIEW_COMMITTED:I = 0x2

.field private static final blacklist DBG:Z = false

.field public static final blacklist DEFAULT_LOGGING_LEVEL:I

.field public static final blacklist DEFAULT_MAX_PARTITIONS_SIZE:I = 0xa

.field public static final whitelist EXTRA_ASSIST_STRUCTURE:Ljava/lang/String; = "android.view.autofill.extra.ASSIST_STRUCTURE"

.field public static final blacklist EXTRA_AUGMENTED_AUTOFILL_CLIENT:Ljava/lang/String; = "android.view.autofill.extra.AUGMENTED_AUTOFILL_CLIENT"

.field public static final whitelist EXTRA_AUTHENTICATION_RESULT:Ljava/lang/String; = "android.view.autofill.extra.AUTHENTICATION_RESULT"

.field public static final whitelist EXTRA_AUTHENTICATION_RESULT_EPHEMERAL_DATASET:Ljava/lang/String; = "android.view.autofill.extra.AUTHENTICATION_RESULT_EPHEMERAL_DATASET"

.field public static final blacklist EXTRA_AUTH_STATE:Ljava/lang/String; = "android.view.autofill.extra.AUTH_STATE"

.field public static final blacklist EXTRA_AUTOFILL_REQUEST_ID:Ljava/lang/String; = "android.view.autofill.extra.AUTOFILL_REQUEST_ID"

.field public static final whitelist EXTRA_CLIENT_STATE:Ljava/lang/String; = "android.view.autofill.extra.CLIENT_STATE"

.field public static final whitelist EXTRA_INLINE_SUGGESTIONS_REQUEST:Ljava/lang/String; = "android.view.autofill.extra.INLINE_SUGGESTIONS_REQUEST"

.field public static final blacklist EXTRA_RESTORE_CROSS_ACTIVITY:Ljava/lang/String; = "android.view.autofill.extra.RESTORE_CROSS_ACTIVITY"

.field public static final greylist-max-o EXTRA_RESTORE_SESSION_TOKEN:Ljava/lang/String; = "android.view.autofill.extra.RESTORE_SESSION_TOKEN"

.field public static final greylist-max-o FC_SERVICE_TIMEOUT:I = 0x1388

.field public static final greylist-max-o FLAG_ADD_CLIENT_DEBUG:I = 0x2

.field public static final greylist-max-o FLAG_ADD_CLIENT_ENABLED:I = 0x1

.field public static final blacklist FLAG_ADD_CLIENT_ENABLED_FOR_AUGMENTED_AUTOFILL_ONLY:I = 0x8

.field public static final greylist-max-o FLAG_ADD_CLIENT_VERBOSE:I = 0x4

.field public static final blacklist FLAG_SMART_SUGGESTION_OFF:I = 0x0

.field public static final blacklist FLAG_SMART_SUGGESTION_SYSTEM:I = 0x1

.field private static final greylist-max-o LAST_AUTOFILLED_DATA_TAG:Ljava/lang/String; = "android:lastAutoFilledData"

.field public static final blacklist MAX_TEMP_AUGMENTED_SERVICE_DURATION_MS:I = 0x1d4c0

.field public static final blacklist NO_LOGGING:I = 0x0

.field public static final greylist-max-o NO_SESSION:I = 0x7fffffff

.field public static final greylist-max-o PENDING_UI_OPERATION_CANCEL:I = 0x1

.field public static final greylist-max-o PENDING_UI_OPERATION_RESTORE:I = 0x2

.field public static final blacklist PINNED_DATASET_ID:Ljava/lang/String; = "PINNED_DATASET_ID"

.field public static final blacklist RECEIVER_FLAG_SESSION_FOR_AUGMENTED_AUTOFILL_ONLY:I = 0x1

.field public static final blacklist RESULT_CODE_NOT_SERVICE:I = -0x1

.field public static final blacklist RESULT_OK:I = 0x0

.field private static final greylist-max-o SESSION_ID_TAG:Ljava/lang/String; = "android:sessionId"

.field public static final greylist-max-o SET_STATE_FLAG_DEBUG:I = 0x8

.field public static final greylist-max-o SET_STATE_FLAG_ENABLED:I = 0x1

.field public static final blacklist SET_STATE_FLAG_FOR_AUTOFILL_ONLY:I = 0x20

.field public static final greylist-max-o SET_STATE_FLAG_RESET_CLIENT:I = 0x4

.field public static final greylist-max-o SET_STATE_FLAG_RESET_SESSION:I = 0x2

.field public static final greylist-max-o SET_STATE_FLAG_VERBOSE:I = 0x10

.field public static final greylist-max-o STATE_ACTIVE:I = 0x1

.field public static final greylist-max-o STATE_DISABLED_BY_SERVICE:I = 0x4

.field public static final greylist-max-o STATE_FINISHED:I = 0x2

.field public static final blacklist STATE_PENDING_AUTHENTICATION:I = 0x7

.field public static final greylist-max-o STATE_SHOWING_SAVE_UI:I = 0x3

.field private static final greylist-max-o STATE_TAG:Ljava/lang/String; = "android:state"

.field public static final greylist-max-o STATE_UNKNOWN:I = 0x0

.field public static final greylist-max-o STATE_UNKNOWN_COMPAT_MODE:I = 0x5

.field public static final blacklist STATE_UNKNOWN_FAILED:I = 0x6

.field private static final blacklist SYNC_CALLS_TIMEOUT_MS:I = 0x1388

.field private static final greylist-max-o TAG:Ljava/lang/String; = "AutofillManager"


# instance fields
.field private final blacklist mAllTrackedViews:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/view/autofill/AutofillId;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mAllowedActivitySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mAugmentedAutofillServiceClient:Landroid/view/autofill/IAugmentedAutofillManagerClient;

.field private blacklist mAutofillStateFingerprint:Landroid/view/autofill/AutofillStateFingerprint;

.field private greylist-max-o mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;

.field private greylist-max-o mCompatibilityBridge:Landroid/view/autofill/AutofillManager$CompatibilityBridge;

.field private final greylist-max-o mContext:Landroid/content/Context;

.field private blacklist mDeniedActivitySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mEnabled:Z

.field private blacklist mEnabledForAugmentedAutofillOnly:Z

.field private blacklist mEnteredForAugmentedAutofillIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/view/autofill/AutofillId;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mEnteredIds:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/view/autofill/AutofillId;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mFillDialogEnabledHints:[Ljava/lang/String;

.field private blacklist mFillDialogTriggerIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillId;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mFillReAttemptNeeded:Z

.field private greylist-max-o mFillableIds:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/view/autofill/AutofillId;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mFingerprintToViewMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/view/autofill/AutofillId;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mForAugmentedAutofillOnly:Z

.field private greylist-max-o mIdShownFillUi:Landroid/view/autofill/AutofillId;

.field private blacklist mImproveFillDialogEnabled:Z

.field private final blacklist mIsCredmanIntegrationEnabled:Z

.field private final blacklist mIsFillAndSaveDialogDisabledForCredentialManager:Z

.field private final blacklist mIsFillDialogEnabled:Z

.field private blacklist mIsFillRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private blacklist mIsPackageFullyAllowedForAutofill:Z

.field private blacklist mIsPackageFullyDeniedForAutofill:Z

.field private blacklist mIsPackagePartiallyAllowedForAutofill:Z

.field private blacklist mIsPackagePartiallyDeniedForAutofill:Z

.field private blacklist mIsTriggerFillRequestOnFilteredImportantViewsEnabled:Z

.field private blacklist mIsTriggerFillRequestOnUnimportantViewEnabled:Z

.field private greylist-max-o mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

.field private final greylist-max-o mLock:Ljava/lang/Object;

.field private final greylist-max-o mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private blacklist mNonAutofillableImeActionIdSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mOnInvisibleCalled:Z

.field private final blacklist mOptions:Landroid/content/AutofillOptions;

.field private final blacklist mRelativePositionForRelayout:Z

.field private final blacklist mRelayoutFix:Z

.field private blacklist mRelayoutFixDeprecated:Z

.field private greylist-max-o mSaveOnFinish:Z

.field private greylist-max-o mSaveTriggerId:Landroid/view/autofill/AutofillId;

.field private blacklist mScreenHasCredmanField:Z

.field private final greylist-max-o mService:Landroid/view/autofill/IAutoFillManager;

.field private greylist-max-o mServiceClient:Landroid/view/autofill/IAutoFillManagerClient;

.field private greylist-max-o mServiceClientCleaner:Lsun/misc/Cleaner;

.field private greylist-max-o mSessionId:I

.field private blacklist mShouldAlwaysIncludeWebviewInAssistStructure:Z

.field private blacklist mShouldEnableAutofillOnAllViewTypes:Z

.field private blacklist mShouldEnableMultilineFilter:Z

.field private blacklist mShouldIgnoreCredentialViews:Z

.field private blacklist mShouldIncludeAllChildrenViewInAssistStructure:Z

.field private blacklist mShouldIncludeAllViewsWithAutofillTypeNotNoneInAssistStructure:Z

.field private blacklist mShouldIncludeInvisibleViewInAssistStructure:Z

.field private blacklist mShowAutofillDialogCalled:Z

.field private greylist-max-o mState:I

.field private greylist-max-o mTrackedViews:Landroid/view/autofill/AutofillManager$TrackedViews;


# direct methods
.method public static synthetic blacklist $r8$lambda$6L-gkTsocqFiBrWEAPgS-oeVDx0(Landroid/view/autofill/AutofillManager;)V
    .registers 1

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->lambda$onVisibleForAutofill$0()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$LZn6gmGF-oMJDCxrIIzgsI8Un_A(Landroid/view/autofill/AutofillManager;Ljava/lang/ref/WeakReference;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/autofill/AutofillManager;->lambda$showAutofillDialog$3(Ljava/lang/ref/WeakReference;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$RqegKQ0ttNAT6vJZMD9Tyxd2DXM(Landroid/view/autofill/AutofillManager;Ljava/lang/ref/WeakReference;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/autofill/AutofillManager;->lambda$showAutofillDialog$4(Ljava/lang/ref/WeakReference;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAllTrackedViews(Landroid/view/autofill/AutofillManager;)Landroid/util/ArraySet;
    .registers 1

    iget-object p0, p0, Landroid/view/autofill/AutofillManager;->mAllTrackedViews:Landroid/util/ArraySet;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContext(Landroid/view/autofill/AutofillManager;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsFillRequested(Landroid/view/autofill/AutofillManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    iget-object p0, p0, Landroid/view/autofill/AutofillManager;->mIsFillRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLock(Landroid/view/autofill/AutofillManager;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSessionId(Landroid/view/autofill/AutofillManager;)I
    .registers 1

    iget p0, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTrackedViews(Landroid/view/autofill/AutofillManager;)Landroid/view/autofill/AutofillManager$TrackedViews;
    .registers 1

    iget-object p0, p0, Landroid/view/autofill/AutofillManager;->mTrackedViews:Landroid/view/autofill/AutofillManager$TrackedViews;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmShowAutofillDialogCalled(Landroid/view/autofill/AutofillManager;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/view/autofill/AutofillManager;->mShowAutofillDialogCalled:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mauthenticate(Landroid/view/autofill/AutofillManager;IILandroid/content/IntentSender;Landroid/content/Intent;Z)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Landroid/view/autofill/AutofillManager;->authenticate(IILandroid/content/IntentSender;Landroid/content/Intent;Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mautofill(Landroid/view/autofill/AutofillManager;ILjava/util/List;Ljava/util/List;Z)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/autofill/AutofillManager;->autofill(ILjava/util/List;Ljava/util/List;Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mautofillContent(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;Landroid/content/ClipData;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/view/autofill/AutofillManager;->autofillContent(ILandroid/view/autofill/AutofillId;Landroid/content/ClipData;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdispatchUnhandledKey(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;Landroid/view/KeyEvent;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/view/autofill/AutofillManager;->dispatchUnhandledKey(ILandroid/view/autofill/AutofillId;Landroid/view/KeyEvent;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mfinishSessionLocked(Landroid/view/autofill/AutofillManager;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/autofill/AutofillManager;->finishSessionLocked(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetAugmentedAutofillClient(Landroid/view/autofill/AutofillManager;Lcom/android/internal/os/IResultReceiver;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/autofill/AutofillManager;->getAugmentedAutofillClient(Lcom/android/internal/os/IResultReceiver;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetClient(Landroid/view/autofill/AutofillManager;)Landroid/view/autofill/AutofillManager$AutofillClient;
    .registers 1

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$misClientVisibleForAutofillLocked(Landroid/view/autofill/AutofillManager;)Z
    .registers 1

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isClientVisibleForAutofillLocked()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyCallback(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/view/autofill/AutofillManager;->notifyCallback(ILandroid/view/autofill/AutofillId;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyDisableAutofill(Landroid/view/autofill/AutofillManager;JLandroid/content/ComponentName;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/view/autofill/AutofillManager;->notifyDisableAutofill(JLandroid/content/ComponentName;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyNoFillUi(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/view/autofill/AutofillManager;->notifyNoFillUi(ILandroid/view/autofill/AutofillId;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monGetCredentialException(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/autofill/AutofillManager;->onGetCredentialException(ILandroid/view/autofill/AutofillId;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monGetCredentialResponse(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;Landroid/credentials/GetCredentialResponse;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/view/autofill/AutofillManager;->onGetCredentialResponse(ILandroid/view/autofill/AutofillId;Landroid/credentials/GetCredentialResponse;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mrequestHideFillUi(Landroid/view/autofill/AutofillManager;Landroid/view/autofill/AutofillId;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/autofill/AutofillManager;->requestHideFillUi(Landroid/view/autofill/AutofillId;Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mrequestShowFillUi(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;IILandroid/graphics/Rect;Landroid/view/autofill/IAutofillWindowPresenter;)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Landroid/view/autofill/AutofillManager;->requestShowFillUi(ILandroid/view/autofill/AutofillId;IILandroid/graphics/Rect;Landroid/view/autofill/IAutofillWindowPresenter;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mrequestShowSoftInput(Landroid/view/autofill/AutofillManager;Landroid/view/autofill/AutofillId;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/autofill/AutofillManager;->requestShowSoftInput(Landroid/view/autofill/AutofillId;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetFillDialogTriggerIds(Landroid/view/autofill/AutofillManager;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/autofill/AutofillManager;->setFillDialogTriggerIds(Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetSaveUiState(Landroid/view/autofill/AutofillManager;IZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/autofill/AutofillManager;->setSaveUiState(IZ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetSessionFinished(Landroid/view/autofill/AutofillManager;ILjava/util/List;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/autofill/AutofillManager;->setSessionFinished(ILjava/util/List;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetState(Landroid/view/autofill/AutofillManager;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/autofill/AutofillManager;->setState(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetTrackedViews(Landroid/view/autofill/AutofillManager;I[Landroid/view/autofill/AutofillId;ZZ[Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillId;Z)V
    .registers 8

    invoke-direct/range {p0 .. p7}, Landroid/view/autofill/AutofillManager;->setTrackedViews(I[Landroid/view/autofill/AutofillId;ZZ[Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillId;Z)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 349
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_6

    .line 350
    const/4 v0, 0x2

    goto :goto_7

    .line 351
    :cond_6
    const/4 v0, 0x0

    :goto_7
    sput v0, Landroid/view/autofill/AutofillManager;->DEFAULT_LOGGING_LEVEL:I

    .line 349
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/view/autofill/IAutoFillManager;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/view/autofill/IAutoFillManager;

    .line 941
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 591
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, p0, Landroid/view/autofill/AutofillManager;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 604
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    .line 620
    const v0, 0x7fffffff

    iput v0, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    .line 623
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/autofill/AutofillManager;->mState:I

    .line 708
    iput-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mIsTriggerFillRequestOnUnimportantViewEnabled:Z

    .line 717
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Landroid/view/autofill/AutofillManager;->mNonAutofillableImeActionIdSet:Ljava/util/Set;

    .line 721
    iput-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mIsPackageFullyDeniedForAutofill:Z

    .line 725
    iput-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mIsPackagePartiallyDeniedForAutofill:Z

    .line 728
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Landroid/view/autofill/AutofillManager;->mDeniedActivitySet:Ljava/util/Set;

    .line 731
    iput-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mIsPackageFullyAllowedForAutofill:Z

    .line 736
    iput-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mIsPackagePartiallyAllowedForAutofill:Z

    .line 739
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Landroid/view/autofill/AutofillManager;->mAllowedActivitySet:Ljava/util/Set;

    .line 773
    iput-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mShowAutofillDialogCalled:Z

    .line 776
    iput-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mShouldIgnoreCredentialViews:Z

    .line 782
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Landroid/view/autofill/AutofillManager;->mAllTrackedViews:Landroid/util/ArraySet;

    .line 785
    iput-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mFillReAttemptNeeded:Z

    .line 787
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/view/autofill/AutofillManager;->mFingerprintToViewMap:Ljava/util/Map;

    .line 942
    const-string v1, "context cannot be null"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iput-object v1, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    .line 943
    iput-object p2, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    .line 944
    invoke-virtual {p1}, Landroid/content/Context;->getAutofillOptions()Landroid/content/AutofillOptions;

    move-result-object v1

    iput-object v1, p0, Landroid/view/autofill/AutofillManager;->mOptions:Landroid/content/AutofillOptions;

    .line 945
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Landroid/view/autofill/AutofillManager;->mIsFillRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 946
    invoke-static {}, Landroid/view/autofill/AutofillStateFingerprint;->createInstance()Landroid/view/autofill/AutofillStateFingerprint;

    move-result-object v1

    iput-object v1, p0, Landroid/view/autofill/AutofillManager;->mAutofillStateFingerprint:Landroid/view/autofill/AutofillStateFingerprint;

    .line 948
    invoke-static {}, Landroid/view/autofill/AutofillFeatureFlags;->isFillDialogEnabled()Z

    move-result v1

    iput-boolean v1, p0, Landroid/view/autofill/AutofillManager;->mIsFillDialogEnabled:Z

    .line 949
    invoke-static {}, Landroid/view/autofill/AutofillFeatureFlags;->getFillDialogEnabledHints()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/view/autofill/AutofillManager;->mFillDialogEnabledHints:[Ljava/lang/String;

    .line 951
    nop

    .line 952
    invoke-static {}, Landroid/view/autofill/AutofillFeatureFlags;->isFillAndSaveDialogDisabledForCredentialManager()Z

    move-result v1

    iput-boolean v1, p0, Landroid/view/autofill/AutofillManager;->mIsFillAndSaveDialogDisabledForCredentialManager:Z

    .line 954
    sget-boolean v1, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_ac

    .line 955
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fill dialog is enabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/view/autofill/AutofillManager;->mIsFillDialogEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", hints="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mFillDialogEnabledHints:[Ljava/lang/String;

    .line 956
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 955
    const-string v2, "AutofillManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    :cond_ac
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mOptions:Landroid/content/AutofillOptions;

    const/4 v2, 0x1

    if-eqz v1, :cond_cb

    .line 960
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mOptions:Landroid/content/AutofillOptions;

    iget v1, v1, Landroid/content/AutofillOptions;->loggingLevel:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_bb

    move v1, v2

    goto :goto_bc

    :cond_bb
    move v1, v0

    :goto_bc
    sput-boolean v1, Landroid/view/autofill/Helper;->sDebug:Z

    .line 961
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mOptions:Landroid/content/AutofillOptions;

    iget v1, v1, Landroid/content/AutofillOptions;->loggingLevel:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_c8

    move v1, v2

    goto :goto_c9

    :cond_c8
    move v1, v0

    :goto_c9
    sput-boolean v1, Landroid/view/autofill/Helper;->sVerbose:Z

    .line 964
    :cond_cb
    nop

    .line 965
    invoke-static {}, Landroid/view/autofill/AutofillFeatureFlags;->isTriggerFillRequestOnUnimportantViewEnabled()Z

    move-result v1

    iput-boolean v1, p0, Landroid/view/autofill/AutofillManager;->mIsTriggerFillRequestOnUnimportantViewEnabled:Z

    .line 967
    nop

    .line 968
    invoke-static {}, Landroid/view/autofill/AutofillFeatureFlags;->isTriggerFillRequestOnFilteredImportantViewsEnabled()Z

    move-result v1

    iput-boolean v1, p0, Landroid/view/autofill/AutofillManager;->mIsTriggerFillRequestOnFilteredImportantViewsEnabled:Z

    .line 970
    nop

    .line 971
    invoke-static {}, Landroid/view/autofill/AutofillFeatureFlags;->shouldEnableAutofillOnAllViewTypes()Z

    move-result v1

    iput-boolean v1, p0, Landroid/view/autofill/AutofillManager;->mShouldEnableAutofillOnAllViewTypes:Z

    .line 973
    nop

    .line 974
    invoke-static {}, Landroid/view/autofill/AutofillFeatureFlags;->getNonAutofillableImeActionIdSetFromFlag()Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Landroid/view/autofill/AutofillManager;->mNonAutofillableImeActionIdSet:Ljava/util/Set;

    .line 976
    nop

    .line 977
    invoke-static {}, Landroid/view/autofill/AutofillFeatureFlags;->shouldEnableMultilineFilter()Z

    move-result v1

    iput-boolean v1, p0, Landroid/view/autofill/AutofillManager;->mShouldEnableMultilineFilter:Z

    .line 979
    invoke-static {}, Landroid/view/autofill/AutofillFeatureFlags;->getDenylistStringFromFlag()Ljava/lang/String;

    move-result-object v1

    .line 980
    .local v1, "denyListString":Ljava/lang/String;
    invoke-static {}, Landroid/view/autofill/AutofillFeatureFlags;->getAllowlistStringFromFlag()Ljava/lang/String;

    move-result-object v3

    .line 982
    .local v3, "allowlistString":Ljava/lang/String;
    iget-object v4, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 984
    .local v4, "packageName":Ljava/lang/String;
    nop

    .line 985
    invoke-direct {p0, v1, v4}, Landroid/view/autofill/AutofillManager;->isPackageFullyAllowedOrDeniedForAutofill(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Landroid/view/autofill/AutofillManager;->mIsPackageFullyDeniedForAutofill:Z

    .line 987
    nop

    .line 988
    invoke-direct {p0, v3, v4}, Landroid/view/autofill/AutofillManager;->isPackageFullyAllowedOrDeniedForAutofill(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Landroid/view/autofill/AutofillManager;->mIsPackageFullyAllowedForAutofill:Z

    .line 990
    iget-boolean v5, p0, Landroid/view/autofill/AutofillManager;->mIsPackageFullyDeniedForAutofill:Z

    if-nez v5, :cond_115

    .line 991
    nop

    .line 992
    invoke-direct {p0, v1, v4}, Landroid/view/autofill/AutofillManager;->isPackagePartiallyDeniedOrAllowedForAutofill(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Landroid/view/autofill/AutofillManager;->mIsPackagePartiallyDeniedForAutofill:Z

    .line 995
    :cond_115
    iget-boolean v5, p0, Landroid/view/autofill/AutofillManager;->mIsPackageFullyAllowedForAutofill:Z

    if-nez v5, :cond_120

    .line 996
    nop

    .line 997
    invoke-direct {p0, v3, v4}, Landroid/view/autofill/AutofillManager;->isPackagePartiallyDeniedOrAllowedForAutofill(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Landroid/view/autofill/AutofillManager;->mIsPackagePartiallyAllowedForAutofill:Z

    .line 1000
    :cond_120
    iget-boolean v5, p0, Landroid/view/autofill/AutofillManager;->mIsPackagePartiallyDeniedForAutofill:Z

    if-eqz v5, :cond_12a

    .line 1001
    invoke-direct {p0, v1, v4}, Landroid/view/autofill/AutofillManager;->getDeniedOrAllowedActivitySetFromString(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v5

    iput-object v5, p0, Landroid/view/autofill/AutofillManager;->mDeniedActivitySet:Ljava/util/Set;

    .line 1005
    :cond_12a
    iget-boolean v5, p0, Landroid/view/autofill/AutofillManager;->mIsPackagePartiallyAllowedForAutofill:Z

    if-eqz v5, :cond_134

    .line 1006
    invoke-direct {p0, v3, v4}, Landroid/view/autofill/AutofillManager;->getDeniedOrAllowedActivitySetFromString(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v5

    iput-object v5, p0, Landroid/view/autofill/AutofillManager;->mAllowedActivitySet:Ljava/util/Set;

    .line 1010
    :cond_134
    nop

    .line 1011
    invoke-static {}, Landroid/view/autofill/AutofillFeatureFlags;->shouldIncludeAllViewsAutofillTypeNotNoneInAssistStructrue()Z

    move-result v5

    iput-boolean v5, p0, Landroid/view/autofill/AutofillManager;->mShouldIncludeAllViewsWithAutofillTypeNotNoneInAssistStructure:Z

    .line 1013
    nop

    .line 1014
    invoke-static {}, Landroid/view/autofill/AutofillFeatureFlags;->shouldIncludeAllChildrenViewInAssistStructure()Z

    move-result v5

    iput-boolean v5, p0, Landroid/view/autofill/AutofillManager;->mShouldIncludeAllChildrenViewInAssistStructure:Z

    .line 1016
    nop

    .line 1017
    invoke-static {}, Landroid/view/autofill/AutofillFeatureFlags;->shouldAlwaysIncludeWebviewInAssistStructure()Z

    move-result v5

    iput-boolean v5, p0, Landroid/view/autofill/AutofillManager;->mShouldAlwaysIncludeWebviewInAssistStructure:Z

    .line 1019
    nop

    .line 1020
    invoke-static {}, Landroid/view/autofill/AutofillFeatureFlags;->shouldIncludeInvisibleViewInAssistStructure()Z

    move-result v5

    iput-boolean v5, p0, Landroid/view/autofill/AutofillManager;->mShouldIncludeInvisibleViewInAssistStructure:Z

    .line 1022
    invoke-static {}, Landroid/view/autofill/AutofillFeatureFlags;->shouldIgnoreRelayoutWhenAuthPending()Z

    move-result v5

    iput-boolean v5, p0, Landroid/view/autofill/AutofillManager;->mRelayoutFixDeprecated:Z

    .line 1023
    invoke-static {}, Landroid/service/autofill/Flags;->relayoutFix()Z

    move-result v5

    if-eqz v5, :cond_164

    invoke-static {}, Landroid/view/autofill/AutofillFeatureFlags;->enableRelayoutFixes()Z

    move-result v5

    if-eqz v5, :cond_164

    move v5, v2

    goto :goto_165

    :cond_164
    move v5, v0

    :goto_165
    iput-boolean v5, p0, Landroid/view/autofill/AutofillManager;->mRelayoutFix:Z

    .line 1024
    invoke-static {}, Landroid/view/autofill/AutofillFeatureFlags;->enableRelativeLocationForRelayout()Z

    move-result v5

    iput-boolean v5, p0, Landroid/view/autofill/AutofillManager;->mRelativePositionForRelayout:Z

    .line 1025
    invoke-static {}, Landroid/service/autofill/Flags;->autofillCredmanIntegration()Z

    move-result v5

    iput-boolean v5, p0, Landroid/view/autofill/AutofillManager;->mIsCredmanIntegrationEnabled:Z

    .line 1026
    nop

    .line 1027
    invoke-static {}, Landroid/service/autofill/Flags;->improveFillDialogAconfig()Z

    move-result v5

    if-eqz v5, :cond_181

    invoke-static {}, Landroid/view/autofill/AutofillFeatureFlags;->isImproveFillDialogEnabled()Z

    move-result v5

    if-eqz v5, :cond_181

    move v0, v2

    :cond_181
    iput-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mImproveFillDialogEnabled:Z

    .line 1028
    return-void
.end method

.method private greylist-max-o addEnteredIdLocked(Landroid/view/autofill/AutofillId;)V
    .registers 4
    .param p1, "id"    # Landroid/view/autofill/AutofillId;

    .line 2063
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mEnteredIds:Landroid/util/ArraySet;

    if-nez v0, :cond_c

    .line 2064
    new-instance v0, Landroid/util/ArraySet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v0, p0, Landroid/view/autofill/AutofillManager;->mEnteredIds:Landroid/util/ArraySet;

    .line 2066
    :cond_c
    invoke-virtual {p1}, Landroid/view/autofill/AutofillId;->resetSessionId()V

    .line 2067
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mEnteredIds:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2068
    return-void
.end method

.method private blacklist authenticate(IILandroid/content/IntentSender;Landroid/content/Intent;Z)V
    .registers 10
    .param p1, "sessionId"    # I
    .param p2, "authenticationId"    # I
    .param p3, "intent"    # Landroid/content/IntentSender;
    .param p4, "fillInIntent"    # Landroid/content/Intent;
    .param p5, "authenticateInline"    # Z

    .line 3099
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3100
    :try_start_3
    iget v1, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    if-ne p1, v1, :cond_3c

    .line 3101
    iget-boolean v1, p0, Landroid/view/autofill/AutofillManager;->mRelayoutFixDeprecated:Z

    if-nez v1, :cond_f

    iget-boolean v1, p0, Landroid/view/autofill/AutofillManager;->mRelayoutFix:Z

    if-eqz v1, :cond_30

    .line 3102
    :cond_f
    const/4 v1, 0x7

    iput v1, p0, Landroid/view/autofill/AutofillManager;->mState:I

    .line 3103
    sget-boolean v1, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_30

    .line 3104
    const-string v1, "AutofillManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "entering STATE_PENDING_AUTHENTICATION : mRelayoutFix:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/view/autofill/AutofillManager;->mRelayoutFix:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3108
    :cond_30
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v1

    .line 3109
    .local v1, "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    if-eqz v1, :cond_3c

    .line 3112
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/view/autofill/AutofillManager;->mOnInvisibleCalled:Z

    .line 3113
    invoke-interface {v1, p2, p3, p4, p5}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientAuthenticate(ILandroid/content/IntentSender;Landroid/content/Intent;Z)V

    .line 3117
    .end local v1    # "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    :cond_3c
    monitor-exit v0

    .line 3118
    return-void

    .line 3117
    :catchall_3e
    move-exception v1

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3 .. :try_end_40} :catchall_3e

    throw v1
.end method

.method private blacklist autofill(ILjava/util/List;Ljava/util/List;Z)V
    .registers 14
    .param p1, "sessionId"    # I
    .param p4, "hideHighlight"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillId;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillValue;",
            ">;Z)V"
        }
    .end annotation

    .line 3366
    .local p2, "ids":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    .local p3, "values":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillValue;>;"
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3367
    :try_start_3
    iget v0, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_2a

    if-eq p1, v0, :cond_e

    .line 3368
    :try_start_7
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_7 .. :try_end_8} :catchall_9

    return-void

    .line 3380
    :catchall_9
    move-exception v0

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    goto :goto_2e

    .line 3371
    :cond_e
    :try_start_e
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v0
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_2a

    .line 3372
    .local v0, "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    if-nez v0, :cond_16

    .line 3373
    :try_start_14
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_9

    return-void

    .line 3376
    :cond_16
    nop

    .line 3377
    :try_start_17
    invoke-static {p2}, Landroid/view/autofill/Helper;->toArray(Ljava/util/Collection;)[Landroid/view/autofill/AutofillId;

    move-result-object v2

    .line 3376
    invoke-interface {v0, v2}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientFindViewsByAutofillIdTraversal([Landroid/view/autofill/AutofillId;)[Landroid/view/View;

    move-result-object v2
    :try_end_1f
    .catchall {:try_start_17 .. :try_end_1f} :catchall_2a

    move-object v4, v2

    .line 3379
    .local v4, "views":[Landroid/view/View;
    const/4 v8, 0x0

    move-object v3, p0

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    .end local p2    # "ids":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    .end local p3    # "values":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillValue;>;"
    .end local p4    # "hideHighlight":Z
    .local v5, "ids":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    .local v6, "values":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillValue;>;"
    .local v7, "hideHighlight":Z
    :try_start_25
    invoke-virtual/range {v3 .. v8}, Landroid/view/autofill/AutofillManager;->autofill([Landroid/view/View;Ljava/util/List;Ljava/util/List;ZZ)V

    .line 3380
    .end local v0    # "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    .end local v4    # "views":[Landroid/view/View;
    monitor-exit v1

    .line 3381
    return-void

    .line 3380
    .end local v5    # "ids":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    .end local v6    # "values":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillValue;>;"
    .end local v7    # "hideHighlight":Z
    .restart local p2    # "ids":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    .restart local p3    # "values":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillValue;>;"
    .restart local p4    # "hideHighlight":Z
    :catchall_2a
    move-exception v0

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    .end local p2    # "ids":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    .end local p3    # "values":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillValue;>;"
    .end local p4    # "hideHighlight":Z
    .restart local v5    # "ids":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    .restart local v6    # "values":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillValue;>;"
    .restart local v7    # "hideHighlight":Z
    :goto_2e
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_30

    throw v0

    :catchall_30
    move-exception v0

    goto :goto_2e
.end method

.method private blacklist autofillContent(ILandroid/view/autofill/AutofillId;Landroid/content/ClipData;)V
    .registers 14
    .param p1, "sessionId"    # I
    .param p2, "id"    # Landroid/view/autofill/AutofillId;
    .param p3, "clip"    # Landroid/content/ClipData;

    .line 3484
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3485
    :try_start_3
    iget v1, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    if-eq p1, v1, :cond_9

    .line 3486
    monitor-exit v0

    return-void

    .line 3488
    :cond_9
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v1

    .line 3489
    .local v1, "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    if-nez v1, :cond_11

    .line 3490
    monitor-exit v0

    return-void

    .line 3492
    :cond_11
    invoke-interface {v1, p2}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientFindViewByAutofillIdTraversal(Landroid/view/autofill/AutofillId;)Landroid/view/View;

    move-result-object v2

    .line 3493
    .local v2, "view":Landroid/view/View;
    if-nez v2, :cond_34

    .line 3497
    const-string v3, "AutofillManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "autofillContent(): no view with id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3498
    invoke-direct {p0, p2}, Landroid/view/autofill/AutofillManager;->reportAutofillContentFailure(Landroid/view/autofill/AutofillId;)V

    .line 3499
    monitor-exit v0

    return-void

    .line 3501
    :cond_34
    new-instance v3, Landroid/view/ContentInfo$Builder;

    const/4 v4, 0x4

    invoke-direct {v3, p3, v4}, Landroid/view/ContentInfo$Builder;-><init>(Landroid/content/ClipData;I)V

    invoke-virtual {v3}, Landroid/view/ContentInfo$Builder;->build()Landroid/view/ContentInfo;

    move-result-object v3

    .line 3502
    .local v3, "payload":Landroid/view/ContentInfo;
    invoke-virtual {v2, v3}, Landroid/view/View;->performReceiveContent(Landroid/view/ContentInfo;)Landroid/view/ContentInfo;

    move-result-object v4

    .line 3503
    .local v4, "result":Landroid/view/ContentInfo;
    if-eqz v4, :cond_75

    .line 3504
    const-string v5, "AutofillManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "autofillContent(): receiver could not insert content: id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", view="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", clip="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3506
    invoke-direct {p0, p2}, Landroid/view/autofill/AutofillManager;->reportAutofillContentFailure(Landroid/view/autofill/AutofillId;)V

    .line 3507
    monitor-exit v0

    return-void

    .line 3509
    :cond_75
    iget-object v5, p0, Landroid/view/autofill/AutofillManager;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v6, 0x391

    invoke-direct {p0, v6}, Landroid/view/autofill/AutofillManager;->newLog(I)Landroid/metrics/LogMaker;

    move-result-object v6

    .line 3510
    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v9, 0x392

    invoke-virtual {v6, v9, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v6

    .line 3511
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v8, 0x393

    invoke-virtual {v6, v8, v7}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v6

    .line 3509
    invoke-virtual {v5, v6}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 3512
    .end local v1    # "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "payload":Landroid/view/ContentInfo;
    .end local v4    # "result":Landroid/view/ContentInfo;
    monitor-exit v0

    .line 3513
    return-void

    .line 3512
    :catchall_97
    move-exception v1

    monitor-exit v0
    :try_end_99
    .catchall {:try_start_3 .. :try_end_99} :catchall_97

    throw v1
.end method

.method private greylist-max-o cancelLocked()V
    .registers 2

    .line 2353
    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    if-nez v0, :cond_b

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isActiveLocked()Z

    move-result v0

    if-nez v0, :cond_b

    .line 2354
    return-void

    .line 2356
    :cond_b
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->cancelSessionLocked()V

    .line 2357
    return-void
.end method

.method private greylist-max-o cancelSessionLocked()V
    .registers 4

    .line 2807
    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelSessionLocked(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getStateAsStringLocked()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutofillManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2809
    :cond_20
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isActiveLocked()Z

    move-result v0

    if-nez v0, :cond_27

    return-void

    .line 2812
    :cond_27
    :try_start_27
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget v1, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/view/autofill/IAutoFillManager;->cancelSession(II)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_34} :catch_3a

    .line 2815
    nop

    .line 2817
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/view/autofill/AutofillManager;->resetSessionLocked(Z)V

    .line 2818
    return-void

    .line 2813
    :catch_3a
    move-exception v0

    .line 2814
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private blacklist commitLocked(I)V
    .registers 3
    .param p1, "commitReason"    # I

    .line 2324
    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    if-nez v0, :cond_b

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isActiveLocked()Z

    move-result v0

    if-nez v0, :cond_b

    .line 2325
    return-void

    .line 2327
    :cond_b
    invoke-direct {p0, p1}, Landroid/view/autofill/AutofillManager;->finishSessionLocked(I)V

    .line 2328
    return-void
.end method

.method private greylist-max-o dispatchUnhandledKey(ILandroid/view/autofill/AutofillId;Landroid/view/KeyEvent;)V
    .registers 7
    .param p1, "sessionId"    # I
    .param p2, "id"    # Landroid/view/autofill/AutofillId;
    .param p3, "keyEvent"    # Landroid/view/KeyEvent;

    .line 3121
    invoke-direct {p0, p2}, Landroid/view/autofill/AutofillManager;->findView(Landroid/view/autofill/AutofillId;)Landroid/view/View;

    move-result-object v0

    .line 3122
    .local v0, "anchor":Landroid/view/View;
    if-nez v0, :cond_7

    .line 3123
    return-void

    .line 3126
    :cond_7
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3127
    :try_start_a
    iget v2, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    if-ne v2, p1, :cond_17

    .line 3128
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v2

    .line 3130
    .local v2, "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    if-eqz v2, :cond_17

    .line 3131
    invoke-interface {v2, v0, p3}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientDispatchUnhandledKey(Landroid/view/View;Landroid/view/KeyEvent;)V

    .line 3134
    .end local v2    # "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    :cond_17
    monitor-exit v1

    .line 3135
    return-void

    .line 3134
    :catchall_19
    move-exception v2

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_a .. :try_end_1b} :catchall_19

    throw v2
.end method

.method private greylist-max-o findView(Landroid/view/autofill/AutofillId;)Landroid/view/View;
    .registers 4
    .param p1, "autofillId"    # Landroid/view/autofill/AutofillId;

    .line 3908
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v0

    .line 3909
    .local v0, "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    if-eqz v0, :cond_b

    .line 3910
    invoke-interface {v0, p1}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientFindViewByAutofillIdTraversal(Landroid/view/autofill/AutofillId;)Landroid/view/View;

    move-result-object v1

    return-object v1

    .line 3912
    :cond_b
    const/4 v1, 0x0

    return-object v1
.end method

.method private blacklist finishSessionLocked(I)V
    .registers 5
    .param p1, "commitReason"    # I

    .line 2792
    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finishSessionLocked(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getStateAsStringLocked()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutofillManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2794
    :cond_20
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isActiveLocked()Z

    move-result v0

    if-nez v0, :cond_27

    return-void

    .line 2797
    :cond_27
    :try_start_27
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget v1, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-interface {v0, v1, v2, p1}, Landroid/view/autofill/IAutoFillManager;->finishSession(III)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_34} :catch_3a

    .line 2800
    nop

    .line 2802
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/view/autofill/AutofillManager;->resetSessionLocked(Z)V

    .line 2803
    return-void

    .line 2798
    :catch_3a
    move-exception v0

    .line 2799
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private blacklist getAugmentedAutofillClient(Lcom/android/internal/os/IResultReceiver;)V
    .registers 8
    .param p1, "result"    # Lcom/android/internal/os/IResultReceiver;

    .line 3704
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3705
    :try_start_3
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mAugmentedAutofillServiceClient:Landroid/view/autofill/IAugmentedAutofillManagerClient;

    if-nez v1, :cond_f

    .line 3706
    new-instance v1, Landroid/view/autofill/AutofillManager$AugmentedAutofillManagerClient;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/view/autofill/AutofillManager$AugmentedAutofillManagerClient;-><init>(Landroid/view/autofill/AutofillManager;Landroid/view/autofill/AutofillManager-IA;)V

    iput-object v1, p0, Landroid/view/autofill/AutofillManager;->mAugmentedAutofillServiceClient:Landroid/view/autofill/IAugmentedAutofillManagerClient;

    .line 3708
    :cond_f
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3709
    .local v1, "resultData":Landroid/os/Bundle;
    const-string v2, "android.view.autofill.extra.AUGMENTED_AUTOFILL_CLIENT"

    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mAugmentedAutofillServiceClient:Landroid/view/autofill/IAugmentedAutofillManagerClient;

    .line 3710
    invoke-interface {v3}, Landroid/view/autofill/IAugmentedAutofillManagerClient;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 3709
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_3f

    .line 3713
    const/4 v2, 0x0

    :try_start_20
    invoke-interface {p1, v2, v1}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_23} :catch_24
    .catchall {:try_start_20 .. :try_end_23} :catchall_3f

    .line 3716
    goto :goto_3d

    .line 3714
    :catch_24
    move-exception v2

    .line 3715
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_25
    const-string v3, "AutofillManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not send AugmentedAutofillClient back: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3717
    .end local v1    # "resultData":Landroid/os/Bundle;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_3d
    monitor-exit v0

    .line 3718
    return-void

    .line 3717
    :catchall_3f
    move-exception v1

    monitor-exit v0
    :try_end_41
    .catchall {:try_start_25 .. :try_end_41} :catchall_3f

    throw v1
.end method

.method private static greylist-max-o getAutofillId(Landroid/view/View;I)Landroid/view/autofill/AutofillId;
    .registers 4
    .param p0, "parent"    # Landroid/view/View;
    .param p1, "virtualId"    # I

    .line 2704
    new-instance v0, Landroid/view/autofill/AutofillId;

    invoke-virtual {p0}, Landroid/view/View;->getAutofillViewId()I

    move-result v1

    invoke-direct {v0, v1, p1}, Landroid/view/autofill/AutofillId;-><init>(II)V

    return-object v0
.end method

.method private greylist-max-o getClient()Landroid/view/autofill/AutofillManager$AutofillClient;
    .registers 4

    .line 2580
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAutofillClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v0

    .line 2581
    .local v0, "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    if-nez v0, :cond_36

    sget-boolean v1, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_36

    .line 2582
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No AutofillClient for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " on context "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AutofillManager"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2585
    :cond_36
    return-object v0
.end method

.method public static greylist-max-o getDatasetIdFromAuthenticationId(I)I
    .registers 2
    .param p0, "authRequestId"    # I

    .line 588
    const v0, 0xffff

    and-int/2addr v0, p0

    return v0
.end method

.method private blacklist getDeniedOrAllowedActivitySetFromString(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;
    .registers 10
    .param p1, "listString"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1166
    .local v0, "packageInStringIndex":I
    const-string v1, ";"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 1169
    .local v1, "firstNextSemicolonIndex":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x1

    .line 1171
    .local v2, "activityStringStartIndex":I
    if-lt v2, v1, :cond_33

    .line 1172
    const-string v3, "AutofillManager"

    const-string v4, "Failed to get denied activity names from list because it\'s wrongly formatted"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    return-object v3

    .line 1176
    :cond_33
    nop

    .line 1177
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1180
    .local v3, "activitySubstring":Ljava/lang/String;
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1183
    .local v4, "activityStringArray":[Ljava/lang/String;
    new-instance v5, Landroid/util/ArraySet;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    return-object v5
.end method

.method private blacklist getImeStateFlag(Landroid/view/View;)I
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .line 1803
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 1805
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v1

    .line 1806
    .local v1, "rootWindowInsets":Landroid/view/WindowInsets;
    if-eqz v1, :cond_17

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/WindowInsets;->isVisible(I)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1807
    const/16 v0, 0x80

    return v0

    .line 1809
    :cond_17
    return v0
.end method

.method public static greylist-max-o getRequestIdFromAuthenticationId(I)I
    .registers 2
    .param p0, "authRequestId"    # I

    .line 577
    shr-int/lit8 v0, p0, 0x10

    return v0
.end method

.method public static blacklist getSmartSuggestionModeToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "flags"    # I

    .line 4032
    packed-switch p0, :pswitch_data_1e

    .line 4038
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INVALID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4036
    :pswitch_17
    const-string v0, "SYSTEM"

    return-object v0

    .line 4034
    :pswitch_1a
    const-string v0, "OFF"

    return-object v0

    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_17
    .end packed-switch
.end method

.method private static greylist-max-o getStateAsString(I)Ljava/lang/String;
    .registers 3
    .param p0, "state"    # I

    .line 4008
    packed-switch p0, :pswitch_data_30

    .line 4026
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INVALID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4014
    :pswitch_17
    const-string v0, "PENDING_AUTHENTICATION"

    return-object v0

    .line 4024
    :pswitch_1a
    const-string v0, "UNKNOWN_FAILED"

    return-object v0

    .line 4022
    :pswitch_1d
    const-string v0, "UNKNOWN_COMPAT_MODE"

    return-object v0

    .line 4020
    :pswitch_20
    const-string v0, "DISABLED_BY_SERVICE"

    return-object v0

    .line 4018
    :pswitch_23
    const-string v0, "SHOWING_SAVE_UI"

    return-object v0

    .line 4016
    :pswitch_26
    const-string v0, "FINISHED"

    return-object v0

    .line 4012
    :pswitch_29
    const-string v0, "ACTIVE"

    return-object v0

    .line 4010
    :pswitch_2c
    const-string v0, "UNKNOWN"

    return-object v0

    nop

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
    .end packed-switch
.end method

.method private greylist-max-o getStateAsStringLocked()Ljava/lang/String;
    .registers 2

    .line 4003
    iget v0, p0, Landroid/view/autofill/AutofillManager;->mState:I

    invoke-static {v0}, Landroid/view/autofill/AutofillManager;->getStateAsString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 3223
    if-nez p1, :cond_5

    const-string v0, "null"

    goto :goto_9

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_9
    return-object v0
.end method

.method private blacklist handleFailedIdsLocked(Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/autofill/AutofillId;",
            ">;)V"
        }
    .end annotation

    .line 3312
    .local p1, "failedIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Landroid/view/autofill/AutofillManager;->handleFailedIdsLocked(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    .line 3313
    return-void
.end method

.method private blacklist handleFailedIdsLocked(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V
    .registers 9
    .param p3, "hideHighlight"    # Z
    .param p4, "isRefill"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/autofill/AutofillId;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/autofill/AutofillValue;",
            ">;ZZ)V"
        }
    .end annotation

    .line 3319
    .local p1, "failedIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .local p2, "failedAutofillValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillValue;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const-string v1, "AutofillManager"

    if-nez v0, :cond_22

    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_22

    .line 3320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "autofill(): total failed views: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3323
    :cond_22
    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mRelayoutFix:Z

    if-eqz v0, :cond_34

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_34

    .line 3330
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mFillReAttemptNeeded:Z

    .line 3331
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mAutofillStateFingerprint:Landroid/view/autofill/AutofillStateFingerprint;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/autofill/AutofillStateFingerprint;->storeFailedIdsAndValues(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    .line 3335
    :cond_34
    :try_start_34
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget v2, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-interface {v0, v2, p1, p4, v3}, Landroid/view/autofill/IAutoFillManager;->setAutofillFailure(ILjava/util/List;ZI)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_41} :catch_74

    .line 3341
    nop

    .line 3342
    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mRelayoutFix:Z

    if-eqz v0, :cond_73

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_73

    .line 3343
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/autofill/AutofillManager$AutofillClient;->isActivityResumed()Z

    move-result v0

    if-nez v0, :cond_60

    .line 3344
    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_73

    .line 3345
    const-string v0, "handleFailedIdsLocked(): failed id\'s exist, but activity not resumed"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_73

    .line 3349
    :cond_60
    if-eqz p4, :cond_68

    .line 3350
    const-string v0, "handleFailedIdsLocked(): Attempted refill, but failed"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_73

    .line 3356
    :cond_68
    const-string v0, "handleFailedIdsLocked(): Attempting refill"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3357
    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->attemptRefill()Z

    .line 3358
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mFillReAttemptNeeded:Z

    .line 3362
    :cond_73
    :goto_73
    return-void

    .line 3336
    :catch_74
    move-exception v0

    .line 3340
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private blacklist hasFillDialogUiFeature()Z
    .registers 2

    .line 1799
    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mIsFillDialogEnabled:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mFillDialogEnabledHints:[Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

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

.method private greylist-max-o isActiveLocked()Z
    .registers 3

    .line 4044
    iget v0, p0, Landroid/view/autofill/AutofillManager;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_d

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isPendingAuthenticationLocked()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :cond_d
    :goto_d
    return v1
.end method

.method private greylist-max-o isClientDisablingEnterExitEvent()Z
    .registers 3

    .line 1842
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v0

    .line 1843
    .local v0, "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    if-eqz v0, :cond_e

    invoke-interface {v0}, Landroid/view/autofill/AutofillManager$AutofillClient;->isDisablingEnterExitEventForAutofill()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method private greylist-max-o isClientVisibleForAutofillLocked()Z
    .registers 3

    .line 1837
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v0

    .line 1838
    .local v0, "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    if-eqz v0, :cond_e

    invoke-interface {v0}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientIsVisibleForAutofill()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method private blacklist isCredmanRequested(Landroid/view/View;)Z
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 3894
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 3895
    return v0

    .line 3897
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getViewCredentialHandler()Landroid/view/ViewCredentialHandler;

    move-result-object v1

    if-eqz v1, :cond_b

    const/4 v0, 0x1

    :cond_b
    return v0
.end method

.method private greylist-max-o isDisabledByServiceLocked()Z
    .registers 3

    .line 4054
    iget v0, p0, Landroid/view/autofill/AutofillManager;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method private greylist-max-o isFinishedLocked()Z
    .registers 3

    .line 4059
    iget v0, p0, Landroid/view/autofill/AutofillManager;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method private blacklist isPackageFullyAllowedOrDeniedForAutofill(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p1, "listString"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    return v0
.end method

.method private blacklist isPackagePartiallyDeniedOrAllowedForAutofill(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p1, "listString"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    return v0
.end method

.method private blacklist isPassingImeActionCheck(Landroid/widget/EditText;)Z
    .registers 5
    .param p1, "editText"    # Landroid/widget/EditText;

    .line 1080
    invoke-virtual {p1}, Landroid/widget/EditText;->getImeOptions()I

    move-result v0

    .line 1081
    .local v0, "actionId":I
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mNonAutofillableImeActionIdSet:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1082
    const-string v1, "AutofillManager"

    const-string/jumbo v2, "view not autofillable - not passing ime action check"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    const/4 v1, 0x0

    return v1

    .line 1085
    :cond_1a
    const/4 v1, 0x1

    return v1
.end method

.method private blacklist isPassingMultilineCheck(Landroid/widget/EditText;)Z
    .registers 4
    .param p1, "editText"    # Landroid/widget/EditText;

    .line 1096
    invoke-virtual {p1}, Landroid/widget/EditText;->getMinLines()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_11

    .line 1097
    const-string v0, "AutofillManager"

    const-string/jumbo v1, "view not autofillable - has multiline input type"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    const/4 v0, 0x0

    return v0

    .line 1100
    :cond_11
    return v1
.end method

.method private blacklist isPendingAuthenticationLocked()Z
    .registers 3

    .line 4049
    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mRelayoutFixDeprecated:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mRelayoutFix:Z

    if-eqz v0, :cond_f

    :cond_8
    iget v0, p0, Landroid/view/autofill/AutofillManager;->mState:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method private synthetic blacklist lambda$onVisibleForAutofill$0()V
    .registers 3

    .line 1374
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1375
    :try_start_3
    iget-boolean v1, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    if-eqz v1, :cond_16

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isActiveLocked()Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mTrackedViews:Landroid/view/autofill/AutofillManager$TrackedViews;

    if-eqz v1, :cond_16

    .line 1376
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mTrackedViews:Landroid/view/autofill/AutofillManager$TrackedViews;

    invoke-virtual {v1}, Landroid/view/autofill/AutofillManager$TrackedViews;->onVisibleForAutofillChangedLocked()V

    .line 1378
    :cond_16
    monitor-exit v0

    .line 1379
    return-void

    .line 1378
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method static synthetic blacklist lambda$requestShowSoftInput$2(Landroid/view/View;)V
    .registers 1
    .param p0, "view"    # Landroid/view/View;

    .line 3740
    invoke-static {p0}, Landroid/view/autofill/AutofillManager;->requestShowSoftInputInViewThread(Landroid/view/View;)V

    return-void
.end method

.method private synthetic blacklist lambda$showAutofillDialog$3(Ljava/lang/ref/WeakReference;)V
    .registers 3
    .param p1, "wrView"    # Ljava/lang/ref/WeakReference;

    .line 4113
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 4114
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_b

    .line 4115
    invoke-virtual {p0, v0}, Landroid/view/autofill/AutofillManager;->notifyViewEntered(Landroid/view/View;)V

    .line 4117
    :cond_b
    return-void
.end method

.method private synthetic blacklist lambda$showAutofillDialog$4(Ljava/lang/ref/WeakReference;I)V
    .registers 6
    .param p1, "wrView"    # Ljava/lang/ref/WeakReference;
    .param p2, "virtualId"    # I

    .line 4160
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 4161
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_d

    .line 4162
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, p2, v1, v2}, Landroid/view/autofill/AutofillManager;->notifyViewEntered(Landroid/view/View;ILandroid/graphics/Rect;I)V

    .line 4164
    :cond_d
    return-void
.end method

.method static synthetic blacklist lambda$tryAddServiceClientIfNeededLocked$1(Landroid/view/autofill/IAutoFillManager;Landroid/view/autofill/IAutoFillManagerClient;I)V
    .registers 4
    .param p0, "service"    # Landroid/view/autofill/IAutoFillManager;
    .param p1, "serviceClient"    # Landroid/view/autofill/IAutoFillManagerClient;
    .param p2, "userId"    # I

    .line 2908
    :try_start_0
    invoke-interface {p0, p1, p2}, Landroid/view/autofill/IAutoFillManager;->removeClient(Landroid/view/autofill/IAutoFillManagerClient;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 2910
    goto :goto_5

    .line 2909
    :catch_4
    move-exception v0

    .line 2911
    :goto_5
    return-void
.end method

.method public static greylist-max-o makeAuthenticationId(II)I
    .registers 4
    .param p0, "requestId"    # I
    .param p1, "datasetId"    # I

    .line 565
    shl-int/lit8 v0, p0, 0x10

    const v1, 0xffff

    and-int/2addr v1, p1

    or-int/2addr v0, v1

    return v0
.end method

.method private greylist-max-o newLog(I)Landroid/metrics/LogMaker;
    .registers 7
    .param p1, "category"    # I

    .line 3525
    new-instance v0, Landroid/metrics/LogMaker;

    invoke-direct {v0, p1}, Landroid/metrics/LogMaker;-><init>(I)V

    iget v1, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    .line 3526
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x5b0

    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 3528
    .local v0, "log":Landroid/metrics/LogMaker;
    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->isCompatibilityModeEnabledLocked()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 3529
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x586

    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 3531
    :cond_21
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v1

    .line 3532
    .local v1, "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    if-nez v1, :cond_31

    .line 3534
    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    goto :goto_43

    .line 3537
    :cond_31
    new-instance v2, Landroid/content/ComponentName;

    .line 3538
    invoke-interface {v1}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientGetComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3539
    .local v2, "sanitizedComponentName":Landroid/content/ComponentName;
    invoke-virtual {v0, v2}, Landroid/metrics/LogMaker;->setComponentName(Landroid/content/ComponentName;)Landroid/metrics/LogMaker;

    .line 3541
    .end local v2    # "sanitizedComponentName":Landroid/content/ComponentName;
    :goto_43
    return-object v0
.end method

.method private blacklist notifyCallback(ILandroid/view/autofill/AutofillId;I)V
    .registers 8
    .param p1, "sessionId"    # I
    .param p2, "id"    # Landroid/view/autofill/AutofillId;
    .param p3, "event"    # I

    .line 3857
    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_30

    .line 3858
    const-string v0, "AutofillManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyCallback(): sessionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", autofillId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3861
    :cond_30
    invoke-direct {p0, p2}, Landroid/view/autofill/AutofillManager;->findView(Landroid/view/autofill/AutofillId;)Landroid/view/View;

    move-result-object v0

    .line 3862
    .local v0, "anchor":Landroid/view/View;
    if-nez v0, :cond_37

    .line 3863
    return-void

    .line 3866
    :cond_37
    const/4 v1, 0x0

    .line 3867
    .local v1, "callback":Landroid/view/autofill/AutofillManager$AutofillCallback;
    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3868
    :try_start_3b
    iget v3, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    if-ne v3, p1, :cond_48

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v3

    if-eqz v3, :cond_48

    .line 3869
    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;

    move-object v1, v3

    .line 3871
    :cond_48
    monitor-exit v2
    :try_end_49
    .catchall {:try_start_3b .. :try_end_49} :catchall_5e

    .line 3873
    if-eqz v1, :cond_5d

    .line 3874
    invoke-virtual {p2}, Landroid/view/autofill/AutofillId;->isVirtualInt()Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 3875
    nop

    .line 3876
    invoke-virtual {p2}, Landroid/view/autofill/AutofillId;->getVirtualChildIntId()I

    move-result v2

    .line 3875
    invoke-virtual {v1, v0, v2, p3}, Landroid/view/autofill/AutofillManager$AutofillCallback;->onAutofillEvent(Landroid/view/View;II)V

    goto :goto_5d

    .line 3878
    :cond_5a
    invoke-virtual {v1, v0, p3}, Landroid/view/autofill/AutofillManager$AutofillCallback;->onAutofillEvent(Landroid/view/View;I)V

    .line 3881
    :cond_5d
    :goto_5d
    return-void

    .line 3871
    :catchall_5e
    move-exception v3

    :try_start_5f
    monitor-exit v2
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    throw v3
.end method

.method private blacklist notifyDisableAutofill(JLandroid/content/ComponentName;)V
    .registers 10
    .param p1, "disableDuration"    # J
    .param p3, "componentName"    # Landroid/content/ComponentName;

    .line 3808
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3809
    :try_start_3
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mOptions:Landroid/content/AutofillOptions;

    if-nez v1, :cond_9

    .line 3810
    monitor-exit v0

    return-void

    .line 3812
    :cond_9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    add-long/2addr v1, p1

    .line 3814
    .local v1, "expiration":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gez v3, :cond_19

    .line 3815
    const-wide v1, 0x7fffffffffffffffL

    .line 3817
    :cond_19
    if-eqz p3, :cond_3a

    .line 3818
    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mOptions:Landroid/content/AutofillOptions;

    iget-object v3, v3, Landroid/content/AutofillOptions;->disabledActivities:Landroid/util/ArrayMap;

    if-nez v3, :cond_2a

    .line 3819
    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mOptions:Landroid/content/AutofillOptions;

    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    iput-object v4, v3, Landroid/content/AutofillOptions;->disabledActivities:Landroid/util/ArrayMap;

    .line 3821
    :cond_2a
    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mOptions:Landroid/content/AutofillOptions;

    iget-object v3, v3, Landroid/content/AutofillOptions;->disabledActivities:Landroid/util/ArrayMap;

    invoke-virtual {p3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3e

    .line 3823
    :cond_3a
    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mOptions:Landroid/content/AutofillOptions;

    iput-wide v1, v3, Landroid/content/AutofillOptions;->appDisabledExpiration:J

    .line 3825
    .end local v1    # "expiration":J
    :goto_3e
    monitor-exit v0

    .line 3826
    return-void

    .line 3825
    :catchall_40
    move-exception v1

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_3 .. :try_end_42} :catchall_40

    throw v1
.end method

.method private greylist-max-o notifyNoFillUi(ILandroid/view/autofill/AutofillId;I)V
    .registers 6
    .param p1, "sessionId"    # I
    .param p2, "id"    # Landroid/view/autofill/AutofillId;
    .param p3, "sessionFinishedState"    # I

    .line 3839
    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_1c

    .line 3840
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyNoFillUi(): sessionFinishedState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutofillManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3842
    :cond_1c
    invoke-direct {p0, p2}, Landroid/view/autofill/AutofillManager;->findView(Landroid/view/autofill/AutofillId;)Landroid/view/View;

    move-result-object v0

    .line 3843
    .local v0, "anchor":Landroid/view/View;
    if-nez v0, :cond_23

    .line 3844
    return-void

    .line 3847
    :cond_23
    const/4 v1, 0x3

    invoke-direct {p0, p1, p2, v1}, Landroid/view/autofill/AutofillManager;->notifyCallback(ILandroid/view/autofill/AutofillId;I)V

    .line 3849
    if-eqz p3, :cond_2d

    .line 3851
    const/4 v1, 0x0

    invoke-direct {p0, p3, v1}, Landroid/view/autofill/AutofillManager;->setSessionFinished(ILjava/util/List;)V

    .line 3853
    :cond_2d
    return-void
.end method

.method private greylist-max-o notifyViewClicked(Landroid/view/autofill/AutofillId;)V
    .registers 6
    .param p1, "id"    # Landroid/view/autofill/AutofillId;

    .line 2264
    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-nez v0, :cond_7

    .line 2265
    return-void

    .line 2267
    :cond_7
    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_2f

    const-string v0, "AutofillManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyViewClicked(): id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", trigger="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mSaveTriggerId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2269
    :cond_2f
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2270
    :try_start_32
    iget-boolean v1, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    if-eqz v1, :cond_77

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isActiveLocked()Z

    move-result v1

    if-nez v1, :cond_3d

    goto :goto_77

    .line 2273
    :cond_3d
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mSaveTriggerId:Landroid/view/autofill/AutofillId;

    if-eqz v1, :cond_75

    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mSaveTriggerId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v1, p1}, Landroid/view/autofill/AutofillId;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_75

    .line 2274
    sget-boolean v1, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_66

    const-string v1, "AutofillManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "triggering commit by click of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2275
    :cond_66
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Landroid/view/autofill/AutofillManager;->commitLocked(I)V

    .line 2276
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v2, 0x4cd

    invoke-direct {p0, v2}, Landroid/view/autofill/AutofillManager;->newLog(I)Landroid/metrics/LogMaker;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 2278
    :cond_75
    monitor-exit v0

    .line 2279
    return-void

    .line 2271
    :cond_77
    :goto_77
    monitor-exit v0

    return-void

    .line 2278
    :catchall_79
    move-exception v1

    monitor-exit v0
    :try_end_7b
    .catchall {:try_start_32 .. :try_end_7b} :catchall_79

    throw v1
.end method

.method private greylist-max-o notifyViewEntered(Landroid/view/View;I)V
    .registers 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "flags"    # I

    .line 1847
    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1848
    return-void

    .line 1851
    :cond_7
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1852
    nop

    .line 1853
    :try_start_b
    invoke-virtual {p1}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/View;->getAutofillValue()Landroid/view/autofill/AutofillValue;

    move-result-object v6
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_25

    .line 1852
    const/4 v5, 0x0

    move-object v2, p0

    move-object v3, p1

    move v7, p2

    .end local p1    # "view":Landroid/view/View;
    .end local p2    # "flags":I
    .local v3, "view":Landroid/view/View;
    .local v7, "flags":I
    :try_start_17
    invoke-direct/range {v2 .. v7}, Landroid/view/autofill/AutofillManager;->notifyViewEnteredLocked(Landroid/view/View;Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;I)Landroid/view/autofill/AutofillManager$AutofillCallback;

    move-result-object p1

    .line 1854
    .local p1, "callback":Landroid/view/autofill/AutofillManager$AutofillCallback;
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_17 .. :try_end_1c} :catchall_2c

    .line 1856
    if-eqz p1, :cond_24

    .line 1857
    iget-object p2, v2, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;

    const/4 v0, 0x3

    invoke-virtual {p2, v3, v0}, Landroid/view/autofill/AutofillManager$AutofillCallback;->onAutofillEvent(Landroid/view/View;I)V

    .line 1859
    :cond_24
    return-void

    .line 1854
    .end local v3    # "view":Landroid/view/View;
    .end local v7    # "flags":I
    .local p1, "view":Landroid/view/View;
    .restart local p2    # "flags":I
    :catchall_25
    move-exception v0

    move-object v2, p0

    move-object v3, p1

    move v7, p2

    move-object p1, v0

    .end local p1    # "view":Landroid/view/View;
    .end local p2    # "flags":I
    .restart local v3    # "view":Landroid/view/View;
    .restart local v7    # "flags":I
    :goto_2a
    :try_start_2a
    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_2c

    throw p1

    :catchall_2c
    move-exception v0

    move-object p1, v0

    goto :goto_2a
.end method

.method private greylist-max-o notifyViewEntered(Landroid/view/View;ILandroid/graphics/Rect;I)V
    .registers 13
    .param p1, "view"    # Landroid/view/View;
    .param p2, "virtualId"    # I
    .param p3, "bounds"    # Landroid/graphics/Rect;
    .param p4, "flags"    # I

    .line 1980
    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1981
    return-void

    .line 1985
    :cond_7
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1986
    nop

    .line 1987
    :try_start_b
    invoke-static {p1, p2}, Landroid/view/autofill/AutofillManager;->getAutofillId(Landroid/view/View;I)Landroid/view/autofill/AutofillId;

    move-result-object v4
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_23

    .line 1986
    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v5, p3

    move v7, p4

    .end local p1    # "view":Landroid/view/View;
    .end local p3    # "bounds":Landroid/graphics/Rect;
    .end local p4    # "flags":I
    .local v3, "view":Landroid/view/View;
    .local v5, "bounds":Landroid/graphics/Rect;
    .local v7, "flags":I
    :try_start_14
    invoke-direct/range {v2 .. v7}, Landroid/view/autofill/AutofillManager;->notifyViewEnteredLocked(Landroid/view/View;Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;I)Landroid/view/autofill/AutofillManager$AutofillCallback;

    move-result-object p1

    .line 1988
    .local p1, "callback":Landroid/view/autofill/AutofillManager$AutofillCallback;
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_14 .. :try_end_19} :catchall_20

    .line 1990
    if-eqz p1, :cond_1f

    .line 1991
    const/4 p3, 0x3

    invoke-virtual {p1, v3, p2, p3}, Landroid/view/autofill/AutofillManager$AutofillCallback;->onAutofillEvent(Landroid/view/View;II)V

    .line 1994
    :cond_1f
    return-void

    .line 1988
    .end local p1    # "callback":Landroid/view/autofill/AutofillManager$AutofillCallback;
    :catchall_20
    move-exception v0

    move-object p1, v0

    goto :goto_28

    .end local v3    # "view":Landroid/view/View;
    .end local v5    # "bounds":Landroid/graphics/Rect;
    .end local v7    # "flags":I
    .local p1, "view":Landroid/view/View;
    .restart local p3    # "bounds":Landroid/graphics/Rect;
    .restart local p4    # "flags":I
    :catchall_23
    move-exception v0

    move-object v3, p1

    move-object v5, p3

    move v7, p4

    move-object p1, v0

    .end local p1    # "view":Landroid/view/View;
    .end local p3    # "bounds":Landroid/graphics/Rect;
    .end local p4    # "flags":I
    .restart local v3    # "view":Landroid/view/View;
    .restart local v5    # "bounds":Landroid/graphics/Rect;
    .restart local v7    # "flags":I
    :goto_28
    :try_start_28
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_20

    throw p1
.end method

.method private blacklist notifyViewEnteredLocked(Landroid/view/View;Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;I)Landroid/view/autofill/AutofillManager$AutofillCallback;
    .registers 15
    .param p1, "view"    # Landroid/view/View;
    .param p2, "id"    # Landroid/view/autofill/AutofillId;
    .param p3, "bounds"    # Landroid/graphics/Rect;
    .param p4, "value"    # Landroid/view/autofill/AutofillValue;
    .param p5, "flags"    # I

    .line 2000
    invoke-direct {p0, p2, p5}, Landroid/view/autofill/AutofillManager;->shouldIgnoreViewEnteredLocked(Landroid/view/autofill/AutofillId;I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    .line 2002
    :cond_8
    invoke-direct {p0, p1}, Landroid/view/autofill/AutofillManager;->isCredmanRequested(Landroid/view/View;)Z

    move-result v0

    .line 2003
    .local v0, "credmanRequested":Z
    invoke-direct {p0, v0}, Landroid/view/autofill/AutofillManager;->tryAddServiceClientIfNeededLocked(Z)Z

    move-result v2

    .line 2004
    .local v2, "clientAdded":Z
    const-string v3, "ignoring notifyViewEntered("

    const-string v4, "AutofillManager"

    if-nez v2, :cond_35

    .line 2005
    sget-boolean v5, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v5, :cond_34

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "): no service client"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2006
    :cond_34
    return-object v1

    .line 2009
    :cond_35
    iget-boolean v5, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    if-nez v5, :cond_5e

    iget-boolean v5, p0, Landroid/view/autofill/AutofillManager;->mEnabledForAugmentedAutofillOnly:Z

    if-nez v5, :cond_5e

    .line 2010
    sget-boolean v1, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_5b

    .line 2011
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "): disabled"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2013
    :cond_5b
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;

    return-object v1

    .line 2015
    :cond_5e
    iget-boolean v3, p0, Landroid/view/autofill/AutofillManager;->mIsCredmanIntegrationEnabled:Z

    if-eqz v3, :cond_6a

    invoke-direct {p0, p1}, Landroid/view/autofill/AutofillManager;->isCredmanRequested(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_6a

    .line 2016
    or-int/lit16 p5, p5, 0x800

    .line 2018
    :cond_6a
    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mIsFillRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2021
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isClientDisablingEnterExitEvent()Z

    move-result v3

    if-nez v3, :cond_ef

    .line 2022
    instance-of v3, p1, Landroid/widget/TextView;

    if-eqz v3, :cond_85

    move-object v3, p1

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->isAnyPasswordInputType()Z

    move-result v3

    if-eqz v3, :cond_85

    .line 2023
    or-int/lit8 p5, p5, 0x4

    .line 2027
    :cond_85
    invoke-static {}, Landroid/view/autofill/AutofillFeatureFlags;->isFillAndSaveDialogDisabledForCredentialManager()Z

    move-result v3

    if-eqz v3, :cond_9b

    iget-boolean v3, p0, Landroid/view/autofill/AutofillManager;->mScreenHasCredmanField:Z

    if-eqz v3, :cond_9b

    .line 2029
    or-int/lit16 p5, p5, 0x400

    .line 2030
    sget-boolean v3, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v3, :cond_9b

    .line 2031
    const-string/jumbo v3, "updating session with flag screen has credman view"

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2035
    :cond_9b
    invoke-direct {p0, p1}, Landroid/view/autofill/AutofillManager;->getImeStateFlag(Landroid/view/View;)I

    move-result v3

    or-int/2addr p5, v3

    .line 2037
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isActiveLocked()Z

    move-result v3

    if-nez v3, :cond_ae

    .line 2039
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/view/autofill/AutofillManager;->startSessionLocked(Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;I)V

    move-object v3, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    goto :goto_eb

    .line 2042
    :cond_ae
    iget-boolean v3, p0, Landroid/view/autofill/AutofillManager;->mForAugmentedAutofillOnly:Z

    if-eqz v3, :cond_d9

    and-int/lit8 v3, p5, 0x1

    if-eqz v3, :cond_d9

    .line 2043
    sget-boolean v3, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v3, :cond_d6

    .line 2044
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyViewEntered("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "): resetting mForAugmentedAutofillOnly on manual request"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2047
    :cond_d6
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/view/autofill/AutofillManager;->mForAugmentedAutofillOnly:Z

    .line 2050
    :cond_d9
    and-int/lit8 v3, p5, 0x40

    if-eqz v3, :cond_e1

    .line 2051
    or-int/lit16 p5, p5, 0x100

    move v8, p5

    goto :goto_e2

    .line 2050
    :cond_e1
    move v8, p5

    .line 2054
    .end local p5    # "flags":I
    .local v8, "flags":I
    :goto_e2
    const/4 v7, 0x2

    move-object v3, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .end local p2    # "id":Landroid/view/autofill/AutofillId;
    .end local p3    # "bounds":Landroid/graphics/Rect;
    .end local p4    # "value":Landroid/view/autofill/AutofillValue;
    .local v4, "id":Landroid/view/autofill/AutofillId;
    .local v5, "bounds":Landroid/graphics/Rect;
    .local v6, "value":Landroid/view/autofill/AutofillValue;
    invoke-direct/range {v3 .. v8}, Landroid/view/autofill/AutofillManager;->updateSessionLocked(Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;II)V

    move p5, v8

    .line 2056
    .end local v8    # "flags":I
    .restart local p5    # "flags":I
    :goto_eb
    invoke-direct {p0, v4}, Landroid/view/autofill/AutofillManager;->addEnteredIdLocked(Landroid/view/autofill/AutofillId;)V

    goto :goto_f3

    .line 2021
    .end local v4    # "id":Landroid/view/autofill/AutofillId;
    .end local v5    # "bounds":Landroid/graphics/Rect;
    .end local v6    # "value":Landroid/view/autofill/AutofillValue;
    .restart local p2    # "id":Landroid/view/autofill/AutofillId;
    .restart local p3    # "bounds":Landroid/graphics/Rect;
    .restart local p4    # "value":Landroid/view/autofill/AutofillValue;
    :cond_ef
    move-object v3, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 2058
    .end local p2    # "id":Landroid/view/autofill/AutofillId;
    .end local p3    # "bounds":Landroid/graphics/Rect;
    .end local p4    # "value":Landroid/view/autofill/AutofillValue;
    .restart local v4    # "id":Landroid/view/autofill/AutofillId;
    .restart local v5    # "bounds":Landroid/graphics/Rect;
    .restart local v6    # "value":Landroid/view/autofill/AutofillValue;
    :goto_f3
    return-object v1
.end method

.method private greylist-max-o notifyViewExitedLocked(Landroid/view/View;I)V
    .registers 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "virtualId"    # I

    .line 2116
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->tryAddServiceClientIfNeededLocked()Z

    move-result v0

    .line 2118
    .local v0, "clientAdded":Z
    if-eqz v0, :cond_26

    iget-boolean v1, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    if-nez v1, :cond_e

    iget-boolean v1, p0, Landroid/view/autofill/AutofillManager;->mEnabledForAugmentedAutofillOnly:Z

    if-eqz v1, :cond_26

    .line 2119
    :cond_e
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isActiveLocked()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 2121
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isClientDisablingEnterExitEvent()Z

    move-result v1

    if-nez v1, :cond_26

    .line 2122
    invoke-static {p1, p2}, Landroid/view/autofill/AutofillManager;->getAutofillId(Landroid/view/View;I)Landroid/view/autofill/AutofillId;

    move-result-object v3

    .line 2125
    .local v3, "id":Landroid/view/autofill/AutofillId;
    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Landroid/view/autofill/AutofillManager;->updateSessionLocked(Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;II)V

    .line 2128
    .end local v3    # "id":Landroid/view/autofill/AutofillId;
    :cond_26
    return-void
.end method

.method private blacklist notifyViewReadyInner(Landroid/view/autofill/AutofillId;[Ljava/lang/String;Z)V
    .registers 14
    .param p1, "id"    # Landroid/view/autofill/AutofillId;
    .param p2, "autofillHints"    # [Ljava/lang/String;
    .param p3, "isCredmanRequested"    # Z

    .line 1699
    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->isImproveFillDialogEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    if-nez p3, :cond_9

    .line 1702
    return-void

    .line 1704
    :cond_9
    sget-boolean v0, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_25

    .line 1705
    const-string v0, "AutofillManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyViewReadyInner:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1708
    :cond_25
    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 1709
    return-void

    .line 1711
    :cond_2c
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1712
    :try_start_2f
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mAllTrackedViews:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 1714
    monitor-exit v1

    return-void

    .line 1718
    :cond_39
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mAllTrackedViews:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1719
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mTrackedViews:Landroid/view/autofill/AutofillManager$TrackedViews;

    if-eqz v0, :cond_47

    .line 1724
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mTrackedViews:Landroid/view/autofill/AutofillManager$TrackedViews;

    invoke-virtual {v0, p1}, Landroid/view/autofill/AutofillManager$TrackedViews;->checkViewState(Landroid/view/autofill/AutofillId;)V

    .line 1726
    :cond_47
    monitor-exit v1
    :try_end_48
    .catchall {:try_start_2f .. :try_end_48} :catchall_e3

    .line 1729
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mIsFillRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 1730
    return-void

    .line 1735
    :cond_51
    invoke-static {}, Landroid/view/autofill/AutofillFeatureFlags;->isAutofillPccClassificationEnabled()Z

    move-result v0

    if-eqz v0, :cond_80

    .line 1736
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1742
    :try_start_5a
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isActiveLocked()Z

    move-result v0

    if-nez v0, :cond_7b

    .line 1743
    nop

    .line 1744
    invoke-direct {p0, p3}, Landroid/view/autofill/AutofillManager;->tryAddServiceClientIfNeededLocked(Z)Z

    move-result v0

    .line 1745
    .local v0, "clientAdded":Z
    if-eqz v0, :cond_70

    .line 1746
    sget-object v2, Landroid/view/autofill/AutofillId;->NO_AUTOFILL_ID:Landroid/view/autofill/AutofillId;

    const/16 v3, 0x200

    const/4 v4, 0x0

    invoke-direct {p0, v2, v4, v4, v3}, Landroid/view/autofill/AutofillManager;->startSessionLocked(Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;I)V

    goto :goto_7b

    .line 1749
    :cond_70
    sget-boolean v2, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_7b

    .line 1750
    const-string v2, "AutofillManager"

    const-string v3, "not starting session: no service client"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1754
    .end local v0    # "clientAdded":Z
    :cond_7b
    :goto_7b
    monitor-exit v1

    goto :goto_80

    :catchall_7d
    move-exception v0

    monitor-exit v1
    :try_end_7f
    .catchall {:try_start_5a .. :try_end_7f} :catchall_7d

    throw v0

    .line 1758
    :cond_80
    :goto_80
    const/4 v0, 0x0

    .line 1759
    .local v0, "shouldSendPreFillRequestForFillDialog":Z
    iget-boolean v1, p0, Landroid/view/autofill/AutofillManager;->mIsFillDialogEnabled:Z

    if-eqz v1, :cond_88

    .line 1760
    const/4 v0, 0x1

    move v1, v0

    goto :goto_ae

    .line 1761
    :cond_88
    if-eqz p2, :cond_ad

    .line 1763
    array-length v1, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_8d
    if-ge v3, v1, :cond_ab

    aget-object v4, p2, v3

    .line 1764
    .local v4, "autofillHint":Ljava/lang/String;
    iget-object v5, p0, Landroid/view/autofill/AutofillManager;->mFillDialogEnabledHints:[Ljava/lang/String;

    array-length v6, v5

    move v7, v2

    :goto_95
    if-ge v7, v6, :cond_a4

    aget-object v8, v5, v7

    .line 1765
    .local v8, "filldialogEnabledHint":Ljava/lang/String;
    invoke-virtual {v8, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a1

    .line 1766
    const/4 v0, 0x1

    .line 1767
    goto :goto_a4

    .line 1764
    .end local v8    # "filldialogEnabledHint":Ljava/lang/String;
    :cond_a1
    add-int/lit8 v7, v7, 0x1

    goto :goto_95

    .line 1770
    :cond_a4
    :goto_a4
    if-eqz v0, :cond_a8

    move v1, v0

    goto :goto_ae

    .line 1763
    .end local v4    # "autofillHint":Ljava/lang/String;
    :cond_a8
    add-int/lit8 v3, v3, 0x1

    goto :goto_8d

    :cond_ab
    move v1, v0

    goto :goto_ae

    .line 1761
    :cond_ad
    move v1, v0

    .line 1773
    .end local v0    # "shouldSendPreFillRequestForFillDialog":Z
    .local v1, "shouldSendPreFillRequestForFillDialog":Z
    :goto_ae
    if-eqz v1, :cond_e2

    .line 1774
    sget-boolean v0, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_bb

    .line 1775
    const-string v0, "AutofillManager"

    const-string v2, "Triggering pre-emptive request for fill dialog."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1777
    :cond_bb
    const/16 v0, 0x40

    .line 1778
    .local v0, "flags":I
    or-int/lit8 v0, v0, 0x10

    .line 1779
    if-eqz p3, :cond_d0

    .line 1780
    sget-boolean v2, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_cc

    .line 1781
    const-string v2, "AutofillManager"

    const-string v3, "Pre fill request is triggered for credMan"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1783
    :cond_cc
    or-int/lit16 v0, v0, 0x800

    move v7, v0

    goto :goto_d1

    .line 1779
    :cond_d0
    move v7, v0

    .line 1785
    .end local v0    # "flags":I
    .local v7, "flags":I
    :goto_d1
    iget-object v8, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1791
    :try_start_d4
    sget-object v4, Landroid/view/autofill/AutofillId;->NO_AUTOFILL_ID:Landroid/view/autofill/AutofillId;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Landroid/view/autofill/AutofillManager;->notifyViewEnteredLocked(Landroid/view/View;Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;I)Landroid/view/autofill/AutofillManager$AutofillCallback;

    .line 1793
    monitor-exit v8

    goto :goto_e2

    :catchall_df
    move-exception v0

    monitor-exit v8
    :try_end_e1
    .catchall {:try_start_d4 .. :try_end_e1} :catchall_df

    throw v0

    .line 1795
    .end local v7    # "flags":I
    :cond_e2
    :goto_e2
    return-void

    .line 1726
    .end local v1    # "shouldSendPreFillRequestForFillDialog":Z
    :catchall_e3
    move-exception v0

    :try_start_e4
    monitor-exit v1
    :try_end_e5
    .catchall {:try_start_e4 .. :try_end_e5} :catchall_e3

    throw v0
.end method

.method private greylist-max-o notifyViewVisibilityChangedInternal(Landroid/view/View;IZZ)V
    .registers 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "virtualId"    # I
    .param p3, "isVisible"    # Z
    .param p4, "virtual"    # Z

    .line 1922
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1923
    :try_start_3
    iget-boolean v1, p0, Landroid/view/autofill/AutofillManager;->mForAugmentedAutofillOnly:Z

    if-eqz v1, :cond_14

    .line 1924
    sget-boolean v1, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_12

    .line 1925
    const-string v1, "AutofillManager"

    const-string v2, "notifyViewVisibilityChanged(): ignoring on augmented only mode"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1927
    :cond_12
    monitor-exit v0

    return-void

    .line 1929
    :cond_14
    iget-boolean v1, p0, Landroid/view/autofill/AutofillManager;->mRelayoutFixDeprecated:Z

    if-eqz v1, :cond_2a

    iget v1, p0, Landroid/view/autofill/AutofillManager;->mState:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_2a

    .line 1930
    sget-boolean v1, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_28

    .line 1931
    const-string v1, "AutofillManager"

    const-string v2, "notifyViewVisibilityChanged(): ignoring in auth pending mode"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1933
    :cond_28
    monitor-exit v0

    return-void

    .line 1935
    :cond_2a
    iget-boolean v1, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    if-eqz v1, :cond_c7

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isActiveLocked()Z

    move-result v1

    if-eqz v1, :cond_c7

    .line 1936
    if-eqz p4, :cond_3b

    invoke-static {p1, p2}, Landroid/view/autofill/AutofillManager;->getAutofillId(Landroid/view/View;I)Landroid/view/autofill/AutofillId;

    move-result-object v1

    goto :goto_3f

    .line 1937
    :cond_3b
    invoke-virtual {p1}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v1

    :goto_3f
    nop

    .line 1938
    .local v1, "id":Landroid/view/autofill/AutofillId;
    sget-boolean v2, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_67

    const-string v2, "AutofillManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "visibility changed for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1939
    :cond_67
    if-nez p3, :cond_9a

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mFillableIds:Landroid/util/ArraySet;

    if-eqz v2, :cond_9a

    .line 1940
    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mFillableIds:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9a

    .line 1941
    sget-boolean v2, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_97

    const-string v2, "AutofillManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Hidding UI when view "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " became invisible"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1942
    :cond_97
    invoke-direct {p0, v1, p1}, Landroid/view/autofill/AutofillManager;->requestHideFillUi(Landroid/view/autofill/AutofillId;Landroid/view/View;)V

    .line 1945
    :cond_9a
    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mTrackedViews:Landroid/view/autofill/AutofillManager$TrackedViews;

    if-eqz v2, :cond_a4

    .line 1946
    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mTrackedViews:Landroid/view/autofill/AutofillManager$TrackedViews;

    invoke-virtual {v2, v1, p3}, Landroid/view/autofill/AutofillManager$TrackedViews;->notifyViewVisibilityChangedLocked(Landroid/view/autofill/AutofillId;Z)V

    goto :goto_cf

    .line 1947
    :cond_a4
    sget-boolean v2, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_cf

    .line 1948
    const-string v2, "AutofillManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring visibility change on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": no tracked views"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_cf

    .line 1950
    .end local v1    # "id":Landroid/view/autofill/AutofillId;
    :cond_c7
    if-nez p4, :cond_cf

    if-eqz p3, :cond_cf

    .line 1951
    invoke-direct {p0, p1}, Landroid/view/autofill/AutofillManager;->startAutofillIfNeededLocked(Landroid/view/View;)Z

    goto :goto_d0

    .line 1950
    :cond_cf
    :goto_cf
    nop

    .line 1953
    :goto_d0
    monitor-exit v0

    .line 1954
    return-void

    .line 1953
    :catchall_d2
    move-exception v1

    monitor-exit v0
    :try_end_d4
    .catchall {:try_start_3 .. :try_end_d4} :catchall_d2

    throw v1
.end method

.method private blacklist onGetCredentialException(ILandroid/view/autofill/AutofillId;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .param p1, "sessionId"    # I
    .param p2, "id"    # Landroid/view/autofill/AutofillId;
    .param p3, "errorType"    # Ljava/lang/String;
    .param p4, "errorMsg"    # Ljava/lang/String;

    .line 3228
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3229
    :try_start_3
    iget v1, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    if-eq p1, v1, :cond_10

    .line 3230
    const-string v1, "AutofillManager"

    const-string v2, "onGetCredentialException afm sessionIds don\'t match"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3231
    monitor-exit v0

    return-void

    .line 3234
    :cond_10
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v1

    .line 3235
    .local v1, "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    if-nez v1, :cond_1f

    .line 3236
    const-string v2, "AutofillManager"

    const-string v3, "onGetCredentialException afm client id null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3237
    monitor-exit v0

    return-void

    .line 3239
    :cond_1f
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3240
    .local v2, "failedIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    new-instance v3, Ljava/util/ArrayList;

    .line 3241
    invoke-static {p2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v3}, Landroid/view/autofill/Helper;->toArray(Ljava/util/Collection;)[Landroid/view/autofill/AutofillId;

    move-result-object v3

    .line 3240
    invoke-interface {v1, v3}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientFindViewsByAutofillIdTraversal([Landroid/view/autofill/AutofillId;)[Landroid/view/View;

    move-result-object v3

    .line 3242
    .local v3, "views":[Landroid/view/View;
    if-eqz v3, :cond_7f

    array-length v4, v3

    if-nez v4, :cond_3b

    goto :goto_7f

    .line 3247
    :cond_3b
    const/4 v4, 0x0

    aget-object v4, v3, v4

    .line 3248
    .local v4, "view":Landroid/view/View;
    if-nez v4, :cond_62

    .line 3249
    const-string v5, "AutofillManager"

    const-string v6, "onGetCredentialException View is null"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3254
    const-string v5, "AutofillManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onGetCredentialException(): no View with id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3255
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3257
    :cond_62
    invoke-virtual {p2}, Landroid/view/autofill/AutofillId;->isVirtualInt()Z

    move-result v5

    if-eqz v5, :cond_70

    .line 3258
    const-string v5, "AutofillManager"

    const-string v6, "onGetCredentialException afm client id is virtual"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7a

    .line 3261
    :cond_70
    const-string v5, "AutofillManager"

    const-string v6, "onGetCredentialException afm client id is NOT virtual"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3262
    invoke-virtual {v4, p3, p4}, Landroid/view/View;->onGetCredentialException(Ljava/lang/String;Ljava/lang/String;)V

    .line 3264
    :goto_7a
    invoke-direct {p0, v2}, Landroid/view/autofill/AutofillManager;->handleFailedIdsLocked(Ljava/util/ArrayList;)V

    .line 3265
    .end local v1    # "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    .end local v2    # "failedIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .end local v3    # "views":[Landroid/view/View;
    .end local v4    # "view":Landroid/view/View;
    monitor-exit v0

    .line 3266
    return-void

    .line 3243
    .restart local v1    # "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    .restart local v2    # "failedIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .restart local v3    # "views":[Landroid/view/View;
    :cond_7f
    :goto_7f
    const-string v4, "AutofillManager"

    const-string v5, "onGetCredentialException afm client view not found"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3244
    monitor-exit v0

    return-void

    .line 3265
    .end local v1    # "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    .end local v2    # "failedIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .end local v3    # "views":[Landroid/view/View;
    :catchall_88
    move-exception v1

    monitor-exit v0
    :try_end_8a
    .catchall {:try_start_3 .. :try_end_8a} :catchall_88

    throw v1
.end method

.method private blacklist onGetCredentialResponse(ILandroid/view/autofill/AutofillId;Landroid/credentials/GetCredentialResponse;)V
    .registers 12
    .param p1, "sessionId"    # I
    .param p2, "id"    # Landroid/view/autofill/AutofillId;
    .param p3, "response"    # Landroid/credentials/GetCredentialResponse;

    .line 3270
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3271
    :try_start_3
    iget v1, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    if-eq p1, v1, :cond_10

    .line 3272
    const-string v1, "AutofillManager"

    const-string v2, "onGetCredentialResponse afm sessionIds don\'t match"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3273
    monitor-exit v0

    return-void

    .line 3276
    :cond_10
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v1

    .line 3277
    .local v1, "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    if-nez v1, :cond_1f

    .line 3278
    const-string v2, "AutofillManager"

    const-string v3, "onGetCredentialResponse afm client id null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3279
    monitor-exit v0

    return-void

    .line 3281
    :cond_1f
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3282
    .local v2, "failedIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    new-instance v3, Ljava/util/ArrayList;

    .line 3283
    invoke-static {p2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v3}, Landroid/view/autofill/Helper;->toArray(Ljava/util/Collection;)[Landroid/view/autofill/AutofillId;

    move-result-object v3

    .line 3282
    invoke-interface {v1, v3}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientFindViewsByAutofillIdTraversal([Landroid/view/autofill/AutofillId;)[Landroid/view/View;

    move-result-object v3

    .line 3284
    .local v3, "views":[Landroid/view/View;
    if-eqz v3, :cond_7f

    array-length v4, v3

    if-nez v4, :cond_3b

    goto :goto_7f

    .line 3289
    :cond_3b
    const/4 v4, 0x0

    aget-object v4, v3, v4

    .line 3290
    .local v4, "view":Landroid/view/View;
    if-nez v4, :cond_62

    .line 3291
    const-string v5, "AutofillManager"

    const-string v6, "onGetCredentialResponse View is null"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3296
    const-string v5, "AutofillManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onGetCredentialResponse(): no View with id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3297
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3299
    :cond_62
    invoke-virtual {p2}, Landroid/view/autofill/AutofillId;->isVirtualInt()Z

    move-result v5

    if-eqz v5, :cond_70

    .line 3300
    const-string v5, "AutofillManager"

    const-string v6, "onGetCredentialResponse afm client id is virtual"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7a

    .line 3303
    :cond_70
    const-string v5, "AutofillManager"

    const-string v6, "onGetCredentialResponse afm client id is NOT virtual"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3304
    invoke-virtual {v4, p3}, Landroid/view/View;->onGetCredentialResponse(Landroid/credentials/GetCredentialResponse;)V

    .line 3306
    :goto_7a
    invoke-direct {p0, v2}, Landroid/view/autofill/AutofillManager;->handleFailedIdsLocked(Ljava/util/ArrayList;)V

    .line 3307
    .end local v1    # "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    .end local v2    # "failedIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .end local v3    # "views":[Landroid/view/View;
    .end local v4    # "view":Landroid/view/View;
    monitor-exit v0

    .line 3308
    return-void

    .line 3285
    .restart local v1    # "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    .restart local v2    # "failedIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .restart local v3    # "views":[Landroid/view/View;
    :cond_7f
    :goto_7f
    const-string v4, "AutofillManager"

    const-string v5, "onGetCredentialResponse afm client view not found"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3286
    monitor-exit v0

    return-void

    .line 3307
    .end local v1    # "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    .end local v2    # "failedIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .end local v3    # "views":[Landroid/view/View;
    :catchall_88
    move-exception v1

    monitor-exit v0
    :try_end_8a
    .catchall {:try_start_3 .. :try_end_8a} :catchall_88

    throw v1
.end method

.method private blacklist reportAutofillContentFailure(Landroid/view/autofill/AutofillId;)V
    .registers 7
    .param p1, "id"    # Landroid/view/autofill/AutofillId;

    .line 3517
    :try_start_0
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget v1, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    .line 3518
    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    .line 3517
    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v4, v3}, Landroid/view/autofill/IAutoFillManager;->setAutofillFailure(ILjava/util/List;ZI)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_14

    .line 3521
    nop

    .line 3522
    return-void

    .line 3519
    :catch_14
    move-exception v0

    .line 3520
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private greylist-max-o requestHideFillUi(Landroid/view/autofill/AutofillId;Landroid/view/View;)V
    .registers 7
    .param p1, "id"    # Landroid/view/autofill/AutofillId;
    .param p2, "anchor"    # Landroid/view/View;

    .line 3782
    const/4 v0, 0x0

    .line 3783
    .local v0, "callback":Landroid/view/autofill/AutofillManager$AutofillCallback;
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3788
    :try_start_4
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v2

    .line 3789
    .local v2, "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    if-eqz v2, :cond_16

    .line 3790
    invoke-interface {v2}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientRequestHideFillUi()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 3791
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/view/autofill/AutofillManager;->mIdShownFillUi:Landroid/view/autofill/AutofillId;

    .line 3792
    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;

    move-object v0, v3

    .line 3795
    .end local v2    # "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    :cond_16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_2c

    .line 3797
    if-eqz v0, :cond_2b

    .line 3798
    invoke-virtual {p1}, Landroid/view/autofill/AutofillId;->isVirtualInt()Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_28

    .line 3799
    invoke-virtual {p1}, Landroid/view/autofill/AutofillId;->getVirtualChildIntId()I

    move-result v1

    invoke-virtual {v0, p2, v1, v2}, Landroid/view/autofill/AutofillManager$AutofillCallback;->onAutofillEvent(Landroid/view/View;II)V

    goto :goto_2b

    .line 3802
    :cond_28
    invoke-virtual {v0, p2, v2}, Landroid/view/autofill/AutofillManager$AutofillCallback;->onAutofillEvent(Landroid/view/View;I)V

    .line 3805
    :cond_2b
    :goto_2b
    return-void

    .line 3795
    :catchall_2c
    move-exception v2

    :try_start_2d
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw v2
.end method

.method private greylist-max-o requestHideFillUi(Landroid/view/autofill/AutofillId;Z)V
    .registers 6
    .param p1, "id"    # Landroid/view/autofill/AutofillId;
    .param p2, "force"    # Z

    .line 3764
    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_8

    :cond_4
    invoke-direct {p0, p1}, Landroid/view/autofill/AutofillManager;->findView(Landroid/view/autofill/AutofillId;)Landroid/view/View;

    move-result-object v0

    .line 3765
    .local v0, "anchor":Landroid/view/View;
    :goto_8
    sget-boolean v1, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_2f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestHideFillUi("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): anchor = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AutofillManager"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3766
    :cond_2f
    if-nez v0, :cond_3d

    .line 3767
    if-eqz p2, :cond_3c

    .line 3770
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v1

    .line 3771
    .local v1, "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    if-eqz v1, :cond_3c

    .line 3772
    invoke-interface {v1}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientRequestHideFillUi()Z

    .line 3775
    .end local v1    # "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    :cond_3c
    return-void

    .line 3777
    :cond_3d
    invoke-direct {p0, p1, v0}, Landroid/view/autofill/AutofillManager;->requestHideFillUi(Landroid/view/autofill/AutofillId;Landroid/view/View;)V

    .line 3778
    return-void
.end method

.method private greylist-max-o requestShowFillUi(ILandroid/view/autofill/AutofillId;IILandroid/graphics/Rect;Landroid/view/autofill/IAutofillWindowPresenter;)V
    .registers 15
    .param p1, "sessionId"    # I
    .param p2, "id"    # Landroid/view/autofill/AutofillId;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "anchorBounds"    # Landroid/graphics/Rect;
    .param p6, "presenter"    # Landroid/view/autofill/IAutofillWindowPresenter;

    .line 3067
    invoke-direct {p0, p2}, Landroid/view/autofill/AutofillManager;->findView(Landroid/view/autofill/AutofillId;)Landroid/view/View;

    move-result-object v1

    .line 3068
    .local v1, "anchor":Landroid/view/View;
    if-nez v1, :cond_7

    .line 3069
    return-void

    .line 3072
    :cond_7
    const/4 v6, 0x0

    .line 3073
    .local v6, "callback":Landroid/view/autofill/AutofillManager$AutofillCallback;
    iget-object v7, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 3074
    :try_start_b
    iget v0, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    if-ne v0, p1, :cond_2a

    .line 3075
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v0
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_44

    .line 3077
    .local v0, "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    if-eqz v0, :cond_25

    .line 3078
    move v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    .end local p3    # "width":I
    .end local p4    # "height":I
    .end local p5    # "anchorBounds":Landroid/graphics/Rect;
    .end local p6    # "presenter":Landroid/view/autofill/IAutofillWindowPresenter;
    .local v2, "width":I
    .local v3, "height":I
    .local v4, "anchorBounds":Landroid/graphics/Rect;
    .local v5, "presenter":Landroid/view/autofill/IAutofillWindowPresenter;
    :try_start_19
    invoke-interface/range {v0 .. v5}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientRequestShowFillUi(Landroid/view/View;IILandroid/graphics/Rect;Landroid/view/autofill/IAutofillWindowPresenter;)Z

    move-result p3

    if-eqz p3, :cond_2e

    .line 3080
    iget-object p3, p0, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;

    move-object v6, p3

    .line 3081
    iput-object p2, p0, Landroid/view/autofill/AutofillManager;->mIdShownFillUi:Landroid/view/autofill/AutofillId;

    goto :goto_2e

    .line 3077
    .end local v2    # "width":I
    .end local v3    # "height":I
    .end local v4    # "anchorBounds":Landroid/graphics/Rect;
    .end local v5    # "presenter":Landroid/view/autofill/IAutofillWindowPresenter;
    .restart local p3    # "width":I
    .restart local p4    # "height":I
    .restart local p5    # "anchorBounds":Landroid/graphics/Rect;
    .restart local p6    # "presenter":Landroid/view/autofill/IAutofillWindowPresenter;
    :cond_25
    move v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    .end local p3    # "width":I
    .end local p4    # "height":I
    .end local p5    # "anchorBounds":Landroid/graphics/Rect;
    .end local p6    # "presenter":Landroid/view/autofill/IAutofillWindowPresenter;
    .restart local v2    # "width":I
    .restart local v3    # "height":I
    .restart local v4    # "anchorBounds":Landroid/graphics/Rect;
    .restart local v5    # "presenter":Landroid/view/autofill/IAutofillWindowPresenter;
    goto :goto_2e

    .line 3074
    .end local v0    # "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    .end local v2    # "width":I
    .end local v3    # "height":I
    .end local v4    # "anchorBounds":Landroid/graphics/Rect;
    .end local v5    # "presenter":Landroid/view/autofill/IAutofillWindowPresenter;
    .restart local p3    # "width":I
    .restart local p4    # "height":I
    .restart local p5    # "anchorBounds":Landroid/graphics/Rect;
    .restart local p6    # "presenter":Landroid/view/autofill/IAutofillWindowPresenter;
    :cond_2a
    move v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 3085
    .end local p3    # "width":I
    .end local p4    # "height":I
    .end local p5    # "anchorBounds":Landroid/graphics/Rect;
    .end local p6    # "presenter":Landroid/view/autofill/IAutofillWindowPresenter;
    .restart local v2    # "width":I
    .restart local v3    # "height":I
    .restart local v4    # "anchorBounds":Landroid/graphics/Rect;
    .restart local v5    # "presenter":Landroid/view/autofill/IAutofillWindowPresenter;
    :cond_2e
    :goto_2e
    monitor-exit v7
    :try_end_2f
    .catchall {:try_start_19 .. :try_end_2f} :catchall_4c

    .line 3087
    if-eqz v6, :cond_43

    .line 3088
    invoke-virtual {p2}, Landroid/view/autofill/AutofillId;->isVirtualInt()Z

    move-result p3

    const/4 p4, 0x1

    if-eqz p3, :cond_40

    .line 3089
    invoke-virtual {p2}, Landroid/view/autofill/AutofillId;->getVirtualChildIntId()I

    move-result p3

    invoke-virtual {v6, v1, p3, p4}, Landroid/view/autofill/AutofillManager$AutofillCallback;->onAutofillEvent(Landroid/view/View;II)V

    goto :goto_43

    .line 3092
    :cond_40
    invoke-virtual {v6, v1, p4}, Landroid/view/autofill/AutofillManager$AutofillCallback;->onAutofillEvent(Landroid/view/View;I)V

    .line 3095
    :cond_43
    :goto_43
    return-void

    .line 3085
    .end local v2    # "width":I
    .end local v3    # "height":I
    .end local v4    # "anchorBounds":Landroid/graphics/Rect;
    .end local v5    # "presenter":Landroid/view/autofill/IAutofillWindowPresenter;
    .restart local p3    # "width":I
    .restart local p4    # "height":I
    .restart local p5    # "anchorBounds":Landroid/graphics/Rect;
    .restart local p6    # "presenter":Landroid/view/autofill/IAutofillWindowPresenter;
    :catchall_44
    move-exception v0

    move v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object p3, v0

    .end local p3    # "width":I
    .end local p4    # "height":I
    .end local p5    # "anchorBounds":Landroid/graphics/Rect;
    .end local p6    # "presenter":Landroid/view/autofill/IAutofillWindowPresenter;
    .restart local v2    # "width":I
    .restart local v3    # "height":I
    .restart local v4    # "anchorBounds":Landroid/graphics/Rect;
    .restart local v5    # "presenter":Landroid/view/autofill/IAutofillWindowPresenter;
    :goto_4a
    :try_start_4a
    monitor-exit v7
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_4c

    throw p3

    :catchall_4c
    move-exception v0

    move-object p3, v0

    goto :goto_4a
.end method

.method private blacklist requestShowSoftInput(Landroid/view/autofill/AutofillId;)V
    .registers 8
    .param p1, "id"    # Landroid/view/autofill/AutofillId;

    .line 3721
    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    const-string v1, "AutofillManager"

    if-eqz v0, :cond_23

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestShowSoftInput("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3722
    :cond_23
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v0

    .line 3723
    .local v0, "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    if-nez v0, :cond_2a

    .line 3724
    return-void

    .line 3726
    :cond_2a
    invoke-interface {v0, p1}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientFindViewByAutofillIdTraversal(Landroid/view/autofill/AutofillId;)Landroid/view/View;

    move-result-object v2

    .line 3727
    .local v2, "view":Landroid/view/View;
    if-nez v2, :cond_3a

    .line 3728
    sget-boolean v3, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v3, :cond_39

    const-string v3, "View is not found"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3729
    :cond_39
    return-void

    .line 3731
    :cond_3a
    invoke-virtual {v2}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v3

    .line 3732
    .local v3, "handler":Landroid/os/Handler;
    if-nez v3, :cond_4a

    .line 3733
    sget-boolean v4, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v4, :cond_49

    const-string v4, "Ignoring requestShowSoftInput due to no handler in view"

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3734
    :cond_49
    return-void

    .line 3736
    :cond_4a
    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v5

    if-eq v4, v5, :cond_66

    .line 3739
    sget-boolean v4, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v4, :cond_5d

    const-string v4, "Scheduling showSoftInput() on the view UI thread"

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3740
    :cond_5d
    new-instance v1, Landroid/view/autofill/AutofillManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, v2}, Landroid/view/autofill/AutofillManager$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;)V

    invoke-virtual {v3, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_69

    .line 3742
    :cond_66
    invoke-static {v2}, Landroid/view/autofill/AutofillManager;->requestShowSoftInputInViewThread(Landroid/view/View;)V

    .line 3744
    :goto_69
    return-void
.end method

.method private static blacklist requestShowSoftInputInViewThread(Landroid/view/View;)V
    .registers 6
    .param p0, "view"    # Landroid/view/View;

    .line 3748
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v0

    const-string v1, "AutofillManager"

    if-nez v0, :cond_e

    .line 3749
    const-string v0, "Ignoring requestShowSoftInput() due to non-focused view"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3750
    return-void

    .line 3752
    :cond_e
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 3754
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v2

    .line 3755
    .local v2, "ret":Z
    sget-boolean v3, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v3, :cond_39

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " InputMethodManager.showSoftInput returns "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3756
    :cond_39
    return-void
.end method

.method private greylist-max-o resetSessionLocked(Z)V
    .registers 5
    .param p1, "resetEnteredIds"    # Z

    .line 2822
    const v0, 0x7fffffff

    iput v0, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    .line 2823
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/autofill/AutofillManager;->mState:I

    .line 2824
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/autofill/AutofillManager;->mTrackedViews:Landroid/view/autofill/AutofillManager$TrackedViews;

    .line 2825
    iput-object v1, p0, Landroid/view/autofill/AutofillManager;->mFillableIds:Landroid/util/ArraySet;

    .line 2826
    iput-object v1, p0, Landroid/view/autofill/AutofillManager;->mSaveTriggerId:Landroid/view/autofill/AutofillId;

    .line 2827
    iput-object v1, p0, Landroid/view/autofill/AutofillManager;->mIdShownFillUi:Landroid/view/autofill/AutofillId;

    .line 2828
    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mIsFillRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2829
    iput-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mShowAutofillDialogCalled:Z

    .line 2830
    iput-object v1, p0, Landroid/view/autofill/AutofillManager;->mFillDialogTriggerIds:Ljava/util/List;

    .line 2831
    iput-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mScreenHasCredmanField:Z

    .line 2832
    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mAllTrackedViews:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    .line 2833
    if-eqz p1, :cond_25

    .line 2834
    iput-object v1, p0, Landroid/view/autofill/AutofillManager;->mEnteredIds:Landroid/util/ArraySet;

    .line 2836
    :cond_25
    iput-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mFillReAttemptNeeded:Z

    .line 2837
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mFingerprintToViewMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2838
    invoke-static {}, Landroid/view/autofill/AutofillStateFingerprint;->createInstance()Landroid/view/autofill/AutofillStateFingerprint;

    move-result-object v0

    iput-object v0, p0, Landroid/view/autofill/AutofillManager;->mAutofillStateFingerprint:Landroid/view/autofill/AutofillStateFingerprint;

    .line 2839
    return-void
.end method

.method private blacklist setAutofilledIfValuesIs(Landroid/view/View;Landroid/view/autofill/AutofillValue;Z)V
    .registers 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "targetValue"    # Landroid/view/autofill/AutofillValue;
    .param p3, "hideHighlight"    # Z

    .line 3189
    invoke-virtual {p1}, Landroid/view/View;->getAutofillValue()Landroid/view/autofill/AutofillValue;

    move-result-object v0

    .line 3190
    .local v0, "currentValue":Landroid/view/autofill/AutofillValue;
    invoke-static {v0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7b

    .line 3191
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3192
    :try_start_d
    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    const/4 v3, 0x1

    if-nez v2, :cond_19

    .line 3193
    new-instance v2, Landroid/view/autofill/ParcelableMap;

    invoke-direct {v2, v3}, Landroid/view/autofill/ParcelableMap;-><init>(I)V

    iput-object v2, p0, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    .line 3195
    :cond_19
    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    invoke-virtual {p1}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v4

    invoke-virtual {v2, v4, p2}, Landroid/view/autofill/ParcelableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3196
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_d .. :try_end_23} :catchall_78

    .line 3197
    invoke-virtual {p1, v3, p3}, Landroid/view/View;->setAutofilled(ZZ)V

    .line 3198
    sget-boolean v1, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_4c

    .line 3199
    const-string v1, "AutofillManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " autofilled synchronously."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3202
    :cond_4c
    :try_start_4c
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget v2, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    invoke-virtual {p1}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v3

    iget-object v4, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-interface {v1, v2, v3, v4}, Landroid/view/autofill/IAutoFillManager;->setViewAutofilled(ILandroid/view/autofill/AutofillId;I)V
    :try_end_5d
    .catch Landroid/os/RemoteException; {:try_start_4c .. :try_end_5d} :catch_5e

    goto :goto_77

    .line 3203
    :catch_5e
    move-exception v1

    .line 3207
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "AutofillManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to log due to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3208
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_77
    goto :goto_c5

    .line 3196
    :catchall_78
    move-exception v2

    :try_start_79
    monitor-exit v1
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_78

    throw v2

    .line 3210
    :cond_7b
    sget-boolean v1, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_c5

    .line 3211
    const-string v1, "AutofillManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3212
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : didn\'t fill in synchronously. It may fill asynchronously."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3211
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3216
    :cond_c5
    :goto_c5
    return-void
.end method

.method private blacklist setFillDialogTriggerIds(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillId;",
            ">;)V"
        }
    .end annotation

    .line 4072
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    iput-object p1, p0, Landroid/view/autofill/AutofillManager;->mFillDialogTriggerIds:Ljava/util/List;

    .line 4073
    return-void
.end method

.method private greylist-max-o setNotifyOnClickLocked(Landroid/view/autofill/AutofillId;Z)V
    .registers 6
    .param p1, "id"    # Landroid/view/autofill/AutofillId;
    .param p2, "notify"    # Z

    .line 3632
    invoke-direct {p0, p1}, Landroid/view/autofill/AutofillManager;->findView(Landroid/view/autofill/AutofillId;)Landroid/view/View;

    move-result-object v0

    .line 3633
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_20

    .line 3634
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setNotifyOnClick(): invalid id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AutofillManager"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3635
    return-void

    .line 3637
    :cond_20
    invoke-virtual {v0, p2}, Landroid/view/View;->setNotifyAutofillManagerOnClick(Z)V

    .line 3638
    return-void
.end method

.method private greylist-max-o setSaveUiState(IZ)V
    .registers 8
    .param p1, "sessionId"    # I
    .param p2, "shown"    # Z

    .line 3641
    sget-boolean v0, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_27

    const-string v0, "AutofillManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSaveUiState("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3642
    :cond_27
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3643
    :try_start_2a
    iget v1, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_69

    .line 3647
    const-string v1, "AutofillManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setSaveUiState("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") called on existing session "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; cancelling it"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3649
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->cancelSessionLocked()V

    .line 3651
    :cond_69
    if-eqz p2, :cond_71

    .line 3652
    iput p1, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    .line 3653
    const/4 v1, 0x3

    iput v1, p0, Landroid/view/autofill/AutofillManager;->mState:I

    goto :goto_76

    .line 3655
    :cond_71
    iput v2, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    .line 3656
    const/4 v1, 0x0

    iput v1, p0, Landroid/view/autofill/AutofillManager;->mState:I

    .line 3658
    :goto_76
    monitor-exit v0

    .line 3659
    return-void

    .line 3658
    :catchall_78
    move-exception v1

    monitor-exit v0
    :try_end_7a
    .catchall {:try_start_2a .. :try_end_7a} :catchall_78

    throw v1
.end method

.method private blacklist setSessionFinished(ILjava/util/List;)V
    .registers 7
    .param p1, "newState"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillId;",
            ">;)V"
        }
    .end annotation

    .line 3674
    .local p2, "autofillableIds":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    if-eqz p2, :cond_15

    .line 3675
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_15

    .line 3676
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/autofill/AutofillId;

    invoke-virtual {v1}, Landroid/view/autofill/AutofillId;->resetSessionId()V

    .line 3675
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 3679
    .end local v0    # "i":I
    :cond_15
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3680
    :try_start_18
    sget-boolean v1, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_51

    .line 3681
    const-string v1, "AutofillManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setSessionFinished(): from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getStateAsStringLocked()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3682
    invoke-static {p1}, Landroid/view/autofill/AutofillManager;->getStateAsString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; autofillableIds="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3681
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3684
    :cond_51
    if-eqz p2, :cond_5a

    .line 3685
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, p2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Landroid/view/autofill/AutofillManager;->mEnteredIds:Landroid/util/ArraySet;

    .line 3687
    :cond_5a
    const/4 v1, 0x5

    const/4 v2, 0x0

    if-eq p1, v1, :cond_68

    const/4 v1, 0x6

    if-ne p1, v1, :cond_62

    goto :goto_68

    .line 3691
    :cond_62
    invoke-direct {p0, v2}, Landroid/view/autofill/AutofillManager;->resetSessionLocked(Z)V

    .line 3692
    iput p1, p0, Landroid/view/autofill/AutofillManager;->mState:I

    goto :goto_6e

    .line 3688
    :cond_68
    :goto_68
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/view/autofill/AutofillManager;->resetSessionLocked(Z)V

    .line 3689
    iput v2, p0, Landroid/view/autofill/AutofillManager;->mState:I

    .line 3694
    :goto_6e
    monitor-exit v0

    .line 3695
    return-void

    .line 3694
    :catchall_70
    move-exception v1

    monitor-exit v0
    :try_end_72
    .catchall {:try_start_18 .. :try_end_72} :catchall_70

    throw v1
.end method

.method private greylist-max-o setState(I)V
    .registers 8
    .param p1, "flags"    # I

    .line 3151
    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_36

    .line 3152
    const-string v0, "AutofillManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setState("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Landroid/view/autofill/AutofillManager;

    const-string v3, "SET_STATE_FLAG_"

    int-to-long v4, p1

    invoke-static {v2, v3, v4, v5}, Landroid/util/DebugUtils;->flagsToString(Ljava/lang/Class;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3155
    :cond_36
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3156
    and-int/lit8 v1, p1, 0x20

    const/4 v2, 0x1

    if-eqz v1, :cond_44

    .line 3157
    :try_start_3e
    iput-boolean v2, p0, Landroid/view/autofill/AutofillManager;->mForAugmentedAutofillOnly:Z

    .line 3159
    monitor-exit v0

    return-void

    .line 3176
    :catchall_42
    move-exception v1

    goto :goto_83

    .line 3161
    :cond_44
    and-int/lit8 v1, p1, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_4b

    move v1, v2

    goto :goto_4c

    :cond_4b
    move v1, v3

    :goto_4c
    iput-boolean v1, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    .line 3162
    iget-boolean v1, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    if-eqz v1, :cond_56

    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_59

    .line 3164
    :cond_56
    invoke-direct {p0, v2}, Landroid/view/autofill/AutofillManager;->resetSessionLocked(Z)V

    .line 3166
    :cond_59
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_70

    .line 3168
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/autofill/AutofillManager;->mServiceClient:Landroid/view/autofill/IAutoFillManagerClient;

    .line 3169
    iput-object v1, p0, Landroid/view/autofill/AutofillManager;->mAugmentedAutofillServiceClient:Landroid/view/autofill/IAugmentedAutofillManagerClient;

    .line 3170
    iget-object v4, p0, Landroid/view/autofill/AutofillManager;->mServiceClientCleaner:Lsun/misc/Cleaner;

    if-eqz v4, :cond_6d

    .line 3171
    iget-object v4, p0, Landroid/view/autofill/AutofillManager;->mServiceClientCleaner:Lsun/misc/Cleaner;

    invoke-virtual {v4}, Lsun/misc/Cleaner;->clean()V

    .line 3172
    iput-object v1, p0, Landroid/view/autofill/AutofillManager;->mServiceClientCleaner:Lsun/misc/Cleaner;

    .line 3174
    :cond_6d
    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->notifyReenableAutofill()V

    .line 3176
    :cond_70
    monitor-exit v0
    :try_end_71
    .catchall {:try_start_3e .. :try_end_71} :catchall_42

    .line 3177
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_77

    move v0, v2

    goto :goto_78

    :cond_77
    move v0, v3

    :goto_78
    sput-boolean v0, Landroid/view/autofill/Helper;->sDebug:Z

    .line 3178
    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_7f

    goto :goto_80

    :cond_7f
    move v2, v3

    :goto_80
    sput-boolean v2, Landroid/view/autofill/Helper;->sVerbose:Z

    .line 3179
    return-void

    .line 3176
    :goto_83
    :try_start_83
    monitor-exit v0
    :try_end_84
    .catchall {:try_start_83 .. :try_end_84} :catchall_42

    throw v1
.end method

.method private blacklist setTrackedViews(I[Landroid/view/autofill/AutofillId;ZZ[Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillId;Z)V
    .registers 15
    .param p1, "sessionId"    # I
    .param p2, "trackedIds"    # [Landroid/view/autofill/AutofillId;
    .param p3, "saveOnAllViewsInvisible"    # Z
    .param p4, "saveOnFinish"    # Z
    .param p5, "fillableIds"    # [Landroid/view/autofill/AutofillId;
    .param p6, "saveTriggerId"    # Landroid/view/autofill/AutofillId;
    .param p7, "shouldGrabViewFingerprints"    # Z

    .line 3557
    if-eqz p6, :cond_5

    .line 3558
    invoke-virtual {p6}, Landroid/view/autofill/AutofillId;->resetSessionId()V

    .line 3560
    :cond_5
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 3561
    .local v0, "allFillableIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3562
    :try_start_d
    sget-boolean v2, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_92

    .line 3563
    const-string v2, "AutofillManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setTrackedViews(): sessionId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", trackedIds="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3564
    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", saveOnAllViewsInvisible="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", saveOnFinish="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", fillableIds="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3567
    invoke-static {p5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", saveTrigerId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mFillableIds="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/autofill/AutofillManager;->mFillableIds:Landroid/util/ArraySet;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", shouldGrabViewFingerprints="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mEnabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mSessionId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3563
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3575
    :cond_92
    iget-boolean v2, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    if-eqz v2, :cond_114

    iget v2, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    if-ne v2, p1, :cond_114

    .line 3576
    iput-boolean p4, p0, Landroid/view/autofill/AutofillManager;->mSaveOnFinish:Z

    .line 3577
    const/4 v2, 0x0

    if-eqz p5, :cond_be

    .line 3578
    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mFillableIds:Landroid/util/ArraySet;

    if-nez v3, :cond_ab

    .line 3579
    new-instance v3, Landroid/util/ArraySet;

    array-length v4, p5

    invoke-direct {v3, v4}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v3, p0, Landroid/view/autofill/AutofillManager;->mFillableIds:Landroid/util/ArraySet;

    .line 3581
    :cond_ab
    array-length v3, p5

    move v4, v2

    :goto_ad
    if-ge v4, v3, :cond_be

    aget-object v5, p5, v4

    .line 3582
    .local v5, "id":Landroid/view/autofill/AutofillId;
    if-eqz v5, :cond_bb

    .line 3583
    invoke-virtual {v5}, Landroid/view/autofill/AutofillId;->resetSessionId()V

    .line 3584
    iget-object v6, p0, Landroid/view/autofill/AutofillManager;->mFillableIds:Landroid/util/ArraySet;

    invoke-virtual {v6, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3581
    .end local v5    # "id":Landroid/view/autofill/AutofillId;
    :cond_bb
    add-int/lit8 v4, v4, 0x1

    goto :goto_ad

    .line 3589
    :cond_be
    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mSaveTriggerId:Landroid/view/autofill/AutofillId;

    if-eqz v3, :cond_cf

    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mSaveTriggerId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v3, p6}, Landroid/view/autofill/AutofillId;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_cf

    .line 3591
    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mSaveTriggerId:Landroid/view/autofill/AutofillId;

    invoke-direct {p0, v3, v2}, Landroid/view/autofill/AutofillManager;->setNotifyOnClickLocked(Landroid/view/autofill/AutofillId;Z)V

    .line 3594
    :cond_cf
    if-eqz p6, :cond_e1

    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mSaveTriggerId:Landroid/view/autofill/AutofillId;

    invoke-virtual {p6, v3}, Landroid/view/autofill/AutofillId;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e1

    .line 3596
    iput-object p6, p0, Landroid/view/autofill/AutofillManager;->mSaveTriggerId:Landroid/view/autofill/AutofillId;

    .line 3597
    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mSaveTriggerId:Landroid/view/autofill/AutofillId;

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Landroid/view/autofill/AutofillManager;->setNotifyOnClickLocked(Landroid/view/autofill/AutofillId;Z)V

    .line 3600
    :cond_e1
    if-nez p3, :cond_e4

    .line 3601
    const/4 p2, 0x0

    .line 3604
    :cond_e4
    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mFillableIds:Landroid/util/ArraySet;

    if-eqz v3, :cond_ed

    .line 3605
    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mFillableIds:Landroid/util/ArraySet;

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 3607
    :cond_ed
    if-eqz p2, :cond_ff

    .line 3608
    array-length v3, p2

    :goto_f0
    if-ge v2, v3, :cond_ff

    aget-object v4, p2, v2

    .line 3609
    .local v4, "id":Landroid/view/autofill/AutofillId;
    if-eqz v4, :cond_fc

    .line 3610
    invoke-virtual {v4}, Landroid/view/autofill/AutofillId;->resetSessionId()V

    .line 3611
    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3608
    .end local v4    # "id":Landroid/view/autofill/AutofillId;
    :cond_fc
    add-int/lit8 v2, v2, 0x1

    goto :goto_f0

    .line 3616
    :cond_ff
    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_111

    .line 3617
    new-instance v2, Landroid/view/autofill/AutofillManager$TrackedViews;

    invoke-static {v0}, Landroid/view/autofill/Helper;->toArray(Ljava/util/Collection;)[Landroid/view/autofill/AutofillId;

    move-result-object v3

    invoke-direct {v2, p0, p2, v3}, Landroid/view/autofill/AutofillManager$TrackedViews;-><init>(Landroid/view/autofill/AutofillManager;[Landroid/view/autofill/AutofillId;[Landroid/view/autofill/AutofillId;)V

    iput-object v2, p0, Landroid/view/autofill/AutofillManager;->mTrackedViews:Landroid/view/autofill/AutofillManager$TrackedViews;

    goto :goto_114

    .line 3619
    :cond_111
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/view/autofill/AutofillManager;->mTrackedViews:Landroid/view/autofill/AutofillManager$TrackedViews;

    .line 3622
    :cond_114
    :goto_114
    iget-boolean v2, p0, Landroid/view/autofill/AutofillManager;->mRelayoutFix:Z

    if-eqz v2, :cond_12a

    if-eqz p7, :cond_12a

    .line 3624
    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mAutofillStateFingerprint:Landroid/view/autofill/AutofillStateFingerprint;

    iget-boolean v3, p0, Landroid/view/autofill/AutofillManager;->mRelativePositionForRelayout:Z

    invoke-virtual {v2, v3}, Landroid/view/autofill/AutofillStateFingerprint;->setUseRelativePosition(Z)V

    .line 3625
    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mAutofillStateFingerprint:Landroid/view/autofill/AutofillStateFingerprint;

    .line 3626
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v3

    .line 3625
    invoke-virtual {v2, v3, v0}, Landroid/view/autofill/AutofillStateFingerprint;->storeStatePriorToAuthentication(Landroid/view/autofill/AutofillManager$AutofillClient;Ljava/util/Set;)V

    .line 3628
    :cond_12a
    monitor-exit v1

    .line 3629
    return-void

    .line 3628
    :catchall_12c
    move-exception v2

    monitor-exit v1
    :try_end_12e
    .catchall {:try_start_d .. :try_end_12e} :catchall_12c

    throw v2
.end method

.method private greylist-max-o shouldIgnoreViewEnteredLocked(Landroid/view/autofill/AutofillId;I)Z
    .registers 9
    .param p1, "id"    # Landroid/view/autofill/AutofillId;
    .param p2, "flags"    # I

    .line 1814
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isDisabledByServiceLocked()Z

    move-result v0

    const-string v1, ") on state "

    const-string v2, ", view="

    const-string v3, "ignoring notifyViewEntered(flags="

    const-string v4, "AutofillManager"

    const/4 v5, 0x1

    if-eqz v0, :cond_42

    .line 1815
    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_41

    .line 1816
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1817
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getStateAsStringLocked()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " because disabled by svc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1816
    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1819
    :cond_41
    return v5

    .line 1821
    :cond_42
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isFinishedLocked()Z

    move-result v0

    if-eqz v0, :cond_91

    .line 1823
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_91

    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mEnteredIds:Landroid/util/ArraySet;

    if-eqz v0, :cond_91

    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mEnteredIds:Landroid/util/ArraySet;

    .line 1824
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_91

    .line 1825
    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_90

    .line 1826
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1827
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getStateAsStringLocked()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " because view was already entered: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mEnteredIds:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1826
    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1830
    :cond_90
    return v5

    .line 1833
    :cond_91
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist shouldShowAutofillDialog(Landroid/view/View;Landroid/view/autofill/AutofillId;)Z
    .registers 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "id"    # Landroid/view/autofill/AutofillId;

    .line 4171
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->hasFillDialogUiFeature()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_40

    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mShowAutofillDialogCalled:Z

    if-nez v0, :cond_40

    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mFillDialogTriggerIds:Ljava/util/List;

    if-eqz v0, :cond_40

    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mScreenHasCredmanField:Z

    if-eqz v0, :cond_14

    goto :goto_40

    .line 4178
    :cond_14
    invoke-direct {p0, p1}, Landroid/view/autofill/AutofillManager;->getImeStateFlag(Landroid/view/View;)I

    move-result v0

    const/16 v2, 0x80

    if-ne v0, v2, :cond_23

    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->isImproveFillDialogEnabled()Z

    move-result v0

    if-nez v0, :cond_23

    .line 4180
    return v1

    .line 4183
    :cond_23
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mFillDialogTriggerIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 4184
    .local v0, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2a
    if-ge v2, v0, :cond_3f

    .line 4185
    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mFillDialogTriggerIds:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/autofill/AutofillId;

    .line 4186
    .local v3, "fillId":Landroid/view/autofill/AutofillId;
    invoke-virtual {v3, p2}, Landroid/view/autofill/AutofillId;->equalsIgnoreSession(Landroid/view/autofill/AutofillId;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 4187
    const/4 v1, 0x1

    return v1

    .line 4184
    .end local v3    # "fillId":Landroid/view/autofill/AutofillId;
    :cond_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    .line 4190
    .end local v2    # "i":I
    :cond_3f
    return v1

    .line 4175
    .end local v0    # "size":I
    :cond_40
    :goto_40
    return v1
.end method

.method private blacklist shouldSuppressDialogsForCredman(Landroid/view/View;)Z
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 3884
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 3885
    return v0

    .line 3890
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->isCredential()Z

    move-result v1

    if-nez v1, :cond_10

    invoke-direct {p0, p1}, Landroid/view/autofill/AutofillManager;->isCredmanRequested(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_11

    :cond_10
    const/4 v0, 0x1

    :cond_11
    return v0
.end method

.method private blacklist startAutofillIfNeededLocked(Landroid/view/View;)Z
    .registers 11
    .param p1, "view"    # Landroid/view/View;

    .line 2921
    iget v0, p0, Landroid/view/autofill/AutofillManager;->mState:I

    const/4 v1, 0x0

    if-nez v0, :cond_94

    iget v0, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    const v2, 0x7fffffff

    if-ne v0, v2, :cond_94

    instance-of v0, p1, Landroid/widget/EditText;

    if-eqz v0, :cond_94

    move-object v0, p1

    check-cast v0, Landroid/widget/EditText;

    .line 2924
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_92

    .line 2925
    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-nez v0, :cond_90

    .line 2926
    invoke-virtual {p1}, Landroid/view/View;->isImportantForAutofill()Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 2927
    invoke-virtual {p1}, Landroid/view/View;->isLaidOut()Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 2928
    invoke-virtual {p1}, Landroid/view/View;->isVisibleToUser()Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 2930
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->tryAddServiceClientIfNeededLocked()Z

    move-result v0

    .line 2932
    .local v0, "clientAdded":Z
    sget-boolean v2, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_64

    .line 2933
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startAutofillIfNeededLocked(): enabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mServiceClient="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mServiceClient:Landroid/view/autofill/IAutoFillManagerClient;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AutofillManager"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2936
    :cond_64
    if-eqz v0, :cond_88

    iget-boolean v2, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    if-eqz v2, :cond_88

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isClientDisablingEnterExitEvent()Z

    move-result v2

    if-nez v2, :cond_88

    .line 2937
    invoke-virtual {p1}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v4

    .line 2938
    .local v4, "id":Landroid/view/autofill/AutofillId;
    invoke-virtual {p1}, Landroid/view/View;->getAutofillValue()Landroid/view/autofill/AutofillValue;

    move-result-object v6

    .line 2940
    .local v6, "value":Landroid/view/autofill/AutofillValue;
    const/4 v2, 0x0

    invoke-direct {p0, v4, v2, v2, v1}, Landroid/view/autofill/AutofillManager;->startSessionLocked(Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;I)V

    .line 2942
    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Landroid/view/autofill/AutofillManager;->updateSessionLocked(Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;II)V

    .line 2944
    invoke-direct {p0, v4}, Landroid/view/autofill/AutofillManager;->addEnteredIdLocked(Landroid/view/autofill/AutofillId;)V

    .line 2945
    const/4 v1, 0x1

    return v1

    .line 2936
    .end local v4    # "id":Landroid/view/autofill/AutofillId;
    .end local v6    # "value":Landroid/view/autofill/AutofillValue;
    :cond_88
    move-object v3, p0

    goto :goto_95

    .line 2928
    .end local v0    # "clientAdded":Z
    :cond_8a
    move-object v3, p0

    goto :goto_95

    .line 2927
    :cond_8c
    move-object v3, p0

    goto :goto_95

    .line 2926
    :cond_8e
    move-object v3, p0

    goto :goto_95

    .line 2925
    :cond_90
    move-object v3, p0

    goto :goto_95

    .line 2924
    :cond_92
    move-object v3, p0

    goto :goto_95

    .line 2921
    :cond_94
    move-object v3, p0

    .line 2948
    :goto_95
    return v1
.end method

.method private greylist-max-o startSessionLocked(Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;I)V
    .registers 23
    .param p1, "id"    # Landroid/view/autofill/AutofillId;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "value"    # Landroid/view/autofill/AutofillValue;
    .param p4, "flags"    # I

    .line 2710
    move-object/from16 v1, p0

    move-object/from16 v5, p1

    iget-object v0, v1, Landroid/view/autofill/AutofillManager;->mEnteredForAugmentedAutofillIds:Ljava/util/Set;

    const-string v14, "AutofillManager"

    if-eqz v0, :cond_12

    iget-object v0, v1, Landroid/view/autofill/AutofillManager;->mEnteredForAugmentedAutofillIds:Ljava/util/Set;

    .line 2711
    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    :cond_12
    iget-boolean v0, v1, Landroid/view/autofill/AutofillManager;->mEnabledForAugmentedAutofillOnly:Z

    if-eqz v0, :cond_34

    .line 2713
    :cond_16
    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_30

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting session for augmented autofill on "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2714
    :cond_30
    or-int/lit8 v0, p4, 0x8

    move v2, v0

    .end local p4    # "flags":I
    .local v0, "flags":I
    goto :goto_36

    .line 2711
    .end local v0    # "flags":I
    .restart local p4    # "flags":I
    :cond_34
    move/from16 v2, p4

    .line 2716
    .end local p4    # "flags":I
    .local v2, "flags":I
    :goto_36
    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_b4

    .line 2717
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startSessionLocked(): id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", bounds="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v6, p2

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", value="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v7, p3

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", flags="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", state="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2718
    invoke-direct {v1}, Landroid/view/autofill/AutofillManager;->getStateAsStringLocked()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", compatMode="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2719
    invoke-virtual {v1}, Landroid/view/autofill/AutofillManager;->isCompatibilityModeEnabledLocked()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", augmentedOnly="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v3, v1, Landroid/view/autofill/AutofillManager;->mForAugmentedAutofillOnly:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", enabledAugmentedOnly="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v3, v1, Landroid/view/autofill/AutofillManager;->mEnabledForAugmentedAutofillOnly:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", enteredIds="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v1, Landroid/view/autofill/AutofillManager;->mEnteredIds:Landroid/util/ArraySet;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2717
    invoke-static {v14, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b8

    .line 2716
    :cond_b4
    move-object/from16 v6, p2

    move-object/from16 v7, p3

    .line 2727
    :goto_b8
    iget-boolean v0, v1, Landroid/view/autofill/AutofillManager;->mForAugmentedAutofillOnly:Z

    const/4 v15, 0x0

    if-eqz v0, :cond_d1

    iget-boolean v0, v1, Landroid/view/autofill/AutofillManager;->mEnabledForAugmentedAutofillOnly:Z

    if-nez v0, :cond_d1

    and-int/lit8 v0, v2, 0x1

    if-eqz v0, :cond_d1

    .line 2729
    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_cf

    .line 2730
    const-string/jumbo v0, "resetting mForAugmentedAutofillOnly on manual autofill request"

    invoke-static {v14, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2732
    :cond_cf
    iput-boolean v15, v1, Landroid/view/autofill/AutofillManager;->mForAugmentedAutofillOnly:Z

    .line 2734
    :cond_d1
    iget v0, v1, Landroid/view/autofill/AutofillManager;->mState:I

    if-eqz v0, :cond_112

    invoke-direct {v1}, Landroid/view/autofill/AutofillManager;->isFinishedLocked()Z

    move-result v0

    if-nez v0, :cond_112

    and-int/lit8 v0, v2, 0x1

    if-nez v0, :cond_112

    .line 2735
    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_111

    .line 2736
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not automatically starting session for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " on state "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2737
    invoke-direct {v1}, Landroid/view/autofill/AutofillManager;->getStateAsStringLocked()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " and flags "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2736
    invoke-static {v14, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2739
    :cond_111
    return-void

    .line 2742
    :cond_112
    :try_start_112
    invoke-direct {v1}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v0

    .line 2743
    .local v0, "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    if-nez v0, :cond_119

    return-void

    .line 2745
    :cond_119
    new-instance v13, Lcom/android/internal/util/SyncResultReceiver;

    const/16 v3, 0x1388

    invoke-direct {v13, v3}, Lcom/android/internal/util/SyncResultReceiver;-><init>(I)V

    .line 2746
    .local v13, "receiver":Lcom/android/internal/util/SyncResultReceiver;
    invoke-interface {v0}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientGetComponentName()Landroid/content/ComponentName;

    move-result-object v11

    .line 2748
    .local v11, "clientActivity":Landroid/content/ComponentName;
    iget-boolean v3, v1, Landroid/view/autofill/AutofillManager;->mEnabledForAugmentedAutofillOnly:Z
    :try_end_126
    .catch Landroid/os/RemoteException; {:try_start_112 .. :try_end_126} :catch_21a
    .catch Lcom/android/internal/util/SyncResultReceiver$TimeoutException; {:try_start_112 .. :try_end_126} :catch_201

    const-string/jumbo v4, "startSession("

    if-nez v3, :cond_18a

    :try_start_12b
    iget-object v3, v1, Landroid/view/autofill/AutofillManager;->mOptions:Landroid/content/AutofillOptions;

    if-eqz v3, :cond_18a

    iget-object v3, v1, Landroid/view/autofill/AutofillManager;->mOptions:Landroid/content/AutofillOptions;

    .line 2749
    invoke-virtual {v3, v11}, Landroid/content/AutofillOptions;->isAutofillDisabledLocked(Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_18a

    .line 2750
    iget-object v3, v1, Landroid/view/autofill/AutofillManager;->mOptions:Landroid/content/AutofillOptions;

    iget-object v8, v1, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v8}, Landroid/content/AutofillOptions;->isAugmentedAutofillEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_163

    .line 2751
    sget-boolean v3, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v3, :cond_18a

    .line 2752
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "): disabled by service but allowlisted for augmented autofill"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2754
    or-int/lit8 v2, v2, 0x8

    move v10, v2

    goto :goto_18b

    .line 2757
    :cond_163
    sget-boolean v3, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v3, :cond_181

    .line 2758
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): ignored because disabled by service and not allowlisted for augmented autofill"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2761
    :cond_181
    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Landroid/view/autofill/AutofillManager;->setSessionFinished(ILjava/util/List;)V

    .line 2762
    invoke-interface {v0}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientResetableStateAvailable()V
    :try_end_189
    .catch Landroid/os/RemoteException; {:try_start_12b .. :try_end_189} :catch_21a
    .catch Lcom/android/internal/util/SyncResultReceiver$TimeoutException; {:try_start_12b .. :try_end_189} :catch_201

    .line 2763
    return-void

    .line 2767
    :cond_18a
    move v10, v2

    .end local v2    # "flags":I
    .local v10, "flags":I
    :goto_18b
    :try_start_18b
    iget-object v2, v1, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    invoke-interface {v0}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientGetActivityToken()Landroid/os/IBinder;

    move-result-object v3

    iget-object v8, v1, Landroid/view/autofill/AutofillManager;->mServiceClient:Landroid/view/autofill/IAutoFillManagerClient;

    .line 2768
    invoke-interface {v8}, Landroid/view/autofill/IAutoFillManagerClient;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    iget-object v9, v1, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getUserId()I

    move-result v9

    iget-object v12, v1, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;

    const/4 v15, 0x1

    if-eqz v12, :cond_1a7

    move-object v12, v4

    move-object v4, v8

    move v8, v9

    move v9, v15

    goto :goto_1ab

    :cond_1a7
    move-object v12, v4

    move-object v4, v8

    move v8, v9

    const/4 v9, 0x0

    .line 2770
    :goto_1ab
    move-object/from16 v16, v12

    invoke-virtual {v1}, Landroid/view/autofill/AutofillManager;->isCompatibilityModeEnabledLocked()Z

    move-result v12

    .line 2767
    move-object/from16 v17, v16

    invoke-interface/range {v2 .. v13}, Landroid/view/autofill/IAutoFillManager;->startSession(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;IZILandroid/content/ComponentName;ZLcom/android/internal/os/IResultReceiver;)V

    .line 2771
    invoke-virtual {v13}, Lcom/android/internal/util/SyncResultReceiver;->getIntResult()I

    move-result v2

    iput v2, v1, Landroid/view/autofill/AutofillManager;->mSessionId:I

    .line 2772
    iget v2, v1, Landroid/view/autofill/AutofillManager;->mSessionId:I

    const v3, 0x7fffffff

    if-eq v2, v3, :cond_1cc

    .line 2773
    iput v15, v1, Landroid/view/autofill/AutofillManager;->mState:I

    .line 2774
    iget-object v2, v1, Landroid/view/autofill/AutofillManager;->mAutofillStateFingerprint:Landroid/view/autofill/AutofillStateFingerprint;

    iget v3, v1, Landroid/view/autofill/AutofillManager;->mSessionId:I

    invoke-virtual {v2, v3}, Landroid/view/autofill/AutofillStateFingerprint;->setSessionId(I)V

    .line 2776
    :cond_1cc
    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Lcom/android/internal/util/SyncResultReceiver;->getOptionalExtraIntResult(I)I

    move-result v2

    .line 2777
    .local v2, "extraFlags":I
    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_1f7

    .line 2778
    sget-boolean v3, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v3, :cond_1f5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v12, v17

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): for augmented only"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2779
    :cond_1f5
    iput-boolean v15, v1, Landroid/view/autofill/AutofillManager;->mForAugmentedAutofillOnly:Z

    .line 2781
    :cond_1f7
    invoke-interface {v0}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientResetableStateAvailable()V
    :try_end_1fa
    .catch Landroid/os/RemoteException; {:try_start_18b .. :try_end_1fa} :catch_1fe
    .catch Lcom/android/internal/util/SyncResultReceiver$TimeoutException; {:try_start_18b .. :try_end_1fa} :catch_1fb

    .line 2787
    .end local v0    # "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    .end local v2    # "extraFlags":I
    .end local v11    # "clientActivity":Landroid/content/ComponentName;
    .end local v13    # "receiver":Lcom/android/internal/util/SyncResultReceiver;
    goto :goto_219

    .line 2784
    :catch_1fb
    move-exception v0

    move v2, v10

    goto :goto_202

    .line 2782
    :catch_1fe
    move-exception v0

    move v2, v10

    goto :goto_21b

    .line 2784
    .end local v10    # "flags":I
    .local v2, "flags":I
    :catch_201
    move-exception v0

    .line 2786
    .local v0, "e":Lcom/android/internal/util/SyncResultReceiver$TimeoutException;
    :goto_202
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception getting result from SyncResultReceiver: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v10, v2

    .line 2788
    .end local v0    # "e":Lcom/android/internal/util/SyncResultReceiver$TimeoutException;
    .end local v2    # "flags":I
    .restart local v10    # "flags":I
    :goto_219
    return-void

    .line 2782
    .end local v10    # "flags":I
    .restart local v2    # "flags":I
    :catch_21a
    move-exception v0

    .line 2783
    .local v0, "e":Landroid/os/RemoteException;
    :goto_21b
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method private blacklist tryAddServiceClientIfNeededLocked()Z
    .registers 2

    .line 2863
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/autofill/AutofillManager;->tryAddServiceClientIfNeededLocked(Z)Z

    move-result v0

    return v0
.end method

.method private blacklist tryAddServiceClientIfNeededLocked(Z)Z
    .registers 14
    .param p1, "credmanRequested"    # Z

    .line 2868
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v1

    .line 2869
    .local v1, "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    const/4 v2, 0x0

    if-nez v1, :cond_8

    .line 2870
    return v2

    .line 2872
    :cond_8
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    const-string v3, "AutofillManager"

    if-nez v0, :cond_14

    .line 2873
    const-string v0, "Autofill service is null!"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2874
    return v2

    .line 2876
    :cond_14
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mServiceClient:Landroid/view/autofill/IAutoFillManagerClient;

    const/4 v4, 0x1

    if-nez v0, :cond_d2

    .line 2877
    new-instance v0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;

    const/4 v5, 0x0

    invoke-direct {v0, p0, v5}, Landroid/view/autofill/AutofillManager$AutofillManagerClient;-><init>(Landroid/view/autofill/AutofillManager;Landroid/view/autofill/AutofillManager-IA;)V

    iput-object v0, p0, Landroid/view/autofill/AutofillManager;->mServiceClient:Landroid/view/autofill/IAutoFillManagerClient;

    .line 2879
    :try_start_21
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    move v9, v0

    .line 2880
    .local v9, "userId":I
    new-instance v10, Lcom/android/internal/util/SyncResultReceiver;

    const/16 v0, 0x1388

    invoke-direct {v10, v0}, Lcom/android/internal/util/SyncResultReceiver;-><init>(I)V

    .line 2881
    .local v10, "receiver":Lcom/android/internal/util/SyncResultReceiver;
    iget-object v6, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget-object v7, p0, Landroid/view/autofill/AutofillManager;->mServiceClient:Landroid/view/autofill/IAutoFillManagerClient;

    invoke-interface {v1}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientGetComponentName()Landroid/content/ComponentName;

    move-result-object v8
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_37} :catch_ca

    move v11, p1

    .end local p1    # "credmanRequested":Z
    .local v11, "credmanRequested":Z
    :try_start_38
    invoke-interface/range {v6 .. v11}, Landroid/view/autofill/IAutoFillManager;->addClient(Landroid/view/autofill/IAutoFillManagerClient;Landroid/content/ComponentName;ILcom/android/internal/os/IResultReceiver;Z)V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_3b} :catch_c7

    .line 2883
    const/4 p1, 0x0

    .line 2885
    .local p1, "flags":I
    :try_start_3c
    invoke-virtual {v10}, Lcom/android/internal/util/SyncResultReceiver;->getIntResult()I

    move-result v0
    :try_end_40
    .catch Lcom/android/internal/util/SyncResultReceiver$TimeoutException; {:try_start_3c .. :try_end_40} :catch_a6
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_40} :catch_c7

    .line 2892
    .end local p1    # "flags":I
    .local v0, "flags":I
    nop

    .line 2893
    and-int/lit8 p1, v0, 0x1

    if-eqz p1, :cond_47

    move p1, v4

    goto :goto_48

    :cond_47
    move p1, v2

    :goto_48
    :try_start_48
    iput-boolean p1, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    .line 2894
    and-int/lit8 p1, v0, 0x2

    if-eqz p1, :cond_50

    move p1, v4

    goto :goto_51

    :cond_50
    move p1, v2

    :goto_51
    sput-boolean p1, Landroid/view/autofill/Helper;->sDebug:Z

    .line 2895
    and-int/lit8 p1, v0, 0x4

    if-eqz p1, :cond_59

    move p1, v4

    goto :goto_5a

    :cond_59
    move p1, v2

    :goto_5a
    sput-boolean p1, Landroid/view/autofill/Helper;->sVerbose:Z

    .line 2896
    and-int/lit8 p1, v0, 0x8

    if-eqz p1, :cond_61

    move v2, v4

    :cond_61
    iput-boolean v2, p0, Landroid/view/autofill/AutofillManager;->mEnabledForAugmentedAutofillOnly:Z

    .line 2898
    sget-boolean p1, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz p1, :cond_96

    .line 2899
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "receiver results: flags="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " enabled="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v2, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ", enabledForAugmentedOnly: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v2, p0, Landroid/view/autofill/AutofillManager;->mEnabledForAugmentedAutofillOnly:Z

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2902
    :cond_96
    iget-object p1, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    .line 2903
    .local p1, "service":Landroid/view/autofill/IAutoFillManager;
    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mServiceClient:Landroid/view/autofill/IAutoFillManagerClient;

    .line 2904
    .local v2, "serviceClient":Landroid/view/autofill/IAutoFillManagerClient;
    new-instance v3, Landroid/view/autofill/AutofillManager$$ExternalSyntheticLambda1;

    invoke-direct {v3, p1, v2, v9}, Landroid/view/autofill/AutofillManager$$ExternalSyntheticLambda1;-><init>(Landroid/view/autofill/IAutoFillManager;Landroid/view/autofill/IAutoFillManagerClient;I)V

    invoke-static {p0, v3}, Lsun/misc/Cleaner;->create(Ljava/lang/Object;Ljava/lang/Runnable;)Lsun/misc/Cleaner;

    move-result-object v3

    iput-object v3, p0, Landroid/view/autofill/AutofillManager;->mServiceClientCleaner:Lsun/misc/Cleaner;

    .line 2914
    .end local v0    # "flags":I
    .end local v2    # "serviceClient":Landroid/view/autofill/IAutoFillManagerClient;
    .end local v9    # "userId":I
    .end local v10    # "receiver":Lcom/android/internal/util/SyncResultReceiver;
    .end local p1    # "service":Landroid/view/autofill/IAutoFillManager;
    goto :goto_d3

    .line 2886
    .restart local v9    # "userId":I
    .restart local v10    # "receiver":Lcom/android/internal/util/SyncResultReceiver;
    .local p1, "flags":I
    :catch_a6
    move-exception v0

    .line 2887
    .local v0, "e":Lcom/android/internal/util/SyncResultReceiver$TimeoutException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to initialize autofill: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2889
    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget-object v4, p0, Landroid/view/autofill/AutofillManager;->mServiceClient:Landroid/view/autofill/IAutoFillManagerClient;

    invoke-interface {v3, v4, v9}, Landroid/view/autofill/IAutoFillManager;->removeClient(Landroid/view/autofill/IAutoFillManagerClient;I)V

    .line 2890
    iput-object v5, p0, Landroid/view/autofill/AutofillManager;->mServiceClient:Landroid/view/autofill/IAutoFillManagerClient;
    :try_end_c6
    .catch Landroid/os/RemoteException; {:try_start_48 .. :try_end_c6} :catch_c7

    .line 2891
    return v2

    .line 2912
    .end local v0    # "e":Lcom/android/internal/util/SyncResultReceiver$TimeoutException;
    .end local v9    # "userId":I
    .end local v10    # "receiver":Lcom/android/internal/util/SyncResultReceiver;
    .end local p1    # "flags":I
    :catch_c7
    move-exception v0

    move-object p1, v0

    goto :goto_cd

    .end local v11    # "credmanRequested":Z
    .local p1, "credmanRequested":Z
    :catch_ca
    move-exception v0

    move v11, p1

    move-object p1, v0

    .line 2913
    .restart local v11    # "credmanRequested":Z
    .local p1, "e":Landroid/os/RemoteException;
    :goto_cd
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 2876
    .end local v11    # "credmanRequested":Z
    .local p1, "credmanRequested":Z
    :cond_d2
    move v11, p1

    .line 2916
    .end local p1    # "credmanRequested":Z
    .restart local v11    # "credmanRequested":Z
    :goto_d3
    return v4
.end method

.method private greylist-max-o updateSessionLocked(Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;II)V
    .registers 16
    .param p1, "id"    # Landroid/view/autofill/AutofillId;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "value"    # Landroid/view/autofill/AutofillValue;
    .param p4, "action"    # I
    .param p5, "flags"    # I

    .line 2844
    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_45

    .line 2845
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateSessionLocked(): id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutofillManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2849
    :cond_45
    :try_start_45
    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget v3, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    .line 2850
    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v9
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_4f} :catch_5c

    .line 2849
    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move v8, p5

    .end local p1    # "id":Landroid/view/autofill/AutofillId;
    .end local p2    # "bounds":Landroid/graphics/Rect;
    .end local p3    # "value":Landroid/view/autofill/AutofillValue;
    .end local p4    # "action":I
    .end local p5    # "flags":I
    .local v4, "id":Landroid/view/autofill/AutofillId;
    .local v5, "bounds":Landroid/graphics/Rect;
    .local v6, "value":Landroid/view/autofill/AutofillValue;
    .local v7, "action":I
    .local v8, "flags":I
    :try_start_54
    invoke-interface/range {v2 .. v9}, Landroid/view/autofill/IAutoFillManager;->updateSession(ILandroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;III)V
    :try_end_57
    .catch Landroid/os/RemoteException; {:try_start_54 .. :try_end_57} :catch_59

    .line 2853
    nop

    .line 2854
    return-void

    .line 2851
    :catch_59
    move-exception v0

    move-object p1, v0

    goto :goto_63

    .end local v4    # "id":Landroid/view/autofill/AutofillId;
    .end local v5    # "bounds":Landroid/graphics/Rect;
    .end local v6    # "value":Landroid/view/autofill/AutofillValue;
    .end local v7    # "action":I
    .end local v8    # "flags":I
    .restart local p1    # "id":Landroid/view/autofill/AutofillId;
    .restart local p2    # "bounds":Landroid/graphics/Rect;
    .restart local p3    # "value":Landroid/view/autofill/AutofillValue;
    .restart local p4    # "action":I
    .restart local p5    # "flags":I
    :catch_5c
    move-exception v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move v8, p5

    move-object p1, v0

    .line 2852
    .end local p2    # "bounds":Landroid/graphics/Rect;
    .end local p3    # "value":Landroid/view/autofill/AutofillValue;
    .end local p4    # "action":I
    .end local p5    # "flags":I
    .restart local v4    # "id":Landroid/view/autofill/AutofillId;
    .restart local v5    # "bounds":Landroid/graphics/Rect;
    .restart local v6    # "value":Landroid/view/autofill/AutofillValue;
    .restart local v7    # "action":I
    .restart local v8    # "flags":I
    .local p1, "e":Landroid/os/RemoteException;
    :goto_63
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method


# virtual methods
.method public blacklist attemptRefill()Z
    .registers 5

    .line 1598
    const-string v0, "Attempting refill"

    const-string v1, "AutofillManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1600
    nop

    .line 1601
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientFindAutofillableViewsByTraversal()Ljava/util/List;

    move-result-object v0

    .line 1602
    .local v0, "autofillableViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    sget-boolean v2, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_2e

    .line 1603
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Autofillable views count:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1605
    :cond_2e
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mAutofillStateFingerprint:Landroid/view/autofill/AutofillStateFingerprint;

    invoke-virtual {v1, v0, p0}, Landroid/view/autofill/AutofillStateFingerprint;->attemptRefill(Ljava/util/List;Landroid/view/autofill/AutofillManager;)Z

    move-result v1

    return v1
.end method

.method blacklist autofill([Landroid/view/View;Ljava/util/List;Ljava/util/List;ZZ)V
    .registers 24
    .param p1, "views"    # [Landroid/view/View;
    .param p4, "hideHighlight"    # Z
    .param p5, "isRefill"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillId;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillValue;",
            ">;ZZ)V"
        }
    .end annotation

    .line 3385
    .local p2, "ids":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    .local p3, "values":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillValue;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p4

    move/from16 v4, p5

    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_2e

    .line 3386
    const-string v0, "AutofillManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "autofill() ids:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " isRefill:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3388
    :cond_2e
    iget-object v5, v1, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 3389
    :try_start_31
    invoke-direct {v1}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v0

    move-object v6, v0

    .line 3390
    .local v6, "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    if-nez v6, :cond_3a

    .line 3391
    monitor-exit v5

    return-void

    .line 3394
    :cond_3a
    if-nez v2, :cond_45

    .line 3395
    const-string v0, "AutofillManager"

    const-string v7, "autofill(): No id\'s to fill"

    invoke-static {v0, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3396
    monitor-exit v5

    return-void

    .line 3399
    :cond_45
    iget-boolean v0, v1, Landroid/view/autofill/AutofillManager;->mRelayoutFix:Z
    :try_end_47
    .catchall {:try_start_31 .. :try_end_47} :catchall_13a

    if-eqz v0, :cond_5a

    if-eqz v4, :cond_5a

    .line 3401
    :try_start_4b
    iget-object v0, v1, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget v7, v1, Landroid/view/autofill/AutofillManager;->mSessionId:I

    iget-object v8, v1, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    .line 3402
    invoke-virtual {v8}, Landroid/content/Context;->getUserId()I

    move-result v8

    .line 3401
    invoke-interface {v0, v7, v2, v8}, Landroid/view/autofill/IAutoFillManager;->setAutofillIdsAttemptedForRefill(ILjava/util/List;I)V
    :try_end_58
    .catch Landroid/os/RemoteException; {:try_start_4b .. :try_end_58} :catch_59
    .catchall {:try_start_4b .. :try_end_58} :catchall_13a

    .line 3407
    goto :goto_5a

    .line 3403
    :catch_59
    move-exception v0

    .line 3410
    :cond_5a
    :goto_5a
    :try_start_5a
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 3411
    .local v0, "itemCount":I
    const/4 v7, 0x0

    .line 3412
    .local v7, "numApplied":I
    const/4 v8, 0x0

    .line 3414
    .local v8, "virtualValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/View;Landroid/util/SparseArray<Landroid/view/autofill/AutofillValue;>;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 3415
    .local v9, "failedIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 3417
    .local v10, "failedAutofillValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillValue;>;"
    iget-object v11, v1, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    if-nez v11, :cond_75

    .line 3418
    new-instance v11, Landroid/view/autofill/ParcelableMap;

    invoke-direct {v11, v0}, Landroid/view/autofill/ParcelableMap;-><init>(I)V

    iput-object v11, v1, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    .line 3421
    :cond_75
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_76
    if-ge v11, v0, :cond_f0

    .line 3422
    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/autofill/AutofillId;
    :try_end_7e
    .catchall {:try_start_5a .. :try_end_7e} :catchall_13a

    .line 3423
    .local v12, "id":Landroid/view/autofill/AutofillId;
    move-object/from16 v13, p3

    :try_start_80
    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/autofill/AutofillValue;

    .line 3424
    .local v14, "value":Landroid/view/autofill/AutofillValue;
    aget-object v15, p1, v11

    .line 3425
    .local v15, "view":Landroid/view/View;
    if-nez v15, :cond_ad

    .line 3429
    move/from16 v16, v0

    .end local v0    # "itemCount":I
    .local v16, "itemCount":I
    const-string v0, "AutofillManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v6

    .end local v6    # "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    .local v17, "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    const-string v6, "autofill(): no View with id "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3431
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3432
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3433
    goto :goto_e7

    .line 3436
    .end local v16    # "itemCount":I
    .end local v17    # "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    .restart local v0    # "itemCount":I
    .restart local v6    # "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    :cond_ad
    move/from16 v16, v0

    move-object/from16 v17, v6

    .end local v0    # "itemCount":I
    .end local v6    # "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    .restart local v16    # "itemCount":I
    .restart local v17    # "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    iget-object v0, v1, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    invoke-virtual {v0, v12, v14}, Landroid/view/autofill/ParcelableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3438
    invoke-virtual {v12}, Landroid/view/autofill/AutofillId;->isVirtualInt()Z

    move-result v0

    if-eqz v0, :cond_df

    .line 3439
    if-nez v8, :cond_c5

    .line 3441
    new-instance v0, Landroid/util/ArrayMap;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/util/ArrayMap;-><init>(I)V

    move-object v8, v0

    .line 3443
    :cond_c5
    invoke-virtual {v8, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 3444
    .local v0, "valuesByParent":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/autofill/AutofillValue;>;"
    if-nez v0, :cond_d7

    .line 3446
    new-instance v2, Landroid/util/SparseArray;

    const/4 v6, 0x5

    invoke-direct {v2, v6}, Landroid/util/SparseArray;-><init>(I)V

    move-object v0, v2

    .line 3447
    invoke-virtual {v8, v15, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3449
    :cond_d7
    invoke-virtual {v12}, Landroid/view/autofill/AutofillId;->getVirtualChildIntId()I

    move-result v2

    invoke-virtual {v0, v2, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3450
    .end local v0    # "valuesByParent":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/autofill/AutofillValue;>;"
    goto :goto_e7

    .line 3451
    :cond_df
    invoke-virtual {v15, v14}, Landroid/view/View;->autofill(Landroid/view/autofill/AutofillValue;)V

    .line 3457
    invoke-direct {v1, v15, v14, v3}, Landroid/view/autofill/AutofillManager;->setAutofilledIfValuesIs(Landroid/view/View;Landroid/view/autofill/AutofillValue;Z)V

    .line 3459
    add-int/lit8 v7, v7, 0x1

    .line 3421
    .end local v12    # "id":Landroid/view/autofill/AutofillId;
    .end local v14    # "value":Landroid/view/autofill/AutofillValue;
    .end local v15    # "view":Landroid/view/View;
    :goto_e7
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v2, p2

    move/from16 v0, v16

    move-object/from16 v6, v17

    goto :goto_76

    .end local v16    # "itemCount":I
    .end local v17    # "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    .local v0, "itemCount":I
    .restart local v6    # "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    :cond_f0
    move-object/from16 v13, p3

    move/from16 v16, v0

    move-object/from16 v17, v6

    .line 3463
    .end local v0    # "itemCount":I
    .end local v6    # "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    .end local v11    # "i":I
    .restart local v16    # "itemCount":I
    .restart local v17    # "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    invoke-direct {v1, v9, v10, v3, v4}, Landroid/view/autofill/AutofillManager;->handleFailedIdsLocked(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    .line 3466
    if-eqz v8, :cond_119

    .line 3467
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_fc
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_119

    .line 3468
    invoke-virtual {v8, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 3469
    .local v2, "parent":Landroid/view/View;
    invoke-virtual {v8, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/SparseArray;

    .line 3470
    .local v6, "childrenValues":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/autofill/AutofillValue;>;"
    invoke-virtual {v2, v6}, Landroid/view/View;->autofill(Landroid/util/SparseArray;)V

    .line 3471
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v11

    add-int/2addr v7, v11

    .line 3467
    .end local v2    # "parent":Landroid/view/View;
    .end local v6    # "childrenValues":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/autofill/AutofillValue;>;"
    add-int/lit8 v0, v0, 0x1

    goto :goto_fc

    .line 3477
    .end local v0    # "i":I
    :cond_119
    iget-object v0, v1, Landroid/view/autofill/AutofillManager;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v2, 0x391

    invoke-direct {v1, v2}, Landroid/view/autofill/AutofillManager;->newLog(I)Landroid/metrics/LogMaker;

    move-result-object v2

    .line 3478
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v11, 0x392

    invoke-virtual {v2, v11, v6}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v2

    .line 3479
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v11, 0x393

    invoke-virtual {v2, v11, v6}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v2

    .line 3477
    invoke-virtual {v0, v2}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 3480
    .end local v7    # "numApplied":I
    .end local v8    # "virtualValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/View;Landroid/util/SparseArray<Landroid/view/autofill/AutofillValue;>;>;"
    .end local v9    # "failedIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .end local v10    # "failedAutofillValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillValue;>;"
    .end local v16    # "itemCount":I
    .end local v17    # "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    monitor-exit v5

    .line 3481
    return-void

    .line 3480
    :catchall_13a
    move-exception v0

    move-object/from16 v13, p3

    :goto_13d
    monitor-exit v5
    :try_end_13e
    .catchall {:try_start_80 .. :try_end_13e} :catchall_13f

    throw v0

    :catchall_13f
    move-exception v0

    goto :goto_13d
.end method

.method public whitelist cancel()V
    .registers 3

    .line 2342
    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_b

    const-string v0, "AutofillManager"

    const-string v1, "cancel() called by app or augmented autofill service"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2343
    :cond_b
    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-nez v0, :cond_12

    .line 2344
    return-void

    .line 2346
    :cond_12
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2347
    :try_start_15
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->cancelLocked()V

    .line 2348
    monitor-exit v0

    .line 2349
    return-void

    .line 2348
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public whitelist commit()V
    .registers 3

    .line 2313
    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-nez v0, :cond_7

    .line 2314
    return-void

    .line 2316
    :cond_7
    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_12

    const-string v0, "AutofillManager"

    const-string v1, "commit() called by app"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2317
    :cond_12
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2318
    const/4 v1, 0x2

    :try_start_16
    invoke-direct {p0, v1}, Landroid/view/autofill/AutofillManager;->commitLocked(I)V

    .line 2319
    monitor-exit v0

    .line 2320
    return-void

    .line 2319
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public whitelist disableAutofillServices()V
    .registers 3

    .line 2369
    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-nez v0, :cond_7

    .line 2370
    return-void

    .line 2373
    :cond_7
    :try_start_7
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/autofill/IAutoFillManager;->disableOwnedAutofillServices(I)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_12} :catch_14

    .line 2376
    nop

    .line 2377
    return-void

    .line 2374
    :catch_14
    move-exception v0

    .line 2375
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o disableOwnedAutofillServices()V
    .registers 1

    .line 2361
    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->disableAutofillServices()V

    .line 2362
    return-void
.end method

.method public greylist-max-o dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 9
    .param p1, "outerPrefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 3935
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3936
    :try_start_3
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "AutofillManager:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3937
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3938
    .local v1, "pfx":Ljava/lang/String;
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "sessionId: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 3939
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "state: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getStateAsStringLocked()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3940
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "context: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3941
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "service client: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mServiceClient:Landroid/view/autofill/IAutoFillManagerClient;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3942
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v2

    .line 3943
    .local v2, "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    if-eqz v2, :cond_79

    .line 3944
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "client: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 3945
    const-string v3, " ("

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v2}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientGetActivityToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const/16 v3, 0x29

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(C)V

    .line 3947
    :cond_79
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "enabled: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 3948
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "enabledAugmentedOnly: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Landroid/view/autofill/AutofillManager;->mForAugmentedAutofillOnly:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 3949
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "hasService: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_a3

    move v3, v4

    goto :goto_a4

    :cond_a3
    move v3, v5

    :goto_a4
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 3950
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "hasCallback: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;

    if-eqz v3, :cond_b4

    goto :goto_b5

    :cond_b4
    move v4, v5

    :goto_b5
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 3951
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "onInvisibleCalled "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Landroid/view/autofill/AutofillManager;->mOnInvisibleCalled:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 3952
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "last autofilled data: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3953
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "id of last fill UI shown: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mIdShownFillUi:Landroid/view/autofill/AutofillId;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3954
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "tracked views: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3955
    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mTrackedViews:Landroid/view/autofill/AutofillManager$TrackedViews;

    if-nez v3, :cond_f2

    .line 3956
    const-string v3, "null"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_12b

    .line 3958
    :cond_f2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3959
    .local v3, "pfx2":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 3960
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "visible:"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/view/autofill/AutofillManager;->mTrackedViews:Landroid/view/autofill/AutofillManager$TrackedViews;

    invoke-static {v4}, Landroid/view/autofill/AutofillManager$TrackedViews;->-$$Nest$fgetmVisibleTrackedIds(Landroid/view/autofill/AutofillManager$TrackedViews;)Landroid/util/ArraySet;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3961
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "invisible:"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/view/autofill/AutofillManager;->mTrackedViews:Landroid/view/autofill/AutofillManager$TrackedViews;

    invoke-static {v4}, Landroid/view/autofill/AutofillManager$TrackedViews;->-$$Nest$fgetmInvisibleTrackedIds(Landroid/view/autofill/AutofillManager$TrackedViews;)Landroid/util/ArraySet;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3963
    .end local v3    # "pfx2":Ljava/lang/String;
    :goto_12b
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "fillable ids: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mFillableIds:Landroid/util/ArraySet;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3964
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "entered ids: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mEnteredIds:Landroid/util/ArraySet;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3965
    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mEnteredForAugmentedAutofillIds:Ljava/util/Set;

    if-eqz v3, :cond_156

    .line 3966
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "entered ids for augmented autofill: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3967
    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mEnteredForAugmentedAutofillIds:Ljava/util/Set;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3969
    :cond_156
    iget-boolean v3, p0, Landroid/view/autofill/AutofillManager;->mForAugmentedAutofillOnly:Z

    if-eqz v3, :cond_162

    .line 3970
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "For Augmented Autofill Only"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3972
    :cond_162
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "save trigger id: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mSaveTriggerId:Landroid/view/autofill/AutofillId;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3973
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "save on finish(): "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Landroid/view/autofill/AutofillManager;->mSaveOnFinish:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 3974
    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mOptions:Landroid/content/AutofillOptions;

    if-eqz v3, :cond_192

    .line 3975
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "options: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mOptions:Landroid/content/AutofillOptions;

    invoke-virtual {v3, p2}, Landroid/content/AutofillOptions;->dumpShort(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 3977
    :cond_192
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "fill dialog enabled: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Landroid/view/autofill/AutofillManager;->mIsFillDialogEnabled:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 3978
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "fill dialog enabled hints: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3979
    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mFillDialogEnabledHints:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3980
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "compat mode enabled: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3981
    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mCompatibilityBridge:Landroid/view/autofill/AutofillManager$CompatibilityBridge;

    if-eqz v3, :cond_220

    .line 3982
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3983
    .restart local v3    # "pfx2":Ljava/lang/String;
    const-string/jumbo v4, "true"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3984
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "windowId: "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3985
    iget-object v4, p0, Landroid/view/autofill/AutofillManager;->mCompatibilityBridge:Landroid/view/autofill/AutofillManager$CompatibilityBridge;

    invoke-static {v4}, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->-$$Nest$fgetmFocusedWindowId(Landroid/view/autofill/AutofillManager$CompatibilityBridge;)I

    move-result v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 3986
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "nodeId: "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3987
    iget-object v4, p0, Landroid/view/autofill/AutofillManager;->mCompatibilityBridge:Landroid/view/autofill/AutofillManager$CompatibilityBridge;

    invoke-static {v4}, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->-$$Nest$fgetmFocusedNodeId(Landroid/view/autofill/AutofillManager$CompatibilityBridge;)J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Ljava/io/PrintWriter;->println(J)V

    .line 3988
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "virtualId: "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3989
    iget-object v4, p0, Landroid/view/autofill/AutofillManager;->mCompatibilityBridge:Landroid/view/autofill/AutofillManager$CompatibilityBridge;

    invoke-static {v4}, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->-$$Nest$fgetmFocusedNodeId(Landroid/view/autofill/AutofillManager$CompatibilityBridge;)J

    move-result-wide v4

    .line 3990
    invoke-static {v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v4

    .line 3989
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 3991
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "focusedBounds: "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3992
    iget-object v4, p0, Landroid/view/autofill/AutofillManager;->mCompatibilityBridge:Landroid/view/autofill/AutofillManager$CompatibilityBridge;

    invoke-static {v4}, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->-$$Nest$fgetmFocusedBounds(Landroid/view/autofill/AutofillManager$CompatibilityBridge;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3993
    .end local v3    # "pfx2":Ljava/lang/String;
    goto :goto_225

    .line 3994
    :cond_220
    const-string v3, "false"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3996
    :goto_225
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "debug: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v3, Landroid/view/autofill/Helper;->sDebug:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Z)V

    .line 3997
    const-string v3, " verbose: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v3, Landroid/view/autofill/Helper;->sVerbose:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 3998
    .end local v1    # "pfx":Ljava/lang/String;
    .end local v2    # "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    monitor-exit v0

    .line 3999
    return-void

    .line 3998
    :catchall_23e
    move-exception v1

    monitor-exit v0
    :try_end_240
    .catchall {:try_start_3 .. :try_end_240} :catchall_23e

    throw v1
.end method

.method public greylist-max-o enableCompatibilityMode()V
    .registers 5

    .line 1287
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1292
    :try_start_3
    sget-boolean v1, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_21

    .line 1293
    const-string v1, "AutofillManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "creating CompatibilityBridge for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    :cond_21
    new-instance v1, Landroid/view/autofill/AutofillManager$CompatibilityBridge;

    invoke-direct {v1, p0}, Landroid/view/autofill/AutofillManager$CompatibilityBridge;-><init>(Landroid/view/autofill/AutofillManager;)V

    iput-object v1, p0, Landroid/view/autofill/AutofillManager;->mCompatibilityBridge:Landroid/view/autofill/AutofillManager$CompatibilityBridge;

    .line 1296
    monitor-exit v0

    .line 1297
    return-void

    .line 1296
    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method public whitelist getAutofillServiceComponentName()Landroid/content/ComponentName;
    .registers 6

    .line 2404
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 2406
    :cond_6
    new-instance v0, Lcom/android/internal/util/SyncResultReceiver;

    const/16 v1, 0x1388

    invoke-direct {v0, v1}, Lcom/android/internal/util/SyncResultReceiver;-><init>(I)V

    .line 2408
    .local v0, "receiver":Lcom/android/internal/util/SyncResultReceiver;
    :try_start_d
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    invoke-interface {v1, v0}, Landroid/view/autofill/IAutoFillManager;->getAutofillServiceComponentName(Lcom/android/internal/os/IResultReceiver;)V

    .line 2409
    invoke-virtual {v0}, Lcom/android/internal/util/SyncResultReceiver;->getParcelableResult()Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_18} :catch_33
    .catch Lcom/android/internal/util/SyncResultReceiver$TimeoutException; {:try_start_d .. :try_end_18} :catch_19

    return-object v1

    .line 2412
    :catch_19
    move-exception v1

    .line 2413
    .local v1, "e":Lcom/android/internal/util/SyncResultReceiver$TimeoutException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail to get autofill services component name. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2410
    .end local v1    # "e":Lcom/android/internal/util/SyncResultReceiver$TimeoutException;
    :catch_33
    move-exception v1

    .line 2411
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist getAvailableFieldClassificationAlgorithms()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2541
    new-instance v0, Lcom/android/internal/util/SyncResultReceiver;

    const/16 v1, 0x1388

    invoke-direct {v0, v1}, Lcom/android/internal/util/SyncResultReceiver;-><init>(I)V

    .line 2543
    .local v0, "receiver":Lcom/android/internal/util/SyncResultReceiver;
    :try_start_7
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    invoke-interface {v1, v0}, Landroid/view/autofill/IAutoFillManager;->getAvailableFieldClassificationAlgorithms(Lcom/android/internal/os/IResultReceiver;)V

    .line 2544
    invoke-virtual {v0}, Lcom/android/internal/util/SyncResultReceiver;->getStringArrayResult()[Ljava/lang/String;

    move-result-object v1

    .line 2545
    .local v1, "algorithms":[Ljava/lang/String;
    if-eqz v1, :cond_17

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    goto :goto_1b

    :cond_17
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_1b} :catch_36
    .catch Lcom/android/internal/util/SyncResultReceiver$TimeoutException; {:try_start_7 .. :try_end_1b} :catch_1c

    :goto_1b
    return-object v2

    .line 2548
    .end local v1    # "algorithms":[Ljava/lang/String;
    :catch_1c
    move-exception v1

    .line 2549
    .local v1, "e":Lcom/android/internal/util/SyncResultReceiver$TimeoutException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail to get available field classification algorithms. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2546
    .end local v1    # "e":Lcom/android/internal/util/SyncResultReceiver$TimeoutException;
    :catch_36
    move-exception v1

    .line 2547
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist getDefaultFieldClassificationAlgorithm()Ljava/lang/String;
    .registers 6

    .line 2520
    new-instance v0, Lcom/android/internal/util/SyncResultReceiver;

    const/16 v1, 0x1388

    invoke-direct {v0, v1}, Lcom/android/internal/util/SyncResultReceiver;-><init>(I)V

    .line 2522
    .local v0, "receiver":Lcom/android/internal/util/SyncResultReceiver;
    :try_start_7
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    invoke-interface {v1, v0}, Landroid/view/autofill/IAutoFillManager;->getDefaultFieldClassificationAlgorithm(Lcom/android/internal/os/IResultReceiver;)V

    .line 2523
    invoke-virtual {v0}, Lcom/android/internal/util/SyncResultReceiver;->getStringResult()Ljava/lang/String;

    move-result-object v1
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_10} :catch_2b
    .catch Lcom/android/internal/util/SyncResultReceiver$TimeoutException; {:try_start_7 .. :try_end_10} :catch_11

    return-object v1

    .line 2526
    :catch_11
    move-exception v1

    .line 2527
    .local v1, "e":Lcom/android/internal/util/SyncResultReceiver$TimeoutException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail to get default field classification algorithm. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2524
    .end local v1    # "e":Lcom/android/internal/util/SyncResultReceiver$TimeoutException;
    :catch_2b
    move-exception v1

    .line 2525
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public greylist-max-o getFillEventHistory()Landroid/service/autofill/FillEventHistory;
    .registers 4

    .line 1477
    :try_start_0
    new-instance v0, Lcom/android/internal/util/SyncResultReceiver;

    const/16 v1, 0x1388

    invoke-direct {v0, v1}, Lcom/android/internal/util/SyncResultReceiver;-><init>(I)V

    .line 1478
    .local v0, "receiver":Lcom/android/internal/util/SyncResultReceiver;
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    invoke-interface {v1, v0}, Landroid/view/autofill/IAutoFillManager;->getFillEventHistory(Lcom/android/internal/os/IResultReceiver;)V

    .line 1479
    invoke-virtual {v0}, Lcom/android/internal/util/SyncResultReceiver;->getParcelableResult()Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/service/autofill/FillEventHistory;
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_2e
    .catch Lcom/android/internal/util/SyncResultReceiver$TimeoutException; {:try_start_0 .. :try_end_12} :catch_13

    return-object v1

    .line 1482
    .end local v0    # "receiver":Lcom/android/internal/util/SyncResultReceiver;
    :catch_13
    move-exception v0

    .line 1483
    .local v0, "e":Lcom/android/internal/util/SyncResultReceiver$TimeoutException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail to get fill event history: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AutofillManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1484
    const/4 v1, 0x0

    return-object v1

    .line 1480
    .end local v0    # "e":Lcom/android/internal/util/SyncResultReceiver$TimeoutException;
    :catch_2e
    move-exception v0

    .line 1481
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getNextAutofillId()Landroid/view/autofill/AutofillId;
    .registers 5

    .line 2691
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v0

    .line 2692
    .local v0, "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    return-object v1

    .line 2694
    :cond_8
    invoke-interface {v0}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientGetNextAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v1

    .line 2696
    .local v1, "id":Landroid/view/autofill/AutofillId;
    if-nez v1, :cond_30

    sget-boolean v2, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_30

    .line 2697
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNextAutofillId(): client "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " returned null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AutofillManager"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2700
    :cond_30
    return-object v1
.end method

.method public whitelist getUserData()Landroid/service/autofill/UserData;
    .registers 5

    .line 2457
    :try_start_0
    new-instance v0, Lcom/android/internal/util/SyncResultReceiver;

    const/16 v1, 0x1388

    invoke-direct {v0, v1}, Lcom/android/internal/util/SyncResultReceiver;-><init>(I)V

    .line 2458
    .local v0, "receiver":Lcom/android/internal/util/SyncResultReceiver;
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    invoke-interface {v1, v0}, Landroid/view/autofill/IAutoFillManager;->getUserData(Lcom/android/internal/os/IResultReceiver;)V

    .line 2459
    invoke-virtual {v0}, Lcom/android/internal/util/SyncResultReceiver;->getParcelableResult()Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/service/autofill/UserData;
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_2d
    .catch Lcom/android/internal/util/SyncResultReceiver$TimeoutException; {:try_start_0 .. :try_end_12} :catch_13

    return-object v1

    .line 2462
    .end local v0    # "receiver":Lcom/android/internal/util/SyncResultReceiver;
    :catch_13
    move-exception v0

    .line 2463
    .local v0, "e":Lcom/android/internal/util/SyncResultReceiver$TimeoutException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to get user data for field classification. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2460
    .end local v0    # "e":Lcom/android/internal/util/SyncResultReceiver$TimeoutException;
    :catch_2d
    move-exception v0

    .line 2461
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getUserDataId()Ljava/lang/String;
    .registers 5

    .line 2434
    :try_start_0
    new-instance v0, Lcom/android/internal/util/SyncResultReceiver;

    const/16 v1, 0x1388

    invoke-direct {v0, v1}, Lcom/android/internal/util/SyncResultReceiver;-><init>(I)V

    .line 2435
    .local v0, "receiver":Lcom/android/internal/util/SyncResultReceiver;
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    invoke-interface {v1, v0}, Landroid/view/autofill/IAutoFillManager;->getUserDataId(Lcom/android/internal/os/IResultReceiver;)V

    .line 2436
    invoke-virtual {v0}, Lcom/android/internal/util/SyncResultReceiver;->getStringResult()Ljava/lang/String;

    move-result-object v1
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_2b
    .catch Lcom/android/internal/util/SyncResultReceiver$TimeoutException; {:try_start_0 .. :try_end_10} :catch_11

    return-object v1

    .line 2439
    .end local v0    # "receiver":Lcom/android/internal/util/SyncResultReceiver;
    :catch_11
    move-exception v0

    .line 2440
    .local v0, "e":Lcom/android/internal/util/SyncResultReceiver$TimeoutException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to get user data id for field classification. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2437
    .end local v0    # "e":Lcom/android/internal/util/SyncResultReceiver$TimeoutException;
    :catch_2b
    move-exception v0

    .line 2438
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o hasAutofillFeature()Z
    .registers 2

    .line 3917
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist hasEnabledAutofillServices()Z
    .registers 6

    .line 2384
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 2386
    :cond_6
    new-instance v0, Lcom/android/internal/util/SyncResultReceiver;

    const/16 v2, 0x1388

    invoke-direct {v0, v2}, Lcom/android/internal/util/SyncResultReceiver;-><init>(I)V

    .line 2388
    .local v0, "receiver":Lcom/android/internal/util/SyncResultReceiver;
    :try_start_d
    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    iget-object v4, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4, v0}, Landroid/view/autofill/IAutoFillManager;->isServiceEnabled(ILjava/lang/String;Lcom/android/internal/os/IResultReceiver;)V

    .line 2390
    invoke-virtual {v0}, Lcom/android/internal/util/SyncResultReceiver;->getIntResult()I

    move-result v2
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_22} :catch_41
    .catch Lcom/android/internal/util/SyncResultReceiver$TimeoutException; {:try_start_d .. :try_end_22} :catch_27

    const/4 v3, 0x1

    if-ne v2, v3, :cond_26

    move v1, v3

    :cond_26
    return v1

    .line 2393
    :catch_27
    move-exception v1

    .line 2394
    .local v1, "e":Lcom/android/internal/util/SyncResultReceiver$TimeoutException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail to get enabled autofill services status. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2391
    .end local v1    # "e":Lcom/android/internal/util/SyncResultReceiver$TimeoutException;
    :catch_41
    move-exception v1

    .line 2392
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist isActivityAllowedForAutofill()Z
    .registers 7

    .line 1218
    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mIsPackageFullyAllowedForAutofill:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 1219
    return v1

    .line 1221
    :cond_6
    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mIsPackagePartiallyAllowedForAutofill:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_23

    .line 1222
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v0

    .line 1223
    .local v0, "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    if-nez v0, :cond_12

    .line 1224
    return v2

    .line 1226
    :cond_12
    invoke-interface {v0}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientGetComponentName()Landroid/content/ComponentName;

    move-result-object v3

    .line 1227
    .local v3, "clientActivity":Landroid/content/ComponentName;
    iget-object v4, p0, Landroid/view/autofill/AutofillManager;->mAllowedActivitySet:Ljava/util/Set;

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 1228
    return v1

    .line 1231
    .end local v0    # "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    .end local v3    # "clientActivity":Landroid/content/ComponentName;
    :cond_23
    return v2
.end method

.method public blacklist isActivityDeniedForAutofill()Z
    .registers 7

    .line 1193
    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mIsPackageFullyDeniedForAutofill:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 1194
    return v1

    .line 1196
    :cond_6
    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mIsPackagePartiallyDeniedForAutofill:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_23

    .line 1197
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v0

    .line 1198
    .local v0, "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    if-nez v0, :cond_12

    .line 1199
    return v2

    .line 1201
    :cond_12
    invoke-interface {v0}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientGetComponentName()Landroid/content/ComponentName;

    move-result-object v3

    .line 1202
    .local v3, "clientActivity":Landroid/content/ComponentName;
    iget-object v4, p0, Landroid/view/autofill/AutofillManager;->mDeniedActivitySet:Ljava/util/Set;

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 1203
    return v1

    .line 1206
    .end local v0    # "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    .end local v3    # "clientActivity":Landroid/content/ComponentName;
    :cond_23
    return v2
.end method

.method public blacklist isAuthenticationPending()Z
    .registers 3

    .line 1562
    iget v0, p0, Landroid/view/autofill/AutofillManager;->mState:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public whitelist isAutofillSupported()Z
    .registers 6

    .line 2565
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 2567
    :cond_6
    new-instance v0, Lcom/android/internal/util/SyncResultReceiver;

    const/16 v2, 0x1388

    invoke-direct {v0, v2}, Lcom/android/internal/util/SyncResultReceiver;-><init>(I)V

    .line 2569
    .local v0, "receiver":Lcom/android/internal/util/SyncResultReceiver;
    :try_start_d
    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-interface {v2, v3, v0}, Landroid/view/autofill/IAutoFillManager;->isServiceSupported(ILcom/android/internal/os/IResultReceiver;)V

    .line 2570
    invoke-virtual {v0}, Lcom/android/internal/util/SyncResultReceiver;->getIntResult()I

    move-result v2
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_1c} :catch_3b
    .catch Lcom/android/internal/util/SyncResultReceiver$TimeoutException; {:try_start_d .. :try_end_1c} :catch_21

    const/4 v3, 0x1

    if-ne v2, v3, :cond_20

    move v1, v3

    :cond_20
    return v1

    .line 2573
    :catch_21
    move-exception v1

    .line 2574
    .local v1, "e":Lcom/android/internal/util/SyncResultReceiver$TimeoutException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail to get autofill supported status. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2571
    .end local v1    # "e":Lcom/android/internal/util/SyncResultReceiver$TimeoutException;
    :catch_3b
    move-exception v1

    .line 2572
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public greylist-max-o isAutofillUiShowing()Z
    .registers 3

    .line 2593
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAutofillClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v0

    .line 2594
    .local v0, "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    if-eqz v0, :cond_10

    invoke-interface {v0}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientIsFillUiShowing()Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    return v1
.end method

.method public blacklist isAutofillable(Landroid/view/View;)Z
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .line 1248
    invoke-virtual {p1}, Landroid/view/View;->getAutofillType()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 1251
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->isImportantForAutofill()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->isActivityDeniedForAutofill()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1252
    return v1

    .line 1255
    :cond_15
    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->isActivityAllowedForAutofill()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1d

    .line 1256
    return v2

    .line 1259
    :cond_1d
    instance-of v0, p1, Landroid/widget/EditText;

    if-eqz v0, :cond_37

    .line 1260
    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mShouldEnableMultilineFilter:Z

    if-eqz v0, :cond_2f

    move-object v0, p1

    check-cast v0, Landroid/widget/EditText;

    invoke-direct {p0, v0}, Landroid/view/autofill/AutofillManager;->isPassingMultilineCheck(Landroid/widget/EditText;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 1261
    return v1

    .line 1263
    :cond_2f
    move-object v0, p1

    check-cast v0, Landroid/widget/EditText;

    invoke-direct {p0, v0}, Landroid/view/autofill/AutofillManager;->isPassingImeActionCheck(Landroid/widget/EditText;)Z

    move-result v0

    return v0

    .line 1268
    :cond_37
    invoke-virtual {p1}, Landroid/view/View;->isImportantForAutofill()Z

    move-result v0

    if-nez v0, :cond_61

    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mShouldEnableAutofillOnAllViewTypes:Z

    if-eqz v0, :cond_42

    goto :goto_61

    .line 1272
    :cond_42
    instance-of v0, p1, Landroid/widget/CheckBox;

    if-nez v0, :cond_60

    instance-of v0, p1, Landroid/widget/Spinner;

    if-nez v0, :cond_60

    instance-of v0, p1, Landroid/widget/DatePicker;

    if-nez v0, :cond_60

    instance-of v0, p1, Landroid/widget/TimePicker;

    if-nez v0, :cond_60

    instance-of v0, p1, Landroid/widget/RadioGroup;

    if-eqz v0, :cond_57

    goto :goto_60

    .line 1279
    :cond_57
    const-string v0, "AutofillManager"

    const-string/jumbo v2, "view is not autofillable - not important and filtered by view type check"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    return v1

    .line 1277
    :cond_60
    :goto_60
    return v2

    .line 1269
    :cond_61
    :goto_61
    return v2
.end method

.method public greylist-max-o isCompatibilityModeEnabledLocked()Z
    .registers 2

    .line 1446
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mCompatibilityBridge:Landroid/view/autofill/AutofillManager$CompatibilityBridge;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist isEnabled()Z
    .registers 4

    .line 1458
    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1459
    return v1

    .line 1461
    :cond_8
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1462
    :try_start_b
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isDisabledByServiceLocked()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1463
    monitor-exit v0

    return v1

    .line 1465
    :cond_13
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->tryAddServiceClientIfNeededLocked()Z

    move-result v2

    .line 1466
    .local v2, "clientAdded":Z
    if-eqz v2, :cond_1b

    iget-boolean v1, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    :cond_1b
    monitor-exit v0

    return v1

    .line 1467
    .end local v2    # "clientAdded":Z
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_b .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public whitelist isFieldClassificationEnabled()Z
    .registers 6

    .line 2496
    new-instance v0, Lcom/android/internal/util/SyncResultReceiver;

    const/16 v1, 0x1388

    invoke-direct {v0, v1}, Lcom/android/internal/util/SyncResultReceiver;-><init>(I)V

    .line 2498
    .local v0, "receiver":Lcom/android/internal/util/SyncResultReceiver;
    :try_start_7
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    invoke-interface {v1, v0}, Landroid/view/autofill/IAutoFillManager;->isFieldClassificationEnabled(Lcom/android/internal/os/IResultReceiver;)V

    .line 2499
    invoke-virtual {v0}, Lcom/android/internal/util/SyncResultReceiver;->getIntResult()I

    move-result v1
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_10} :catch_30
    .catch Lcom/android/internal/util/SyncResultReceiver$TimeoutException; {:try_start_7 .. :try_end_10} :catch_16

    const/4 v2, 0x1

    if-ne v1, v2, :cond_14

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    return v2

    .line 2502
    :catch_16
    move-exception v1

    .line 2503
    .local v1, "e":Lcom/android/internal/util/SyncResultReceiver$TimeoutException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail to get field classification enabled status. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2500
    .end local v1    # "e":Lcom/android/internal/util/SyncResultReceiver$TimeoutException;
    :catch_30
    move-exception v1

    .line 2501
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist isImproveFillDialogEnabled()Z
    .registers 2

    .line 1036
    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mImproveFillDialogEnabled:Z

    return v0
.end method

.method public blacklist isRelativePositionForRelayoutEnabled()Z
    .registers 2

    .line 1054
    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mRelativePositionForRelayout:Z

    return v0
.end method

.method public blacklist isRelayoutFixEnabled()Z
    .registers 2

    .line 1045
    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mRelayoutFix:Z

    return v0
.end method

.method public blacklist isTriggerFillRequestOnFilteredImportantViewsEnabled()Z
    .registers 2

    .line 1063
    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mIsTriggerFillRequestOnFilteredImportantViewsEnabled:Z

    return v0
.end method

.method public blacklist isTriggerFillRequestOnUnimportantViewEnabled()Z
    .registers 2

    .line 1072
    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mIsTriggerFillRequestOnUnimportantViewEnabled:Z

    return v0
.end method

.method blacklist notifyImeAnimationEnd(J)V
    .registers 6
    .param p1, "endTimeMs"    # J

    .line 2090
    :try_start_0
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget v1, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-interface {v0, v1, p1, p2, v2}, Landroid/view/autofill/IAutoFillManager;->notifyImeAnimationEnd(IJI)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    .line 2095
    goto :goto_27

    .line 2091
    :catch_e
    move-exception v0

    .line 2094
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyImeAnimationStart(): RemoteException caught but ignored "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AutofillManager"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2096
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_27
    return-void
.end method

.method blacklist notifyImeAnimationStart(J)V
    .registers 6
    .param p1, "startTimeMs"    # J

    .line 2076
    :try_start_0
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget v1, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-interface {v0, v1, p1, p2, v2}, Landroid/view/autofill/IAutoFillManager;->notifyImeAnimationStart(IJI)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    .line 2081
    goto :goto_27

    .line 2077
    :catch_e
    move-exception v0

    .line 2080
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyImeAnimationStart(): RemoteException caught but ignored "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AutofillManager"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2082
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_27
    return-void
.end method

.method blacklist notifyReenableAutofill()V
    .registers 5

    .line 3829
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3830
    :try_start_3
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mOptions:Landroid/content/AutofillOptions;

    if-nez v1, :cond_9

    .line 3831
    monitor-exit v0

    return-void

    .line 3833
    :cond_9
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mOptions:Landroid/content/AutofillOptions;

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Landroid/content/AutofillOptions;->appDisabledExpiration:J

    .line 3834
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mOptions:Landroid/content/AutofillOptions;

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/content/AutofillOptions;->disabledActivities:Landroid/util/ArrayMap;

    .line 3835
    monitor-exit v0

    .line 3836
    return-void

    .line 3835
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public whitelist notifyValueChanged(Landroid/view/View;)V
    .registers 13
    .param p1, "view"    # Landroid/view/View;

    .line 2136
    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-nez v0, :cond_7

    .line 2137
    return-void

    .line 2139
    :cond_7
    const/4 v1, 0x0

    .line 2140
    .local v1, "id":Landroid/view/autofill/AutofillId;
    const/4 v2, 0x0

    .line 2141
    .local v2, "valueWasRead":Z
    const/4 v3, 0x0

    .line 2143
    .local v3, "value":Landroid/view/autofill/AutofillValue;
    iget-object v4, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2146
    :try_start_d
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    const/4 v5, 0x0

    if-nez v0, :cond_16

    .line 2147
    invoke-virtual {p1, v5, v5}, Landroid/view/View;->setAutofilled(ZZ)V

    goto :goto_65

    .line 2149
    :cond_16
    invoke-virtual {p1}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v0

    move-object v1, v0

    .line 2150
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    invoke-virtual {v0, v1}, Landroid/view/autofill/ParcelableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 2151
    invoke-virtual {p1}, Landroid/view/View;->getAutofillValue()Landroid/view/autofill/AutofillValue;

    move-result-object v0

    move-object v3, v0

    .line 2152
    const/4 v2, 0x1

    .line 2153
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    invoke-virtual {v0}, Landroid/view/autofill/ParcelableMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v6, 0x1

    if-ne v0, v6, :cond_38

    move v0, v6

    goto :goto_39

    :cond_38
    move v0, v5

    :goto_39
    move v7, v0

    .line 2155
    .local v7, "hideHighlight":Z
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    invoke-virtual {v0, v1}, Landroid/view/autofill/ParcelableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 2156
    invoke-virtual {p1, v6, v7}, Landroid/view/View;->setAutofilled(ZZ)V
    :try_end_49
    .catchall {:try_start_d .. :try_end_49} :catchall_cc

    .line 2158
    :try_start_49
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget v5, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    iget-object v6, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getUserId()I

    move-result v6

    invoke-interface {v0, v5, v1, v6}, Landroid/view/autofill/IAutoFillManager;->setViewAutofilled(ILandroid/view/autofill/AutofillId;I)V
    :try_end_56
    .catch Landroid/os/RemoteException; {:try_start_49 .. :try_end_56} :catch_57
    .catchall {:try_start_49 .. :try_end_56} :catchall_cc

    goto :goto_58

    .line 2159
    :catch_57
    move-exception v0

    .line 2163
    :goto_58
    goto :goto_61

    .line 2165
    :cond_59
    :try_start_59
    invoke-virtual {p1, v5, v5}, Landroid/view/View;->setAutofilled(ZZ)V

    .line 2166
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    invoke-virtual {v0, v1}, Landroid/view/autofill/ParcelableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2168
    .end local v7    # "hideHighlight":Z
    :goto_61
    goto :goto_65

    .line 2169
    :cond_62
    invoke-virtual {p1, v5, v5}, Landroid/view/View;->setAutofilled(ZZ)V

    .line 2173
    :goto_65
    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    if-eqz v0, :cond_96

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isActiveLocked()Z

    move-result v0

    if-nez v0, :cond_70

    goto :goto_96

    .line 2183
    :cond_70
    if-nez v1, :cond_78

    .line 2184
    invoke-virtual {p1}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v0
    :try_end_76
    .catchall {:try_start_59 .. :try_end_76} :catchall_cc

    move-object v6, v0

    .end local v1    # "id":Landroid/view/autofill/AutofillId;
    .local v0, "id":Landroid/view/autofill/AutofillId;
    goto :goto_79

    .line 2183
    .end local v0    # "id":Landroid/view/autofill/AutofillId;
    .restart local v1    # "id":Landroid/view/autofill/AutofillId;
    :cond_78
    move-object v6, v1

    .line 2187
    .end local v1    # "id":Landroid/view/autofill/AutofillId;
    .local v6, "id":Landroid/view/autofill/AutofillId;
    :goto_79
    if-nez v2, :cond_85

    .line 2188
    :try_start_7b
    invoke-virtual {p1}, Landroid/view/View;->getAutofillValue()Landroid/view/autofill/AutofillValue;

    move-result-object v0
    :try_end_7f
    .catchall {:try_start_7b .. :try_end_7f} :catchall_82

    move-object v3, v0

    move-object v8, v3

    goto :goto_86

    .line 2192
    :catchall_82
    move-exception v0

    move-object v1, v6

    goto :goto_cd

    .line 2187
    :cond_85
    move-object v8, v3

    .line 2191
    .end local v3    # "value":Landroid/view/autofill/AutofillValue;
    .local v8, "value":Landroid/view/autofill/AutofillValue;
    :goto_86
    :try_start_86
    invoke-direct {p0, p1}, Landroid/view/autofill/AutofillManager;->getImeStateFlag(Landroid/view/View;)I

    move-result v10

    const/4 v7, 0x0

    const/4 v9, 0x4

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Landroid/view/autofill/AutofillManager;->updateSessionLocked(Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;II)V

    .line 2192
    monitor-exit v4
    :try_end_91
    .catchall {:try_start_86 .. :try_end_91} :catchall_92

    .line 2193
    return-void

    .line 2192
    :catchall_92
    move-exception v0

    move-object v1, v6

    move-object v3, v8

    goto :goto_cd

    .line 2174
    .end local v6    # "id":Landroid/view/autofill/AutofillId;
    .end local v8    # "value":Landroid/view/autofill/AutofillValue;
    .restart local v1    # "id":Landroid/view/autofill/AutofillId;
    .restart local v3    # "value":Landroid/view/autofill/AutofillValue;
    :cond_96
    :goto_96
    :try_start_96
    invoke-direct {p0, p1}, Landroid/view/autofill/AutofillManager;->startAutofillIfNeededLocked(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_ca

    .line 2175
    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_ca

    .line 2176
    const-string v0, "AutofillManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notifyValueChanged("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "): ignoring on state "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2177
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getStateAsStringLocked()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2176
    invoke-static {v0, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2180
    :cond_ca
    monitor-exit v4

    return-void

    .line 2192
    :catchall_cc
    move-exception v0

    :goto_cd
    monitor-exit v4
    :try_end_ce
    .catchall {:try_start_96 .. :try_end_ce} :catchall_cc

    throw v0
.end method

.method public whitelist notifyValueChanged(Landroid/view/View;ILandroid/view/autofill/AutofillValue;)V
    .registers 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "virtualId"    # I
    .param p3, "value"    # Landroid/view/autofill/AutofillValue;

    .line 2203
    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-nez v0, :cond_7

    .line 2204
    return-void

    .line 2210
    :cond_7
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2211
    :try_start_a
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;
    :try_end_c
    .catchall {:try_start_a .. :try_end_c} :catchall_d8

    if-eqz v0, :cond_7f

    .line 2212
    :try_start_e
    new-instance v0, Landroid/view/autofill/AutofillId;

    invoke-virtual {p1}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v2

    iget v3, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    invoke-direct {v0, v2, p2, v3}, Landroid/view/autofill/AutofillId;-><init>(Landroid/view/autofill/AutofillId;II)V

    move-object v2, v0

    .line 2213
    .local v2, "id":Landroid/view/autofill/AutofillId;
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    invoke-virtual {v0, v2}, Landroid/view/autofill/ParcelableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 2214
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    invoke-virtual {v0, v2}, Landroid/view/autofill/ParcelableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 2216
    sget-boolean v0, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_54

    .line 2217
    const-string v0, "AutofillManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyValueChanged() virtual view autofilled successfully:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_54
    .catchall {:try_start_e .. :try_end_54} :catchall_7c

    .line 2221
    :cond_54
    :try_start_54
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget v3, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    iget-object v4, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-interface {v0, v3, v2, v4}, Landroid/view/autofill/IAutoFillManager;->setViewAutofilled(ILandroid/view/autofill/AutofillId;I)V
    :try_end_61
    .catch Landroid/os/RemoteException; {:try_start_54 .. :try_end_61} :catch_62
    .catchall {:try_start_54 .. :try_end_61} :catchall_7c

    .line 2227
    goto :goto_7f

    .line 2222
    :catch_62
    move-exception v0

    .line 2226
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_63
    const-string v3, "AutofillManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RemoteException caught but ignored "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7b
    .catchall {:try_start_63 .. :try_end_7b} :catchall_7c

    goto :goto_7f

    .line 2241
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "id":Landroid/view/autofill/AutofillId;
    :catchall_7c
    move-exception v0

    move-object v5, p3

    goto :goto_da

    .line 2231
    :cond_7f
    :goto_7f
    :try_start_7f
    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    if-eqz v0, :cond_9d

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isActiveLocked()Z

    move-result v0

    if-nez v0, :cond_8b

    move-object v5, p3

    goto :goto_9e

    .line 2239
    :cond_8b
    invoke-static {p1, p2}, Landroid/view/autofill/AutofillManager;->getAutofillId(Landroid/view/View;I)Landroid/view/autofill/AutofillId;

    move-result-object v0

    move-object v3, v0

    .line 2240
    .local v3, "id":Landroid/view/autofill/AutofillId;
    invoke-direct {p0, p1}, Landroid/view/autofill/AutofillManager;->getImeStateFlag(Landroid/view/View;)I

    move-result v7
    :try_end_94
    .catchall {:try_start_7f .. :try_end_94} :catchall_d8

    const/4 v4, 0x0

    const/4 v6, 0x4

    move-object v2, p0

    move-object v5, p3

    .end local p3    # "value":Landroid/view/autofill/AutofillValue;
    .local v5, "value":Landroid/view/autofill/AutofillValue;
    :try_start_98
    invoke-direct/range {v2 .. v7}, Landroid/view/autofill/AutofillManager;->updateSessionLocked(Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;II)V

    .line 2241
    .end local v3    # "id":Landroid/view/autofill/AutofillId;
    monitor-exit v1

    .line 2242
    return-void

    .line 2231
    .end local v5    # "value":Landroid/view/autofill/AutofillValue;
    .restart local p3    # "value":Landroid/view/autofill/AutofillValue;
    :cond_9d
    move-object v5, p3

    .line 2232
    .end local p3    # "value":Landroid/view/autofill/AutofillValue;
    .restart local v5    # "value":Landroid/view/autofill/AutofillValue;
    :goto_9e
    sget-boolean p3, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz p3, :cond_d6

    .line 2233
    const-string p3, "AutofillManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyValueChanged("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "): ignoring on state "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2234
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getStateAsStringLocked()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2233
    invoke-static {p3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2236
    :cond_d6
    monitor-exit v1

    return-void

    .line 2241
    .end local v5    # "value":Landroid/view/autofill/AutofillValue;
    .restart local p3    # "value":Landroid/view/autofill/AutofillValue;
    :catchall_d8
    move-exception v0

    move-object v5, p3

    .end local p3    # "value":Landroid/view/autofill/AutofillValue;
    .restart local v5    # "value":Landroid/view/autofill/AutofillValue;
    :goto_da
    monitor-exit v1
    :try_end_db
    .catchall {:try_start_98 .. :try_end_db} :catchall_dc

    throw v0

    :catchall_dc
    move-exception v0

    goto :goto_da
.end method

.method public whitelist notifyViewClicked(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 2250
    invoke-virtual {p1}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/autofill/AutofillManager;->notifyViewClicked(Landroid/view/autofill/AutofillId;)V

    .line 2251
    return-void
.end method

.method public whitelist notifyViewClicked(Landroid/view/View;I)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "virtualId"    # I

    .line 2260
    invoke-static {p1, p2}, Landroid/view/autofill/AutofillManager;->getAutofillId(Landroid/view/View;I)Landroid/view/autofill/AutofillId;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/autofill/AutofillManager;->notifyViewClicked(Landroid/view/autofill/AutofillId;)V

    .line 2261
    return-void
.end method

.method public whitelist notifyViewEntered(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 1614
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/autofill/AutofillManager;->notifyViewEntered(Landroid/view/View;I)V

    .line 1615
    return-void
.end method

.method public whitelist notifyViewEntered(Landroid/view/View;ILandroid/graphics/Rect;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "virtualId"    # I
    .param p3, "absBounds"    # Landroid/graphics/Rect;

    .line 1976
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/autofill/AutofillManager;->notifyViewEntered(Landroid/view/View;ILandroid/graphics/Rect;I)V

    .line 1977
    return-void
.end method

.method public blacklist notifyViewEnteredForAugmentedAutofill(Landroid/view/View;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;

    .line 3056
    invoke-virtual {p1}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v0

    .line 3057
    .local v0, "id":Landroid/view/autofill/AutofillId;
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3058
    :try_start_7
    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mEnteredForAugmentedAutofillIds:Ljava/util/Set;

    if-nez v2, :cond_13

    .line 3059
    new-instance v2, Landroid/util/ArraySet;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v2, p0, Landroid/view/autofill/AutofillManager;->mEnteredForAugmentedAutofillIds:Ljava/util/Set;

    .line 3061
    :cond_13
    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mEnteredForAugmentedAutofillIds:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3062
    monitor-exit v1

    .line 3063
    return-void

    .line 3062
    :catchall_1a
    move-exception v2

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_1a

    throw v2
.end method

.method public blacklist notifyViewEnteredForFillDialog(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .line 1676
    const/4 v0, 0x0

    .line 1677
    .local v0, "isCredmanRequested":Z
    invoke-direct {p0, p1}, Landroid/view/autofill/AutofillManager;->shouldSuppressDialogsForCredman(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_5d

    iget-boolean v1, p0, Landroid/view/autofill/AutofillManager;->mIsFillAndSaveDialogDisabledForCredentialManager:Z

    if-eqz v1, :cond_5d

    .line 1679
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/autofill/AutofillManager;->mScreenHasCredmanField:Z

    .line 1680
    invoke-direct {p0, p1}, Landroid/view/autofill/AutofillManager;->isCredmanRequested(Landroid/view/View;)Z

    move-result v1

    const-string v2, "AutofillManager"

    if-eqz v1, :cond_3a

    .line 1681
    sget-boolean v1, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_38

    .line 1682
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Prefetching fill response for credMan: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1683
    invoke-virtual {p1}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/autofill/AutofillId;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1682
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1685
    :cond_38
    const/4 v0, 0x1

    goto :goto_5d

    .line 1687
    :cond_3a
    sget-boolean v1, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_5c

    .line 1688
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring Fill Dialog request since important for credMan:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1689
    invoke-virtual {p1}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/autofill/AutofillId;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1688
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1691
    :cond_5c
    return-void

    .line 1694
    :cond_5d
    :goto_5d
    invoke-virtual {p1}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getAutofillHints()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2, v0}, Landroid/view/autofill/AutofillManager;->notifyViewReadyInner(Landroid/view/autofill/AutofillId;[Ljava/lang/String;Z)V

    .line 1695
    return-void
.end method

.method public blacklist notifyViewEnteredIgnoredDuringAuthCount()V
    .registers 4

    .line 1571
    :try_start_0
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget v1, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/view/autofill/IAutoFillManager;->notifyViewEnteredIgnoredDuringAuthCount(II)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    .line 1576
    goto :goto_f

    .line 1572
    :catch_e
    move-exception v0

    .line 1577
    :goto_f
    return-void
.end method

.method public whitelist notifyViewExited(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 1867
    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1868
    return-void

    .line 1870
    :cond_7
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1871
    :try_start_a
    invoke-virtual {p0, p1}, Landroid/view/autofill/AutofillManager;->notifyViewExitedLocked(Landroid/view/View;)V

    .line 1872
    monitor-exit v0

    .line 1873
    return-void

    .line 1872
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_f

    throw v1
.end method

.method public whitelist notifyViewExited(Landroid/view/View;I)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "virtualId"    # I

    .line 2105
    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_2a

    const-string v0, "AutofillManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyViewExited("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2106
    :cond_2a
    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-nez v0, :cond_31

    .line 2107
    return-void

    .line 2109
    :cond_31
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2110
    :try_start_34
    invoke-direct {p0, p1, p2}, Landroid/view/autofill/AutofillManager;->notifyViewExitedLocked(Landroid/view/View;I)V

    .line 2111
    monitor-exit v0

    .line 2112
    return-void

    .line 2111
    :catchall_39
    move-exception v1

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_34 .. :try_end_3b} :catchall_39

    throw v1
.end method

.method greylist-max-o notifyViewExitedLocked(Landroid/view/View;)V
    .registers 10
    .param p1, "view"    # Landroid/view/View;

    .line 1877
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->tryAddServiceClientIfNeededLocked()Z

    move-result v0

    .line 1879
    .local v0, "clientAdded":Z
    if-eqz v0, :cond_26

    iget-boolean v1, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    if-nez v1, :cond_e

    iget-boolean v1, p0, Landroid/view/autofill/AutofillManager;->mEnabledForAugmentedAutofillOnly:Z

    if-eqz v1, :cond_26

    .line 1880
    :cond_e
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isActiveLocked()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 1882
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isClientDisablingEnterExitEvent()Z

    move-result v1

    if-nez v1, :cond_26

    .line 1883
    invoke-virtual {p1}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v3

    .line 1886
    .local v3, "id":Landroid/view/autofill/AutofillId;
    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Landroid/view/autofill/AutofillManager;->updateSessionLocked(Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;II)V

    .line 1889
    .end local v3    # "id":Landroid/view/autofill/AutofillId;
    :cond_26
    return-void
.end method

.method public whitelist notifyViewVisibilityChanged(Landroid/view/View;IZ)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "virtualId"    # I
    .param p3, "isVisible"    # Z

    .line 1909
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/autofill/AutofillManager;->notifyViewVisibilityChangedInternal(Landroid/view/View;IZZ)V

    .line 1910
    return-void
.end method

.method public whitelist notifyViewVisibilityChanged(Landroid/view/View;Z)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isVisible"    # Z

    .line 1898
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, v0}, Landroid/view/autofill/AutofillManager;->notifyViewVisibilityChangedInternal(Landroid/view/View;IZZ)V

    .line 1899
    return-void
.end method

.method public whitelist notifyVirtualViewsReady(Landroid/view/View;Landroid/util/SparseArray;)V
    .registers 9
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/util/SparseArray<",
            "Landroid/view/autofill/VirtualViewFillInfo;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1638
    .local p2, "infos":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/autofill/VirtualViewFillInfo;>;"
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1639
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_8a

    .line 1642
    const/4 v0, 0x0

    .line 1643
    .local v0, "isCredmanRequested":Z
    invoke-direct {p0, p1}, Landroid/view/autofill/AutofillManager;->shouldSuppressDialogsForCredman(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_66

    iget-boolean v1, p0, Landroid/view/autofill/AutofillManager;->mIsFillAndSaveDialogDisabledForCredentialManager:Z

    if-eqz v1, :cond_66

    .line 1645
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/autofill/AutofillManager;->mScreenHasCredmanField:Z

    .line 1646
    invoke-direct {p0, p1}, Landroid/view/autofill/AutofillManager;->isCredmanRequested(Landroid/view/View;)Z

    move-result v1

    const-string v2, "AutofillManager"

    if-eqz v1, :cond_43

    .line 1647
    sget-boolean v1, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_41

    .line 1648
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Prefetching fill response for credMan: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1649
    invoke-virtual {p1}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/autofill/AutofillId;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1648
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1651
    :cond_41
    const/4 v0, 0x1

    goto :goto_66

    .line 1653
    :cond_43
    sget-boolean v1, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_65

    .line 1654
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring Fill Dialog request since important for credMan:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1655
    invoke-virtual {p1}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/autofill/AutofillId;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1654
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1657
    :cond_65
    return-void

    .line 1660
    :cond_66
    :goto_66
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_67
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_89

    .line 1661
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/autofill/VirtualViewFillInfo;

    .line 1662
    .local v2, "info":Landroid/view/autofill/VirtualViewFillInfo;
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 1663
    .local v3, "virtualId":I
    invoke-static {p1, v3}, Landroid/view/autofill/AutofillManager;->getAutofillId(Landroid/view/View;I)Landroid/view/autofill/AutofillId;

    move-result-object v4

    .line 1664
    if-nez v2, :cond_7f

    const/4 v5, 0x0

    goto :goto_83

    :cond_7f
    invoke-virtual {v2}, Landroid/view/autofill/VirtualViewFillInfo;->getAutofillHints()[Ljava/lang/String;

    move-result-object v5

    .line 1663
    :goto_83
    invoke-direct {p0, v4, v5, v0}, Landroid/view/autofill/AutofillManager;->notifyViewReadyInner(Landroid/view/autofill/AutofillId;[Ljava/lang/String;Z)V

    .line 1660
    .end local v2    # "info":Landroid/view/autofill/VirtualViewFillInfo;
    .end local v3    # "virtualId":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_67

    .line 1666
    .end local v1    # "i":I
    :cond_89
    return-void

    .line 1640
    .end local v0    # "isCredmanRequested":Z
    :cond_8a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No VirtualViewInfo found"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o onActivityFinishing()V
    .registers 4

    .line 2287
    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-nez v0, :cond_7

    .line 2288
    return-void

    .line 2290
    :cond_7
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2291
    :try_start_a
    iget-boolean v1, p0, Landroid/view/autofill/AutofillManager;->mSaveOnFinish:Z

    if-eqz v1, :cond_1e

    .line 2292
    sget-boolean v1, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_19

    const-string v1, "AutofillManager"

    const-string v2, "onActivityFinishing(): calling commitLocked()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2293
    :cond_19
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/view/autofill/AutofillManager;->commitLocked(I)V

    goto :goto_2c

    .line 2295
    :cond_1e
    sget-boolean v1, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_29

    const-string v1, "AutofillManager"

    const-string v2, "onActivityFinishing(): calling cancelLocked()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2296
    :cond_29
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->cancelLocked()V

    .line 2298
    :goto_2c
    monitor-exit v0

    .line 2299
    return-void

    .line 2298
    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_a .. :try_end_30} :catchall_2e

    throw v1
.end method

.method public greylist-max-o onAuthenticationResult(ILandroid/content/Intent;Landroid/view/View;)V
    .registers 13
    .param p1, "authenticationId"    # I
    .param p2, "data"    # Landroid/content/Intent;
    .param p3, "focusView"    # Landroid/view/View;

    .line 2604
    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_26

    .line 2605
    const-string v0, "AutofillManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAuthenticationResult(): authId= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2607
    :cond_26
    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-nez v0, :cond_38

    .line 2608
    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_37

    .line 2609
    const-string v0, "AutofillManager"

    const-string v1, "onAuthenticationResult(): autofill not enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2611
    :cond_37
    return-void

    .line 2618
    :cond_38
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2619
    :try_start_3b
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isActiveLocked()Z

    move-result v0
    :try_end_3f
    .catchall {:try_start_3b .. :try_end_3f} :catchall_11a

    if-nez v0, :cond_68

    .line 2620
    :try_start_41
    const-string v0, "AutofillManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAuthenticationResult(): sessionId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not active"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2621
    monitor-exit v1
    :try_end_62
    .catchall {:try_start_41 .. :try_end_62} :catchall_63

    return-void

    .line 2677
    :catchall_63
    move-exception v0

    move-object v2, p0

    move-object v3, p3

    goto/16 :goto_11d

    .line 2623
    :cond_68
    const/4 v0, 0x1

    :try_start_69
    iput v0, p0, Landroid/view/autofill/AutofillManager;->mState:I

    .line 2629
    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mOnInvisibleCalled:Z

    if-nez v0, :cond_8d

    if-eqz p3, :cond_8d

    .line 2630
    invoke-virtual {p3}, Landroid/view/View;->canNotifyAutofillEnterExitEvent()Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 2631
    invoke-virtual {p0, p3}, Landroid/view/autofill/AutofillManager;->notifyViewExitedLocked(Landroid/view/View;)V

    .line 2632
    invoke-virtual {p3}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v4

    .line 2633
    invoke-virtual {p3}, Landroid/view/View;->getAutofillValue()Landroid/view/autofill/AutofillValue;

    move-result-object v6
    :try_end_82
    .catchall {:try_start_69 .. :try_end_82} :catchall_11a

    .line 2632
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p3

    .end local p3    # "focusView":Landroid/view/View;
    .local v3, "focusView":Landroid/view/View;
    :try_start_86
    invoke-direct/range {v2 .. v7}, Landroid/view/autofill/AutofillManager;->notifyViewEnteredLocked(Landroid/view/View;Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;I)Landroid/view/autofill/AutofillManager$AutofillCallback;

    goto :goto_8f

    .line 2630
    .end local v3    # "focusView":Landroid/view/View;
    .restart local p3    # "focusView":Landroid/view/View;
    :cond_8a
    move-object v2, p0

    move-object v3, p3

    .end local p3    # "focusView":Landroid/view/View;
    .restart local v3    # "focusView":Landroid/view/View;
    goto :goto_8f

    .line 2629
    .end local v3    # "focusView":Landroid/view/View;
    .restart local p3    # "focusView":Landroid/view/View;
    :cond_8d
    move-object v2, p0

    move-object v3, p3

    .line 2635
    .end local p3    # "focusView":Landroid/view/View;
    .restart local v3    # "focusView":Landroid/view/View;
    :goto_8f
    if-nez p2, :cond_9a

    .line 2637
    const-string p3, "AutofillManager"

    const-string v0, "onAuthenticationResult(): empty intent"

    invoke-static {p3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2638
    monitor-exit v1

    return-void

    .line 2642
    :cond_9a
    const-string p3, "android.view.autofill.extra.AUTHENTICATION_RESULT"

    invoke-virtual {p2, p3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p3

    if-eqz p3, :cond_a9

    .line 2643
    const-string p3, "android.view.autofill.extra.AUTHENTICATION_RESULT"

    invoke-virtual {p2, p3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p3

    .local p3, "result":Landroid/os/Parcelable;
    goto :goto_bf

    .line 2644
    .end local p3    # "result":Landroid/os/Parcelable;
    :cond_a9
    const-string p3, "android.service.credentials.extra.GET_CREDENTIAL_RESPONSE"

    invoke-virtual {p2, p3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p3

    if-eqz p3, :cond_be

    .line 2646
    invoke-static {}, Landroid/service/autofill/Flags;->autofillCredmanIntegration()Z

    move-result p3

    if-eqz p3, :cond_be

    .line 2647
    const-string p3, "android.service.credentials.extra.GET_CREDENTIAL_RESPONSE"

    invoke-virtual {p2, p3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p3

    .restart local p3    # "result":Landroid/os/Parcelable;
    goto :goto_bf

    .line 2650
    .end local p3    # "result":Landroid/os/Parcelable;
    :cond_be
    const/4 p3, 0x0

    .line 2653
    .restart local p3    # "result":Landroid/os/Parcelable;
    :goto_bf
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v4, v0

    .line 2654
    .local v4, "responseData":Landroid/os/Bundle;
    const-string v0, "android.view.autofill.extra.AUTHENTICATION_RESULT"

    invoke-virtual {v4, v0, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2655
    const-string v0, "android.service.credentials.extra.GET_CREDENTIAL_EXCEPTION"

    const-class v5, Landroid/credentials/GetCredentialException;

    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object v0

    move-object v5, v0

    .line 2658
    .local v5, "exception":Ljava/io/Serializable;
    if-eqz v5, :cond_e0

    invoke-static {}, Landroid/service/autofill/Flags;->autofillCredmanIntegration()Z

    move-result v0

    if-eqz v0, :cond_e0

    .line 2659
    const-string v0, "android.service.credentials.extra.GET_CREDENTIAL_EXCEPTION"

    invoke-virtual {v4, v0, v5}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 2662
    :cond_e0
    const-string v0, "android.view.autofill.extra.CLIENT_STATE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    move-object v6, v0

    .line 2663
    .local v6, "newClientState":Landroid/os/Bundle;
    if-eqz v6, :cond_ee

    .line 2664
    const-string v0, "android.view.autofill.extra.CLIENT_STATE"

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2666
    :cond_ee
    const-string v0, "android.view.autofill.extra.AUTHENTICATION_RESULT_EPHEMERAL_DATASET"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_102

    .line 2667
    const-string v0, "android.view.autofill.extra.AUTHENTICATION_RESULT_EPHEMERAL_DATASET"

    const-string v7, "android.view.autofill.extra.AUTHENTICATION_RESULT_EPHEMERAL_DATASET"

    .line 2668
    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 2667
    invoke-virtual {v4, v0, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_102
    .catchall {:try_start_86 .. :try_end_102} :catchall_11f

    .line 2672
    :cond_102
    :try_start_102
    iget-object v0, v2, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget v7, v2, Landroid/view/autofill/AutofillManager;->mSessionId:I

    iget-object v8, v2, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    .line 2673
    invoke-virtual {v8}, Landroid/content/Context;->getUserId()I

    move-result v8

    .line 2672
    invoke-interface {v0, v4, v7, p1, v8}, Landroid/view/autofill/IAutoFillManager;->setAuthenticationResult(Landroid/os/Bundle;III)V
    :try_end_10f
    .catch Landroid/os/RemoteException; {:try_start_102 .. :try_end_10f} :catch_110
    .catchall {:try_start_102 .. :try_end_10f} :catchall_11f

    .line 2676
    goto :goto_118

    .line 2674
    :catch_110
    move-exception v0

    .line 2675
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_111
    const-string v7, "AutofillManager"

    const-string v8, "Error delivering authentication result"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2677
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v4    # "responseData":Landroid/os/Bundle;
    .end local v5    # "exception":Ljava/io/Serializable;
    .end local v6    # "newClientState":Landroid/os/Bundle;
    .end local p3    # "result":Landroid/os/Parcelable;
    :goto_118
    monitor-exit v1

    .line 2678
    return-void

    .line 2677
    .end local v3    # "focusView":Landroid/view/View;
    .local p3, "focusView":Landroid/view/View;
    :catchall_11a
    move-exception v0

    move-object v2, p0

    move-object v3, p3

    .end local p3    # "focusView":Landroid/view/View;
    .restart local v3    # "focusView":Landroid/view/View;
    :goto_11d
    monitor-exit v1
    :try_end_11e
    .catchall {:try_start_111 .. :try_end_11e} :catchall_11f

    throw v0

    :catchall_11f
    move-exception v0

    goto :goto_11d
.end method

.method public greylist-max-o onCreate(Landroid/os/Bundle;)V
    .registers 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 1307
    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1308
    return-void

    .line 1310
    :cond_7
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1311
    :try_start_a
    const-string v1, "android:lastAutoFilledData"

    const-class v2, Landroid/view/autofill/ParcelableMap;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/autofill/ParcelableMap;

    iput-object v1, p0, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    .line 1313
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isActiveLocked()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 1314
    const-string v1, "AutofillManager"

    const-string v2, "New session was started before onCreate()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    monitor-exit v0

    return-void

    .line 1318
    :cond_25
    const-string v1, "android:sessionId"

    const v2, 0x7fffffff

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    .line 1319
    const-string v1, "android:state"

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/view/autofill/AutofillManager;->mState:I

    .line 1321
    iget v1, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    if-eq v1, v2, :cond_fa

    .line 1322
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->tryAddServiceClientIfNeededLocked()Z

    move-result v1

    .line 1324
    .local v1, "clientAdded":Z
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v4

    .line 1325
    .local v4, "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    if-eqz v4, :cond_fa

    .line 1326
    new-instance v5, Lcom/android/internal/util/SyncResultReceiver;

    const/16 v6, 0x1388

    invoke-direct {v5, v6}, Lcom/android/internal/util/SyncResultReceiver;-><init>(I)V
    :try_end_4e
    .catchall {:try_start_a .. :try_end_4e} :catchall_fc

    .line 1329
    .local v5, "receiver":Lcom/android/internal/util/SyncResultReceiver;
    const/4 v6, 0x0

    .line 1330
    .local v6, "sessionWasRestored":Z
    if-eqz v1, :cond_6d

    .line 1331
    :try_start_51
    iget-object v7, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget v8, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    .line 1332
    invoke-interface {v4}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientGetActivityToken()Landroid/os/IBinder;

    move-result-object v9

    iget-object v10, p0, Landroid/view/autofill/AutofillManager;->mServiceClient:Landroid/view/autofill/IAutoFillManagerClient;

    .line 1333
    invoke-interface {v10}, Landroid/view/autofill/IAutoFillManagerClient;->asBinder()Landroid/os/IBinder;

    move-result-object v10

    .line 1331
    invoke-interface {v7, v8, v9, v10, v5}, Landroid/view/autofill/IAutoFillManager;->restoreSession(ILandroid/os/IBinder;Landroid/os/IBinder;Lcom/android/internal/os/IResultReceiver;)V

    .line 1334
    invoke-virtual {v5}, Lcom/android/internal/util/SyncResultReceiver;->getIntResult()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_6a

    goto :goto_6b

    :cond_6a
    move v8, v3

    :goto_6b
    move v6, v8

    goto :goto_87

    .line 1336
    :cond_6d
    const-string v7, "AutofillManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No service client for session "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1339
    :goto_87
    if-nez v6, :cond_ae

    .line 1340
    const-string v7, "AutofillManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Session "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " could not be restored"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1341
    iput v2, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    .line 1342
    iput v3, p0, Landroid/view/autofill/AutofillManager;->mState:I

    goto :goto_d6

    .line 1344
    :cond_ae
    sget-boolean v2, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_d3

    .line 1345
    const-string v2, "AutofillManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "session "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v7, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " was restored"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    :cond_d3
    invoke-interface {v4}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientResetableStateAvailable()V
    :try_end_d6
    .catch Landroid/os/RemoteException; {:try_start_51 .. :try_end_d6} :catch_f1
    .catch Lcom/android/internal/util/SyncResultReceiver$TimeoutException; {:try_start_51 .. :try_end_d6} :catch_d7
    .catchall {:try_start_51 .. :try_end_d6} :catchall_fc

    .line 1354
    .end local v6    # "sessionWasRestored":Z
    :goto_d6
    goto :goto_fa

    .line 1352
    :catch_d7
    move-exception v2

    .line 1353
    .local v2, "e":Lcom/android/internal/util/SyncResultReceiver$TimeoutException;
    :try_start_d8
    const-string v3, "AutofillManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Fail to get session restore status: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_fa

    .line 1350
    .end local v2    # "e":Lcom/android/internal/util/SyncResultReceiver$TimeoutException;
    :catch_f1
    move-exception v2

    .line 1351
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "AutofillManager"

    const-string v6, "Could not figure out if there was an autofill session"

    invoke-static {v3, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1354
    nop

    .line 1357
    .end local v1    # "clientAdded":Z
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v4    # "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    .end local v5    # "receiver":Lcom/android/internal/util/SyncResultReceiver;
    :cond_fa
    :goto_fa
    monitor-exit v0

    .line 1358
    return-void

    .line 1357
    :catchall_fc
    move-exception v1

    monitor-exit v0
    :try_end_fe
    .catchall {:try_start_d8 .. :try_end_fe} :catchall_fc

    throw v1
.end method

.method public blacklist onInvisibleForAutofill(Z)V
    .registers 11
    .param p1, "isExpiredResponse"    # Z

    .line 1392
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1393
    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mOnInvisibleCalled:Z

    .line 1395
    if-eqz p1, :cond_3a

    .line 1396
    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mRelayoutFix:Z

    if-eqz v0, :cond_2a

    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->isAuthenticationPending()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1397
    const-string v0, "AutofillManager"

    const-string v2, "onInvisibleForAutofill(): Ignoring expiringResponse due to pending authentication"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_3c

    .line 1400
    :try_start_19
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget v2, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    .line 1401
    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    .line 1400
    invoke-interface {v0, v2, v3}, Landroid/view/autofill/IAutoFillManager;->notifyNotExpiringResponseDuringAuth(II)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_26} :catch_27
    .catchall {:try_start_19 .. :try_end_26} :catchall_3c

    .line 1406
    goto :goto_28

    .line 1402
    :catch_27
    move-exception v0

    .line 1407
    :goto_28
    :try_start_28
    monitor-exit v1

    return-void

    .line 1409
    :cond_2a
    const-string v0, "AutofillManager"

    const-string v2, "onInvisibleForAutofill(): expiringResponse"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1411
    const/4 v7, 0x5

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Landroid/view/autofill/AutofillManager;->updateSessionLocked(Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;II)V

    .line 1414
    :cond_3a
    monitor-exit v1

    .line 1415
    return-void

    .line 1414
    :catchall_3c
    move-exception v0

    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_28 .. :try_end_3e} :catchall_3c

    throw v0
.end method

.method public greylist-max-o onPendingSaveUi(ILandroid/os/IBinder;)V
    .registers 7
    .param p1, "operation"    # I
    .param p2, "token"    # Landroid/os/IBinder;

    .line 3922
    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_26

    const-string v0, "AutofillManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPendingSaveUi("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3924
    :cond_26
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3926
    :try_start_29
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    invoke-interface {v1, p1, p2}, Landroid/view/autofill/IAutoFillManager;->onPendingSaveUi(ILandroid/os/IBinder;)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_2e} :catch_31
    .catchall {:try_start_29 .. :try_end_2e} :catchall_2f

    .line 3929
    goto :goto_39

    .line 3930
    :catchall_2f
    move-exception v1

    goto :goto_3b

    .line 3927
    :catch_31
    move-exception v1

    .line 3928
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_32
    const-string v2, "AutofillManager"

    const-string v3, "Error in onPendingSaveUi: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3930
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_39
    monitor-exit v0

    .line 3931
    return-void

    .line 3930
    :goto_3b
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_32 .. :try_end_3c} :catchall_2f

    throw v1
.end method

.method public greylist-max-o onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 1425
    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1426
    return-void

    .line 1428
    :cond_7
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1429
    :try_start_a
    iget v1, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_18

    .line 1430
    const-string v1, "android:sessionId"

    iget v2, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1432
    :cond_18
    iget v1, p0, Landroid/view/autofill/AutofillManager;->mState:I

    if-eqz v1, :cond_23

    .line 1433
    const-string v1, "android:state"

    iget v2, p0, Landroid/view/autofill/AutofillManager;->mState:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1435
    :cond_23
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    if-eqz v1, :cond_2e

    .line 1436
    const-string v1, "android:lastAutoFilledData"

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1438
    :cond_2e
    monitor-exit v0

    .line 1439
    return-void

    .line 1438
    :catchall_30
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_a .. :try_end_32} :catchall_30

    throw v1
.end method

.method public greylist-max-o onVisibleForAutofill()V
    .registers 5

    .line 1373
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    new-instance v1, Landroid/view/autofill/AutofillManager$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Landroid/view/autofill/AutofillManager$$ExternalSyntheticLambda4;-><init>(Landroid/view/autofill/AutofillManager;)V

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-virtual {v0, v3, v1, v2}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 1380
    return-void
.end method

.method greylist-max-o post(Ljava/lang/Runnable;)V
    .registers 5
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 4063
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v0

    .line 4064
    .local v0, "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    if-nez v0, :cond_12

    .line 4065
    sget-boolean v1, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_11

    const-string v1, "AutofillManager"

    const-string v2, "ignoring post() because client is null"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4066
    :cond_11
    return-void

    .line 4068
    :cond_12
    invoke-interface {v0, p1}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientRunOnUiThread(Ljava/lang/Runnable;)V

    .line 4069
    return-void
.end method

.method public whitelist registerCallback(Landroid/view/autofill/AutofillManager$AutofillCallback;)V
    .registers 8
    .param p1, "callback"    # Landroid/view/autofill/AutofillManager$AutofillCallback;

    .line 2957
    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-nez v0, :cond_7

    .line 2958
    return-void

    .line 2960
    :cond_7
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2961
    if-nez p1, :cond_e

    :try_start_c
    monitor-exit v0

    return-void

    .line 2963
    :cond_e
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;

    const/4 v2, 0x1

    if-eqz v1, :cond_15

    move v1, v2

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    .line 2964
    .local v1, "hadCallback":Z
    :goto_16
    iput-object p1, p0, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;
    :try_end_18
    .catchall {:try_start_c .. :try_end_18} :catchall_30

    .line 2966
    if-nez v1, :cond_2e

    .line 2968
    :try_start_1a
    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget v4, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    iget-object v5, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getUserId()I

    move-result v5

    invoke-interface {v3, v4, v5, v2}, Landroid/view/autofill/IAutoFillManager;->setHasCallback(IIZ)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_27} :catch_28
    .catchall {:try_start_1a .. :try_end_27} :catchall_30

    .line 2971
    goto :goto_2e

    .line 2969
    :catch_28
    move-exception v2

    .line 2970
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_29
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Landroid/view/autofill/AutofillManager;
    .end local p1    # "callback":Landroid/view/autofill/AutofillManager$AutofillCallback;
    throw v3

    .line 2973
    .end local v1    # "hadCallback":Z
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/view/autofill/AutofillManager;
    .restart local p1    # "callback":Landroid/view/autofill/AutofillManager$AutofillCallback;
    :cond_2e
    :goto_2e
    monitor-exit v0

    .line 2974
    return-void

    .line 2973
    :catchall_30
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_29 .. :try_end_32} :catchall_30

    throw v1
.end method

.method public whitelist requestAutofill(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 1499
    const/4 v0, 0x1

    .line 1500
    .local v0, "flags":I
    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-nez v1, :cond_9

    .line 1501
    or-int/lit8 v0, v0, 0x10

    .line 1503
    :cond_9
    invoke-direct {p0, p1, v0}, Landroid/view/autofill/AutofillManager;->notifyViewEntered(Landroid/view/View;I)V

    .line 1504
    return-void
.end method

.method public whitelist requestAutofill(Landroid/view/View;ILandroid/graphics/Rect;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "virtualId"    # I
    .param p3, "absBounds"    # Landroid/graphics/Rect;

    .line 1550
    const/4 v0, 0x1

    .line 1551
    .local v0, "flags":I
    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-nez v1, :cond_9

    .line 1552
    or-int/lit8 v0, v0, 0x10

    .line 1554
    :cond_9
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/autofill/AutofillManager;->notifyViewEntered(Landroid/view/View;ILandroid/graphics/Rect;I)V

    .line 1555
    return-void
.end method

.method blacklist requestAutofillFromNewSession(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .line 1521
    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->cancel()V

    .line 1522
    invoke-virtual {p0, p1}, Landroid/view/autofill/AutofillManager;->notifyViewEntered(Landroid/view/View;)V

    .line 1523
    return-void
.end method

.method public greylist-max-o requestHideFillUi()V
    .registers 3

    .line 3760
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mIdShownFillUi:Landroid/view/autofill/AutofillId;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/view/autofill/AutofillManager;->requestHideFillUi(Landroid/view/autofill/AutofillId;Z)V

    .line 3761
    return-void
.end method

.method public whitelist setAugmentedAutofillWhitelist(Ljava/util/Set;Ljava/util/Set;)V
    .registers 8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .line 3019
    .local p1, "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p2, "activities":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    const-string v0, "AutofillManager"

    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v1

    if-nez v1, :cond_9

    .line 3020
    return-void

    .line 3023
    :cond_9
    new-instance v1, Lcom/android/internal/util/SyncResultReceiver;

    const/16 v2, 0x1388

    invoke-direct {v1, v2}, Lcom/android/internal/util/SyncResultReceiver;-><init>(I)V

    .line 3026
    .local v1, "resultReceiver":Lcom/android/internal/util/SyncResultReceiver;
    :try_start_10
    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    invoke-static {p1}, Landroid/view/autofill/Helper;->toList(Ljava/util/Set;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {p2}, Landroid/view/autofill/Helper;->toList(Ljava/util/Set;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-interface {v2, v3, v4, v1}, Landroid/view/autofill/IAutoFillManager;->setAugmentedAutofillWhitelist(Ljava/util/List;Ljava/util/List;Lcom/android/internal/os/IResultReceiver;)V

    .line 3028
    invoke-virtual {v1}, Lcom/android/internal/util/SyncResultReceiver;->getIntResult()I

    move-result v2
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_21} :catch_5e
    .catch Lcom/android/internal/util/SyncResultReceiver$TimeoutException; {:try_start_10 .. :try_end_21} :catch_46

    .line 3034
    .local v2, "resultCode":I
    nop

    .line 3035
    packed-switch v2, :pswitch_data_64

    .line 3041
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setAugmentedAutofillWhitelist(): received invalid result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3044
    return-void

    .line 3037
    :pswitch_3d
    return-void

    .line 3039
    :pswitch_3e
    new-instance v0, Ljava/lang/SecurityException;

    const-string v3, "caller is not user\'s Augmented Autofill Service"

    invoke-direct {v0, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3031
    .end local v2    # "resultCode":I
    :catch_46
    move-exception v2

    .line 3032
    .local v2, "e":Lcom/android/internal/util/SyncResultReceiver$TimeoutException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail to get the result of set AugmentedAutofill whitelist. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3033
    return-void

    .line 3029
    .end local v2    # "e":Lcom/android/internal/util/SyncResultReceiver$TimeoutException;
    :catch_5e
    move-exception v0

    .line 3030
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :pswitch_data_64
    .packed-switch -0x1
        :pswitch_3e
        :pswitch_3d
    .end packed-switch
.end method

.method public whitelist setUserData(Landroid/service/autofill/UserData;)V
    .registers 4
    .param p1, "userData"    # Landroid/service/autofill/UserData;

    .line 2477
    :try_start_0
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    invoke-interface {v0, p1}, Landroid/view/autofill/IAutoFillManager;->setUserData(Landroid/service/autofill/UserData;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 2480
    nop

    .line 2481
    return-void

    .line 2478
    :catch_7
    move-exception v0

    .line 2479
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist shouldAlwaysIncludeWebviewInAssistStructure()Z
    .registers 2

    .line 1136
    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mShouldAlwaysIncludeWebviewInAssistStructure:Z

    return v0
.end method

.method public blacklist shouldIgnoreCredentialViews()Z
    .registers 2

    .line 2599
    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mShouldIgnoreCredentialViews:Z

    return v0
.end method

.method public blacklist shouldIncludeAllChildrenViewInAssistStructure()Z
    .registers 2

    .line 1129
    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mShouldIncludeAllChildrenViewInAssistStructure:Z

    return v0
.end method

.method public blacklist shouldIncludeAllChildrenViewsWithAutofillTypeNotNoneInAssistStructure()Z
    .registers 2

    .line 1122
    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mShouldIncludeAllViewsWithAutofillTypeNotNoneInAssistStructure:Z

    return v0
.end method

.method public blacklist shouldIncludeInvisibleViewInAssistStructure()Z
    .registers 2

    .line 1143
    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mShouldIncludeInvisibleViewInAssistStructure:Z

    return v0
.end method

.method public blacklist shouldRetryFill()Z
    .registers 3

    .line 1586
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1587
    :try_start_3
    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->isAuthenticationPending()Z

    move-result v1

    if-eqz v1, :cond_f

    iget-boolean v1, p0, Landroid/view/autofill/AutofillManager;->mFillReAttemptNeeded:Z

    if-eqz v1, :cond_f

    const/4 v1, 0x1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    monitor-exit v0

    return v1

    .line 1588
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public whitelist showAutofillDialog(Landroid/view/View;)Z
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4103
    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->isImproveFillDialogEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 4104
    const-string v0, "AutofillManager"

    const-string/jumbo v2, "showAutofillDialog() return false due to improve fill dialog"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4105
    return v1

    .line 4107
    :cond_10
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4108
    invoke-virtual {p1}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/view/autofill/AutofillManager;->shouldShowAutofillDialog(Landroid/view/View;Landroid/view/autofill/AutofillId;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 4109
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mShowAutofillDialogCalled:Z

    .line 4110
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 4112
    .local v1, "wrView":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    new-instance v2, Landroid/view/autofill/AutofillManager$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v1}, Landroid/view/autofill/AutofillManager$$ExternalSyntheticLambda2;-><init>(Landroid/view/autofill/AutofillManager;Ljava/lang/ref/WeakReference;)V

    invoke-virtual {p0, v2}, Landroid/view/autofill/AutofillManager;->post(Ljava/lang/Runnable;)V

    .line 4118
    return v0

    .line 4120
    .end local v1    # "wrView":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    :cond_2e
    return v1
.end method

.method public whitelist showAutofillDialog(Landroid/view/View;I)Z
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "virtualId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4150
    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->isImproveFillDialogEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 4151
    const-string v0, "AutofillManager"

    const-string/jumbo v2, "showAutofillDialog() return false due to improve fill dialog"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4152
    return v1

    .line 4154
    :cond_10
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4155
    invoke-static {p1, p2}, Landroid/view/autofill/AutofillManager;->getAutofillId(Landroid/view/View;I)Landroid/view/autofill/AutofillId;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/view/autofill/AutofillManager;->shouldShowAutofillDialog(Landroid/view/View;Landroid/view/autofill/AutofillId;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 4156
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mShowAutofillDialogCalled:Z

    .line 4157
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 4159
    .local v1, "wrView":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    new-instance v2, Landroid/view/autofill/AutofillManager$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v1, p2}, Landroid/view/autofill/AutofillManager$$ExternalSyntheticLambda3;-><init>(Landroid/view/autofill/AutofillManager;Ljava/lang/ref/WeakReference;I)V

    invoke-virtual {p0, v2}, Landroid/view/autofill/AutofillManager;->post(Ljava/lang/Runnable;)V

    .line 4165
    return v0

    .line 4167
    .end local v1    # "wrView":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    :cond_2e
    return v1
.end method

.method public whitelist unregisterCallback(Landroid/view/autofill/AutofillManager$AutofillCallback;)V
    .registers 7
    .param p1, "callback"    # Landroid/view/autofill/AutofillManager$AutofillCallback;

    .line 2982
    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-nez v0, :cond_7

    .line 2983
    return-void

    .line 2985
    :cond_7
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2986
    if-eqz p1, :cond_2f

    :try_start_c
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;

    if-eqz v1, :cond_2f

    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;

    if-eq p1, v1, :cond_15

    goto :goto_2f

    .line 2988
    :cond_15
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;
    :try_end_18
    .catchall {:try_start_c .. :try_end_18} :catchall_31

    .line 2991
    :try_start_18
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget v2, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/view/autofill/IAutoFillManager;->setHasCallback(IIZ)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_26} :catch_29
    .catchall {:try_start_18 .. :try_end_26} :catchall_31

    .line 2994
    nop

    .line 2995
    :try_start_27
    monitor-exit v0

    .line 2996
    return-void

    .line 2992
    :catch_29
    move-exception v1

    .line 2993
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Landroid/view/autofill/AutofillManager;
    .end local p1    # "callback":Landroid/view/autofill/AutofillManager$AutofillCallback;
    throw v2

    .line 2986
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/view/autofill/AutofillManager;
    .restart local p1    # "callback":Landroid/view/autofill/AutofillManager$AutofillCallback;
    :cond_2f
    :goto_2f
    monitor-exit v0

    return-void

    .line 2995
    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_27 .. :try_end_33} :catchall_31

    throw v1
.end method

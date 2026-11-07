.class public Lcom/android/internal/telephony/data/PhoneSwitcher;
.super Landroid/os/Handler;
.source "PhoneSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/data/PhoneSwitcher$ImsRegisterCallback;,
        Lcom/android/internal/telephony/data/PhoneSwitcher$DefaultNetworkCallback;,
        Lcom/android/internal/telephony/data/PhoneSwitcher$ImsRegTechProvider;,
        Lcom/android/internal/telephony/data/PhoneSwitcher$PhoneState;,
        Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;,
        Lcom/android/internal/telephony/data/PhoneSwitcher$PhoneSwitcherCallback;
    }
.end annotation


# static fields
.field public static blacklist DEFAULT_DATA_OVERRIDE_TIMEOUT_MS:I = 0x0

.field public static blacklist ECBM_DEFAULT_DATA_SWITCH_BASE_TIME_MS:I = 0x0

.field protected static final blacklist EVENT_SUBSCRIPTION_CHANGED:I = 0x66

.field protected static final blacklist HAL_COMMAND_ALLOW_DATA:I = 0x1

.field protected static final blacklist HAL_COMMAND_PREFERRED_DATA:I = 0x2

.field protected static final blacklist HAL_COMMAND_UNKNOWN:I = 0x0

.field protected static final blacklist REQUESTS_CHANGED:Z = true

.field protected static final blacklist REQUESTS_UNCHANGED:Z = false

.field protected static final blacklist VDBG:Z

.field protected static blacklist sPhoneSwitcher:Lcom/android/internal/telephony/data/PhoneSwitcher;


# instance fields
.field protected blacklist mActiveModemCount:I

.field protected final blacklist mActivePhoneRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private final blacklist mAutoDataSwitchCallback:Lcom/android/internal/telephony/data/AutoDataSwitchController$AutoDataSwitchControllerCallback;

.field private final blacklist mAutoDataSwitchController:Lcom/android/internal/telephony/data/AutoDataSwitchController;

.field private blacklist mAutoSelectedDataSubId:I

.field private final blacklist mConnectivityManager:Landroid/net/ConnectivityManager;

.field protected final blacklist mContext:Landroid/content/Context;

.field private final blacklist mCurrentDdsSwitchFailure:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Set<",
            "Lcom/android/internal/telephony/CommandException$Error;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mDataSettingsManagerCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDefaultDataChangedReceiver:Landroid/content/BroadcastReceiver;

.field private final blacklist mDefaultNetworkCallback:Lcom/android/internal/telephony/data/PhoneSwitcher$DefaultNetworkCallback;

.field private blacklist mEmergencyOverride:Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;

.field private final blacklist mFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

.field protected blacklist mHalCommandToUse:I

.field public blacklist mImsRegTechProvider:Lcom/android/internal/telephony/data/PhoneSwitcher$ImsRegTechProvider;

.field public blacklist mImsRegisterCallback:Lcom/android/internal/telephony/data/PhoneSwitcher$ImsRegisterCallback;

.field public final blacklist mImsRegistrationRadioTechMap:Landroid/util/SparseIntArray;

.field private blacklist mImsRegistrationTech:I

.field private blacklist mIsRegisteredForImsRadioTechChange:Z

.field private blacklist mLastSwitchPreferredDataReason:I

.field private final blacklist mLocalLog:Lcom/android/internal/telephony/LocalLog;

.field protected blacklist mMaxDataAttachModemCount:I

.field private final blacklist mNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

.field private blacklist mPendingSwitchNeedValidation:Z

.field private blacklist mPendingSwitchSubId:I

.field protected blacklist mPhoneIdInVoiceCall:I

.field protected blacklist mPhoneStates:[Lcom/android/internal/telephony/data/PhoneSwitcher$PhoneState;

.field protected blacklist mPhoneSubscriptions:[I

.field private final blacklist mPhoneSwitcherCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/internal/telephony/data/PhoneSwitcher$PhoneSwitcherCallback;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist mPreferredDataPhoneId:I

.field protected blacklist mPreferredDataSubId:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;

.field protected blacklist mPrimaryDataSubId:I

.field protected blacklist mRadioConfig:Lcom/android/internal/telephony/RadioConfig;

.field private final blacklist mRegistrationCallback:Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

.field private blacklist mSetOpptSubCallback:Lcom/android/internal/telephony/ISetOpportunisticDataCallback;

.field private final blacklist mSimStateIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final blacklist mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

.field private final blacklist mSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field public final blacklist mValidationCallback:Lcom/android/internal/telephony/data/CellularNetworkValidator$ValidationCallback;

.field protected final blacklist mValidator:Lcom/android/internal/telephony/data/CellularNetworkValidator;


# direct methods
.method public static synthetic blacklist $r8$lambda$DuhzZ6HZovr4T-Tbp1hxU0XUcLo(Lcom/android/internal/telephony/data/PhoneSwitcher;Ljava/lang/Integer;)Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->lambda$new$2(Ljava/lang/Integer;)Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$L4s1oh2sRbiRICNwVBrP1DIJBZ4(Landroid/content/Context;ILandroid/telephony/ims/RegistrationManager$RegistrationCallback;Ljava/util/concurrent/Executor;)V
    .registers 4

    .line 430
    invoke-static {p0, p1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object p0

    .line 431
    invoke-virtual {p0, p2, p3}, Lcom/android/ims/ImsManager;->addRegistrationCallback(Landroid/telephony/ims/RegistrationManager$RegistrationCallback;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Yx-eke6srjcSRcMajRBbIQoGxQc(ILcom/android/internal/telephony/data/PhoneSwitcher$PhoneSwitcherCallback;)V
    .registers 3

    .line 1941
    new-instance v0, Lcom/android/internal/telephony/data/PhoneSwitcher$$ExternalSyntheticLambda6;

    invoke-direct {v0, p1, p0}, Lcom/android/internal/telephony/data/PhoneSwitcher$$ExternalSyntheticLambda6;-><init>(Lcom/android/internal/telephony/data/PhoneSwitcher$PhoneSwitcherCallback;I)V

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$cbz-GDGqFzbrlTX_rsKdXDCnlGM(Lcom/android/internal/telephony/data/PhoneSwitcher;Ljava/lang/Integer;)Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->lambda$onMultiSimConfigChanged$3(Ljava/lang/Integer;)Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$sXdIfhOBEPi5HsBeztaOjxCxW6U(Lcom/android/internal/telephony/data/PhoneSwitcher$PhoneSwitcherCallback;I)V
    .registers 2

    .line 1942
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher$PhoneSwitcherCallback;->onPreferredDataPhoneIdChanged(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$xYrVLGbSjQHlSr-hs3ekud2zTfI(Landroid/content/Context;I)I
    .registers 2

    .line 416
    invoke-static {p0, p1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getRegistrationTech()I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAutoDataSwitchController(Lcom/android/internal/telephony/data/PhoneSwitcher;)Lcom/android/internal/telephony/data/AutoDataSwitchController;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mAutoDataSwitchController:Lcom/android/internal/telephony/data/AutoDataSwitchController;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmImsRegistrationTech(Lcom/android/internal/telephony/data/PhoneSwitcher;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mImsRegistrationTech:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSubscriptionManagerService(Lcom/android/internal/telephony/data/PhoneSwitcher;)Lcom/android/internal/telephony/subscription/SubscriptionManagerService;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAutoSelectedDataSubId(Lcom/android/internal/telephony/data/PhoneSwitcher;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mAutoSelectedDataSubId:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmImsRegistrationTech(Lcom/android/internal/telephony/data/PhoneSwitcher;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mImsRegistrationTech:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcancelPendingAutoDataSwitchValidation(Lcom/android/internal/telephony/data/PhoneSwitcher;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->cancelPendingAutoDataSwitchValidation()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mevaluateIfImmediateDataSwitchIsNeeded(Lcom/android/internal/telephony/data/PhoneSwitcher;Ljava/lang/String;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/PhoneSwitcher;->evaluateIfImmediateDataSwitchIsNeeded(Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mlogDataSwitchEvent(Lcom/android/internal/telephony/data/PhoneSwitcher;III)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/data/PhoneSwitcher;->logDataSwitchEvent(III)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monDataEnabledChanged(Lcom/android/internal/telephony/data/PhoneSwitcher;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->onDataEnabledChanged()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mvalidate(Lcom/android/internal/telephony/data/PhoneSwitcher;IZILcom/android/internal/telephony/ISetOpportunisticDataCallback;)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/data/PhoneSwitcher;->validate(IZILcom/android/internal/telephony/ISetOpportunisticDataCallback;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 115
    const-string v0, "PhoneSwitcher"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/data/PhoneSwitcher;->VDBG:Z

    const/16 v0, 0x1388

    .line 122
    sput v0, Lcom/android/internal/telephony/data/PhoneSwitcher;->ECBM_DEFAULT_DATA_SWITCH_BASE_TIME_MS:I

    .line 126
    sput v0, Lcom/android/internal/telephony/data/PhoneSwitcher;->DEFAULT_DATA_OVERRIDE_TIMEOUT_MS:I

    const/4 v0, 0x0

    .line 245
    sput-object v0, Lcom/android/internal/telephony/data/PhoneSwitcher;->sPhoneSwitcher:Lcom/android/internal/telephony/data/PhoneSwitcher;

    return-void
.end method

.method public constructor blacklist <init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    .registers 15

    .line 523
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 205
    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-direct {v0}, Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    const/4 v0, -0x1

    .line 218
    iput v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPendingSwitchSubId:I

    .line 220
    iput v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mLastSwitchPreferredDataReason:I

    .line 222
    new-instance v1, Lcom/android/internal/telephony/data/PhoneSwitcher$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/data/PhoneSwitcher$1;-><init>(Lcom/android/internal/telephony/data/PhoneSwitcher;)V

    iput-object v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mValidationCallback:Lcom/android/internal/telephony/data/CellularNetworkValidator$ValidationCallback;

    .line 250
    iput v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPrimaryDataSubId:I

    const v1, 0x7fffffff

    .line 257
    iput v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mAutoSelectedDataSubId:I

    .line 261
    iput v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPhoneIdInVoiceCall:I

    .line 263
    iput v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataPhoneId:I

    .line 273
    new-instance v1, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataSubId:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;

    .line 284
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPhoneSwitcherCallbacks:Ljava/util/Set;

    const/4 v1, 0x0

    .line 329
    iput v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mHalCommandToUse:I

    .line 345
    iput v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mImsRegistrationTech:I

    .line 346
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mImsRegistrationRadioTechMap:Landroid/util/SparseIntArray;

    .line 352
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mDataSettingsManagerCallbacks:Ljava/util/Map;

    .line 383
    new-instance v2, Lcom/android/internal/telephony/data/PhoneSwitcher$2;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/data/PhoneSwitcher$2;-><init>(Lcom/android/internal/telephony/data/PhoneSwitcher;)V

    iput-object v2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mRegistrationCallback:Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

    .line 403
    new-instance v2, Lcom/android/internal/telephony/data/PhoneSwitcher$DefaultNetworkCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/internal/telephony/data/PhoneSwitcher$DefaultNetworkCallback;-><init>(Lcom/android/internal/telephony/data/PhoneSwitcher;Lcom/android/internal/telephony/data/PhoneSwitcher-IA;)V

    iput-object v2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mDefaultNetworkCallback:Lcom/android/internal/telephony/data/PhoneSwitcher$DefaultNetworkCallback;

    .line 414
    new-instance v2, Lcom/android/internal/telephony/data/PhoneSwitcher$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/internal/telephony/data/PhoneSwitcher$$ExternalSyntheticLambda0;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mImsRegTechProvider:Lcom/android/internal/telephony/data/PhoneSwitcher$ImsRegTechProvider;

    .line 428
    new-instance v2, Lcom/android/internal/telephony/data/PhoneSwitcher$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/android/internal/telephony/data/PhoneSwitcher$$ExternalSyntheticLambda1;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mImsRegisterCallback:Lcom/android/internal/telephony/data/PhoneSwitcher$ImsRegisterCallback;

    .line 653
    new-instance v2, Lcom/android/internal/telephony/data/PhoneSwitcher$6;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/data/PhoneSwitcher$6;-><init>(Lcom/android/internal/telephony/data/PhoneSwitcher;)V

    iput-object v2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mDefaultDataChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 661
    new-instance v2, Lcom/android/internal/telephony/data/PhoneSwitcher$7;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/data/PhoneSwitcher$7;-><init>(Lcom/android/internal/telephony/data/PhoneSwitcher;)V

    iput-object v2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mSimStateIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 695
    new-instance v4, Lcom/android/internal/telephony/data/PhoneSwitcher$8;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/data/PhoneSwitcher$8;-><init>(Lcom/android/internal/telephony/data/PhoneSwitcher;)V

    iput-object v4, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 524
    iput-object p2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mContext:Landroid/content/Context;

    .line 525
    iput-object p4, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 526
    invoke-direct {p0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->getTm()Landroid/telephony/TelephonyManager;

    move-result-object p4

    invoke-virtual {p4}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result p4

    iput p4, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mActiveModemCount:I

    .line 527
    new-array v4, p4, [I

    iput-object v4, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPhoneSubscriptions:[I

    .line 528
    new-array p4, p4, [Lcom/android/internal/telephony/data/PhoneSwitcher$PhoneState;

    iput-object p4, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPhoneStates:[Lcom/android/internal/telephony/data/PhoneSwitcher$PhoneState;

    .line 529
    iput p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mMaxDataAttachModemCount:I

    .line 530
    new-instance p1, Lcom/android/internal/telephony/LocalLog;

    const/16 p4, 0x100

    invoke-direct {p1, p4}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    .line 532
    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    .line 534
    invoke-static {}, Lcom/android/internal/telephony/RadioConfig;->getInstance()Lcom/android/internal/telephony/RadioConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mRadioConfig:Lcom/android/internal/telephony/RadioConfig;

    .line 535
    invoke-static {}, Lcom/android/internal/telephony/data/CellularNetworkValidator;->getInstance()Lcom/android/internal/telephony/data/CellularNetworkValidator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mValidator:Lcom/android/internal/telephony/data/CellularNetworkValidator;

    .line 537
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mCurrentDdsSwitchFailure:Ljava/util/List;

    .line 538
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 539
    const-string p4, "android.telephony.action.SIM_APPLICATION_STATE_CHANGED"

    invoke-virtual {p1, p4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 540
    invoke-virtual {p2, v2, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 542
    new-instance p1, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {p1}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mActivePhoneRegistrants:Lcom/android/internal/telephony/RegistrantList;

    move p1, v1

    .line 543
    :goto_c3
    iget p4, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mActiveModemCount:I

    if-ge p1, p4, :cond_13f

    .line 544
    iget-object p4, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPhoneStates:[Lcom/android/internal/telephony/data/PhoneSwitcher$PhoneState;

    new-instance v2, Lcom/android/internal/telephony/data/PhoneSwitcher$PhoneState;

    invoke-direct {v2}, Lcom/android/internal/telephony/data/PhoneSwitcher$PhoneState;-><init>()V

    aput-object v2, p4, p1

    .line 545
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p4

    if-eqz p4, :cond_132

    const/16 v2, 0x69

    .line 547
    invoke-virtual {p4, p0, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForEmergencyCallToggle(Landroid/os/Handler;ILjava/lang/Object;)V

    const/16 v2, 0x6d

    .line 550
    invoke-virtual {p4, p0, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 552
    invoke-virtual {p4}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    if-eqz v4, :cond_111

    .line 553
    invoke-virtual {p4}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-virtual {v4, p0, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 557
    iget-object v2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mImsRegistrationRadioTechMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 558
    invoke-virtual {p4}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/imsphone/ImsPhone;

    const/16 v4, 0x78

    invoke-virtual {v2, p0, v4, v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->registerForImsRegistrationChanges(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 561
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "register handler to receive IMS registration : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/data/PhoneSwitcher;->log(Ljava/lang/String;)V

    .line 564
    :cond_111
    iget-object v2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mDataSettingsManagerCallbacks:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lcom/android/internal/telephony/data/PhoneSwitcher$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0}, Lcom/android/internal/telephony/data/PhoneSwitcher$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/telephony/data/PhoneSwitcher;)V

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 578
    invoke-virtual {p4}, Lcom/android/internal/telephony/Phone;->getDataSettingsManager()Lcom/android/internal/telephony/data/DataSettingsManager;

    move-result-object p4

    iget-object v2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mDataSettingsManagerCallbacks:Ljava/util/Map;

    .line 579
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;

    .line 578
    invoke-virtual {p4, v2}, Lcom/android/internal/telephony/data/DataSettingsManager;->registerCallback(Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;)V

    .line 585
    :cond_132
    new-instance p4, Ljava/util/HashSet;

    invoke-direct {p4}, Ljava/util/HashSet;-><init>()V

    .line 586
    iget-object v2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mCurrentDdsSwitchFailure:Ljava/util/List;

    invoke-interface {v2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_c3

    :cond_13f
    if-lez p4, :cond_14c

    .line 590
    invoke-static {v1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    iget-object p1, p1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 p4, 0x6c

    invoke-interface {p1, p0, p4, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 593
    :cond_14c
    const-string p1, "telephony_registry"

    .line 594
    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyRegistryManager;

    .line 595
    iget-object p4, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    new-instance v0, Lcom/android/internal/telephony/data/PhoneSwitcher$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/data/PhoneSwitcher$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/telephony/data/PhoneSwitcher;)V

    invoke-virtual {p1, p4, v0}, Landroid/telephony/TelephonyRegistryManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;Ljava/util/concurrent/Executor;)V

    .line 598
    const-string p1, "connectivity"

    .line 599
    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 601
    new-instance v9, Lcom/android/internal/telephony/data/PhoneSwitcher$4;

    invoke-direct {v9, p0}, Lcom/android/internal/telephony/data/PhoneSwitcher$4;-><init>(Lcom/android/internal/telephony/data/PhoneSwitcher;)V

    iput-object v9, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mAutoDataSwitchCallback:Lcom/android/internal/telephony/data/AutoDataSwitchController$AutoDataSwitchControllerCallback;

    .line 628
    new-instance v4, Lcom/android/internal/telephony/data/AutoDataSwitchController;

    iget-object v8, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    move-object v7, p0

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/telephony/data/AutoDataSwitchController;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/telephony/data/PhoneSwitcher;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;Lcom/android/internal/telephony/data/AutoDataSwitchController$AutoDataSwitchControllerCallback;)V

    iput-object v4, v7, Lcom/android/internal/telephony/data/PhoneSwitcher;->mAutoDataSwitchController:Lcom/android/internal/telephony/data/AutoDataSwitchController;

    .line 634
    iget-object p0, v7, Lcom/android/internal/telephony/data/PhoneSwitcher;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    new-instance p2, Lcom/android/internal/telephony/data/PhoneSwitcher$5;

    new-instance p3, Lcom/android/internal/telephony/data/PhoneSwitcher$$ExternalSyntheticLambda3;

    invoke-direct {p3, v7}, Lcom/android/internal/telephony/data/PhoneSwitcher$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/telephony/data/PhoneSwitcher;)V

    invoke-direct {p2, v7, p3}, Lcom/android/internal/telephony/data/PhoneSwitcher$5;-><init>(Lcom/android/internal/telephony/data/PhoneSwitcher;Ljava/util/concurrent/Executor;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->registerCallback(Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionManagerServiceCallback;)V

    const/16 p0, 0x75

    .line 644
    invoke-static {v7, p0, v3}, Lcom/android/internal/telephony/PhoneConfigurationManager;->registerForMultiSimConfigChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 647
    iget-object p0, v7, Lcom/android/internal/telephony/data/PhoneSwitcher;->mDefaultNetworkCallback:Lcom/android/internal/telephony/data/PhoneSwitcher$DefaultNetworkCallback;

    invoke-virtual {p1, p0, v7}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    .line 648
    invoke-direct {v7}, Lcom/android/internal/telephony/data/PhoneSwitcher;->updateHalCommandToUse()V

    .line 650
    const-string p0, "PhoneSwitcher started"

    invoke-virtual {v7, p0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->logl(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist cancelPendingAutoDataSwitchValidation()V
    .registers 2

    .line 1091
    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mValidator:Lcom/android/internal/telephony/data/CellularNetworkValidator;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/CellularNetworkValidator;->isValidating()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1092
    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mValidator:Lcom/android/internal/telephony/data/CellularNetworkValidator;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/CellularNetworkValidator;->stopValidation()V

    const/16 v0, 0x6e

    .line 1094
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/16 v0, 0x76

    .line 1095
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, -0x1

    .line 1096
    iput v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPendingSwitchSubId:I

    const/4 v0, 0x0

    .line 1097
    iput-boolean v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPendingSwitchNeedValidation:Z

    :cond_1d
    return-void
.end method

.method private blacklist confirmSwitch(IZ)V
    .registers 6

    .line 1662
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "confirmSwitch: subId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_12

    const-string v2, " confirmed."

    goto :goto_14

    :cond_12
    const-string v2, " cancelled."

    :goto_14
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->logl(Ljava/lang/String;)V

    .line 1664
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->isActiveSubId(I)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 1665
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is no longer active"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->logl(Ljava/lang/String;)V

    const/4 p1, 0x2

    goto :goto_5f

    :cond_3d
    if-nez p2, :cond_4b

    .line 1671
    iget p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mLastSwitchPreferredDataReason:I

    const/4 p2, 0x4

    if-ne p1, p2, :cond_49

    .line 1672
    iget-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mAutoDataSwitchController:Lcom/android/internal/telephony/data/AutoDataSwitchController;

    invoke-virtual {p1}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->evaluateRetryOnValidationFailed()V

    :cond_49
    const/4 p1, 0x1

    goto :goto_5f

    .line 1675
    :cond_4b
    iget p2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPrimaryDataSubId:I

    if-ne p1, p2, :cond_56

    const p1, 0x7fffffff

    .line 1676
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->setAutoSelectedDataSubIdInternal(I)V

    goto :goto_59

    .line 1678
    :cond_56
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->setAutoSelectedDataSubIdInternal(I)V

    .line 1681
    :goto_59
    iget-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mAutoDataSwitchController:Lcom/android/internal/telephony/data/AutoDataSwitchController;

    invoke-virtual {p1}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->resetFailedCount()V

    const/4 p1, 0x0

    .line 1685
    :goto_5f
    iget-object p2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mSetOpptSubCallback:Lcom/android/internal/telephony/ISetOpportunisticDataCallback;

    invoke-direct {p0, p2, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->sendSetOpptCallbackHelper(Lcom/android/internal/telephony/ISetOpportunisticDataCallback;I)V

    const/4 p1, 0x0

    .line 1686
    iput-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mSetOpptSubCallback:Lcom/android/internal/telephony/ISetOpportunisticDataCallback;

    const/4 p1, -0x1

    .line 1687
    iput p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPendingSwitchSubId:I

    return-void
.end method

.method private blacklist evaluateIfImmediateDataSwitchIsNeeded(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x0

    .line 511
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->onEvaluate(ZLjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 512
    iget-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataSubId:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;

    invoke-virtual {p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;->get()I

    move-result p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/android/internal/telephony/data/PhoneSwitcher;->logDataSwitchEvent(III)V

    .line 515
    iget-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataSubId:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;

    invoke-virtual {p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;->get()I

    move-result p1

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/PhoneSwitcher;->registerDefaultNetworkChangeCallback(II)V

    :cond_1a
    return-void
.end method

.method private blacklist findPhoneById(I)Lcom/android/internal/telephony/Phone;
    .registers 2

    .line 1480
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 1483
    :cond_8
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getFallbackDataPhoneIdForInternetRequests()I
    .registers 4

    .line 1430
    iget v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mAutoSelectedDataSubId:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->isActiveSubId(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1431
    iget v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mAutoSelectedDataSubId:I

    goto :goto_d

    :cond_b
    iget v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPrimaryDataSubId:I

    .line 1433
    :goto_d
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    move-result v1

    if-eqz v1, :cond_22

    const/4 v1, 0x0

    .line 1434
    :goto_14
    iget v2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mActiveModemCount:I

    if-ge v1, v2, :cond_22

    .line 1435
    iget-object v2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPhoneSubscriptions:[I

    aget v2, v2, v1

    if-ne v2, v0, :cond_1f

    return v1

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_22
    const/4 p0, -0x1

    return p0
.end method

.method public static blacklist getInstance()Lcom/android/internal/telephony/data/PhoneSwitcher;
    .registers 1

    .line 437
    sget-object v0, Lcom/android/internal/telephony/data/PhoneSwitcher;->sPhoneSwitcher:Lcom/android/internal/telephony/data/PhoneSwitcher;

    return-object v0
.end method

.method private blacklist getPhoneBySubId(I)Lcom/android/internal/telephony/Phone;
    .registers 3

    .line 1476
    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getPhoneId(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->findPhoneById(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getTm()Landroid/telephony/TelephonyManager;
    .registers 2

    .line 1102
    iget-object p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mContext:Landroid/content/Context;

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method private blacklist getValidationTimeout(IZ)J
    .registers 5

    const-wide/16 v0, 0x7d0

    if-nez p2, :cond_5

    return-wide v0

    .line 1628
    :cond_5
    iget-object p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mContext:Landroid/content/Context;

    const-string p2, "carrier_config"

    .line 1629
    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/CarrierConfigManager;

    if-eqz p0, :cond_1e

    .line 1631
    invoke-virtual {p0, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p0

    if-eqz p0, :cond_1e

    .line 1633
    const-string p1, "data_switch_validation_timeout_long"

    invoke-virtual {p0, p1}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0

    :cond_1e
    return-wide v0
.end method

.method private blacklist isActiveSubId(I)Z
    .registers 2

    .line 1387
    iget-object p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    .line 1388
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSubscriptionInfoInternal(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object p0

    if-eqz p0, :cond_10

    .line 1389
    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->isActive()Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isAnyVoiceCallActiveOnDevice()Z
    .registers 4

    .line 1898
    iget v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPhoneIdInVoiceCall:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 1899
    :goto_8
    sget-boolean v1, Lcom/android/internal/telephony/data/PhoneSwitcher;->VDBG:Z

    if-eqz v1, :cond_20

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAnyVoiceCallActiveOnDevice: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->log(Ljava/lang/String;)V

    :cond_20
    return v0
.end method

.method private blacklist isInEmergencyCallbackMode()Z
    .registers 7

    .line 1047
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_7
    if-ge v2, v0, :cond_26

    aget-object v3, p0, v2

    if-nez v3, :cond_e

    goto :goto_23

    .line 1049
    :cond_e
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->isInEcm()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_16

    return v5

    .line 1050
    :cond_16
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    if-eqz v3, :cond_23

    .line 1051
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->isInEcm()Z

    move-result v3

    if-eqz v3, :cond_23

    return v5

    :cond_23
    :goto_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_26
    return v1
.end method

.method private blacklist isPhoneIdValidForRetry(I)Z
    .registers 6

    .line 1946
    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    .line 1947
    invoke-virtual {v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getDefaultDataSubId()I

    move-result v1

    .line 1946
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getPhoneId(I)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_11

    if-ne v0, p1, :cond_11

    return v2

    .line 1951
    :cond_11
    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    return v1

    .line 1952
    :cond_1b
    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    .line 1953
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/data/PhoneSwitcher;->phoneIdForRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)I

    move-result v3

    if-ne v3, p1, :cond_21

    return v2

    :cond_34
    return v1
.end method

.method private blacklist isSimApplicationReady(I)Z
    .registers 6

    .line 677
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 681
    :cond_8
    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    iget-object v2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mContext:Landroid/content/Context;

    .line 683
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 682
    invoke-virtual {v0, p1, v2, v3}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getActiveSubscriptionInfoForSimSlotIndex(ILjava/lang/String;Ljava/lang/String;)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_25

    .line 684
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->areUiccApplicationsEnabled()Z

    move-result v0

    if-eqz v0, :cond_25

    move v0, v2

    goto :goto_26

    :cond_25
    move v0, v1

    .line 686
    :goto_26
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    .line 687
    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCard;->isEmptyProfile()Z

    move-result v3

    if-nez v3, :cond_4b

    if-eqz v0, :cond_4b

    .line 688
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSimApplicationReady: SIM is ready for slotIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->logl(Ljava/lang/String;)V

    return v2

    :cond_4b
    return v1
.end method

.method private synthetic blacklist lambda$new$2(Ljava/lang/Integer;)Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;
    .registers 3

    .line 565
    new-instance p1, Lcom/android/internal/telephony/data/PhoneSwitcher$3;

    new-instance v0, Lcom/android/internal/telephony/data/PhoneSwitcher$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/data/PhoneSwitcher$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/telephony/data/PhoneSwitcher;)V

    invoke-direct {p1, p0, v0}, Lcom/android/internal/telephony/data/PhoneSwitcher$3;-><init>(Lcom/android/internal/telephony/data/PhoneSwitcher;Ljava/util/concurrent/Executor;)V

    return-object p1
.end method

.method private synthetic blacklist lambda$onMultiSimConfigChanged$3(Ljava/lang/Integer;)Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;
    .registers 3

    .line 1001
    new-instance p1, Lcom/android/internal/telephony/data/PhoneSwitcher$9;

    new-instance v0, Lcom/android/internal/telephony/data/PhoneSwitcher$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/data/PhoneSwitcher$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/telephony/data/PhoneSwitcher;)V

    invoke-direct {p1, p0, v0}, Lcom/android/internal/telephony/data/PhoneSwitcher$9;-><init>(Lcom/android/internal/telephony/data/PhoneSwitcher;Ljava/util/concurrent/Executor;)V

    return-object p1
.end method

.method private blacklist log(Ljava/lang/String;)V
    .registers 2

    .line 1775
    const-string p0, "PhoneSwitcher"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist logDataSwitchEvent(III)V
    .registers 6

    .line 1829
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Data switch state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/internal/telephony/data/PhoneSwitcher;->switchStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " due to reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1830
    invoke-static {p3}, Lcom/android/internal/telephony/data/PhoneSwitcher;->switchReasonToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " on subId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1829
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->logl(Ljava/lang/String;)V

    .line 1831
    new-instance p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$DataSwitch;

    invoke-direct {p0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$DataSwitch;-><init>()V

    .line 1832
    iput p2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$DataSwitch;->state:I

    .line 1833
    iput p3, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$DataSwitch;->reason:I

    .line 1834
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object p2

    invoke-virtual {p2, p1, p0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeDataSwitch(ILcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$DataSwitch;)V

    return-void
.end method

.method public static blacklist make(ILandroid/content/Context;Landroid/os/Looper;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)Lcom/android/internal/telephony/data/PhoneSwitcher;
    .registers 5

    .line 445
    sget-object v0, Lcom/android/internal/telephony/data/PhoneSwitcher;->sPhoneSwitcher:Lcom/android/internal/telephony/data/PhoneSwitcher;

    if-nez v0, :cond_b

    .line 446
    new-instance v0, Lcom/android/internal/telephony/data/PhoneSwitcher;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/internal/telephony/data/PhoneSwitcher;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    sput-object v0, Lcom/android/internal/telephony/data/PhoneSwitcher;->sPhoneSwitcher:Lcom/android/internal/telephony/data/PhoneSwitcher;

    .line 449
    :cond_b
    sget-object p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->sPhoneSwitcher:Lcom/android/internal/telephony/data/PhoneSwitcher;

    return-object p0
.end method

.method private blacklist onDataEnabledChanged()V
    .registers 3

    .line 1035
    invoke-direct {p0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->isAnyVoiceCallActiveOnDevice()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1037
    const-string v0, "user changed data settings during call"

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->evaluateIfImmediateDataSwitchIsNeeded(Ljava/lang/String;I)V

    return-void

    .line 1041
    :cond_d
    iget-object p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mAutoDataSwitchController:Lcom/android/internal/telephony/data/AutoDataSwitchController;

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->evaluateAutoDataSwitch(I)V

    return-void
.end method

.method private blacklist onDdsSwitchResponse(Landroid/os/AsyncResult;)V
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_a

    .line 1904
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_a

    move v2, v1

    goto :goto_b

    :cond_a
    move v2, v0

    .line 1905
    :goto_b
    iget-object v3, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1906
    iget-object v5, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mEmergencyOverride:Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;

    if-eqz v5, :cond_31

    .line 1907
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Emergency override result sent = "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->logl(Ljava/lang/String;)V

    .line 1908
    iget-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mEmergencyOverride:Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;->sendOverrideCompleteCallbackResultAndClear(Z)V

    goto :goto_85

    :cond_31
    if-nez v2, :cond_85

    .line 1912
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDdsSwitchResponse: DDS switch failed. with exception "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->logl(Ljava/lang/String;)V

    .line 1913
    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v0, p1, Lcom/android/internal/telephony/CommandException;

    if-eqz v0, :cond_74

    .line 1914
    check-cast p1, Lcom/android/internal/telephony/CommandException;

    .line 1915
    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object p1

    .line 1916
    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mCurrentDdsSwitchFailure:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1917
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->OP_NOT_ALLOWED_DURING_VOICE_CALL:Lcom/android/internal/telephony/CommandException$Error;

    if-ne p1, v0, :cond_6a

    .line 1918
    const-string p1, "onDdsSwitchResponse: Wait for call end indication"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->logl(Ljava/lang/String;)V

    return-void

    .line 1920
    :cond_6a
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->INVALID_SIM_STATE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne p1, v0, :cond_74

    .line 1923
    const-string p1, "onDdsSwitchResponse: Wait for SIM to get READY"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->logl(Ljava/lang/String;)V

    return-void

    .line 1927
    :cond_74
    const-string p1, "onDdsSwitchResponse: Scheduling DDS switch retry"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->logl(Ljava/lang/String;)V

    const/16 p1, 0x71

    .line 1928
    invoke-static {p0, p1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x1388

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_85
    :goto_85
    if-eqz v2, :cond_a6

    .line 1933
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDdsSwitchResponse: DDS switch success on phoneId = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->logl(Ljava/lang/String;)V

    .line 1934
    iget-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mAutoDataSwitchController:Lcom/android/internal/telephony/data/AutoDataSwitchController;

    iget v2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mLastSwitchPreferredDataReason:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_a3

    move v0, v1

    :cond_a3
    invoke-virtual {p1, v4, v0}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->displayAutoDataSwitchNotification(IZ)V

    .line 1937
    :cond_a6
    iget-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mCurrentDdsSwitchFailure:Ljava/util/List;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 1939
    iget-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mActivePhoneRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    .line 1940
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->notifyPreferredDataSubIdChanged()V

    .line 1941
    iget-object p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPhoneSwitcherCallbacks:Ljava/util/Set;

    new-instance p1, Lcom/android/internal/telephony/data/PhoneSwitcher$$ExternalSyntheticLambda5;

    invoke-direct {p1, v4}, Lcom/android/internal/telephony/data/PhoneSwitcher$$ExternalSyntheticLambda5;-><init>(I)V

    invoke-interface {p0, p1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private blacklist onImsRadioTechChanged(Landroid/os/AsyncResult;)Z
    .registers 9

    .line 934
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsRegistrationRadioTechInfo;

    const/4 v0, 0x0

    if-eqz p1, :cond_66

    .line 937
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsRegistrationRadioTechInfo;->phoneId()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_66

    .line 938
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsRegistrationRadioTechInfo;->imsRegistrationState()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_16

    goto :goto_66

    .line 945
    :cond_16
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsRegistrationRadioTechInfo;->phoneId()I

    move-result v1

    .line 946
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSubscriptionId(I)I

    move-result v4

    .line 947
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsRegistrationRadioTechInfo;->imsRegistrationTech()I

    move-result p1

    .line 948
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onImsRadioTechChanged phoneId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " subId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " old tech : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mImsRegistrationRadioTechMap:Landroid/util/SparseIntArray;

    .line 949
    invoke-virtual {v6, v1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " new tech : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 948
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/data/PhoneSwitcher;->log(Ljava/lang/String;)V

    .line 952
    iget-object v5, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mImsRegistrationRadioTechMap:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v5

    if-ne v5, p1, :cond_5d

    return v0

    .line 957
    :cond_5d
    iget-object p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mImsRegistrationRadioTechMap:Landroid/util/SparseIntArray;

    invoke-virtual {p0, v1, p1}, Landroid/util/SparseIntArray;->put(II)V

    if-eq v4, v2, :cond_65

    return v3

    :cond_65
    return v0

    .line 941
    :cond_66
    :goto_66
    const-string p1, "onImsRadioTechChanged : result is not available"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->log(Ljava/lang/String;)V

    return v0
.end method

.method private declared-synchronized blacklist onMultiSimConfigChanged(I)V
    .registers 7

    monitor-enter p0

    .line 966
    :try_start_1
    iget v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mActiveModemCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_2b

    if-ne v0, p1, :cond_7

    monitor-exit p0

    return-void

    .line 968
    :cond_7
    :try_start_7
    iput p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mActiveModemCount:I

    .line 970
    iget-object v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPhoneSubscriptions:[I

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPhoneSubscriptions:[I

    .line 971
    iget-object v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPhoneStates:[Lcom/android/internal/telephony/data/PhoneSwitcher$PhoneState;

    iget v2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mActiveModemCount:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/data/PhoneSwitcher$PhoneState;

    iput-object v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPhoneStates:[Lcom/android/internal/telephony/data/PhoneSwitcher$PhoneState;

    add-int/lit8 v1, v0, -0x1

    .line 974
    :goto_1f
    iget v2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mActiveModemCount:I

    if-lt v1, v2, :cond_2e

    .line 975
    iget-object v2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mCurrentDdsSwitchFailure:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    goto :goto_1f

    :catchall_2b
    move-exception p1

    goto/16 :goto_bd

    .line 979
    :cond_2e
    :goto_2e
    iget v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mActiveModemCount:I

    if-ge v0, v1, :cond_b6

    .line 980
    iget-object v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPhoneStates:[Lcom/android/internal/telephony/data/PhoneSwitcher$PhoneState;

    new-instance v2, Lcom/android/internal/telephony/data/PhoneSwitcher$PhoneState;

    invoke-direct {v2}, Lcom/android/internal/telephony/data/PhoneSwitcher$PhoneState;-><init>()V

    aput-object v2, v1, v0

    .line 981
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    if-nez v1, :cond_42

    goto :goto_b2

    :cond_42
    const/16 v2, 0x69

    const/4 v3, 0x0

    .line 984
    invoke-virtual {v1, p0, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForEmergencyCallToggle(Landroid/os/Handler;ILjava/lang/Object;)V

    const/16 v2, 0x6d

    .line 986
    invoke-virtual {v1, p0, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 987
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    if-eqz v4, :cond_7f

    .line 988
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-virtual {v4, p0, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 992
    iget-object v2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mImsRegistrationRadioTechMap:Landroid/util/SparseIntArray;

    const/4 v4, -0x1

    invoke-virtual {v2, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 993
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/imsphone/ImsPhone;

    const/16 v4, 0x78

    invoke-virtual {v2, p0, v4, v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->registerForImsRegistrationChanges(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 996
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "register handler to receive IMS registration : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/data/PhoneSwitcher;->log(Ljava/lang/String;)V

    .line 1000
    :cond_7f
    iget-object v2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mDataSettingsManagerCallbacks:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/android/internal/telephony/data/PhoneSwitcher$$ExternalSyntheticLambda4;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/data/PhoneSwitcher$$ExternalSyntheticLambda4;-><init>(Lcom/android/internal/telephony/data/PhoneSwitcher;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 1015
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getDataSettingsManager()Lcom/android/internal/telephony/data/DataSettingsManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mDataSettingsManagerCallbacks:Ljava/util/Map;

    .line 1016
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;

    .line 1015
    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/data/DataSettingsManager;->registerCallback(Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;)V

    .line 1018
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1019
    iget-object v2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mCurrentDdsSwitchFailure:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_b2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2e

    .line 1026
    :cond_b6
    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mAutoDataSwitchController:Lcom/android/internal/telephony/data/AutoDataSwitchController;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->onMultiSimConfigChanged(I)V
    :try_end_bb
    .catchall {:try_start_7 .. :try_end_bb} :catchall_2b

    .line 1027
    monitor-exit p0

    return-void

    :goto_bd
    :try_start_bd
    monitor-exit p0
    :try_end_be
    .catchall {:try_start_bd .. :try_end_be} :catchall_2b

    throw p1
.end method

.method private blacklist onNetworkAvailable(ILandroid/net/Network;)V
    .registers 4

    .line 1691
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onNetworkAvailable: on subId "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/data/PhoneSwitcher;->log(Ljava/lang/String;)V

    .line 1694
    iget p2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPendingSwitchSubId:I

    const/4 v0, -0x1

    if-eq p2, v0, :cond_24

    if-ne p2, p1, :cond_24

    iget-boolean p2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPendingSwitchNeedValidation:Z

    if-eqz p2, :cond_20

    goto :goto_24

    :cond_20
    const/4 p2, 0x1

    .line 1698
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/PhoneSwitcher;->confirmSwitch(IZ)V

    :cond_24
    :goto_24
    return-void
.end method

.method private blacklist onValidationDone(IZ)V
    .registers 5

    .line 1702
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onValidationDone: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_f

    const-string v1, "passed"

    goto :goto_11

    :cond_f
    const-string v1, "failed"

    :goto_11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " on subId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->logl(Ljava/lang/String;)V

    .line 1703
    iget v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPendingSwitchSubId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_38

    if-eq v0, p1, :cond_2b

    goto :goto_38

    :cond_2b
    if-nez p2, :cond_34

    .line 1707
    iget-boolean p2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPendingSwitchNeedValidation:Z

    if-nez p2, :cond_32

    goto :goto_34

    :cond_32
    const/4 p2, 0x0

    goto :goto_35

    :cond_34
    :goto_34
    const/4 p2, 0x1

    :goto_35
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/PhoneSwitcher;->confirmSwitch(IZ)V

    :cond_38
    :goto_38
    return-void
.end method

.method private blacklist phoneIdForRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)I
    .registers 6

    .line 1342
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getNativeNetworkRequest()Landroid/net/NetworkRequest;

    move-result-object p1

    .line 1343
    invoke-virtual {p1}, Landroid/net/NetworkRequest;->getNetworkSpecifier()Landroid/net/NetworkSpecifier;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->getSubIdFromNetworkSpecifier(Landroid/net/NetworkSpecifier;)I

    move-result v0

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_14

    .line 1345
    iget p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataPhoneId:I

    return p0

    :cond_14
    const/4 v1, -0x1

    if-ne v0, v1, :cond_18

    return v1

    .line 1348
    :cond_18
    iget v2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataPhoneId:I

    if-ltz v2, :cond_25

    iget v3, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mActiveModemCount:I

    if-ge v2, v3, :cond_25

    .line 1350
    iget-object v3, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPhoneSubscriptions:[I

    aget v2, v3, v2

    goto :goto_26

    :cond_25
    move v2, v1

    :goto_26
    const/16 v3, 0xc

    .line 1358
    invoke-virtual {p1, v3}, Landroid/net/NetworkRequest;->hasCapability(I)Z

    move-result v3

    if-eqz v3, :cond_41

    const/16 v3, 0xd

    .line 1359
    invoke-virtual {p1, v3}, Landroid/net/NetworkRequest;->hasCapability(I)Z

    move-result p1

    if-eqz p1, :cond_41

    if-eq v0, v2, :cond_41

    iget-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mValidator:Lcom/android/internal/telephony/data/CellularNetworkValidator;

    .line 1360
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/CellularNetworkValidator;->getSubIdInValidation()I

    move-result p1

    if-eq v0, p1, :cond_41

    return v1

    :cond_41
    const/4 p1, 0x0

    .line 1367
    :goto_42
    iget v2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mActiveModemCount:I

    if-ge p1, v2, :cond_50

    .line 1368
    iget-object v2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPhoneSubscriptions:[I

    aget v2, v2, p1

    if-ne v2, v0, :cond_4d

    return p1

    :cond_4d
    add-int/lit8 p1, p1, 0x1

    goto :goto_42

    :cond_50
    return v1
.end method

.method private blacklist registerDefaultNetworkChangeCallback(II)V
    .registers 3

    .line 1083
    iget-object p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mDefaultNetworkCallback:Lcom/android/internal/telephony/data/PhoneSwitcher$DefaultNetworkCallback;

    iput p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher$DefaultNetworkCallback;->mExpectedSubId:I

    .line 1084
    iput p2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher$DefaultNetworkCallback;->mSwitchReason:I

    return-void
.end method

.method private blacklist sendSetOpptCallbackHelper(Lcom/android/internal/telephony/ISetOpportunisticDataCallback;I)V
    .registers 4

    if-nez p1, :cond_3

    goto :goto_1c

    .line 1642
    :cond_3
    :try_start_3
    invoke-interface {p1, p2}, Lcom/android/internal/telephony/ISetOpportunisticDataCallback;->onComplete(I)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_6} :catch_7

    return-void

    :catch_7
    move-exception p1

    .line 1644
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "RemoteException "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->logl(Ljava/lang/String;)V

    :goto_1c
    return-void
.end method

.method private blacklist setAutoSelectedDataSubIdInternal(I)V
    .registers 3

    .line 1655
    iget v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mAutoSelectedDataSubId:I

    if-eq v0, p1, :cond_10

    .line 1656
    iput p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mAutoSelectedDataSubId:I

    .line 1657
    iget p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mLastSwitchPreferredDataReason:I

    invoke-static {p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->switchReasonToString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->onEvaluate(ZLjava/lang/String;)Z

    :cond_10
    return-void
.end method

.method private blacklist setOpportunisticDataSubscription(IZLcom/android/internal/telephony/ISetOpportunisticDataCallback;)V
    .registers 5

    const/4 v0, 0x3

    .line 1539
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/internal/telephony/data/PhoneSwitcher;->validate(IZILcom/android/internal/telephony/ISetOpportunisticDataCallback;)V

    return-void
.end method

.method private blacklist shouldSwitchDataDueToInCall()Z
    .registers 3

    .line 1450
    iget v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPhoneIdInVoiceCall:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->findPhoneById(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1451
    iget v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPrimaryDataSubId:I

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->getPhoneBySubId(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    if-eqz p0, :cond_22

    .line 1453
    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->isUserDataEnabled()Z

    move-result p0

    if-eqz p0, :cond_22

    if-eqz v0, :cond_22

    .line 1455
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getDataSettingsManager()Lcom/android/internal/telephony/data/DataSettingsManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataSettingsManager;->isDataEnabled()Z

    move-result p0

    if-eqz p0, :cond_22

    const/4 p0, 0x1

    return p0

    :cond_22
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist switchPhone(IZ)V
    .registers 6

    .line 1274
    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPhoneStates:[Lcom/android/internal/telephony/data/PhoneSwitcher$PhoneState;

    aget-object v0, v0, p1

    .line 1275
    iget-boolean v1, v0, Lcom/android/internal/telephony/data/PhoneSwitcher$PhoneState;->active:Z

    if-ne v1, p2, :cond_9

    return-void

    .line 1276
    :cond_9
    iput-boolean p2, v0, Lcom/android/internal/telephony/data/PhoneSwitcher$PhoneState;->active:Z

    .line 1277
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_15

    const-string p2, "activate "

    goto :goto_17

    :cond_15
    const-string p2, "deactivate "

    :goto_17
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/data/PhoneSwitcher;->logl(Ljava/lang/String;)V

    .line 1278
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/data/PhoneSwitcher$PhoneState;->lastRequested:J

    .line 1279
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->sendRilCommands(I)V

    return-void
.end method

.method private static blacklist switchReasonToString(I)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_31

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2e

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2b

    const/4 v0, 0x3

    if-eq p0, v0, :cond_28

    const/4 v0, 0x4

    if-eq p0, v0, :cond_25

    .line 1801
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1800
    :cond_25
    const-string p0, "AUTO"

    return-object p0

    .line 1799
    :cond_28
    const-string p0, "CBRS"

    return-object p0

    .line 1798
    :cond_2b
    const-string p0, "IN_CALL"

    return-object p0

    .line 1797
    :cond_2e
    const-string p0, "MANUAL"

    return-object p0

    .line 1796
    :cond_31
    const-string p0, "UNKNOWN"

    return-object p0
.end method

.method private static blacklist switchStateToString(I)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_25

    const/4 v0, 0x1

    if-eq p0, v0, :cond_22

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1f

    .line 1817
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1816
    :cond_1f
    const-string p0, "END"

    return-object p0

    .line 1815
    :cond_22
    const-string p0, "START"

    return-object p0

    .line 1814
    :cond_25
    const-string p0, "UNKNOWN"

    return-object p0
.end method

.method private blacklist updateHalCommandToUse()V
    .registers 2

    .line 1753
    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mRadioConfig:Lcom/android/internal/telephony/RadioConfig;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RadioConfig;->isSetPreferredDataCommandSupported()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x2

    goto :goto_b

    :cond_a
    const/4 v0, 0x1

    .line 1754
    :goto_b
    iput v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mHalCommandToUse:I

    return-void
.end method

.method private blacklist updatesIfPhoneInVoiceCallChanged()Z
    .registers 8

    .line 453
    iget v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPhoneIdInVoiceCall:I

    const/4 v1, -0x1

    .line 457
    iput v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPhoneIdInVoiceCall:I

    .line 458
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_c
    if-ge v4, v2, :cond_2a

    aget-object v5, v1, v4

    .line 459
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/data/PhoneSwitcher;->isPhoneInVoiceCall(Lcom/android/internal/telephony/Phone;)Z

    move-result v6

    if-nez v6, :cond_24

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/data/PhoneSwitcher;->isPhoneInVoiceCall(Lcom/android/internal/telephony/Phone;)Z

    move-result v6

    if-eqz v6, :cond_21

    goto :goto_24

    :cond_21
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 460
    :cond_24
    :goto_24
    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPhoneIdInVoiceCall:I

    .line 465
    :cond_2a
    iget v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPhoneIdInVoiceCall:I

    if-eq v1, v0, :cond_4e

    .line 466
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPhoneInVoiceCallChanged from phoneId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " to phoneId "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPhoneIdInVoiceCall:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->logl(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_4e
    return v3
.end method

.method private blacklist validate(IZILcom/android/internal/telephony/ISetOpportunisticDataCallback;)V
    .registers 13

    const v0, 0x7fffffff

    if-ne p1, v0, :cond_9

    .line 1557
    iget v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPrimaryDataSubId:I

    move v3, v1

    goto :goto_a

    :cond_9
    move v3, p1

    .line 1558
    :goto_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Validate subId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " due to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/android/internal/telephony/data/PhoneSwitcher;->switchReasonToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " needValidation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " subIdToValidate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mAutoSelectedDataSubId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mAutoSelectedDataSubId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mPreferredDataSubId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataSubId:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;

    .line 1561
    invoke-virtual {v2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;->get()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1558
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->logl(Ljava/lang/String;)V

    .line 1562
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/data/PhoneSwitcher;->isActiveSubId(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_7a

    .line 1563
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Can\'t switch data to inactive subId "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/data/PhoneSwitcher;->logl(Ljava/lang/String;)V

    if-ne p1, v0, :cond_75

    .line 1567
    iput v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mAutoSelectedDataSubId:I

    .line 1568
    invoke-direct {p0, p4, v2}, Lcom/android/internal/telephony/data/PhoneSwitcher;->sendSetOpptCallbackHelper(Lcom/android/internal/telephony/ISetOpportunisticDataCallback;I)V

    return-void

    :cond_75
    const/4 p1, 0x2

    .line 1570
    invoke-direct {p0, p4, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->sendSetOpptCallbackHelper(Lcom/android/internal/telephony/ISetOpportunisticDataCallback;I)V

    return-void

    .line 1575
    :cond_7a
    iget-object v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mValidator:Lcom/android/internal/telephony/data/CellularNetworkValidator;

    invoke-virtual {v1}, Lcom/android/internal/telephony/data/CellularNetworkValidator;->isValidating()Z

    move-result v1

    const/4 v4, 0x1

    if-eqz v1, :cond_90

    .line 1576
    iget-object v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mValidator:Lcom/android/internal/telephony/data/CellularNetworkValidator;

    invoke-virtual {v1}, Lcom/android/internal/telephony/data/CellularNetworkValidator;->stopValidation()V

    .line 1577
    iget-object v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mSetOpptSubCallback:Lcom/android/internal/telephony/ISetOpportunisticDataCallback;

    invoke-direct {p0, v1, v4}, Lcom/android/internal/telephony/data/PhoneSwitcher;->sendSetOpptCallbackHelper(Lcom/android/internal/telephony/ISetOpportunisticDataCallback;I)V

    const/4 v1, 0x0

    .line 1578
    iput-object v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mSetOpptSubCallback:Lcom/android/internal/telephony/ISetOpportunisticDataCallback;

    :cond_90
    const/16 v1, 0x6e

    .line 1583
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/16 v1, 0x76

    .line 1584
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v1, -0x1

    .line 1586
    iput v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPendingSwitchSubId:I

    .line 1588
    iget-object v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataSubId:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;

    invoke-virtual {v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;->get()I

    move-result v1

    if-ne v3, v1, :cond_ad

    if-ne p1, v0, :cond_a9

    .line 1590
    iput v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mAutoSelectedDataSubId:I

    .line 1592
    :cond_a9
    invoke-direct {p0, p4, v2}, Lcom/android/internal/telephony/data/PhoneSwitcher;->sendSetOpptCallbackHelper(Lcom/android/internal/telephony/ISetOpportunisticDataCallback;I)V

    return-void

    .line 1596
    :cond_ad
    iput p3, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mLastSwitchPreferredDataReason:I

    .line 1597
    invoke-direct {p0, v3, v4, p3}, Lcom/android/internal/telephony/data/PhoneSwitcher;->logDataSwitchEvent(III)V

    .line 1600
    invoke-direct {p0, v3, p3}, Lcom/android/internal/telephony/data/PhoneSwitcher;->registerDefaultNetworkChangeCallback(II)V

    .line 1605
    iget-object p3, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mValidator:Lcom/android/internal/telephony/data/CellularNetworkValidator;

    invoke-virtual {p3}, Lcom/android/internal/telephony/data/CellularNetworkValidator;->isValidationFeatureSupported()Z

    move-result p3

    if-nez p3, :cond_c4

    .line 1606
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->setAutoSelectedDataSubIdInternal(I)V

    .line 1607
    invoke-direct {p0, p4, v2}, Lcom/android/internal/telephony/data/PhoneSwitcher;->sendSetOpptCallbackHelper(Lcom/android/internal/telephony/ISetOpportunisticDataCallback;I)V

    return-void

    .line 1616
    :cond_c4
    iput v3, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPendingSwitchSubId:I

    .line 1617
    iput-boolean p2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPendingSwitchNeedValidation:Z

    .line 1618
    iput-object p4, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mSetOpptSubCallback:Lcom/android/internal/telephony/ISetOpportunisticDataCallback;

    .line 1619
    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/data/PhoneSwitcher;->getValidationTimeout(IZ)J

    move-result-wide v4

    .line 1620
    iget-object v2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mValidator:Lcom/android/internal/telephony/data/CellularNetworkValidator;

    iget-boolean v6, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPendingSwitchNeedValidation:Z

    iget-object v7, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mValidationCallback:Lcom/android/internal/telephony/data/CellularNetworkValidator$ValidationCallback;

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/data/CellularNetworkValidator;->validate(IJZLcom/android/internal/telephony/data/CellularNetworkValidator$ValidationCallback;)V

    return-void
.end method


# virtual methods
.method protected blacklist activate(I)V
    .registers 3

    const/4 v0, 0x1

    .line 1266
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->switchPhone(IZ)V

    return-void
.end method

.method protected blacklist deactivate(I)V
    .registers 3

    const/4 v0, 0x0

    .line 1270
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->switchPhone(IZ)V

    return-void
.end method

.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 13

    .line 1862
    new-instance v0, Lcom/android/internal/telephony/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/telephony/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1863
    const-string p2, "PhoneSwitcher:"

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1864
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 1865
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 p2, 0x0

    .line 1866
    :goto_14
    iget v2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mActiveModemCount:I

    if-ge p2, v2, :cond_64

    .line 1867
    iget-object v2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPhoneStates:[Lcom/android/internal/telephony/data/PhoneSwitcher$PhoneState;

    aget-object v2, v2, p2

    .line 1868
    iget-wide v3, v2, Lcom/android/internal/telephony/data/PhoneSwitcher$PhoneState;->lastRequested:J

    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1869
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PhoneId("

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") active="

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v2, Lcom/android/internal/telephony/data/PhoneSwitcher$PhoneState;->active:Z

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", lastRequest="

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1871
    iget-wide v2, v2, Lcom/android/internal/telephony/data/PhoneSwitcher$PhoneState;->lastRequested:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_48

    const-string v2, "never"

    goto :goto_57

    .line 1872
    :cond_48
    const-string v8, "%tm-%td %tH:%tM:%tS.%tL"

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v8, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_57
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1869
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_14

    .line 1874
    :cond_64
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPreferredDataPhoneId="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataPhoneId:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1875
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPreferredDataSubId="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataSubId:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;

    invoke-virtual {v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;->get()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1876
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DefaultDataSubId="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-virtual {v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getDefaultDataSubId()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1877
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DefaultDataPhoneId="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    .line 1878
    invoke-virtual {v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getDefaultDataSubId()I

    move-result v2

    .line 1877
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getPhoneId(I)I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1879
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPrimaryDataSubId="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPrimaryDataSubId:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1880
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAutoSelectedDataSubId="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mAutoSelectedDataSubId:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1881
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsRegisteredForImsRadioTechChange="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mIsRegisteredForImsRadioTechChange:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1882
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPendingSwitchNeedValidation="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPendingSwitchNeedValidation:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1883
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mMaxDataAttachModemCount="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mMaxDataAttachModemCount:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1884
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mActiveModemCount="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mActiveModemCount:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1885
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPhoneIdInVoiceCall="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPhoneIdInVoiceCall:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1886
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCurrentDdsSwitchFailure="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mCurrentDdsSwitchFailure:Ljava/util/List;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1887
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLastSwitchPreferredDataReason="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mLastSwitchPreferredDataReason:I

    .line 1888
    invoke-static {v1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->switchReasonToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1887
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1889
    const-string p2, "Local logs:"

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1890
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 1891
    iget-object p2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p2, p1, v0, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1892
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 1893
    iget-object p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mAutoDataSwitchController:Lcom/android/internal/telephony/data/AutoDataSwitchController;

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1894
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    return-void
.end method

.method public blacklist getActiveDataSubId()I
    .registers 1

    .line 1851
    iget-object p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataSubId:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;

    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;->get()I

    move-result p0

    return p0
.end method

.method public blacklist getAutoSelectedDataSubId()I
    .registers 1

    .line 1858
    iget p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mAutoSelectedDataSubId:I

    return p0
.end method

.method public blacklist getPreferredDataPhoneId()I
    .registers 1

    .line 1758
    iget p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataPhoneId:I

    return p0
.end method

.method protected blacklist getSubIdFromNetworkSpecifier(Landroid/net/NetworkSpecifier;)I
    .registers 2

    if-nez p1, :cond_6

    const p0, 0x7fffffff

    return p0

    .line 1380
    :cond_6
    instance-of p0, p1, Landroid/net/TelephonyNetworkSpecifier;

    if-eqz p0, :cond_11

    .line 1381
    check-cast p1, Landroid/net/TelephonyNetworkSpecifier;

    invoke-virtual {p1}, Landroid/net/TelephonyNetworkSpecifier;->getSubscriptionId()I

    move-result p0

    return p0

    :cond_11
    const/4 p0, -0x1

    return p0
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 8

    .line 706
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    const/16 v2, 0x74

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_250

    :pswitch_a
    goto/16 :goto_1e6

    .line 757
    :pswitch_c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez p1, :cond_16

    .line 758
    const-string p1, "EVENT_IMS_RADIO_TECH_CHANGED but parameter is not available"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->log(Ljava/lang/String;)V

    return-void

    .line 761
    :cond_16
    check-cast p1, Landroid/os/AsyncResult;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->onImsRadioTechChanged(Landroid/os/AsyncResult;)Z

    move-result p1

    if-nez p1, :cond_20

    goto/16 :goto_1e6

    .line 768
    :cond_20
    invoke-direct {p0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->updatesIfPhoneInVoiceCallChanged()Z

    move-result p1

    if-nez p1, :cond_2c

    invoke-direct {p0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->isAnyVoiceCallActiveOnDevice()Z

    move-result p1

    if-eqz p1, :cond_1e6

    .line 769
    :cond_2c
    const-string p1, "Ims radio tech changed"

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->evaluateIfImmediateDataSwitchIsNeeded(Ljava/lang/String;I)V

    return-void

    .line 907
    :pswitch_32
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 908
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 910
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v1

    if-nez v1, :cond_51

    .line 911
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_PROCESS_SIM_STATE_CHANGE: skip processing due to invalid slotId: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->logl(Ljava/lang/String;)V

    return-void

    :cond_51
    const/16 v1, 0xa

    if-ne v1, p1, :cond_1e6

    .line 914
    iget-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mCurrentDdsSwitchFailure:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->INVALID_SIM_STATE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6e

    .line 916
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->isSimApplicationReady(I)Z

    move-result p1

    if-eqz p1, :cond_6e

    .line 917
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->sendRilCommands(I)V

    .line 921
    :cond_6e
    iget-object p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mAutoDataSwitchController:Lcom/android/internal/telephony/data/AutoDataSwitchController;

    const/4 p1, 0x7

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->evaluateAutoDataSwitch(I)V

    return-void

    .line 829
    :pswitch_75
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 830
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/net/Network;

    .line 831
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->onNetworkAvailable(ILandroid/net/Network;)V

    return-void

    .line 902
    :pswitch_7f
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 903
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->onMultiSimConfigChanged(I)V

    return-void

    .line 896
    :pswitch_8f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Emergency override removed - "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mEmergencyOverride:Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->logl(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 897
    iput-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mEmergencyOverride:Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;

    .line 898
    const-string p1, "emer_rm_override_dds"

    invoke-virtual {p0, v3, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->onEvaluate(ZLjava/lang/String;)Z

    return-void

    .line 854
    :pswitch_ae
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;

    .line 855
    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mEmergencyOverride:Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;

    if-eqz v0, :cond_100

    .line 859
    iget v1, v0, Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;->mPhoneId:I

    iget v5, p1, Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;->mPhoneId:I

    if-eq v1, v5, :cond_f1

    .line 860
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "emergency override requested for phone id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " when there is already an override in place for phone id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mEmergencyOverride:Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;

    iget v1, v1, Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ". Ignoring."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->logl(Ljava/lang/String;)V

    .line 863
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;->isCallbackAvailable()Z

    move-result p0

    if-eqz p0, :cond_1e6

    .line 865
    iget-object p0, p1, Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;->mOverrideCompleteFuture:Ljava/util/concurrent/CompletableFuture;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void

    .line 869
    :cond_f1
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;->isCallbackAvailable()Z

    move-result v0

    if-eqz v0, :cond_100

    .line 872
    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mEmergencyOverride:Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;

    iget-object v0, v0, Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;->mOverrideCompleteFuture:Ljava/util/concurrent/CompletableFuture;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 876
    :cond_100
    iput-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mEmergencyOverride:Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;

    .line 878
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "new emergency override - "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mEmergencyOverride:Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->logl(Ljava/lang/String;)V

    .line 880
    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 881
    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 883
    sget v0, Lcom/android/internal/telephony/data/PhoneSwitcher;->DEFAULT_DATA_OVERRIDE_TIMEOUT_MS:I

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 886
    const-string p1, "emer_override_dds"

    invoke-virtual {p0, v3, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->onEvaluate(ZLjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1e6

    .line 889
    iget-object p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mEmergencyOverride:Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;->sendOverrideCompleteCallbackResultAndClear(Z)V

    return-void

    .line 840
    :pswitch_133
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 841
    iget v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mActiveModemCount:I

    if-gt v0, p1, :cond_141

    goto/16 :goto_1e6

    .line 844
    :cond_141
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->isPhoneIdValidForRetry(I)Z

    move-result v0

    if-eqz v0, :cond_15f

    .line 845
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_MODEM_COMMAND_RETRY: resend modem command on phone "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->logl(Ljava/lang/String;)V

    .line 846
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->sendRilCommands(I)V

    return-void

    .line 848
    :cond_15f
    const-string v0, "EVENT_MODEM_COMMAND_RETRY: skip retry as DDS sub changed"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->logl(Ljava/lang/String;)V

    .line 849
    iget-object p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mCurrentDdsSwitchFailure:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    return-void

    .line 835
    :pswitch_170
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 836
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->onDdsSwitchResponse(Landroid/os/AsyncResult;)V

    return-void

    .line 823
    :pswitch_178
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 824
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-ne p1, v4, :cond_17f

    move v3, v4

    .line 825
    :cond_17f
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/data/PhoneSwitcher;->onValidationDone(IZ)V

    return-void

    .line 782
    :pswitch_183
    invoke-direct {p0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->updatesIfPhoneInVoiceCallChanged()Z

    move-result p1

    if-nez p1, :cond_18a

    goto :goto_1e6

    .line 786
    :cond_18a
    invoke-direct {p0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->isAnyVoiceCallActiveOnDevice()Z

    move-result p1

    if-nez p1, :cond_1b1

    move p1, v3

    .line 787
    :goto_191
    iget v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mActiveModemCount:I

    if-ge p1, v0, :cond_1b1

    .line 788
    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mCurrentDdsSwitchFailure:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->OP_NOT_ALLOWED_DURING_VOICE_CALL:Lcom/android/internal/telephony/CommandException$Error;

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ae

    .line 790
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->isPhoneIdValidForRetry(I)Z

    move-result v0

    if-eqz v0, :cond_1ae

    .line 791
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->sendRilCommands(I)V

    :cond_1ae
    add-int/lit8 p1, p1, 0x1

    goto :goto_191

    .line 798
    :cond_1b1
    iget-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mEmergencyOverride:Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;

    if-eqz p1, :cond_1d4

    iget-boolean p1, p1, Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;->mPendingOriginatingCall:Z

    if-eqz p1, :cond_1d4

    .line 799
    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 800
    iget p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPhoneIdInVoiceCall:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1d4

    .line 802
    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 803
    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mEmergencyOverride:Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;

    iget v0, v0, Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;->mGnssOverrideTimeMs:I

    sget v2, Lcom/android/internal/telephony/data/PhoneSwitcher;->ECBM_DEFAULT_DATA_SWITCH_BASE_TIME_MS:I

    add-int/2addr v0, v2

    int-to-long v4, v0

    invoke-virtual {p0, p1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 808
    iget-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mEmergencyOverride:Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;

    iput-boolean v3, p1, Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;->mPendingOriginatingCall:Z

    .line 813
    :cond_1d4
    const-string p1, "precise call state changed"

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->evaluateIfImmediateDataSwitchIsNeeded(Ljava/lang/String;I)V

    .line 815
    invoke-direct {p0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->isAnyVoiceCallActiveOnDevice()Z

    move-result p1

    if-nez p1, :cond_1e6

    .line 817
    iget-object p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mAutoDataSwitchController:Lcom/android/internal/telephony/data/AutoDataSwitchController;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->evaluateAutoDataSwitch(I)V

    :cond_1e6
    :goto_1e6
    return-void

    .line 747
    :pswitch_1e7
    invoke-direct {p0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->updateHalCommandToUse()V

    .line 748
    const-string p1, "EVENT_RADIO_ON"

    invoke-virtual {p0, v3, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->onEvaluate(ZLjava/lang/String;)Z

    return-void

    .line 739
    :pswitch_1f0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 740
    iget v1, p1, Landroid/os/Message;->arg2:I

    if-ne v1, v4, :cond_1f7

    move v3, v4

    .line 741
    :cond_1f7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/ISetOpportunisticDataCallback;

    .line 743
    invoke-direct {p0, v0, v3, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->setOpportunisticDataSubscription(IZLcom/android/internal/telephony/ISetOpportunisticDataCallback;)V

    return-void

    .line 734
    :pswitch_1ff
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 735
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->sendRilCommands(I)V

    return-void

    .line 717
    :pswitch_205
    invoke-direct {p0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->isInEmergencyCallbackMode()Z

    move-result p1

    .line 718
    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mEmergencyOverride:Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;

    if-eqz v0, :cond_23d

    .line 719
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Emergency override - ecbm status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->logl(Ljava/lang/String;)V

    if-eqz p1, :cond_22b

    .line 722
    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 723
    iget-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mEmergencyOverride:Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;

    iput-boolean v4, p1, Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;->mRequiresEcmFinish:Z

    goto :goto_23d

    .line 724
    :cond_22b
    iget-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mEmergencyOverride:Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;

    iget-boolean p1, p1, Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;->mRequiresEcmFinish:Z

    if-eqz p1, :cond_23d

    .line 726
    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 727
    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mEmergencyOverride:Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;

    iget v0, v0, Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;->mGnssOverrideTimeMs:I

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 730
    :cond_23d
    :goto_23d
    const-string p1, "emergencyToggle"

    invoke-virtual {p0, v4, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->onEvaluate(ZLjava/lang/String;)Z

    return-void

    .line 708
    :pswitch_243
    const-string p1, "subscription changed"

    invoke-virtual {p0, v3, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->onEvaluate(ZLjava/lang/String;)Z

    return-void

    .line 712
    :pswitch_249
    const-string p1, "primary data sub changed"

    invoke-direct {p0, p1, v4}, Lcom/android/internal/telephony/data/PhoneSwitcher;->evaluateIfImmediateDataSwitchIsNeeded(Ljava/lang/String;I)V

    return-void

    nop

    :pswitch_data_250
    .packed-switch 0x65
        :pswitch_249
        :pswitch_243
        :pswitch_a
        :pswitch_a
        :pswitch_205
        :pswitch_1ff
        :pswitch_1f0
        :pswitch_1e7
        :pswitch_183
        :pswitch_178
        :pswitch_a
        :pswitch_170
        :pswitch_133
        :pswitch_a
        :pswitch_ae
        :pswitch_8f
        :pswitch_7f
        :pswitch_75
        :pswitch_32
        :pswitch_c
    .end packed-switch
.end method

.method blacklist isEmergencyNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z
    .registers 2

    const/16 p0, 0xa

    .line 1513
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->hasCapability(I)Z

    move-result p0

    return p0
.end method

.method protected blacklist isPhoneActive(I)Z
    .registers 3

    .line 1518
    iget v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mActiveModemCount:I

    if-lt p1, v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 1520
    :cond_6
    iget-object p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPhoneStates:[Lcom/android/internal/telephony/data/PhoneSwitcher$PhoneState;

    aget-object p0, p0, p1

    iget-boolean p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher$PhoneState;->active:Z

    return p0
.end method

.method protected blacklist isPhoneInVoiceCall(Lcom/android/internal/telephony/Phone;)Z
    .registers 4

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return p0

    .line 1738
    :cond_4
    invoke-interface {p1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 1739
    invoke-interface {p1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object p1

    if-eqz v0, :cond_2e

    if-nez p1, :cond_11

    goto :goto_2e

    .line 1748
    :cond_11
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v1

    if-nez v1, :cond_1f

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_2d

    .line 1749
    :cond_1f
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v0

    if-nez v0, :cond_2e

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object p1

    sget-object v0, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq p1, v0, :cond_2e

    :cond_2d
    const/4 p0, 0x1

    :cond_2e
    :goto_2e
    return p0
.end method

.method protected blacklist logl(Ljava/lang/String;)V
    .registers 2

    .line 1766
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->log(Ljava/lang/String;)V

    .line 1767
    iget-object p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method protected blacklist notifyPreferredDataSubIdChanged()V
    .registers 4

    .line 1841
    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mContext:Landroid/content/Context;

    const-string v1, "telephony_registry"

    .line 1842
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyRegistryManager;

    .line 1843
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyPreferredDataSubIdChanged to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataSubId:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;

    invoke-virtual {v2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;->get()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->logl(Ljava/lang/String;)V

    .line 1844
    iget-object p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataSubId:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;

    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;->get()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyRegistryManager;->notifyActiveDataSubIdChanged(I)V

    return-void
.end method

.method protected blacklist onEvaluate(ZLjava/lang/String;)Z
    .registers 13

    .line 1117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1120
    iget v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mHalCommandToUse:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eq v1, v4, :cond_10

    if-eqz p1, :cond_10

    move p1, v3

    goto :goto_11

    :cond_10
    move p1, v2

    .line 1123
    :goto_11
    iget-object v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-virtual {v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getDefaultDataSubId()I

    move-result v1

    .line 1124
    iget v5, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPrimaryDataSubId:I

    const-string v6, "->"

    if-eq v1, v5, :cond_31

    .line 1125
    const-string v5, " mPrimaryDataSubId "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPrimaryDataSubId:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1127
    iput v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPrimaryDataSubId:I

    .line 1128
    iput v3, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mLastSwitchPreferredDataReason:I

    :cond_31
    move v1, v2

    move v5, v1

    .line 1135
    :goto_33
    iget v7, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mActiveModemCount:I

    const-string v8, " phone["

    if-ge v1, v7, :cond_7a

    .line 1136
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSubscriptionId(I)I

    move-result v7

    .line 1138
    invoke-static {v7}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v9

    if-eqz v9, :cond_44

    move v5, v3

    .line 1140
    :cond_44
    iget-object v9, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPhoneSubscriptions:[I

    aget v9, v9, v1

    if-eq v7, v9, :cond_77

    .line 1141
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPhoneSubscriptions:[I

    aget p1, p1, v1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1142
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1143
    iget p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mAutoSelectedDataSubId:I

    iget-object v8, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPhoneSubscriptions:[I

    aget v9, v8, v1

    if-ne p1, v9, :cond_6f

    const p1, 0x7fffffff

    .line 1144
    iput p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mAutoSelectedDataSubId:I

    .line 1146
    :cond_6f
    aput v7, v8, v1

    .line 1156
    iget-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mAutoDataSwitchController:Lcom/android/internal/telephony/data/AutoDataSwitchController;

    invoke-virtual {p1}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->notifySubscriptionsMappingChanged()V

    move p1, v3

    :cond_77
    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    :cond_7a
    if-nez v5, :cond_80

    .line 1161
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->transitionToEmergencyPhone()V

    goto :goto_89

    .line 1163
    :cond_80
    sget-boolean v1, Lcom/android/internal/telephony/data/PhoneSwitcher;->VDBG:Z

    if-eqz v1, :cond_89

    const-string v1, "Found an active subscription"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->log(Ljava/lang/String;)V

    .line 1167
    :cond_89
    :goto_89
    iget v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataPhoneId:I

    .line 1170
    iget-object v7, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataSubId:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;

    invoke-virtual {v7}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;->get()I

    move-result v7

    if-eqz v5, :cond_96

    .line 1177
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->updatePreferredDataPhoneId()V

    .line 1179
    :cond_96
    iget v5, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataPhoneId:I

    if-eq v1, v5, :cond_ac

    .line 1180
    const-string p1, " preferred data phoneId "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1181
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataPhoneId:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move p1, v3

    goto :goto_bc

    .line 1183
    :cond_ac
    iget-object v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataSubId:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;

    invoke-virtual {v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;->get()I

    move-result v1

    if-eq v7, v1, :cond_bc

    .line 1184
    const-string v1, "SIM refresh, notify dds change"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->logl(Ljava/lang/String;)V

    .line 1186
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->notifyPreferredDataSubIdChanged()V

    :cond_bc
    :goto_bc
    if-nez p1, :cond_c6

    .line 1192
    const-string v1, "EVENT_RADIO_ON"

    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_226

    .line 1193
    :cond_c6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "evaluating due to "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/data/PhoneSwitcher;->logl(Ljava/lang/String;)V

    .line 1194
    iget p2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mHalCommandToUse:I

    if-ne p2, v4, :cond_f1

    .line 1198
    :goto_de
    iget p2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mActiveModemCount:I

    if-ge v2, p2, :cond_eb

    .line 1199
    iget-object p2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPhoneStates:[Lcom/android/internal/telephony/data/PhoneSwitcher$PhoneState;

    aget-object p2, p2, v2

    iput-boolean v3, p2, Lcom/android/internal/telephony/data/PhoneSwitcher$PhoneState;->active:Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_de

    .line 1201
    :cond_eb
    iget p2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataPhoneId:I

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/data/PhoneSwitcher;->sendRilCommands(I)V

    return p1

    .line 1203
    :cond_f1
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 1208
    iget v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mMaxDataAttachModemCount:I

    iget v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mActiveModemCount:I

    if-ne v0, v1, :cond_10b

    move v0, v2

    .line 1209
    :goto_fd
    iget v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mMaxDataAttachModemCount:I

    if-ge v0, v1, :cond_177

    .line 1210
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_fd

    .line 1214
    :cond_10b
    iget v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPhoneIdInVoiceCall:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_117

    .line 1215
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1218
    :cond_117
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    iget v3, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mMaxDataAttachModemCount:I

    if-ge v0, v3, :cond_152

    .line 1219
    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_125
    :goto_125
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_152

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    .line 1220
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/data/PhoneSwitcher;->phoneIdForRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)I

    move-result v3

    if-ne v3, v1, :cond_138

    goto :goto_125

    .line 1222
    :cond_138
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_143

    goto :goto_125

    .line 1223
    :cond_143
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1224
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    iget v4, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mMaxDataAttachModemCount:I

    if-lt v3, v4, :cond_125

    .line 1228
    :cond_152
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mMaxDataAttachModemCount:I

    if-ge v0, v1, :cond_177

    iget v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataPhoneId:I

    .line 1229
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_177

    iget v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataPhoneId:I

    .line 1230
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    move-result v0

    if-eqz v0, :cond_177

    .line 1231
    iget v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataPhoneId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1235
    :cond_177
    sget-boolean v0, Lcom/android/internal/telephony/data/PhoneSwitcher;->VDBG:Z

    if-eqz v0, :cond_1fb

    .line 1236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPrimaryDataSubId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPrimaryDataSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->log(Ljava/lang/String;)V

    .line 1237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAutoSelectedDataSubId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mAutoSelectedDataSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->log(Ljava/lang/String;)V

    move v0, v2

    .line 1238
    :goto_1a8
    iget v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mActiveModemCount:I

    if-ge v0, v1, :cond_1d2

    .line 1239
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] using sub["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPhoneSubscriptions:[I

    aget v3, v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->log(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1a8

    .line 1241
    :cond_1d2
    const-string v0, " newActivePhones:"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->log(Ljava/lang/String;)V

    .line 1242
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v1, v2

    :goto_1dc
    if-ge v1, v0, :cond_1fb

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    check-cast v3, Ljava/lang/Integer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/data/PhoneSwitcher;->log(Ljava/lang/String;)V

    goto :goto_1dc

    :cond_1fb
    move v0, v2

    .line 1245
    :goto_1fc
    iget v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mActiveModemCount:I

    if-ge v0, v1, :cond_210

    .line 1246
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20d

    .line 1247
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->deactivate(I)V

    :cond_20d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1fc

    .line 1252
    :cond_210
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_214
    if-ge v2, v0, :cond_226

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1253
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->activate(I)V

    goto :goto_214

    :cond_226
    return p1
.end method

.method public blacklist onRadioCapChanged(I)V
    .registers 3

    .line 1287
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const/16 v0, 0x6a

    .line 1288
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 1289
    iput p1, p0, Landroid/os/Message;->arg1:I

    .line 1290
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist onReleaseNetwork(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)V
    .registers 3

    .line 1077
    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    .line 1078
    const-string v0, "netReleased"

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->onEvaluate(ZLjava/lang/String;)Z

    :cond_e
    return-void
.end method

.method public blacklist onRequestNetwork(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)V
    .registers 3

    .line 1065
    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 1066
    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;->add(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z

    const/4 p1, 0x1

    .line 1067
    const-string v0, "netRequest"

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->onEvaluate(ZLjava/lang/String;)Z

    :cond_13
    return-void
.end method

.method public blacklist overrideDefaultDataForEmergency(IILjava/util/concurrent/CompletableFuture;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1312
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const/16 v0, 0x73

    .line 1313
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 1314
    new-instance v0, Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;-><init>(Lcom/android/internal/telephony/data/PhoneSwitcher-IA;)V

    .line 1315
    iput p1, v0, Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;->mPhoneId:I

    mul-int/lit16 p2, p2, 0x3e8

    .line 1316
    iput p2, v0, Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;->mGnssOverrideTimeMs:I

    .line 1317
    iput-object p3, v0, Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;->mOverrideCompleteFuture:Ljava/util/concurrent/CompletableFuture;

    .line 1318
    iput-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1319
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist registerCallback(Lcom/android/internal/telephony/data/PhoneSwitcher$PhoneSwitcherCallback;)V
    .registers 2

    .line 498
    iget-object p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPhoneSwitcherCallbacks:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected blacklist sendRilCommands(I)V
    .registers 5

    .line 1323
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendRilCommands: skip dds switch due to invalid phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->logl(Ljava/lang/String;)V

    return-void

    .line 1328
    :cond_1b
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x70

    invoke-static {p0, v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1329
    iget v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mHalCommandToUse:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4d

    if-nez v1, :cond_2d

    goto :goto_4d

    .line 1334
    :cond_2d
    iget v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataPhoneId:I

    if-ne p1, v1, :cond_5e

    .line 1336
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendRilCommands: setPreferredDataModem - phoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->logl(Ljava/lang/String;)V

    .line 1337
    iget-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mRadioConfig:Lcom/android/internal/telephony/RadioConfig;

    iget p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataPhoneId:I

    invoke-virtual {p1, p0, v0}, Lcom/android/internal/telephony/RadioConfig;->setPreferredDataModem(ILandroid/os/Message;)V

    return-void

    .line 1331
    :cond_4d
    :goto_4d
    iget v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mActiveModemCount:I

    if-le v1, v2, :cond_5e

    .line 1332
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->isPhoneActive(I)Z

    move-result p0

    invoke-interface {v1, p0, v0}, Lcom/android/internal/telephony/CommandsInterface;->setDataAllowed(ZLandroid/os/Message;)V

    :cond_5e
    return-void
.end method

.method public declared-synchronized blacklist shouldApplyNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;I)Z
    .registers 8

    monitor-enter p0

    .line 1488
    :try_start_1
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_1e

    const/4 v1, 0x0

    if-nez v0, :cond_a

    monitor-exit p0

    return v1

    .line 1490
    :cond_a
    :try_start_a
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->getSubscriptionId(I)I

    move-result v0

    .line 1493
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/data/PhoneSwitcher;->isPhoneActive(I)Z

    move-result v2

    if-eqz v2, :cond_50

    const/4 v2, -0x1

    if-ne v0, v2, :cond_20

    .line 1494
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->isEmergencyNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z

    move-result v0

    if-nez v0, :cond_20

    goto :goto_50

    :catchall_1e
    move-exception p1

    goto :goto_52

    .line 1498
    :cond_20
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getNativeNetworkRequest()Landroid/net/NetworkRequest;

    move-result-object v0

    .line 1499
    invoke-virtual {v0}, Landroid/net/NetworkRequest;->getNetworkSpecifier()Landroid/net/NetworkSpecifier;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->getSubIdFromNetworkSpecifier(Landroid/net/NetworkSpecifier;)I

    move-result v0

    .line 1503
    invoke-direct {p0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->isAnyVoiceCallActiveOnDevice()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_47

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->isEmergencyNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z

    move-result v3

    if-eqz v3, :cond_47

    const v3, 0x7fffffff

    if-eq v0, v3, :cond_40

    if-ne v0, v2, :cond_47

    .line 1505
    :cond_40
    iget p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPhoneIdInVoiceCall:I
    :try_end_42
    .catchall {:try_start_a .. :try_end_42} :catchall_1e

    if-ne p2, p1, :cond_45

    move v1, v4

    :cond_45
    monitor-exit p0

    return v1

    .line 1508
    :cond_47
    :try_start_47
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->phoneIdForRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)I

    move-result p1
    :try_end_4b
    .catchall {:try_start_47 .. :try_end_4b} :catchall_1e

    if-ne p2, p1, :cond_4e

    move v1, v4

    .line 1509
    :cond_4e
    monitor-exit p0

    return v1

    .line 1495
    :cond_50
    :goto_50
    monitor-exit p0

    return v1

    :goto_52
    :try_start_52
    monitor-exit p0
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_1e

    throw p1
.end method

.method protected blacklist transitionToEmergencyPhone()V
    .registers 3

    .line 1459
    iget v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mActiveModemCount:I

    if-gtz v0, :cond_a

    .line 1460
    const-string v0, "No phones: unable to reset preferred phone for emergency"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->logl(Ljava/lang/String;)V

    return-void

    .line 1464
    :cond_a
    iget v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataPhoneId:I

    if-eqz v0, :cond_16

    .line 1465
    const-string v0, "No active subscriptions: resetting preferred phone to 0 for emergency"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->logl(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1466
    iput v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataPhoneId:I

    .line 1469
    :cond_16
    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataSubId:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;

    invoke-virtual {v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;->get()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_27

    .line 1470
    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataSubId:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;->set(I)Z

    .line 1471
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->notifyPreferredDataSubIdChanged()V

    :cond_27
    return-void
.end method

.method public blacklist trySetOpportunisticDataSubscription(IZLcom/android/internal/telephony/ISetOpportunisticDataCallback;)V
    .registers 6

    .line 1728
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Try set opportunistic data subscription to subId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_12

    .line 1729
    const-string v1, " with "

    goto :goto_14

    :cond_12
    const-string v1, " without "

    :goto_14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "validation"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1728
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->logl(Ljava/lang/String;)V

    const/16 v0, 0x6b

    .line 1730
    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 1731
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist unregisterCallback(Lcom/android/internal/telephony/data/PhoneSwitcher$PhoneSwitcherCallback;)V
    .registers 2

    .line 507
    iget-object p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPhoneSwitcherCallbacks:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method protected blacklist updatePreferredDataPhoneId()V
    .registers 4

    .line 1395
    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mEmergencyOverride:Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;

    if-eqz v0, :cond_2e

    iget v0, v0, Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;->mPhoneId:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->findPhoneById(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 1400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updatePreferredDataPhoneId: preferred data overridden for emergency. phoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mEmergencyOverride:Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;

    iget v1, v1, Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->logl(Ljava/lang/String;)V

    .line 1402
    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mEmergencyOverride:Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;

    iget v0, v0, Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;->mPhoneId:I

    iput v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataPhoneId:I

    const/4 v0, 0x0

    .line 1403
    iput v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mLastSwitchPreferredDataReason:I

    goto :goto_78

    .line 1405
    :cond_2e
    invoke-direct {p0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->isAnyVoiceCallActiveOnDevice()Z

    move-result v0

    if-eqz v0, :cond_72

    .line 1406
    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mImsRegTechProvider:Lcom/android/internal/telephony/data/PhoneSwitcher$ImsRegTechProvider;

    iget-object v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPhoneIdInVoiceCall:I

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/data/PhoneSwitcher$ImsRegTechProvider;->get(Landroid/content/Context;I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6b

    const/4 v1, 0x2

    if-eq v0, v1, :cond_54

    .line 1409
    invoke-direct {p0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->shouldSwitchDataDueToInCall()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 1410
    iget v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPhoneIdInVoiceCall:I

    goto :goto_51

    :cond_4d
    invoke-direct {p0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->getFallbackDataPhoneIdForInternetRequests()I

    move-result v0

    :goto_51
    iput v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataPhoneId:I

    goto :goto_78

    .line 1412
    :cond_54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IMS call on cross-SIM, skip switching data to phone "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPhoneIdInVoiceCall:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->logl(Ljava/lang/String;)V

    goto :goto_78

    .line 1416
    :cond_6b
    invoke-direct {p0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->getFallbackDataPhoneIdForInternetRequests()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataPhoneId:I

    goto :goto_78

    .line 1419
    :cond_72
    invoke-direct {p0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->getFallbackDataPhoneIdForInternetRequests()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataPhoneId:I

    .line 1423
    :goto_78
    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataSubId:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;

    iget p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataPhoneId:I

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubscriptionId(I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;->set(I)Z

    return-void
.end method

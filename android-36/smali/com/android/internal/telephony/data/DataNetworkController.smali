.class public Lcom/android/internal/telephony/data/DataNetworkController;
.super Landroid/os/Handler;
.source "DataNetworkController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;,
        Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;,
        Lcom/android/internal/telephony/data/DataNetworkController$HandoverRule;
    }
.end annotation


# static fields
.field private static final blacklist GUARD_TIMER_INTERVAL_TO_QUERY_DATA_USAGE_API_STATS_MILLIS:J

.field private static final blacklist REEVALUATE_PREFERRED_TRANSPORT_DELAY_MILLIS:J

.field private static final blacklist REEVALUATE_UNSATISFIED_NETWORK_REQUESTS_AFTER_CALL_END_DELAY_MILLIS:J

.field private static final blacklist REEVALUATE_UNSATISFIED_NETWORK_REQUESTS_AFTER_DETACHED_DELAY_MILLIS:J

.field private static final blacklist REEVALUATE_UNSATISFIED_NETWORK_REQUESTS_TAC_CHANGED_DELAY_MILLIS:J

.field private static final blacklist SUPPORTED_IMS_FEATURES:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAccessNetworksManager:Lcom/android/internal/telephony/data/AccessNetworksManager;

.field private final blacklist mAllNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

.field private blacklist mAnyDataNetworkExisting:Z

.field private blacklist mBootStrapSimTotalDataUsageBytes:J

.field private blacklist mBootstrapSimLastDataUsageQueryTime:J

.field private final blacklist mCongestedOverrideNetworkTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mConnectedInternetNetworks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/internal/telephony/data/DataNetwork;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDataActivity:I

.field private final blacklist mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

.field private final blacklist mDataNetworkControllerCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDataNetworkList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/data/DataNetwork;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDataProfileManager:Lcom/android/internal/telephony/data/DataProfileManager;

.field private final blacklist mDataRetryManager:Lcom/android/internal/telephony/data/DataRetryManager;

.field private final blacklist mDataServiceBound:Landroid/util/SparseBooleanArray;

.field private final blacklist mDataServiceManagers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/data/DataServiceManager;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDataSettingsManager:Lcom/android/internal/telephony/data/DataSettingsManager;

.field private final blacklist mDataStallRecoveryManager:Lcom/android/internal/telephony/data/DataStallRecoveryManager;

.field private final blacklist mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

.field private blacklist mImsDataNetworkState:I

.field private final blacklist mImsFeaturePackageName:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mImsFeatureRegistrationCallbacks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/telephony/ims/RegistrationManager$RegistrationCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mImsManager:Landroid/telephony/ims/ImsManager;

.field private final blacklist mImsStateCallbacks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/telephony/ims/ImsStateCallback;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mImsThrottleCounter:Lcom/android/internal/telephony/SlidingWindowEventCounter;

.field private final blacklist mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mInternetDataNetworkState:I

.field private blacklist mInternetLinkStatus:I

.field private blacklist mIsSrvccHandoverInProcess:Z

.field private blacklist mLastImsOperationIsRelease:Z

.field private blacklist mLastReleasedImsRequestCapabilities:[I

.field private final blacklist mLocalLog:Lcom/android/internal/telephony/LocalLog;

.field private final blacklist mLogTag:Ljava/lang/String;

.field private final blacklist mNetworkPolicyManager:Landroid/net/NetworkPolicyManager;

.field private blacklist mNetworkUnwantedCounter:Lcom/android/internal/telephony/SlidingWindowEventCounter;

.field private blacklist mNrAdvancedCapableByPco:Z

.field private final blacklist mPendingImsDeregDataNetworks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/internal/telephony/data/DataNetwork;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private final blacklist mPreviousConnectedDataNetworkList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/data/DataNetwork;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPsRestricted:Z

.field private final blacklist mRegisteredImsFeatures:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mServiceState:Landroid/telephony/ServiceState;

.field private blacklist mSetupDataCallWlanFailureCounter:Lcom/android/internal/telephony/SlidingWindowEventCounter;

.field private blacklist mSetupDataCallWwanFailureCounter:Lcom/android/internal/telephony/SlidingWindowEventCounter;

.field private blacklist mSimState:I

.field private blacklist mSubId:I

.field private final blacklist mSubscriptionPlans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionPlan;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mTelecomManager:Landroid/telecom/TelecomManager;

.field private final blacklist mUnmeteredOverrideNetworkTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$02RaP4VesP9r6O0jTM4hTJd4H1A(Lcom/android/internal/telephony/data/DataNetwork;)Z
    .registers 3

    .line 1548
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v0

    const/16 v1, 0xb

    .line 1549
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1550
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object p0

    const/16 v0, 0x19

    .line 1551
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p0

    if-eqz p0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p0, 0x0

    return p0

    :cond_1b
    :goto_1b
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$1MfUBF8S_BPNpjR0UD8kLC0DehE(Landroid/telephony/data/DataProfile;Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z
    .registers 2

    .line 2886
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->canBeSatisfiedBy(Landroid/telephony/data/DataProfile;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$3-lrrWXIiX65cvKDmq-_osM6K2s(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->lambda$onLinkStatusChanged$40(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$3gWoxwfAiwOhFGwBAZYg5mUU1Ww(Lcom/android/internal/telephony/data/DataNetwork;)Z
    .registers 2

    .line 2532
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->getLinkStatus()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_8

    return v0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$4CmAVX4jPJXaF15n5XKavLpyghU(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;Ljava/util/Set;)V
    .registers 2

    .line 4017
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;->onConnectedInternetDataNetworksChanged(Ljava/util/Set;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$4Lc5uunapkfLLuVgmgCZHwNEt7o(Ljava/util/List;Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z
    .registers 3

    .line 3180
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda56;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda56;-><init>(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)V

    .line 3181
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$4iq6o7LkQbZDXwPDR4MwGaGwAuQ(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->lambda$setupDataNetwork$20(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$4svbqIbQMvAFubRo2lNe9i_TatA(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->lambda$onDataNetworkSetupRetry$27(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$58jjxZTC57EifJKL0ZxX3wYtgm8(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z
    .registers 1

    .line 2884
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getState()I

    move-result p0

    if-nez p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$63e2w4walaf3QBr4mIcO0qaacdU(Ljava/util/function/Consumer;Lcom/android/internal/telephony/data/DataNetwork;)V
    .registers 2

    .line 4311
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/data/DataNetwork;->requestNetworkValidation(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$6LtNe6rtrbH_oYTc2wptM6IfN3w(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->lambda$onDataNetworkSetupFailed$23(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$6uZJhHvCMBlRu-8mEVC5olCy7Nw(Lcom/android/internal/telephony/data/DataNetworkController;ILjava/lang/Integer;)Landroid/telephony/ims/ImsStateCallback;
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/DataNetworkController;->lambda$registerImsStateCallback$17(ILjava/lang/Integer;)Landroid/telephony/ims/ImsStateCallback;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$8S_0qqRqYDyyTQgnhG5ci5NPH_A(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->lambda$onDataNetworkDisconnected$32(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$8WxzQ0YedV37znh5TaokiK_nDSM(Lcom/android/internal/telephony/data/DataNetwork;)Z
    .registers 2

    .line 3987
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isInternetSupported()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 3988
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isConnected()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isHandoverInProgress()Z

    move-result p0

    if-eqz p0, :cond_14

    :cond_12
    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$93noZkweF9QHq6ap42TrRG2-jOw(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V
    .registers 2

    .line 1281
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda19;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda19;-><init>(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V

    .line 1280
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$9FAxQeJm-8UzFlUvb2qm-wvl18I(Lcom/android/internal/telephony/data/DataNetwork;)Z
    .registers 2

    .line 3992
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isConnected()Z

    move-result v0

    if-nez v0, :cond_f

    .line 3993
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isHandoverInProgress()Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    return p0

    :cond_f
    :goto_f
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$9lfUImTK37A2UlMSDmojF3EV5DY(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;Lcom/android/internal/telephony/data/DataNetwork;)Z
    .registers 2

    .line 1519
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object p1

    .line 1518
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->canBeSatisfiedBy(Landroid/net/NetworkCapabilities;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$A5dd97RRK_-FjRoZKs2-FA0qaAM(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->isValidRestrictedRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$AcKWeEVpjznUDuyBaqJJTHf_RAc(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->lambda$onDataNetworkSetupFailed$22(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Bfp4u0c0Fpdc3LnR0w_nYS6Qops(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z
    .registers 2

    .line 1414
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object p0

    .line 1413
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->canBeSatisfiedBy(Landroid/net/NetworkCapabilities;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$CSR4F7WObq_vCi217LouAhnqSTA(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataNetwork;)Z
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->lambda$evaluateNetworkRequest$8(Lcom/android/internal/telephony/data/DataNetwork;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$DDGzmkK6sN4FxE2W4E68piz3EMk(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z
    .registers 2

    const/16 v0, 0x21

    .line 2345
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->hasCapability(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$DdvtGWFfMjmK_wFN3RzfjmqxBsU(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/DataNetworkController;->lambda$evaluateDataNetwork$9(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$EtqVm7l6udOnI7aA_fnTUU1Or8c(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V
    .registers 2

    .line 1247
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda19;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda19;-><init>(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V

    .line 1246
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$GkLVdRePu6voumpTxk2O1r3xkk0(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;I)V
    .registers 2

    .line 3350
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;->onInternetDataNetworkValidationStatusChanged(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$IVkHMEePXN4_zb7tRHGsBuPJ0Vk(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V
    .registers 3

    .line 3137
    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda64;

    invoke-direct {v0, p1, p0}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda64;-><init>(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;Lcom/android/internal/telephony/data/DataNetwork;)V

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$IVlTesH8V9LXOTjrWjv8rtAlTmk(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->lambda$onLinkStatusChanged$39(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$O_FpgfFH9OfwqBvmmSSH-nmxCWs(Lcom/android/internal/telephony/data/DataNetwork;)Z
    .registers 2

    .line 2535
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->getLinkStatus()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$PH0SgxyS7EZQmE45xpUVYBFR2LI(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->lambda$onPcoDataChanged$42(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$PW7ATorxFdhAtyDIKeg0I6I67Fg(ILcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V
    .registers 3

    .line 3568
    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda57;

    invoke-direct {v0, p1, p0}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda57;-><init>(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;I)V

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$QcZ_4i3gq1xM7ws--96MXxIHR_Y(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->lambda$onPcoDataChanged$41(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$S08TWXqR4XotS_Yu01IhXhOeSGg(Lcom/android/internal/telephony/data/DataNetwork;)Z
    .registers 2

    .line 3725
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isInternetSupported()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$ZvqDQbg4EJVfu2VCMIvHdRPyW0w(Lcom/android/internal/telephony/data/DataNetwork;)V
    .registers 2

    const/16 v0, 0xc

    .line 3534
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->tearDown(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$bAky8jjL34MtX_pt117iEI8yYqE(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->lambda$onDataNetworkSetupFailed$24(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$bdfnY3-AR97qnWVVCIWcaYCAo0A(Ljava/util/Set;Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V
    .registers 3

    .line 4016
    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda61;

    invoke-direct {v0, p1, p0}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda61;-><init>(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;Ljava/util/Set;)V

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$dPwxTtcY3MnxAEANV2lXQHz9rhQ(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V
    .registers 2

    .line 1267
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda19;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda19;-><init>(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V

    .line 1266
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$eydkK8wouYTlkd_xv4kOjbosGxA(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;Lcom/android/internal/telephony/data/DataNetwork;)V
    .registers 3

    .line 3138
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getTransport()I

    move-result v0

    .line 3139
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getDataProfile()Landroid/telephony/data/DataProfile;

    move-result-object p1

    .line 3138
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;->onDataNetworkConnected(ILandroid/telephony/data/DataProfile;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$jXqDK4p7ZIAY938iZ2kSxPs03oA(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;)Z
    .registers 3

    .line 3183
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getCapabilities()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;->get([I)Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_33

    .line 3186
    :cond_b
    invoke-virtual {p1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    .line 3188
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getTransportTypes()[I

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_35

    .line 3189
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getTransportTypes()[I

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_35

    .line 3190
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getTransportTypes()[I

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object p0

    .line 3191
    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda65;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda65;-><init>(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)V

    invoke-interface {p0, v0}, Ljava/util/stream/IntStream;->allMatch(Ljava/util/function/IntPredicate;)Z

    move-result p0

    if-eqz p0, :cond_33

    goto :goto_35

    :cond_33
    :goto_33
    const/4 p0, 0x0

    return p0

    :cond_35
    :goto_35
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$jejY30XI8e6-l-dDbVmKTXfSrRo(Lcom/android/internal/telephony/data/DataNetwork;)Z
    .registers 2

    .line 3728
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isInternetSupported()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 3729
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->getLinkStatus()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_15

    const/4 p0, 0x1

    return p0

    :cond_15
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$m7mrcDIZ9xhe0zoZ5leuBqsWoB8(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->lambda$evaluateDataNetwork$10(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$plOEbAW14vhwJYwRZJwhRXI8Xy0(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->lambda$onDataNetworkDisconnected$33(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$rdBwHNyL7eRDKQ3f7NpwhKAfUzw(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->lambda$setupDataNetwork$21(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$t0pGClvJ-uJwUQfrn8q9z2Ffl3o(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;I)V
    .registers 2

    .line 3569
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;->onDataServiceBound(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$tAaJJR78Dz_NoMQ3vDqp8pgsVBM(ILcom/android/internal/telephony/data/DataNetwork;)Z
    .registers 2

    .line 4306
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$uNTk5oU5aPAHGCuR6LN93cjkbww(Lcom/android/internal/telephony/data/DataNetwork;)Z
    .registers 2

    .line 1546
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isConnecting()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isDisconnected()Z

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$uNecy4nfXeyctu_X7e1AS7ySnoE(Lcom/android/internal/telephony/data/DataNetwork;)Z
    .registers 2

    .line 2614
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isDisconnecting()Z

    move-result v0

    if-nez v0, :cond_e

    .line 2615
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isDisconnected()Z

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$uSo-IrV7pk7onee7Pls3oDz5icQ(Ljava/lang/String;Lcom/android/internal/telephony/data/DataNetwork;)Z
    .registers 2

    .line 2617
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object p1

    .line 2616
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$wn6oBc0GGgMXXIvtsepSvNmEkMU(ILcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V
    .registers 3

    .line 3349
    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda63;

    invoke-direct {v0, p1, p0}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda63;-><init>(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;I)V

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$xWumT9JS447_LVqBKbnsq8xxcGc(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V
    .registers 2

    const/4 v0, 0x0

    .line 1217
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;->onAnyDataNetworkExistingChanged(Z)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$zEmo9VvwRXnivwKsa9qx_iKX8EU(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z
    .registers 2

    .line 2038
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getPriority()I

    move-result p1

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->getPriority()I

    move-result p0

    if-le p1, p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAccessNetworksManager(Lcom/android/internal/telephony/data/DataNetworkController;)Lcom/android/internal/telephony/data/AccessNetworksManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAccessNetworksManager:Lcom/android/internal/telephony/data/AccessNetworksManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDataNetworkControllerCallbacks(Lcom/android/internal/telephony/data/DataNetworkController;)Ljava/util/Set;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkControllerCallbacks:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmImsFeaturePackageName(Lcom/android/internal/telephony/data/DataNetworkController;)Landroid/util/SparseArray;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mImsFeaturePackageName:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataNetworkController;)Lcom/android/internal/telephony/Phone;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRegisteredImsFeatures(Lcom/android/internal/telephony/data/DataNetworkController;)Ljava/util/Set;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mRegisteredImsFeatures:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSubId(Lcom/android/internal/telephony/data/DataNetworkController;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mSubId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mevaluatePendingImsDeregDataNetworks(Lcom/android/internal/telephony/data/DataNetworkController;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->evaluatePendingImsDeregDataNetworks()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mlog(Lcom/android/internal/telephony/data/DataNetworkController;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mlogl(Lcom/android/internal/telephony/data/DataNetworkController;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->logl(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monAttachNetworkRequestsFailed(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/DataNetworkController;->onAttachNetworkRequestsFailed(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monCarrierConfigUpdated(Lcom/android/internal/telephony/data/DataNetworkController;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->onCarrierConfigUpdated()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monDataNetworkConnected(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataNetwork;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->onDataNetworkConnected(Lcom/android/internal/telephony/data/DataNetwork;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monDataNetworkDisconnected(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataNetwork;II)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/data/DataNetworkController;->onDataNetworkDisconnected(Lcom/android/internal/telephony/data/DataNetwork;II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monDataNetworkHandoverFailed(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataNetwork;IJI)V
    .registers 6

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/telephony/data/DataNetworkController;->onDataNetworkHandoverFailed(Lcom/android/internal/telephony/data/DataNetwork;IJI)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monDataNetworkHandoverRetry(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->onDataNetworkHandoverRetry(Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monDataNetworkHandoverRetryStopped(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataNetwork;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->onDataNetworkHandoverRetryStopped(Lcom/android/internal/telephony/data/DataNetwork;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monDataNetworkHandoverSucceeded(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataNetwork;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->onDataNetworkHandoverSucceeded(Lcom/android/internal/telephony/data/DataNetwork;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monDataNetworkSetupFailed(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;IJ)V
    .registers 6

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/telephony/data/DataNetworkController;->onDataNetworkSetupFailed(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;IJ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monDataNetworkSetupRetry(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->onDataNetworkSetupRetry(Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monDataNetworkSuspendedStateChanged(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataNetwork;Z)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/DataNetworkController;->onDataNetworkSuspendedStateChanged(Lcom/android/internal/telephony/data/DataNetwork;Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monDataNetworkValidationStatusChanged(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataNetwork;ILandroid/net/Uri;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/data/DataNetworkController;->onDataNetworkValidationStatusChanged(Lcom/android/internal/telephony/data/DataNetwork;ILandroid/net/Uri;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monDataStallReestablishInternet(Lcom/android/internal/telephony/data/DataNetworkController;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->onDataStallReestablishInternet()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monDeviceConfigUpdated(Lcom/android/internal/telephony/data/DataNetworkController;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->onDeviceConfigUpdated()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monEvaluatePreferredTransport(Lcom/android/internal/telephony/data/DataNetworkController;IZ)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/DataNetworkController;->onEvaluatePreferredTransport(IZ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monLinkStatusChanged(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataNetwork;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/DataNetworkController;->onLinkStatusChanged(Lcom/android/internal/telephony/data/DataNetwork;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monNetworkCapabilitiesChanged(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataNetwork;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->onNetworkCapabilitiesChanged(Lcom/android/internal/telephony/data/DataNetwork;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monPcoDataChanged(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataNetwork;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->onPcoDataChanged(Lcom/android/internal/telephony/data/DataNetwork;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monRetryUnsatisfiedNetworkRequest(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->onRetryUnsatisfiedNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monTrackNetworkUnwanted(Lcom/android/internal/telephony/data/DataNetworkController;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->onTrackNetworkUnwanted()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mregisterImsFeatureRegistrationState(Lcom/android/internal/telephony/data/DataNetworkController;II)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/DataNetworkController;->registerImsFeatureRegistrationState(II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$munregisterImsFeatureRegistrationState(Lcom/android/internal/telephony/data/DataNetworkController;II)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/DataNetworkController;->unregisterImsFeatureRegistrationState(II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateDataActivity(Lcom/android/internal/telephony/data/DataNetworkController;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->updateDataActivity()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 5

    const/4 v0, 0x1

    .line 223
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/data/DataNetworkController;->SUPPORTED_IMS_FEATURES:Ljava/util/Collection;

    .line 232
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3

    .line 233
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    sput-wide v1, Lcom/android/internal/telephony/data/DataNetworkController;->REEVALUATE_PREFERRED_TRANSPORT_DELAY_MILLIS:J

    .line 236
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1f4

    .line 237
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    sput-wide v2, Lcom/android/internal/telephony/data/DataNetworkController;->REEVALUATE_UNSATISFIED_NETWORK_REQUESTS_AFTER_CALL_END_DELAY_MILLIS:J

    const-wide/16 v2, 0x64

    .line 241
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    sput-wide v1, Lcom/android/internal/telephony/data/DataNetworkController;->REEVALUATE_UNSATISFIED_NETWORK_REQUESTS_TAC_CHANGED_DELAY_MILLIS:J

    const-wide/16 v1, 0x1

    .line 248
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    sput-wide v3, Lcom/android/internal/telephony/data/DataNetworkController;->REEVALUATE_UNSATISFIED_NETWORK_REQUESTS_AFTER_DETACHED_DELAY_MILLIS:J

    .line 254
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/internal/telephony/data/DataNetworkController;->GUARD_TIMER_INTERVAL_TO_QUERY_DATA_USAGE_API_STATS_MILLIS:J

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;Landroid/os/Looper;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    .registers 11

    .line 900
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-wide/16 v0, 0x0

    .line 259
    iput-wide v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mBootStrapSimTotalDataUsageBytes:J

    .line 264
    iput-wide v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mBootstrapSimLastDataUsageQueryTime:J

    .line 269
    new-instance v0, Lcom/android/internal/telephony/LocalLog;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    .line 289
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataServiceManagers:Landroid/util/SparseArray;

    const/4 v0, -0x1

    .line 293
    iput v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mSubId:I

    .line 302
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mSubscriptionPlans:Ljava/util/List;

    .line 309
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mUnmeteredOverrideNetworkTypes:Ljava/util/Set;

    .line 317
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mCongestedOverrideNetworkTypes:Ljava/util/Set;

    .line 324
    new-instance v1, Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-direct {v1}, Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAllNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    .line 331
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    .line 340
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPreviousConnectedDataNetworkList:Ljava/util/List;

    const/4 v1, 0x0

    .line 347
    iput v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mInternetDataNetworkState:I

    .line 351
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mConnectedInternetNetworks:Ljava/util/Set;

    .line 357
    iput v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mImsDataNetworkState:I

    .line 361
    iput v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mInternetLinkStatus:I

    .line 365
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkControllerCallbacks:Ljava/util/Set;

    .line 370
    iput-boolean v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPsRestricted:Z

    .line 373
    iput-boolean v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mNrAdvancedCapableByPco:Z

    .line 376
    iput-boolean v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mIsSrvccHandoverInProcess:Z

    .line 382
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataServiceBound:Landroid/util/SparseBooleanArray;

    .line 386
    iput v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mSimState:I

    .line 390
    iput v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataActivity:I

    .line 396
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mImsStateCallbacks:Landroid/util/SparseArray;

    .line 400
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mRegisteredImsFeatures:Ljava/util/Set;

    .line 404
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mImsFeaturePackageName:Landroid/util/SparseArray;

    .line 411
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPendingImsDeregDataNetworks:Ljava/util/Map;

    .line 419
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mImsFeatureRegistrationCallbacks:Landroid/util/SparseArray;

    .line 449
    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/data/DataNetworkController$1;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;)V

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 901
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 902
    iput-object p3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 903
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DNC-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mLogTag:Ljava/lang/String;

    .line 904
    const-string v0, "DataNetworkController created."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 906
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getAccessNetworksManager()Lcom/android/internal/telephony/data/AccessNetworksManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAccessNetworksManager:Lcom/android/internal/telephony/data/AccessNetworksManager;

    .line 907
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/AccessNetworksManager;->getAvailableTransports()[I

    move-result-object p1

    array-length v0, p1

    :goto_c1
    if-ge v1, v0, :cond_d4

    aget v2, p1, v1

    .line 908
    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataServiceManagers:Landroid/util/SparseArray;

    new-instance v4, Lcom/android/internal/telephony/data/DataServiceManager;

    iget-object v5, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v4, v5, p2, v2}, Lcom/android/internal/telephony/data/DataServiceManager;-><init>(Lcom/android/internal/telephony/Phone;Landroid/os/Looper;I)V

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_c1

    .line 911
    :cond_d4
    new-instance p1, Lcom/android/internal/telephony/data/DataConfigManager;

    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {p1, v0, p2, p3}, Lcom/android/internal/telephony/data/DataConfigManager;-><init>(Lcom/android/internal/telephony/Phone;Landroid/os/Looper;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    iput-object p1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    .line 914
    new-instance p3, Lcom/android/internal/telephony/SlidingWindowEventCounter;

    .line 915
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataConfigManager;->getAnomalyImsReleaseRequestThreshold()Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;

    move-result-object v0

    iget-wide v0, v0, Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;->timeWindow:J

    .line 916
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataConfigManager;->getAnomalyImsReleaseRequestThreshold()Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;

    move-result-object v2

    iget v2, v2, Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;->eventNumOccurrence:I

    invoke-direct {p3, v0, v1, v2}, Lcom/android/internal/telephony/SlidingWindowEventCounter;-><init>(JI)V

    iput-object p3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mImsThrottleCounter:Lcom/android/internal/telephony/SlidingWindowEventCounter;

    .line 917
    new-instance p3, Lcom/android/internal/telephony/SlidingWindowEventCounter;

    .line 918
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataConfigManager;->getAnomalyNetworkUnwantedThreshold()Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;

    move-result-object v0

    iget-wide v0, v0, Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;->timeWindow:J

    .line 919
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataConfigManager;->getAnomalyNetworkUnwantedThreshold()Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;

    move-result-object v2

    iget v2, v2, Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;->eventNumOccurrence:I

    invoke-direct {p3, v0, v1, v2}, Lcom/android/internal/telephony/SlidingWindowEventCounter;-><init>(JI)V

    iput-object p3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mNetworkUnwantedCounter:Lcom/android/internal/telephony/SlidingWindowEventCounter;

    .line 920
    new-instance p3, Lcom/android/internal/telephony/SlidingWindowEventCounter;

    .line 921
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataConfigManager;->getAnomalySetupDataCallThreshold()Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;

    move-result-object v0

    iget-wide v0, v0, Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;->timeWindow:J

    .line 922
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataConfigManager;->getAnomalySetupDataCallThreshold()Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;

    move-result-object v2

    iget v2, v2, Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;->eventNumOccurrence:I

    invoke-direct {p3, v0, v1, v2}, Lcom/android/internal/telephony/SlidingWindowEventCounter;-><init>(JI)V

    iput-object p3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mSetupDataCallWlanFailureCounter:Lcom/android/internal/telephony/SlidingWindowEventCounter;

    .line 923
    new-instance p3, Lcom/android/internal/telephony/SlidingWindowEventCounter;

    .line 924
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataConfigManager;->getAnomalySetupDataCallThreshold()Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;

    move-result-object v0

    iget-wide v0, v0, Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;->timeWindow:J

    .line 925
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataConfigManager;->getAnomalySetupDataCallThreshold()Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;

    move-result-object p1

    iget p1, p1, Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;->eventNumOccurrence:I

    invoke-direct {p3, v0, v1, p1}, Lcom/android/internal/telephony/SlidingWindowEventCounter;-><init>(JI)V

    iput-object p3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mSetupDataCallWwanFailureCounter:Lcom/android/internal/telephony/SlidingWindowEventCounter;

    .line 928
    invoke-static {}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getInstance()Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object p1

    const-class p3, Lcom/android/internal/telephony/data/DataSettingsManager;

    .line 929
    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    .line 928
    invoke-virtual {p1, p3}, Lcom/android/internal/telephony/TelephonyComponentFactory;->inject(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    new-instance v5, Lcom/android/internal/telephony/data/DataNetworkController$2;

    new-instance p1, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda9;

    invoke-direct {p1, p0}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda9;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;)V

    invoke-direct {v5, p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController$2;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;Ljava/util/concurrent/Executor;)V

    move-object v2, p0

    move-object v4, p2

    .line 930
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeDataSettingsManager(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;Landroid/os/Looper;Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;)Lcom/android/internal/telephony/data/DataSettingsManager;

    move-result-object p0

    iput-object p0, v2, Lcom/android/internal/telephony/data/DataNetworkController;->mDataSettingsManager:Lcom/android/internal/telephony/data/DataSettingsManager;

    .line 973
    invoke-static {}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getInstance()Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object p0

    const-class p1, Lcom/android/internal/telephony/data/DataProfileManager;

    .line 974
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    .line 973
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/TelephonyComponentFactory;->inject(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v0

    iget-object v1, v2, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object p0, v2, Lcom/android/internal/telephony/data/DataNetworkController;->mDataServiceManagers:Landroid/util/SparseArray;

    const/4 p1, 0x1

    .line 976
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Lcom/android/internal/telephony/data/DataServiceManager;

    iget-object v5, v2, Lcom/android/internal/telephony/data/DataNetworkController;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    new-instance v6, Lcom/android/internal/telephony/data/DataNetworkController$3;

    new-instance p0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda9;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda9;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;)V

    invoke-direct {v6, v2, p0}, Lcom/android/internal/telephony/data/DataNetworkController$3;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;Ljava/util/concurrent/Executor;)V

    .line 975
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeDataProfileManager(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataServiceManager;Landroid/os/Looper;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;Lcom/android/internal/telephony/data/DataProfileManager$DataProfileManagerCallback;)Lcom/android/internal/telephony/data/DataProfileManager;

    move-result-object p0

    iput-object p0, v2, Lcom/android/internal/telephony/data/DataNetworkController;->mDataProfileManager:Lcom/android/internal/telephony/data/DataProfileManager;

    .line 989
    new-instance v0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;

    iget-object v1, v2, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object p0, v2, Lcom/android/internal/telephony/data/DataNetworkController;->mDataServiceManagers:Landroid/util/SparseArray;

    .line 990
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Lcom/android/internal/telephony/data/DataServiceManager;

    move-object v5, v4

    iget-object v4, v2, Lcom/android/internal/telephony/data/DataNetworkController;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    new-instance v6, Lcom/android/internal/telephony/data/DataNetworkController$4;

    new-instance p0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda9;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda9;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;)V

    invoke-direct {v6, v2, p0}, Lcom/android/internal/telephony/data/DataNetworkController$4;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;Ljava/util/concurrent/Executor;)V

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataServiceManager;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;Landroid/os/Looper;Lcom/android/internal/telephony/data/DataStallRecoveryManager$DataStallRecoveryManagerCallback;)V

    move-object v4, v5

    iput-object v0, v2, Lcom/android/internal/telephony/data/DataNetworkController;->mDataStallRecoveryManager:Lcom/android/internal/telephony/data/DataStallRecoveryManager;

    .line 997
    new-instance v0, Lcom/android/internal/telephony/data/DataRetryManager;

    iget-object v1, v2, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v3, v2, Lcom/android/internal/telephony/data/DataNetworkController;->mDataServiceManagers:Landroid/util/SparseArray;

    iget-object v5, v2, Lcom/android/internal/telephony/data/DataNetworkController;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    new-instance v6, Lcom/android/internal/telephony/data/DataNetworkController$5;

    new-instance p0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda9;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda9;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;)V

    invoke-direct {v6, v2, p0}, Lcom/android/internal/telephony/data/DataNetworkController$5;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;Ljava/util/concurrent/Executor;)V

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/data/DataRetryManager;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/data/DataNetworkController;Landroid/util/SparseArray;Landroid/os/Looper;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;)V

    iput-object v0, v2, Lcom/android/internal/telephony/data/DataNetworkController;->mDataRetryManager:Lcom/android/internal/telephony/data/DataRetryManager;

    .line 1020
    iget-object p0, v2, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p0

    const-class p1, Landroid/telephony/ims/ImsManager;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/ims/ImsManager;

    iput-object p0, v2, Lcom/android/internal/telephony/data/DataNetworkController;->mImsManager:Landroid/telephony/ims/ImsManager;

    .line 1021
    iget-object p0, v2, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p0

    const-class p1, Landroid/net/NetworkPolicyManager;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/NetworkPolicyManager;

    iput-object p0, v2, Lcom/android/internal/telephony/data/DataNetworkController;->mNetworkPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 1022
    iget-object p0, v2, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p0

    const-class p1, Landroid/telecom/TelecomManager;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telecom/TelecomManager;

    iput-object p0, v2, Lcom/android/internal/telephony/data/DataNetworkController;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 1026
    iget-object p0, v2, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    iput-object p0, v2, Lcom/android/internal/telephony/data/DataNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    const/16 p0, 0x13

    .line 1030
    invoke-virtual {v2, p0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private blacklist areNetworkAvailableServicesChanged(Landroid/telephony/NetworkRegistrationInfo;Landroid/telephony/NetworkRegistrationInfo;)Z
    .registers 4

    .line 3810
    invoke-virtual {p1}, Landroid/telephony/NetworkRegistrationInfo;->getAvailableServices()Ljava/util/List;

    move-result-object p0

    .line 3811
    invoke-virtual {p2}, Landroid/telephony/NetworkRegistrationInfo;->getAvailableServices()Ljava/util/List;

    move-result-object p1

    .line 3813
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne p2, v0, :cond_24

    .line 3814
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p2, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda39;

    invoke-direct {p2, p1}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda39;-><init>(Ljava/util/List;)V

    invoke-interface {p0, p2}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    if-nez p0, :cond_22

    goto :goto_24

    :cond_22
    const/4 p0, 0x0

    return p0

    :cond_24
    :goto_24
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist canConnectivityTransportSatisfyNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;I)Z
    .registers 8

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p2, v0, :cond_5

    return v1

    .line 2213
    :cond_5
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {p2}, Landroid/telephony/ServiceState;->isUsingNonTerrestrialNetwork()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_38

    const/16 p2, 0xd

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->hasCapability(I)Z

    move-result p2

    if-eqz p2, :cond_38

    .line 2218
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteController;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object p2

    .line 2219
    iget v2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mSubId:I

    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 2220
    invoke-interface {v3}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    .line 2219
    invoke-virtual {p2, v2, v3}, Lcom/android/internal/telephony/satellite/SatelliteController;->getSatelliteDataServicePolicyForPlmn(ILjava/lang/String;)I

    move-result p2

    if-eqz p2, :cond_37

    if-eq p2, v1, :cond_2f

    goto :goto_38

    :cond_2f
    const/16 p2, 0x25

    .line 2230
    :try_start_31
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->hasCapability(I)Z

    move-result p2
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_35} :catch_38

    if-eqz p2, :cond_38

    :cond_37
    return v0

    .line 2242
    :catch_38
    :cond_38
    :goto_38
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->hasTransport(I)Z

    move-result p2

    const/16 v2, 0xa

    if-nez p2, :cond_47

    .line 2243
    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->hasTransport(I)Z

    move-result p2

    if-nez p2, :cond_47

    return v1

    .line 2249
    :cond_47
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->hasTransport(I)Z

    move-result p2

    if-eqz p2, :cond_6a

    .line 2250
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getCapabilities()[I

    move-result-object p2

    .line 2249
    invoke-static {p2}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object p2

    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    .line 2251
    invoke-virtual {v3}, Lcom/android/internal/telephony/data/DataConfigManager;->getForcedCellularTransportCapabilities()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda38;

    invoke-direct {v4, v3}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda38;-><init>(Ljava/util/Set;)V

    invoke-interface {p2, v4}, Ljava/util/stream/IntStream;->anyMatch(Ljava/util/function/IntPredicate;)Z

    move-result p2

    if-eqz p2, :cond_6a

    return v1

    .line 2258
    :cond_6a
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {p2}, Landroid/telephony/ServiceState;->isUsingNonTerrestrialNetwork()Z

    move-result p2

    if-eqz p2, :cond_78

    .line 2259
    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->hasTransport(I)Z

    move-result p2

    if-nez p2, :cond_88

    :cond_78
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    .line 2260
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->isUsingNonTerrestrialNetwork()Z

    move-result p0

    if-nez p0, :cond_87

    .line 2261
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->hasTransport(I)Z

    move-result p0

    if-eqz p0, :cond_87

    goto :goto_88

    :cond_87
    move v1, v0

    :cond_88
    :goto_88
    return v1
.end method

.method private blacklist evaluateDataNetwork(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;)Lcom/android/internal/telephony/data/DataEvaluation;
    .registers 12

    .line 1967
    new-instance v0, Lcom/android/internal/telephony/data/DataEvaluation;

    invoke-direct {v0, p2}, Lcom/android/internal/telephony/data/DataEvaluation;-><init>(Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;)V

    .line 1969
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object p2

    const/16 v1, 0xa

    invoke-virtual {p2, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p2

    if-eqz p2, :cond_1e

    .line 1971
    sget-object p1, Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;->EMERGENCY_REQUEST:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataAllowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;)V

    .line 1972
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataEvaluation;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    return-object v0

    .line 1977
    :cond_1e
    iget p2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mSimState:I

    if-eq p2, v1, :cond_27

    .line 1978
    sget-object p2, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->SIM_NOT_READY:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    .line 1982
    :cond_27
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->isInCdmaEcm()Z

    move-result p2

    if-eqz p2, :cond_34

    .line 1983
    sget-object p2, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->CDMA_EMERGENCY_CALLBACK_MODE:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    .line 1987
    :cond_34
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    .line 1988
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getTransport()I

    move-result v1

    const/4 v2, 0x2

    .line 1987
    invoke-virtual {p2, v2, v1}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object p2

    if-eqz p2, :cond_5a

    .line 1989
    invoke-virtual {p2}, Landroid/telephony/NetworkRegistrationInfo;->isInService()Z

    move-result v1

    if-eqz v1, :cond_5a

    invoke-virtual {p2}, Landroid/telephony/NetworkRegistrationInfo;->getAvailableServices()Ljava/util/List;

    move-result-object p2

    .line 1990
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1989
    invoke-interface {p2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5a

    .line 1991
    sget-object p2, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->SERVICE_OPTION_NOT_SUPPORTED:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    .line 1998
    :cond_5a
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getTransport()I

    move-result p2

    if-eq p2, v2, :cond_71

    iget-object p2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    .line 1999
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->isUsingNonTerrestrialNetwork()Z

    move-result p2

    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->isSatellite()Z

    move-result v1

    if-eq p2, v1, :cond_71

    .line 2002
    sget-object p2, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->DATA_NETWORK_TRANSPORT_NOT_ALLOWED:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    .line 2008
    :cond_71
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->isEsimBootStrapProvisioningActivated()Z

    move-result p2

    const/4 v1, 0x1

    if-eqz p2, :cond_ac

    .line 2009
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getTransport()I

    move-result p2

    if-ne p2, v1, :cond_ac

    .line 2010
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->isEsimBootStrapMaxDataLimitReached()Z

    move-result p2

    if-eqz p2, :cond_8f

    .line 2011
    const-string p2, "BootStrap Sim Data Usage limit reached"

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 2012
    sget-object p2, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->DATA_LIMIT_REACHED:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    goto :goto_ac

    :cond_8f
    const/16 p2, 0x10

    .line 2014
    invoke-virtual {p0, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_a7

    .line 2015
    sget-object v3, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->CHECK_DATA_USAGE:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    invoke-virtual {p0, p2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    .line 2017
    invoke-virtual {v3}, Lcom/android/internal/telephony/data/DataConfigManager;->getReevaluateBootstrapSimDataUsageMillis()J

    move-result-wide v3

    .line 2015
    invoke-virtual {p0, p2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_ac

    .line 2019
    :cond_a7
    const-string p2, "skip scheduling evaluating existing data networks since alreadyscheduled"

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 2027
    :cond_ac
    :goto_ac
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getTransport()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/data/DataNetworkController;->isOnlySingleDataNetworkAllowed(I)Z

    move-result p2

    if-eqz p2, :cond_106

    .line 2029
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/NetworkCapabilities;->getCapabilities()[I

    move-result-object p2

    .line 2028
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/data/DataNetworkController;->hasCapabilityExemptsFromSinglePdnRule([I)Z

    move-result p2

    if-nez p2, :cond_106

    .line 2032
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAllNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-virtual {p2}, Ljava/util/LinkedList;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v3, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda45;

    invoke-direct {v3, p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda45;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataNetwork;)V

    .line 2033
    invoke-interface {p2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v3, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda46;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda46;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;)V

    .line 2036
    invoke-interface {p2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v3, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda47;

    invoke-direct {v3, p1}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda47;-><init>(Lcom/android/internal/telephony/data/DataNetwork;)V

    .line 2038
    invoke-interface {p2, v3}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p2

    if-eqz p2, :cond_ed

    .line 2039
    sget-object p2, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->ONLY_ALLOWED_SINGLE_NETWORK:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    goto :goto_106

    .line 2042
    :cond_ed
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "evaluateDataNetwork: "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " has the highest priority. No need to tear down"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    :cond_106
    :goto_106
    const/16 p2, 0x21

    .line 2049
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/data/DataNetwork;->hasNetworkCapabilityInNetworkRequests(I)Z

    move-result p2

    .line 2054
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->shouldDelayImsTearDownDueToInCall()Z

    move-result v3

    if-eqz v3, :cond_11a

    if-eqz p2, :cond_16e

    .line 2056
    const-string v3, "Ignored VoPS check due to delay IMS tear down until call ends."

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    goto :goto_16e

    :cond_11a
    if-eqz p2, :cond_151

    .line 2063
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getTransport()I

    move-result v3

    if-ne v3, v1, :cond_151

    .line 2064
    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3, v2, v1}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v3

    if-eqz v3, :cond_151

    .line 2068
    invoke-virtual {v3}, Landroid/telephony/NetworkRegistrationInfo;->getDataSpecificInfo()Landroid/telephony/DataSpecificRegistrationInfo;

    move-result-object v4

    if-eqz v4, :cond_151

    .line 2069
    invoke-virtual {v4}, Landroid/telephony/DataSpecificRegistrationInfo;->getVopsSupportInfo()Landroid/telephony/VopsSupportInfo;

    move-result-object v5

    if-eqz v5, :cond_151

    .line 2070
    invoke-virtual {v4}, Landroid/telephony/DataSpecificRegistrationInfo;->getVopsSupportInfo()Landroid/telephony/VopsSupportInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/VopsSupportInfo;->isVopsSupported()Z

    move-result v4

    if-nez v4, :cond_151

    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    .line 2072
    invoke-virtual {v3}, Landroid/telephony/NetworkRegistrationInfo;->getNetworkRegistrationState()I

    move-result v3

    .line 2071
    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/data/DataConfigManager;->shouldKeepNetworkUpInNonVops(I)Z

    move-result v3

    if-nez v3, :cond_151

    .line 2073
    sget-object v3, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->VOPS_NOT_SUPPORTED:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    .line 2081
    :cond_151
    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAccessNetworksManager:Lcom/android/internal/telephony/data/AccessNetworksManager;

    .line 2083
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getApnTypeNetworkCapability()I

    move-result v4

    .line 2082
    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/data/AccessNetworksManager;->getPreferredTransportByNetworkCapability(I)I

    move-result v3

    .line 2084
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getTransport()I

    move-result v4

    if-eq v3, v4, :cond_16e

    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataRetryManager:Lcom/android/internal/telephony/data/DataRetryManager;

    .line 2085
    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/data/DataRetryManager;->isDataNetworkHandoverRetryStopped(Lcom/android/internal/telephony/data/DataNetwork;)Z

    move-result v3

    if-eqz v3, :cond_16e

    .line 2086
    sget-object v3, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->HANDOVER_RETRY_STOPPED:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    .line 2091
    :cond_16e
    :goto_16e
    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataSettingsManager:Lcom/android/internal/telephony/data/DataSettingsManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/data/DataSettingsManager;->isDataEnabled()Z

    move-result v3

    xor-int/2addr v3, v1

    .line 2094
    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v4

    if-eqz v4, :cond_18a

    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataSettingsManager:Lcom/android/internal/telephony/data/DataSettingsManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/data/DataSettingsManager;->isDataRoamingEnabled()Z

    move-result v4

    if-nez v4, :cond_18a

    .line 2095
    sget-object v4, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->ROAMING_DISABLED:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    .line 2102
    :cond_18a
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getTransport()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataNetworkType(I)I

    move-result v4

    .line 2103
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getDataProfile()Landroid/telephony/data/DataProfile;

    move-result-object v5

    .line 2104
    invoke-virtual {v5}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v6

    if-eqz v6, :cond_1fd

    .line 2106
    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataSettingsManager:Lcom/android/internal/telephony/data/DataSettingsManager;

    .line 2108
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getApnTypeNetworkCapability()I

    move-result v6

    .line 2107
    invoke-static {v6}, Lcom/android/internal/telephony/data/DataUtils;->networkCapabilityToApnType(I)I

    move-result v6

    .line 2106
    invoke-virtual {v3, v6}, Lcom/android/internal/telephony/data/DataSettingsManager;->isDataEnabled(I)Z

    move-result v3

    xor-int/2addr v3, v1

    if-eqz v4, :cond_1fd

    .line 2113
    invoke-virtual {v5}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/telephony/data/ApnSetting;->canSupportLingeringNetworkType(I)Z

    move-result v6

    if-nez v6, :cond_1fd

    .line 2114
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "networkType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", networkTypeBitmask="

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2117
    invoke-virtual {v5}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/data/ApnSetting;->getNetworkTypeBitmask()I

    move-result v4

    int-to-long v7, v4

    .line 2116
    invoke-static {v7, v8}, Landroid/telephony/TelephonyManager;->convertNetworkTypeBitmaskToString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", lingeringNetworkTypeBitmask="

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2120
    invoke-virtual {v5}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/data/ApnSetting;->getLingeringNetworkTypeBitmask()J

    move-result-wide v7

    .line 2119
    invoke-static {v7, v8}, Landroid/telephony/TelephonyManager;->convertNetworkTypeBitmaskToString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2114
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 2121
    sget-object v4, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->DATA_NETWORK_TYPE_NOT_ALLOWED:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    :cond_1fd
    if-eqz v3, :cond_204

    .line 2127
    sget-object v3, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->DATA_DISABLED:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    .line 2133
    :cond_204
    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataProfileManager:Lcom/android/internal/telephony/data/DataProfileManager;

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/data/DataProfileManager;->isDataProfileCompatible(Landroid/telephony/data/DataProfile;)Z

    move-result v3

    if-nez v3, :cond_211

    .line 2134
    sget-object v3, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->DATA_PROFILE_INVALID:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    .line 2138
    :cond_211
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->isInternetSupported()Z

    move-result v3

    if-eqz v3, :cond_230

    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataProfileManager:Lcom/android/internal/telephony/data/DataProfileManager;

    .line 2139
    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/data/DataProfileManager;->isDataProfilePreferred(Landroid/telephony/data/DataProfile;)Z

    move-result v3

    if-nez v3, :cond_230

    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataProfileManager:Lcom/android/internal/telephony/data/DataProfileManager;

    .line 2141
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getAttachedNetworkRequestList()Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    move-result-object v4

    .line 2140
    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/data/DataProfileManager;->canPreferredDataProfileSatisfy(Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;)Z

    move-result v3

    if-eqz v3, :cond_230

    .line 2142
    sget-object v3, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->DATA_PROFILE_NOT_PREFERRED:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    .line 2146
    :cond_230
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataEvaluation;->containsDisallowedReasons()Z

    move-result v3

    if-nez v3, :cond_23c

    .line 2148
    sget-object v2, Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;->NORMAL:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataAllowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;)V

    goto :goto_2aa

    .line 2149
    :cond_23c
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataEvaluation;->containsHardDisallowedReasons()Z

    move-result v3

    if-nez v3, :cond_2aa

    .line 2153
    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v3}, Landroid/telecom/TelecomManager;->isInEmergencyCall()Z

    move-result v3

    if-nez v3, :cond_252

    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->isInEcm()Z

    move-result v3

    if-eqz v3, :cond_25e

    .line 2154
    :cond_252
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->isEmergencySupl()Z

    move-result v3

    if-eqz v3, :cond_25e

    .line 2156
    sget-object v2, Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;->EMERGENCY_SUPL:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataAllowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;)V

    goto :goto_2aa

    .line 2157
    :cond_25e
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v3

    const/16 v4, 0xd

    invoke-virtual {v3, v4}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v3

    if-nez v3, :cond_283

    .line 2159
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getAttachedNetworkRequestList()Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda48;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda48;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;)V

    .line 2160
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v3

    if-eqz v3, :cond_283

    .line 2163
    sget-object v2, Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;->RESTRICTED_REQUEST:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataAllowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;)V

    goto :goto_2aa

    .line 2164
    :cond_283
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getTransport()I

    move-result v3

    if-ne v3, v2, :cond_28f

    .line 2166
    sget-object v2, Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;->UNMETERED_USAGE:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataAllowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;)V

    goto :goto_2aa

    .line 2168
    :cond_28f
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    .line 2169
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v3

    .line 2170
    invoke-virtual {v3}, Landroid/net/NetworkCapabilities;->getCapabilities()[I

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v4

    .line 2168
    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/data/DataConfigManager;->isAnyMeteredCapability([IZ)Z

    move-result v2

    if-nez v2, :cond_2aa

    .line 2172
    sget-object v2, Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;->UNMETERED_USAGE:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataAllowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;)V

    :cond_2aa
    :goto_2aa
    if-eqz p2, :cond_2b1

    .line 2180
    iget-boolean p2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mIsSrvccHandoverInProcess:Z

    if-eqz p2, :cond_2b1

    goto :goto_2b2

    :cond_2b1
    const/4 v1, 0x0

    .line 2181
    :goto_2b2
    sget-object p2, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->DATA_NETWORK_TYPE_NOT_ALLOWED:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/data/DataEvaluation;->containsOnly(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)Z

    move-result p2

    if-eqz p2, :cond_2c7

    .line 2182
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->shouldDelayImsTearDownDueToInCall()Z

    move-result p2

    if-nez p2, :cond_2c2

    if-eqz v1, :cond_2c7

    .line 2183
    :cond_2c2
    sget-object p2, Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;->IN_VOICE_CALL:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataAllowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;)V

    .line 2186
    :cond_2c7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Evaluated "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    return-object v0
.end method

.method private blacklist evaluateDataNetworkHandover(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataEvaluation;
    .registers 12

    .line 2322
    new-instance v0, Lcom/android/internal/telephony/data/DataEvaluation;

    sget-object v1, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->DATA_HANDOVER:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/data/DataEvaluation;-><init>(Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;)V

    .line 2323
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->isConnecting()Z

    move-result v1

    if-nez v1, :cond_19

    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->isConnected()Z

    move-result v1

    if-nez v1, :cond_19

    .line 2324
    sget-object p0, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->ILLEGAL_STATE:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    return-object v0

    .line 2329
    :cond_19
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/data/DataConfigManager;->isEnhancedIwlanHandoverCheckEnabled()Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_7e

    .line 2330
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getTransport()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/data/DataUtils;->getTargetTransport(I)I

    move-result v1

    .line 2331
    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3, v2, v1}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v1

    if-eqz v1, :cond_7e

    .line 2335
    invoke-virtual {v1}, Landroid/telephony/NetworkRegistrationInfo;->isInService()Z

    move-result v3

    if-nez v3, :cond_3d

    .line 2336
    sget-object v3, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->NOT_IN_SERVICE:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    .line 2343
    :cond_3d
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getAttachedNetworkRequestList()Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    move-result-object v3

    .line 2344
    invoke-virtual {v3}, Ljava/util/LinkedList;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda49;

    invoke-direct {v4}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda49;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v3

    if-eqz v3, :cond_77

    .line 2346
    invoke-virtual {v1}, Landroid/telephony/NetworkRegistrationInfo;->getDataSpecificInfo()Landroid/telephony/DataSpecificRegistrationInfo;

    move-result-object v3

    if-eqz v3, :cond_77

    .line 2348
    invoke-virtual {v3}, Landroid/telephony/DataSpecificRegistrationInfo;->getVopsSupportInfo()Landroid/telephony/VopsSupportInfo;

    move-result-object v4

    if-eqz v4, :cond_77

    .line 2349
    invoke-virtual {v3}, Landroid/telephony/DataSpecificRegistrationInfo;->getVopsSupportInfo()Landroid/telephony/VopsSupportInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/VopsSupportInfo;->isVopsSupported()Z

    move-result v3

    if-nez v3, :cond_77

    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    .line 2351
    invoke-virtual {v1}, Landroid/telephony/NetworkRegistrationInfo;->getNetworkRegistrationState()I

    move-result v1

    .line 2350
    invoke-virtual {v3, v1}, Lcom/android/internal/telephony/data/DataConfigManager;->shouldKeepNetworkUpInNonVops(I)Z

    move-result v1

    if-nez v1, :cond_77

    .line 2352
    sget-object v1, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->VOPS_NOT_SUPPORTED:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    .line 2357
    :cond_77
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataEvaluation;->containsDisallowedReasons()Z

    move-result v1

    if-eqz v1, :cond_7e

    return-object v0

    .line 2363
    :cond_7e
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/data/DataConfigManager;->isIwlanHandoverPolicyEnabled()Z

    move-result v1

    if-eqz v1, :cond_1b8

    .line 2364
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/data/DataConfigManager;->getHandoverRules()Ljava/util/List;

    move-result-object v1

    .line 2366
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getTransport()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataNetworkType(I)I

    move-result v3

    if-nez v3, :cond_9a

    .line 2373
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getLastKnownDataNetworkType()I

    move-result v3

    .line 2375
    :cond_9a
    invoke-static {v3}, Lcom/android/internal/telephony/data/DataUtils;->networkTypeToAccessNetworkType(I)I

    move-result v3

    .line 2377
    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    const/4 v5, 0x1

    invoke-virtual {v4, v2, v5}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v4

    if-eqz v4, :cond_b4

    .line 2379
    invoke-virtual {v4}, Landroid/telephony/NetworkRegistrationInfo;->isInService()Z

    move-result v4

    if-eqz v4, :cond_b4

    .line 2383
    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getDataRoamingFromRegistration()Z

    move-result v4

    goto :goto_b8

    .line 2384
    :cond_b4
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getLastKnownRoamingState()Z

    move-result v4

    .line 2385
    :goto_b8
    iget-object v6, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    if-eqz v6, :cond_cd

    .line 2387
    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallTracker;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v6, v7, :cond_cd

    goto :goto_ce

    :cond_cd
    const/4 v5, 0x0

    .line 2389
    :goto_ce
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getTransport()I

    move-result v6

    invoke-static {v6}, Lcom/android/internal/telephony/data/DataUtils;->getTargetTransport(I)I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataNetworkType(I)I

    move-result v6

    .line 2388
    invoke-static {v6}, Lcom/android/internal/telephony/data/DataUtils;->networkTypeToAccessNetworkType(I)I

    move-result v6

    .line 2390
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object p1

    .line 2391
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "evaluateDataNetworkHandover: source="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2392
    invoke-static {v3}, Landroid/telephony/AccessNetworkConstants$AccessNetworkType;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", target="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2393
    invoke-static {v6}, Landroid/telephony/AccessNetworkConstants$AccessNetworkType;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", roaming="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", incall="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", ServiceState="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", capabilities="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2391
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 2400
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_12c
    :goto_12c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1b2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/data/DataNetworkController$HandoverRule;

    .line 2402
    iget-boolean v8, v7, Lcom/android/internal/telephony/data/DataNetworkController$HandoverRule;->isOnlyForRoaming:Z

    if-eqz v8, :cond_13f

    if-nez v4, :cond_13f

    goto :goto_12c

    .line 2407
    :cond_13f
    iget-boolean v8, v7, Lcom/android/internal/telephony/data/DataNetworkController$HandoverRule;->isOnlyForIncall:Z

    if-eqz v8, :cond_146

    if-nez v5, :cond_146

    goto :goto_12c

    .line 2413
    :cond_146
    iget-object v8, v7, Lcom/android/internal/telephony/data/DataNetworkController$HandoverRule;->sourceAccessNetworks:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12c

    iget-object v8, v7, Lcom/android/internal/telephony/data/DataNetworkController$HandoverRule;->targetAccessNetworks:Ljava/util/Set;

    .line 2414
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12c

    .line 2418
    iget-object v8, v7, Lcom/android/internal/telephony/data/DataNetworkController$HandoverRule;->networkCapabilities:Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_17a

    iget-object v8, v7, Lcom/android/internal/telephony/data/DataNetworkController$HandoverRule;->networkCapabilities:Ljava/util/Set;

    .line 2419
    invoke-interface {v8}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v8

    .line 2420
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v9, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda50;

    invoke-direct {v9, p1}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda50;-><init>(Landroid/net/NetworkCapabilities;)V

    invoke-interface {v8, v9}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v8

    if-eqz v8, :cond_12c

    .line 2421
    :cond_17a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "evaluateDataNetworkHandover: Matched "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 2422
    iget p1, v7, Lcom/android/internal/telephony/data/DataNetworkController$HandoverRule;->type:I

    if-ne p1, v2, :cond_198

    .line 2423
    sget-object p1, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->NOT_ALLOWED_BY_POLICY:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    goto :goto_19d

    .line 2426
    :cond_198
    sget-object p1, Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;->NORMAL:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataAllowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;)V

    .line 2428
    :goto_19d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "evaluateDataNetworkHandover: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    return-object v0

    .line 2433
    :cond_1b2
    const-string p1, "evaluateDataNetworkHandover: Did not find matching rule."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    goto :goto_1bd

    .line 2435
    :cond_1b8
    const-string p1, "evaluateDataNetworkHandover: IWLAN handover policy not enabled."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 2439
    :goto_1bd
    sget-object p0, Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;->NORMAL:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataAllowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;)V

    return-object v0
.end method

.method private blacklist evaluatePendingImsDeregDataNetworks()V
    .registers 5

    .line 4176
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPendingImsDeregDataNetworks:Ljava/util/Map;

    .line 4177
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 4178
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 4179
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4180
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/data/DataNetwork;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/data/DataNetworkController;->isSafeToTearDown(Lcom/android/internal/telephony/data/DataNetwork;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 4182
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "evaluatePendingImsDeregDataNetworks: Safe to tear down data network "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4183
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " now."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4182
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 4184
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 4185
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_a

    .line 4187
    :cond_4c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Still not safe to tear down "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    goto :goto_a

    :cond_6a
    return-void
.end method

.method private blacklist findCompatibleDataNetworkAndAttach(Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;)Z
    .registers 7

    .line 1409
    invoke-virtual {p1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 1411
    :cond_8
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_56

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/data/DataNetwork;

    .line 1412
    invoke-virtual {p1}, Ljava/util/LinkedList;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda43;

    invoke-direct {v4, v2}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda43;-><init>(Lcom/android/internal/telephony/data/DataNetwork;)V

    .line 1413
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v3

    .line 1415
    invoke-interface {v3}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object v3

    const/4 v4, 0x0

    .line 1416
    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    if-eqz v3, :cond_35

    goto :goto_e

    .line 1425
    :cond_35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Found a compatible data network "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ". Attaching "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->logv(Ljava/lang/String;)V

    .line 1427
    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/data/DataNetwork;->attachNetworkRequests(Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;)Z

    move-result p0

    return p0

    :cond_56
    return v1
.end method

.method private blacklist findCompatibleDataNetworkAndAttach(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z
    .registers 3

    .line 1389
    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;-><init>(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)V

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->findCompatibleDataNetworkAndAttach(Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;)Z

    move-result p0

    return p0
.end method

.method private blacklist findSatisfiableNetworkRequests(Landroid/telephony/data/DataProfile;)Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;
    .registers 4

    .line 2883
    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAllNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda53;

    invoke-direct {v1}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda53;-><init>()V

    .line 2884
    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda54;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda54;-><init>(Landroid/telephony/data/DataProfile;)V

    .line 2886
    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 2887
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method private blacklist getDataNetworkType(I)I
    .registers 3

    .line 4091
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object p0

    if-eqz p0, :cond_e

    .line 4094
    invoke-virtual {p0}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result p0

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist getDataRegistrationState(Landroid/telephony/ServiceState;I)I
    .registers 3

    const/4 p0, 0x2

    .line 4108
    invoke-virtual {p1, p0, p2}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object p0

    if-eqz p0, :cond_c

    .line 4111
    invoke-virtual {p0}, Landroid/telephony/NetworkRegistrationInfo;->getRegistrationState()I

    move-result p0

    return p0

    :cond_c
    const/4 p0, 0x4

    return p0
.end method

.method private blacklist getDataUsage()J
    .registers 8

    .line 1884
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1885
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/usage/NetworkStatsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/app/usage/NetworkStatsManager;

    if-eqz v1, :cond_45

    .line 1888
    new-instance v0, Landroid/net/NetworkTemplate$Builder;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/net/NetworkTemplate$Builder;-><init>(I)V

    .line 1890
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getSubscriberId()Ljava/lang/String;

    move-result-object p0

    .line 1892
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_45

    .line 1893
    invoke-static {p0}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/net/NetworkTemplate$Builder;->setSubscriberIds(Ljava/util/Set;)Landroid/net/NetworkTemplate$Builder;

    .line 1895
    invoke-virtual {v0, v2}, Landroid/net/NetworkTemplate$Builder;->setMeteredness(I)Landroid/net/NetworkTemplate$Builder;

    .line 1896
    invoke-virtual {v0}, Landroid/net/NetworkTemplate$Builder;->build()Landroid/net/NetworkTemplate;

    move-result-object v2

    const-wide/16 v3, 0x0

    .line 1898
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual/range {v1 .. v6}, Landroid/app/usage/NetworkStatsManager;->querySummaryForDevice(Landroid/net/NetworkTemplate;JJ)Landroid/app/usage/NetworkStats$Bucket;

    move-result-object p0

    .line 1899
    invoke-virtual {p0}, Landroid/app/usage/NetworkStats$Bucket;->getRxBytes()J

    move-result-wide v0

    invoke-virtual {p0}, Landroid/app/usage/NetworkStats$Bucket;->getTxBytes()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0

    :cond_45
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private blacklist getGroupedUnsatisfiedNetworkRequests()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;",
            ">;"
        }
    .end annotation

    .line 1911
    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-direct {v0}, Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;-><init>()V

    .line 1912
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAllNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    .line 1913
    invoke-virtual {v2}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getState()I

    move-result v3

    if-nez v3, :cond_b

    .line 1914
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;->add(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z

    goto :goto_b

    .line 1917
    :cond_21
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    invoke-static {v0, p0}, Lcom/android/internal/telephony/data/DataUtils;->getGroupedNetworkRequestList(Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist getTearDownReason(Lcom/android/internal/telephony/data/DataEvaluation;)I
    .registers 3

    .line 2452
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataEvaluation;->containsDisallowedReasons()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_66

    .line 2453
    sget-object v0, Lcom/android/internal/telephony/data/DataNetworkController$14;->$SwitchMap$com$android$internal$telephony$data$DataEvaluation$DataDisallowedReason:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataEvaluation;->getDataDisallowedReasons()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_68

    goto :goto_66

    :pswitch_1d
    const/16 p0, 0x20

    return p0

    :pswitch_20
    const/16 p0, 0x1f

    return p0

    :pswitch_23
    const/16 p0, 0xd

    return p0

    :pswitch_26
    const/16 p0, 0x1d

    return p0

    :pswitch_29
    const/16 p0, 0x10

    return p0

    :pswitch_2c
    const/16 p0, 0x1c

    return p0

    :pswitch_2f
    const/16 p0, 0x1b

    return p0

    :pswitch_32
    const/16 p0, 0x1a

    return p0

    :pswitch_35
    const/16 p0, 0x19

    return p0

    :pswitch_38
    const/16 p0, 0x18

    return p0

    :pswitch_3b
    const/16 p0, 0x17

    return p0

    :pswitch_3e
    const/16 p0, 0x16

    return p0

    :pswitch_41
    const/4 p0, 0x6

    return p0

    :pswitch_43
    const/16 p0, 0x15

    return p0

    :pswitch_46
    const/16 p0, 0xa

    return p0

    :pswitch_49
    const/16 p0, 0xb

    return p0

    :pswitch_4c
    const/16 p0, 0x14

    return p0

    :pswitch_4f
    const/4 p0, 0x3

    return p0

    :pswitch_51
    const/16 p0, 0x9

    return p0

    :pswitch_54
    const/16 p0, 0x8

    return p0

    :pswitch_57
    const/4 p0, 0x2

    return p0

    :pswitch_59
    const/16 p0, 0x13

    return p0

    :pswitch_5c
    const/16 p0, 0x12

    return p0

    :pswitch_5f
    const/16 p0, 0x11

    return p0

    :pswitch_62
    const/4 p0, 0x7

    return p0

    :pswitch_64
    const/4 p0, 0x4

    return p0

    :cond_66
    :goto_66
    return v1

    nop

    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_64
        :pswitch_62
        :pswitch_5f
        :pswitch_5c
        :pswitch_59
        :pswitch_57
        :pswitch_54
        :pswitch_51
        :pswitch_4f
        :pswitch_4c
        :pswitch_49
        :pswitch_46
        :pswitch_43
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
    .end packed-switch
.end method

.method private blacklist hasCalling()Z
    .registers 2

    .line 467
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyCapabilities;->minimalTelephonyCdmCheck(Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 p0, 0x1

    return p0

    .line 468
    :cond_a
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.telephony.calling"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private blacklist hasCapabilityExemptsFromSinglePdnRule([I)Z
    .registers 3

    .line 1482
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    .line 1483
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataConfigManager;->getCapabilitiesExemptFromSingleDataNetwork()Ljava/util/Set;

    move-result-object p0

    .line 1484
    invoke-static {p1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda38;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda38;-><init>(Ljava/util/Set;)V

    invoke-interface {p1, v0}, Ljava/util/stream/IntStream;->anyMatch(Ljava/util/function/IntPredicate;)Z

    move-result p0

    return p0
.end method

.method private blacklist isDataDormant()Z
    .registers 3

    .line 2531
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda24;

    invoke-direct {v1}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda24;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    .line 2534
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda25;

    invoke-direct {v0}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda25;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    if-eqz p0, :cond_24

    const/4 p0, 0x1

    return p0

    :cond_24
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isEsimBootStrapMaxDataLimitReached()Z
    .registers 9

    .line 1859
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    .line 1860
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataConfigManager;->getEsimBootStrapMaxDataLimitBytes()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const/4 v5, 0x0

    if-gez v4, :cond_e

    return v5

    .line 1866
    :cond_e
    iget-wide v6, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mBootStrapSimTotalDataUsageBytes:J

    cmp-long v4, v6, v0

    if-gez v4, :cond_49

    iget-wide v6, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mBootstrapSimLastDataUsageQueryTime:J

    cmp-long v2, v6, v2

    if-eqz v2, :cond_27

    .line 1868
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v6, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mBootstrapSimLastDataUsageQueryTime:J

    sub-long/2addr v2, v6

    sget-wide v6, Lcom/android/internal/telephony/data/DataNetworkController;->GUARD_TIMER_INTERVAL_TO_QUERY_DATA_USAGE_API_STATS_MILLIS:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_49

    .line 1870
    :cond_27
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataUsage()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mBootStrapSimTotalDataUsageBytes:J

    .line 1871
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current bootstrap sim data usage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mBootStrapSimTotalDataUsageBytes:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 1872
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mBootstrapSimLastDataUsageQueryTime:J

    .line 1874
    :cond_49
    iget-wide v2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mBootStrapSimTotalDataUsageBytes:J

    cmp-long p0, v2, v0

    if-ltz p0, :cond_51

    const/4 p0, 0x1

    return p0

    :cond_51
    return v5
.end method

.method private blacklist isImsGracefulTearDownSupported()Z
    .registers 5

    .line 4226
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataConfigManager;->getImsDeregistrationDelay()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isImsSupportedOnDevice()Z
    .registers 2

    .line 2792
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.telephony.ims"

    .line 2793
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private blacklist isLegacyCs(I)Z
    .registers 3

    .line 1460
    invoke-static {p1}, Lcom/android/internal/telephony/data/DataUtils;->networkTypeToAccessNetworkType(I)I

    move-result p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_10

    const/4 v0, 0x2

    if-eq p0, v0, :cond_10

    const/4 v0, 0x4

    if-ne p0, v0, :cond_e

    goto :goto_10

    :cond_e
    const/4 p0, 0x0

    return p0

    :cond_10
    :goto_10
    return p1
.end method

.method private blacklist isOnlySingleDataNetworkAllowed(I)Z
    .registers 3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    const/4 p0, 0x0

    return p0

    .line 1472
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataConfigManager;->getNetworkTypesOnlySupportSingleDataNetwork()Ljava/util/List;

    move-result-object v0

    .line 1473
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataNetworkType(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private blacklist isSafeToTearDown(Lcom/android/internal/telephony/data/DataNetwork;)Z
    .registers 7

    const/16 v0, 0xa

    .line 4201
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/DataNetwork;->hasNetworkCapabilityInNetworkRequests(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    .line 4206
    :cond_a
    sget-object v0, Lcom/android/internal/telephony/data/DataNetworkController;->SUPPORTED_IMS_FEATURES:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 4207
    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mImsFeaturePackageName:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_10

    .line 4209
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getAttachedNetworkRequestList()Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    move-result-object v4

    .line 4210
    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;->hasNetworkRequestsFromPackage(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 4211
    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mRegisteredImsFeatures:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 p0, 0x0

    return p0

    :cond_3e
    return v1
.end method

.method private blacklist isValidRestrictedRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z
    .registers 4

    const/4 v0, 0x2

    .line 2275
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->hasCapability(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2b

    const/16 v0, 0x1d

    .line 2276
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 2277
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_2b

    .line 2285
    :cond_17
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->isUsingNonTerrestrialNetwork()Z

    move-result p0

    if-eqz p0, :cond_29

    const/16 p0, 0xc

    .line 2286
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->hasCapability(I)Z

    move-result p0

    if-nez p0, :cond_28

    goto :goto_29

    :cond_28
    return v1

    :cond_29
    :goto_29
    const/4 p0, 0x1

    return p0

    :cond_2b
    :goto_2b
    return v1
.end method

.method private synthetic blacklist lambda$evaluateDataNetwork$10(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z
    .registers 2

    .line 2037
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getCapabilities()[I

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->hasCapabilityExemptsFromSinglePdnRule([I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private synthetic blacklist lambda$evaluateDataNetwork$9(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z
    .registers 3

    .line 2033
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getTransport()I

    move-result p1

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAccessNetworksManager:Lcom/android/internal/telephony/data/AccessNetworksManager;

    .line 2035
    invoke-virtual {p2}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getHighestPriorityApnTypeNetworkCapability()I

    move-result p2

    .line 2034
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/data/AccessNetworksManager;->getPreferredTransportByNetworkCapability(I)I

    move-result p0

    if-ne p1, p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic blacklist lambda$evaluateNetworkRequest$8(Lcom/android/internal/telephony/data/DataNetwork;)Z
    .registers 2

    .line 1731
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->getCapabilities()[I

    move-result-object p1

    .line 1730
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->hasCapabilityExemptsFromSinglePdnRule([I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private synthetic blacklist lambda$onDataNetworkDisconnected$32(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V
    .registers 2

    .line 3403
    iget-boolean p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAnyDataNetworkExisting:Z

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;->onAnyDataNetworkExistingChanged(Z)V

    return-void
.end method

.method private synthetic blacklist lambda$onDataNetworkDisconnected$33(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V
    .registers 3

    .line 3402
    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda58;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda58;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic blacklist lambda$onDataNetworkSetupFailed$22(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V
    .registers 2

    .line 3061
    iget-boolean p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAnyDataNetworkExisting:Z

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;->onAnyDataNetworkExistingChanged(Z)V

    return-void
.end method

.method private synthetic blacklist lambda$onDataNetworkSetupFailed$23(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V
    .registers 3

    .line 3060
    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda59;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda59;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic blacklist lambda$onDataNetworkSetupFailed$24(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z
    .registers 2

    .line 3064
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAllNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private synthetic blacklist lambda$onDataNetworkSetupRetry$27(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z
    .registers 2

    .line 3174
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAllNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private synthetic blacklist lambda$onLinkStatusChanged$39(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V
    .registers 2

    .line 3739
    iget p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mInternetLinkStatus:I

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;->onPhysicalLinkStatusChanged(I)V

    return-void
.end method

.method private synthetic blacklist lambda$onLinkStatusChanged$40(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V
    .registers 3

    .line 3738
    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda62;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda62;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic blacklist lambda$onPcoDataChanged$41(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V
    .registers 2

    .line 3768
    iget-boolean p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mNrAdvancedCapableByPco:Z

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;->onNrAdvancedCapableByPcoChanged(Z)V

    return-void
.end method

.method private synthetic blacklist lambda$onPcoDataChanged$42(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V
    .registers 3

    .line 3767
    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda55;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda55;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic blacklist lambda$registerImsStateCallback$17(ILjava/lang/Integer;)Landroid/telephony/ims/ImsStateCallback;
    .registers 4

    .line 2722
    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$12;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/telephony/data/DataNetworkController$12;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;ILjava/lang/Integer;)V

    return-object v0
.end method

.method private synthetic blacklist lambda$setupDataNetwork$20(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V
    .registers 2

    .line 3039
    iget-boolean p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAnyDataNetworkExisting:Z

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;->onAnyDataNetworkExistingChanged(Z)V

    return-void
.end method

.method private synthetic blacklist lambda$setupDataNetwork$21(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V
    .registers 3

    .line 3038
    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda60;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda60;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method private blacklist log(Ljava/lang/String;)V
    .registers 2

    .line 4325
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mLogTag:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist loge(Ljava/lang/String;)V
    .registers 2

    .line 4333
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mLogTag:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist logl(Ljava/lang/String;)V
    .registers 2

    .line 4349
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 4350
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist logv(Ljava/lang/String;)V
    .registers 2

    .line 0
    return-void
.end method

.method private blacklist onAddNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)V
    .registers 4

    .line 1313
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->updateDataConfig(Lcom/android/internal/telephony/data/DataConfigManager;)V

    .line 1316
    iget-boolean v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mLastImsOperationIsRelease:Z

    if-eqz v0, :cond_47

    const/4 v0, 0x0

    .line 1317
    iput-boolean v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mLastImsOperationIsRelease:Z

    .line 1318
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mLastReleasedImsRequestCapabilities:[I

    .line 1319
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getCapabilities()[I

    move-result-object v1

    .line 1318
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mImsThrottleCounter:Lcom/android/internal/telephony/SlidingWindowEventCounter;

    .line 1320
    invoke-virtual {v0}, Lcom/android/internal/telephony/SlidingWindowEventCounter;->addOccurrence()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 1321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getNativeNetworkRequest()Landroid/net/NetworkRequest;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkRequest;->getRequestorPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " requested with same capabilities "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mImsThrottleCounter:Lcom/android/internal/telephony/SlidingWindowEventCounter;

    .line 1323
    invoke-virtual {v1}, Lcom/android/internal/telephony/SlidingWindowEventCounter;->getFrequencyString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ead6f8db-d2f2-4ed3-8da5-1d8560fe7daf"

    .line 1321
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->reportAnomaly(Ljava/lang/String;Ljava/lang/String;)V

    .line 1327
    :cond_47
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAllNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;->add(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z

    move-result v0

    if-nez v0, :cond_64

    .line 1328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAddNetworkRequest: Duplicate network request. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->loge(Ljava/lang/String;)V

    return-void

    .line 1331
    :cond_64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAddNetworkRequest: added "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 1332
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->onSatisfyNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)V

    return-void
.end method

.method private blacklist onAttachNetworkRequestsFailed(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;)V
    .registers 5

    .line 3506
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to attach "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist onCarrierConfigUpdated()V
    .registers 3

    .line 2817
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCarrierConfigUpdated: config is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2818
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/data/DataConfigManager;->isConfigCarrierSpecific()Z

    move-result v1

    if-eqz v1, :cond_15

    const-string v1, ""

    goto :goto_17

    :cond_15
    const-string v1, "not "

    :goto_17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "carrier specific. mSimState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mSimState:I

    .line 2820
    invoke-static {v1}, Landroid/telephony/TelephonyManager;->simStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2817
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 2821
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->updateNetworkRequestsPriority()V

    .line 2822
    sget-object v0, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->DATA_CONFIG_CHANGED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->onReevaluateUnsatisfiedNetworkRequests(Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;)V

    return-void
.end method

.method private blacklist onDataNetworkConnected(Lcom/android/internal/telephony/data/DataNetwork;)V
    .registers 4

    .line 3135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDataNetworkConnected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->logl(Ljava/lang/String;)V

    .line 3137
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkControllerCallbacks:Ljava/util/Set;

    new-instance v1, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda52;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda52;-><init>(Lcom/android/internal/telephony/data/DataNetwork;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 3141
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPreviousConnectedDataNetworkList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3143
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPreviousConnectedDataNetworkList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_33

    .line 3144
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPreviousConnectedDataNetworkList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3147
    :cond_33
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->isInternetSupported()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->updateOverallInternetDataState()V

    .line 3149
    :cond_3c
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p1

    if-eqz p1, :cond_69

    .line 3151
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "IMS data state changed from "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mImsDataNetworkState:I

    .line 3152
    invoke-static {v0}, Lcom/android/internal/telephony/util/TelephonyUtils;->dataStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " to CONNECTED."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3151
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->logl(Ljava/lang/String;)V

    const/4 p1, 0x2

    .line 3153
    iput p1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mImsDataNetworkState:I

    .line 3156
    :cond_69
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->isEsimBootStrapProvisioningActivated()Z

    move-result p1

    if-eqz p1, :cond_80

    const/16 p1, 0x10

    .line 3157
    sget-object v0, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->CHECK_DATA_USAGE:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    .line 3159
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataConfigManager;->getReevaluateBootstrapSimDataUsageMillis()J

    move-result-wide v0

    .line 3157
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_80
    return-void
.end method

.method private blacklist onDataNetworkDisconnected(Lcom/android/internal/telephony/data/DataNetwork;II)V
    .registers 6

    .line 3383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDataNetworkDisconnected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3384
    invoke-static {p2}, Landroid/telephony/DataFailCause;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "), tearDownReason="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3385
    invoke-static {p3}, Lcom/android/internal/telephony/data/DataNetwork;->tearDownReasonToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 3383
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/data/DataNetworkController;->logl(Ljava/lang/String;)V

    .line 3386
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 3387
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPendingImsDeregDataNetworks:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3388
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataRetryManager:Lcom/android/internal/telephony/data/DataRetryManager;

    invoke-virtual {p2, p1}, Lcom/android/internal/telephony/data/DataRetryManager;->cancelPendingHandoverRetry(Lcom/android/internal/telephony/data/DataNetwork;)V

    .line 3389
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->isInternetSupported()Z

    move-result p2

    if-eqz p2, :cond_4c

    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->updateOverallInternetDataState()V

    .line 3390
    :cond_4c
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->onPcoDataChanged(Lcom/android/internal/telephony/data/DataNetwork;)V

    .line 3392
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_7c

    .line 3394
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "IMS data state changed from "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mImsDataNetworkState:I

    .line 3395
    invoke-static {v0}, Lcom/android/internal/telephony/util/TelephonyUtils;->dataStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " to DISCONNECTED."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3394
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->logl(Ljava/lang/String;)V

    .line 3396
    iput p2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mImsDataNetworkState:I

    .line 3399
    :cond_7c
    iget-boolean p1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAnyDataNetworkExisting:Z

    if-eqz p1, :cond_99

    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_99

    .line 3400
    const-string p1, "All data networks disconnected now."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 3401
    iput-boolean p2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAnyDataNetworkExisting:Z

    .line 3402
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkControllerCallbacks:Ljava/util/Set;

    new-instance p2, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda26;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda26;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;)V

    invoke-interface {p1, p2}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    :cond_99
    const/16 p1, 0xe

    if-ne p3, p1, :cond_a0

    const-wide/16 p1, 0x0

    goto :goto_a6

    .line 3408
    :cond_a0
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataConfigManager;->getRetrySetupAfterDisconnectMillis()J

    move-result-wide p1

    :goto_a6
    const/4 p3, 0x5

    .line 3411
    sget-object v0, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->RETRY_AFTER_DISCONNECTED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    invoke-virtual {p0, p3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p3

    invoke-virtual {p0, p3, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private blacklist onDataNetworkHandoverFailed(Lcom/android/internal/telephony/data/DataNetwork;IJI)V
    .registers 13

    .line 3450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Handover failed. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/telephony/DataFailCause;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", retryDelayMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms, handoverFailureMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3452
    invoke-static {p5}, Landroid/telephony/data/DataCallResponse;->failureModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3450
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->logl(Ljava/lang/String;)V

    const/16 v0, 0x10

    .line 3455
    sget-object v1, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->DATA_HANDOVER:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3458
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getAttachedNetworkRequestList()Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_63

    .line 3459
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onDataNetworkHandoverFailed: No network requests attached to "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ". No need to retry since the network will be torn down soon."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    return-void

    :cond_63
    const/4 v0, 0x1

    if-eq p5, v0, :cond_c4

    if-nez p5, :cond_6d

    const/16 v0, 0x8cb

    if-ne p2, v0, :cond_6d

    goto :goto_c4

    :cond_6d
    const/4 v0, 0x3

    if-eq p5, v0, :cond_79

    if-nez p5, :cond_73

    goto :goto_79

    .line 3494
    :cond_73
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataRetryManager:Lcom/android/internal/telephony/data/DataRetryManager;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/data/DataRetryManager;->evaluateDataHandoverRetry(Lcom/android/internal/telephony/data/DataNetwork;IJ)V

    return-void

    .line 3477
    :cond_79
    :goto_79
    iget-object p5, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAccessNetworksManager:Lcom/android/internal/telephony/data/AccessNetworksManager;

    .line 3479
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getApnTypeNetworkCapability()I

    move-result v0

    .line 3478
    invoke-virtual {p5, v0}, Lcom/android/internal/telephony/data/AccessNetworksManager;->getPreferredTransportByNetworkCapability(I)I

    move-result p5

    .line 3480
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getTransport()I

    move-result v0

    if-ne v0, p5, :cond_a7

    .line 3481
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onDataNetworkHandoverFailed: Already on preferred transport "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3482
    invoke-static {p5}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ". No further actions needed."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3481
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    return-void

    .line 3487
    :cond_a7
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getTransport()I

    move-result p5

    invoke-static {p5}, Lcom/android/internal/telephony/data/DataUtils;->getTargetTransport(I)I

    move-result v2

    .line 3488
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataRetryManager:Lcom/android/internal/telephony/data/DataRetryManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getDataProfile()Landroid/telephony/data/DataProfile;

    move-result-object v1

    .line 3489
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getAttachedNetworkRequestList()Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    move-result-object v3

    move v4, p2

    move-wide v5, p3

    .line 3488
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/data/DataRetryManager;->evaluateDataSetupRetry(Landroid/telephony/data/DataProfile;ILcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;IJ)V

    const/16 p2, 0xd

    .line 3492
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/DataNetworkController;->tearDownGracefully(Lcom/android/internal/telephony/data/DataNetwork;I)V

    return-void

    .line 3472
    :cond_c4
    :goto_c4
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getApnTypeNetworkCapability()I

    move-result p1

    const/4 p2, 0x0

    const/16 p3, 0x15

    .line 3471
    invoke-virtual {p0, p3, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    sget-wide p2, Lcom/android/internal/telephony/data/DataNetworkController;->REEVALUATE_PREFERRED_TRANSPORT_DELAY_MILLIS:J

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private blacklist onDataNetworkHandoverRetry(Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;)V
    .registers 7

    .line 3248
    iget-object v0, p1, Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;->dataNetwork:Lcom/android/internal/telephony/data/DataNetwork;

    .line 3249
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x4

    const-string v3, "onDataNetworkHandoverRetry: "

    if-nez v1, :cond_28

    .line 3250
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " no longer exists."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 3251
    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->setState(I)V

    return-void

    .line 3255
    :cond_28
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataNetwork;->isConnected()Z

    move-result v1

    if-nez v1, :cond_49

    .line 3256
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " is not in the right state."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 3257
    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->setState(I)V

    return-void

    .line 3261
    :cond_49
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAccessNetworksManager:Lcom/android/internal/telephony/data/AccessNetworksManager;

    .line 3262
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataNetwork;->getApnTypeNetworkCapability()I

    move-result v4

    .line 3261
    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/data/AccessNetworksManager;->getPreferredTransportByNetworkCapability(I)I

    move-result v1

    .line 3263
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataNetwork;->getTransport()I

    move-result v4

    if-ne v4, v1, :cond_80

    .line 3264
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " is already on the preferred transport "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3265
    invoke-static {v1}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3264
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 3267
    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->setState(I)V

    return-void

    .line 3271
    :cond_80
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDataNetworkHandoverRetry: Start handover "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3272
    invoke-static {v1}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3271
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/data/DataNetworkController;->logl(Ljava/lang/String;)V

    .line 3274
    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->tryHandoverDataNetwork(Lcom/android/internal/telephony/data/DataNetwork;ILcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;)V

    return-void
.end method

.method private blacklist onDataNetworkHandoverRetryStopped(Lcom/android/internal/telephony/data/DataNetwork;)V
    .registers 5

    .line 3283
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAccessNetworksManager:Lcom/android/internal/telephony/data/AccessNetworksManager;

    .line 3285
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getApnTypeNetworkCapability()I

    move-result v1

    .line 3284
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/AccessNetworksManager;->getPreferredTransportByNetworkCapability(I)I

    move-result v0

    .line 3286
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getTransport()I

    move-result v1

    if-ne v1, v0, :cond_31

    .line 3287
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataNetworkHandoverRetryStopped: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is already on the preferred transport "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3289
    invoke-static {v0}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3287
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    return-void

    .line 3293
    :cond_31
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->shouldDelayImsTearDownDueToInCall()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 3294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDataNetworkHandoverRetryStopped: Delay IMS tear down until call ends. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    return-void

    :cond_4c
    const/16 v0, 0xd

    .line 3299
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->tearDownGracefully(Lcom/android/internal/telephony/data/DataNetwork;I)V

    return-void
.end method

.method private blacklist onDataNetworkHandoverSucceeded(Lcom/android/internal/telephony/data/DataNetwork;)V
    .registers 4

    .line 3421
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Handover successfully. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3422
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getTransport()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3421
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->logl(Ljava/lang/String;)V

    .line 3427
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getApnTypeNetworkCapability()I

    move-result p1

    const/4 v0, 0x0

    const/16 v1, 0x15

    .line 3426
    invoke-virtual {p0, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/16 p1, 0x10

    .line 3431
    sget-object v0, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->DATA_HANDOVER:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private blacklist onDataNetworkSetupFailed(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;IJ)V
    .registers 13

    .line 3054
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDataNetworkSetupDataFailed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3055
    invoke-static {p3}, Landroid/telephony/DataFailCause;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", retryDelayMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3054
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->logl(Ljava/lang/String;)V

    .line 3056
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 3057
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getTransport()I

    move-result v0

    invoke-direct {p0, v0, p3}, Lcom/android/internal/telephony/data/DataNetworkController;->trackSetupDataCallFailure(II)V

    .line 3058
    iget-boolean v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAnyDataNetworkExisting:Z

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_52

    const/4 v0, 0x0

    .line 3059
    iput-boolean v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAnyDataNetworkExisting:Z

    .line 3060
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkControllerCallbacks:Ljava/util/Set;

    new-instance v1, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda41;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda41;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 3064
    :cond_52
    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda42;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda42;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;)V

    invoke-virtual {p2, v0}, Ljava/util/LinkedList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 3065
    invoke-virtual {p2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_66

    .line 3066
    const-string p1, "onDataNetworkSetupFailed: All requests have been released. Will not evaluate retry."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    return-void

    .line 3072
    :cond_66
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataRetryManager:Lcom/android/internal/telephony/data/DataRetryManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getDataProfile()Landroid/telephony/data/DataProfile;

    move-result-object v1

    .line 3073
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getTransport()I

    move-result v2

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    .line 3072
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/data/DataRetryManager;->evaluateDataSetupRetry(Landroid/telephony/data/DataProfile;ILcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;IJ)V

    return-void
.end method

.method private blacklist onDataNetworkSetupRetry(Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;)V
    .registers 7

    .line 3172
    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    iget-object v1, p1, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;->networkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;-><init>(Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;)V

    .line 3174
    new-instance v1, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda31;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda31;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 3177
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 3178
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->getGroupedUnsatisfiedNetworkRequests()Ljava/util/List;

    move-result-object v1

    .line 3179
    iget-object v2, p1, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;->networkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda32;

    invoke-direct {v3, v1}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda32;-><init>(Ljava/util/List;)V

    .line 3180
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 3193
    new-instance v2, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda33;

    invoke-direct {v2, v0}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda33;-><init>(Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 3195
    :cond_30
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x4

    if-eqz v1, :cond_40

    .line 3196
    const-string v0, "onDataNetworkSetupRetry: Request list is empty. Abort retry."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->loge(Ljava/lang/String;)V

    .line 3197
    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->setState(I)V

    return-void

    .line 3200
    :cond_40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDataNetworkSetupRetry: Request list:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 3201
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    .line 3204
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getHighestPriorityApnTypeNetworkCapability()I

    move-result v1

    .line 3205
    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAccessNetworksManager:Lcom/android/internal/telephony/data/AccessNetworksManager;

    invoke-virtual {v3, v1}, Lcom/android/internal/telephony/data/AccessNetworksManager;->getPreferredTransportByNetworkCapability(I)I

    move-result v1

    .line 3207
    iget v3, p1, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;->transport:I

    if-eq v1, v3, :cond_ad

    .line 3208
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot re-satisfy "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " on "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;->transport:I

    .line 3209
    invoke-static {v0}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". The preferred transport has switched to "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3211
    invoke-static {v1}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3208
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 3216
    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->setState(I)V

    const/4 p1, 0x5

    .line 3217
    sget-object v0, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->PREFERRED_TRANSPORT_CHANGED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 3222
    :cond_ad
    sget-object v1, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->DATA_RETRY:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->evaluateNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;)Lcom/android/internal/telephony/data/DataEvaluation;

    move-result-object v0

    .line 3224
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataEvaluation;->containsDisallowedReasons()Z

    move-result v1

    const/4 v2, 0x2

    if-nez v1, :cond_dd

    .line 3225
    iget-object v1, p1, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;->dataProfile:Landroid/telephony/data/DataProfile;

    if-eqz v1, :cond_c6

    .line 3226
    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataProfileManager:Lcom/android/internal/telephony/data/DataProfileManager;

    invoke-virtual {v3, v1}, Lcom/android/internal/telephony/data/DataProfileManager;->isDataProfileCompatible(Landroid/telephony/data/DataProfile;)Z

    move-result v3

    if-nez v3, :cond_ca

    .line 3227
    :cond_c6
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataEvaluation;->getCandidateDataProfile()Landroid/telephony/data/DataProfile;

    move-result-object v1

    :cond_ca
    if-eqz v1, :cond_d4

    .line 3231
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataEvaluation;->getDataAllowedReason()Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    move-result-object v0

    .line 3230
    invoke-direct {p0, v1, p1, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->setupDataNetwork(Landroid/telephony/data/DataProfile;Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;)V

    return-void

    .line 3233
    :cond_d4
    const-string v0, "onDataNetworkSetupRetry: Not able to find a suitable data profile to retry."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->loge(Ljava/lang/String;)V

    .line 3234
    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->setState(I)V

    return-void

    .line 3237
    :cond_dd
    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->setState(I)V

    return-void
.end method

.method private blacklist onDataNetworkSuspendedStateChanged(Lcom/android/internal/telephony/data/DataNetwork;Z)V
    .registers 4

    .line 3362
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->isInternetSupported()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->updateOverallInternetDataState()V

    .line 3364
    :cond_9
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p1

    if-eqz p1, :cond_44

    .line 3366
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "IMS data state changed from "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mImsDataNetworkState:I

    .line 3367
    invoke-static {v0}, Lcom/android/internal/telephony/util/TelephonyUtils;->dataStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_31

    .line 3368
    const-string v0, "SUSPENDED"

    goto :goto_33

    :cond_31
    const-string v0, "CONNECTED"

    :goto_33
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3366
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->logl(Ljava/lang/String;)V

    if-eqz p2, :cond_41

    const/4 p1, 0x3

    goto :goto_42

    :cond_41
    const/4 p1, 0x2

    .line 3370
    :goto_42
    iput p1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mImsDataNetworkState:I

    :cond_44
    return-void
.end method

.method private blacklist onDataNetworkValidationStatusChanged(Lcom/android/internal/telephony/data/DataNetwork;ILandroid/net/Uri;)V
    .registers 7

    .line 3315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDataNetworkValidationStatusChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", validation status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3316
    invoke-static {p2}, Lcom/android/internal/telephony/data/DataUtils;->validationStatusToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_2d

    .line 3317
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2f

    :cond_2d
    const-string v1, ""

    :goto_2f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3315
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 3318
    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6c

    .line 3319
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.telephony.action.CARRIER_SIGNAL_REDIRECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3320
    const-string v1, "android.telephony.extra.REDIRECTION_URL"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3321
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getCarrierSignalAgent()Lcom/android/internal/telephony/CarrierSignalAgent;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/CarrierSignalAgent;->notifyCarrierSignalReceivers(Landroid/content/Intent;)V

    .line 3322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Notify carrier signal receivers with redirectUri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    :cond_6c
    const/4 p3, 0x1

    const/4 v0, 0x2

    if-eq p2, p3, :cond_8c

    if-eq p2, v0, :cond_8c

    .line 3327
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid validation status "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " received."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->loge(Ljava/lang/String;)V

    return-void

    .line 3331
    :cond_8c
    iget-object p3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataSettingsManager:Lcom/android/internal/telephony/data/DataSettingsManager;

    invoke-virtual {p3}, Lcom/android/internal/telephony/data/DataSettingsManager;->isRecoveryOnBadNetworkEnabled()Z

    move-result p3

    if-nez p3, :cond_9a

    .line 3332
    const-string p1, "Ignore data network validation status changed because data stall recovery is disabled."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    return-void

    .line 3339
    :cond_9a
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object p3

    const/16 v1, 0xc

    .line 3340
    invoke-virtual {p3, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_dc

    const/16 v1, 0xd

    .line 3341
    invoke-virtual {p3, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_dc

    const/16 v1, 0xe

    .line 3342
    invoke-virtual {p3, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_dc

    const/16 v1, 0xf

    .line 3343
    invoke-virtual {p3, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p3

    if-eqz p3, :cond_dc

    if-ne p2, v0, :cond_d2

    .line 3345
    invoke-virtual {p1}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object p3

    if-eqz p3, :cond_cc

    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->isDisconnected()Z

    move-result p1

    if-eqz p1, :cond_d2

    .line 3346
    :cond_cc
    const-string p1, "Ignoring invalid validation status for disconnected DataNetwork"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    return-void

    .line 3349
    :cond_d2
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkControllerCallbacks:Ljava/util/Set;

    new-instance p1, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda23;

    invoke-direct {p1, p2}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda23;-><init>(I)V

    invoke-interface {p0, p1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    :cond_dc
    return-void
.end method

.method private blacklist onDataServiceBindingChanged(IZ)V
    .registers 5

    .line 3564
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDataServiceBindingChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3565
    invoke-static {p1}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " data service is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1b

    .line 3566
    const-string v1, "bound."

    goto :goto_1d

    :cond_1b
    const-string v1, "unbound."

    :goto_1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3564
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    if-eqz p2, :cond_33

    .line 3568
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkControllerCallbacks:Ljava/util/Set;

    new-instance v1, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda30;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda30;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 3571
    :cond_33
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataServiceBound:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    return-void
.end method

.method private blacklist onDataStallReestablishInternet()V
    .registers 2

    .line 3528
    const-string v0, "onDataStallReestablishInternet: Tear down data networks that support internet."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 3532
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda17;-><init>()V

    .line 3533
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda22;

    invoke-direct {v0}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda22;-><init>()V

    .line 3534
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private blacklist onDeviceConfigUpdated()V
    .registers 2

    .line 2829
    const-string v0, "onDeviceConfigUpdated: DeviceConfig updated."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 2830
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->updateAnomalySlidingWindowCounters()V

    return-void
.end method

.method private blacklist onEvaluatePreferredTransport(IZ)V
    .registers 9

    .line 3611
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAccessNetworksManager:Lcom/android/internal/telephony/data/AccessNetworksManager;

    .line 3612
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/data/AccessNetworksManager;->getPreferredTransportByNetworkCapability(I)I

    move-result v0

    .line 3613
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEvaluatePreferredTransport: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataUtils;->networkCapabilityToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " preferred on "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3615
    invoke-static {v0}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3613
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 3616
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_30
    :goto_30
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_94

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/data/DataNetwork;

    .line 3617
    invoke-virtual {v3}, Lcom/android/internal/telephony/data/DataNetwork;->getApnTypeNetworkCapability()I

    move-result v4

    if-ne v4, p1, :cond_30

    .line 3620
    invoke-virtual {v3}, Lcom/android/internal/telephony/data/DataNetwork;->getTransport()I

    move-result v4

    if-ne v4, v0, :cond_69

    .line 3621
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onEvaluatePreferredTransport:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " already on "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3622
    invoke-static {v0}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3621
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    goto :goto_30

    .line 3629
    :cond_69
    invoke-virtual {v3}, Lcom/android/internal/telephony/data/DataNetwork;->isHandoverInProgress()Z

    move-result v4

    if-eqz v4, :cond_87

    .line 3630
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " handover in progress."

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    goto :goto_30

    :cond_87
    if-eqz p2, :cond_8f

    const/16 v4, 0xe

    .line 3635
    invoke-direct {p0, v3, v4}, Lcom/android/internal/telephony/data/DataNetworkController;->tearDownGracefully(Lcom/android/internal/telephony/data/DataNetwork;I)V

    goto :goto_30

    :cond_8f
    const/4 v4, 0x0

    .line 3638
    invoke-direct {p0, v3, v0, v4}, Lcom/android/internal/telephony/data/DataNetworkController;->tryHandoverDataNetwork(Lcom/android/internal/telephony/data/DataNetwork;ILcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;)V

    goto :goto_30

    :cond_94
    return-void
.end method

.method private blacklist onLinkStatusChanged(Lcom/android/internal/telephony/data/DataNetwork;I)V
    .registers 4

    .line 3724
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda27;

    invoke-direct {p2}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda27;-><init>()V

    .line 3725
    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    if-eqz p1, :cond_26

    .line 3728
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    .line 3727
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda28;

    invoke-direct {p2}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda28;-><init>()V

    .line 3728
    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    if-eqz p1, :cond_24

    const/4 p1, 0x2

    goto :goto_27

    :cond_24
    const/4 p1, 0x1

    goto :goto_27

    :cond_26
    const/4 p1, 0x0

    .line 3735
    :goto_27
    iget p2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mInternetLinkStatus:I

    if-eq p2, p1, :cond_4f

    .line 3736
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Internet link status changed to "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataUtils;->linkStatusToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 3737
    iput p1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mInternetLinkStatus:I

    .line 3738
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkControllerCallbacks:Ljava/util/Set;

    new-instance p2, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda29;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda29;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;)V

    invoke-interface {p1, p2}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 3742
    :cond_4f
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->updateDataActivity()V

    return-void
.end method

.method private blacklist onNetworkCapabilitiesChanged(Lcom/android/internal/telephony/data/DataNetwork;)V
    .registers 6

    .line 3781
    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-direct {v0}, Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;-><init>()V

    .line 3782
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAllNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    .line 3783
    invoke-virtual {v2}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getState()I

    move-result v3

    if-nez v3, :cond_b

    .line 3784
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->canBeSatisfiedBy(Landroid/net/NetworkCapabilities;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 3785
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;->add(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z

    goto :goto_b

    .line 3790
    :cond_2b
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_48

    .line 3791
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found more network requests that can be satisfied. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 3792
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/DataNetwork;->attachNetworkRequests(Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;)Z

    .line 3795
    :cond_48
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->isInternetSupported()Z

    move-result p1

    if-eqz p1, :cond_51

    .line 3797
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->updateOverallInternetDataState()V

    :cond_51
    return-void
.end method

.method private blacklist onPcoDataChanged(Lcom/android/internal/telephony/data/DataNetwork;)V
    .registers 6

    .line 3752
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataConfigManager;->getNrAdvancedCapablePcoId()I

    move-result p1

    if-eqz p1, :cond_5c

    .line 3755
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/data/DataNetwork;

    .line 3756
    invoke-virtual {v1}, Lcom/android/internal/telephony/data/DataNetwork;->getPcoData()Ljava/util/Map;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/PcoData;

    if-eqz v1, :cond_e

    .line 3757
    iget-object v1, v1, Landroid/telephony/PcoData;->contents:[B

    array-length v2, v1

    if-lez v2, :cond_e

    array-length v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget-byte v1, v1, v2

    if-ne v1, v3, :cond_e

    goto :goto_38

    :cond_37
    const/4 v3, 0x0

    .line 3764
    :goto_38
    iget-boolean p1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mNrAdvancedCapableByPco:Z

    if-eq v3, p1, :cond_5c

    .line 3765
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPcoDataChanged: mNrAdvancedCapableByPco = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 3766
    iput-boolean v3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mNrAdvancedCapableByPco:Z

    .line 3767
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkControllerCallbacks:Ljava/util/Set;

    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda51;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda51;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;)V

    invoke-interface {p1, v0}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    :cond_5c
    return-void
.end method

.method private blacklist onReevaluateExistingDataNetworks(Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;)V
    .registers 6

    .line 2295
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2296
    const-string p1, "onReevaluateExistingDataNetworks: No existing data networks to re-evaluate."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    return-void

    .line 2299
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Re-evaluating "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " existing data networks due to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 2301
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_36
    :goto_36
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_60

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/data/DataNetwork;

    .line 2302
    invoke-virtual {v1}, Lcom/android/internal/telephony/data/DataNetwork;->isConnecting()Z

    move-result v2

    if-nez v2, :cond_4e

    invoke-virtual {v1}, Lcom/android/internal/telephony/data/DataNetwork;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 2303
    :cond_4e
    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->evaluateDataNetwork(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;)Lcom/android/internal/telephony/data/DataEvaluation;

    move-result-object v2

    .line 2304
    invoke-virtual {v2}, Lcom/android/internal/telephony/data/DataEvaluation;->containsDisallowedReasons()Z

    move-result v3

    if-eqz v3, :cond_36

    .line 2305
    invoke-static {v2}, Lcom/android/internal/telephony/data/DataNetworkController;->getTearDownReason(Lcom/android/internal/telephony/data/DataEvaluation;)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/data/DataNetworkController;->tearDownGracefully(Lcom/android/internal/telephony/data/DataNetwork;I)V

    goto :goto_36

    :cond_60
    return-void
.end method

.method private blacklist onReevaluateUnsatisfiedNetworkRequests(Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;)V
    .registers 6

    .line 1927
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->getGroupedUnsatisfiedNetworkRequests()Ljava/util/List;

    move-result-object v0

    .line 1928
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Re-evaluating "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda20;

    invoke-direct {v3}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda20;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/IntStream;->sum()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " unsatisfied network requests in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1929
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " groups, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1930
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda21;

    invoke-direct {v3}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda21;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    const-string v3, ", "

    .line 1932
    invoke-static {v3}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " due to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1928
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 1935
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_62
    :goto_62
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_95

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    .line 1936
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->findCompatibleDataNetworkAndAttach(Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;)Z

    move-result v2

    if-eqz v2, :cond_75

    goto :goto_62

    :cond_75
    const/4 v2, 0x0

    .line 1943
    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->evaluateNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;)Lcom/android/internal/telephony/data/DataEvaluation;

    move-result-object v1

    .line 1944
    invoke-virtual {v1}, Lcom/android/internal/telephony/data/DataEvaluation;->containsDisallowedReasons()Z

    move-result v2

    if-nez v2, :cond_62

    .line 1945
    invoke-virtual {v1}, Lcom/android/internal/telephony/data/DataEvaluation;->getCandidateDataProfile()Landroid/telephony/data/DataProfile;

    move-result-object v2

    if-eqz v2, :cond_62

    const/4 v3, 0x0

    .line 1948
    invoke-virtual {v1}, Lcom/android/internal/telephony/data/DataEvaluation;->getDataAllowedReason()Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    move-result-object v1

    .line 1947
    invoke-direct {p0, v2, v3, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->setupDataNetwork(Landroid/telephony/data/DataProfile;Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;)V

    goto :goto_62

    :cond_95
    return-void
.end method

.method private blacklist onRegisterAllEvents()V
    .registers 6

    .line 1037
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1038
    const-string v1, "android.telephony.action.SIM_CARD_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1039
    const-string v1, "android.telephony.action.SIM_APPLICATION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1040
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1042
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAccessNetworksManager:Lcom/android/internal/telephony/data/AccessNetworksManager;

    new-instance v1, Lcom/android/internal/telephony/data/DataNetworkController$6;

    new-instance v2, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda9;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;)V

    invoke-direct {v1, p0, v2}, Lcom/android/internal/telephony/data/DataNetworkController$6;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/AccessNetworksManager;->registerCallback(Lcom/android/internal/telephony/data/AccessNetworksManager$AccessNetworksManagerCallback;)V

    .line 1064
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mNetworkPolicyManager:Landroid/net/NetworkPolicyManager;

    new-instance v1, Lcom/android/internal/telephony/data/DataNetworkController$7;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/data/DataNetworkController$7;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;)V

    invoke-virtual {v0, v1}, Landroid/net/NetworkPolicyManager;->registerSubscriptionCallback(Landroid/net/NetworkPolicyManager$SubscriptionCallback;)V

    .line 1080
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, p0, v1, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1082
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    new-instance v2, Lcom/android/internal/telephony/data/DataNetworkController$8;

    new-instance v3, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda9;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda9;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;)V

    invoke-direct {v2, p0, v3}, Lcom/android/internal/telephony/data/DataNetworkController$8;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/data/DataConfigManager;->registerCallback(Lcom/android/internal/telephony/data/DataConfigManager$DataConfigManagerCallback;)V

    .line 1092
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    const/4 v2, 0x6

    invoke-virtual {v0, p0, v2, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForPsRestrictedEnabled(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1094
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    const/4 v2, 0x7

    invoke-virtual {v0, p0, v2, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForPsRestrictedDisabled(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1096
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    const/16 v2, 0x19

    invoke-virtual {v0, p0, v2, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForAreaCodeChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1097
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    const/16 v2, 0x14

    invoke-virtual {v0, p0, v2, v4}, Lcom/android/internal/telephony/Phone;->registerForEmergencyCallToggle(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1098
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataServiceManagers:Landroid/util/SparseArray;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/data/DataServiceManager;

    const/16 v2, 0x8

    .line 1099
    invoke-virtual {v0, p0, v2}, Lcom/android/internal/telephony/data/DataServiceManager;->registerForServiceBindingChanged(Landroid/os/Handler;I)V

    .line 1101
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0, p0, v1, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1103
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataServiceManagers:Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/data/DataServiceManager;

    .line 1104
    invoke-virtual {v0, p0, v2}, Lcom/android/internal/telephony/data/DataServiceManager;->registerForServiceBindingChanged(Landroid/os/Handler;I)V

    .line 1106
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyRegistryManager;

    new-instance v1, Lcom/android/internal/telephony/data/DataNetworkController$9;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/data/DataNetworkController$9;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;)V

    new-instance v2, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda9;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;)V

    .line 1107
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyRegistryManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;Ljava/util/concurrent/Executor;)V

    .line 1114
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->hasCalling()Z

    move-result v0

    if-eqz v0, :cond_da

    .line 1120
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {v0, p0, v1, v4}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1122
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_da

    .line 1123
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    invoke-virtual {v0, p0, v1, v4}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1127
    :cond_da
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x18

    invoke-interface {v0, p0, v1, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForSlicingConfigChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1128
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x4

    invoke-interface {v0, p0, v1, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForSrvccStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1130
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getLinkBandwidthEstimator()Lcom/android/internal/telephony/data/LinkBandwidthEstimator;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/data/DataNetworkController$10;

    new-instance v2, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda9;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;)V

    invoke-direct {v1, p0, v2}, Lcom/android/internal/telephony/data/DataNetworkController$10;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->registerCallback(Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;)V

    return-void
.end method

.method private blacklist onRemoveNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)V
    .registers 4

    .line 2571
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAllNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 2572
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRemoveNetworkRequest: Network request does not exist. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->loge(Ljava/lang/String;)V

    return-void

    :cond_1d
    const/4 v0, 0x4

    .line 2576
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 2577
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mImsThrottleCounter:Lcom/android/internal/telephony/SlidingWindowEventCounter;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SlidingWindowEventCounter;->addOccurrence()Z

    .line 2578
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getCapabilities()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mLastReleasedImsRequestCapabilities:[I

    const/4 v0, 0x1

    .line 2579
    iput-boolean v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mLastImsOperationIsRelease:Z

    .line 2582
    :cond_32
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getAttachedNetwork()Lcom/android/internal/telephony/data/DataNetwork;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_40

    .line 2583
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getAttachedNetwork()Lcom/android/internal/telephony/data/DataNetwork;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/data/DataNetwork;->detachNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;Z)V

    .line 2587
    :cond_40
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->setState(I)V

    const/4 v0, 0x0

    .line 2588
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->setEvaluation(Lcom/android/internal/telephony/data/DataEvaluation;)V

    .line 2590
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRemoveNetworkRequest: Removed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist onRetryUnsatisfiedNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)V
    .registers 4

    .line 3516
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAllNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    return-void

    :cond_9
    const/4 p1, 0x5

    .line 3518
    sget-object v0, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->UNSATISFIED_REQUEST_DETACHED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    sget-wide v0, Lcom/android/internal/telephony/data/DataNetworkController;->REEVALUATE_UNSATISFIED_NETWORK_REQUESTS_AFTER_DETACHED_DELAY_MILLIS:J

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private blacklist onSatisfyNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)V
    .registers 4

    .line 1344
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1c

    .line 1345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Already satisfied. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->logv(Ljava/lang/String;)V

    return-void

    .line 1351
    :cond_1c
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->findCompatibleDataNetworkAndAttach(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z

    move-result v0

    if-eqz v0, :cond_23

    goto :goto_51

    .line 1358
    :cond_23
    sget-object v0, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->NEW_REQUEST:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->evaluateNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;)Lcom/android/internal/telephony/data/DataEvaluation;

    move-result-object p1

    .line 1360
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataEvaluation;->containsDisallowedReasons()Z

    move-result v0

    if-nez v0, :cond_3e

    .line 1361
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataEvaluation;->getCandidateDataProfile()Landroid/telephony/data/DataProfile;

    move-result-object v0

    if-eqz v0, :cond_51

    const/4 v1, 0x0

    .line 1364
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataEvaluation;->getDataAllowedReason()Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    move-result-object p1

    .line 1363
    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->setupDataNetwork(Landroid/telephony/data/DataProfile;Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;)V

    return-void

    .line 1366
    :cond_3e
    sget-object v0, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->ONLY_ALLOWED_SINGLE_NETWORK:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/DataEvaluation;->contains(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)Z

    move-result p1

    if-eqz p1, :cond_51

    const/16 p1, 0x10

    .line 1370
    sget-object v0, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->SINGLE_DATA_NETWORK_ARBITRATION:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_51
    :goto_51
    return-void
.end method

.method private blacklist onServiceStateChanged()V
    .registers 15

    .line 3925
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    .line 3926
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onServiceStateChanged: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3929
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v2, v0}, Landroid/telephony/ServiceState;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_102

    .line 3930
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onServiceStateChanged: changed to "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 3931
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAccessNetworksManager:Lcom/android/internal/telephony/data/AccessNetworksManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/data/AccessNetworksManager;->getAvailableTransports()[I

    move-result-object v2

    array-length v4, v2

    move v5, v3

    move v6, v5

    :goto_37
    if-ge v3, v4, :cond_fe

    aget v7, v2, v3

    .line 3932
    iget-object v8, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    const/4 v9, 0x2

    invoke-virtual {v8, v9, v7}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v8

    .line 3934
    invoke-virtual {v0, v9, v7}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v9

    .line 3936
    const-string v10, "["

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3937
    invoke-static {v7}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v10

    .line 3936
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ": "

    .line 3937
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v10, 0x0

    if-eqz v8, :cond_63

    .line 3939
    invoke-virtual {v8}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result v11

    .line 3938
    invoke-static {v11}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_64

    :cond_63
    move-object v11, v10

    :goto_64
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3940
    const-string v11, "->"

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v9, :cond_77

    .line 3942
    invoke-virtual {v9}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result v12

    .line 3941
    invoke-static {v12}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_78

    :cond_77
    move-object v12, v10

    .line 3940
    :goto_78
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3942
    const-string v12, ", "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v8, :cond_8b

    .line 3945
    invoke-virtual {v8}, Landroid/telephony/NetworkRegistrationInfo;->getRegistrationState()I

    move-result v13

    .line 3944
    invoke-static {v13}, Landroid/telephony/NetworkRegistrationInfo;->registrationStateToString(I)Ljava/lang/String;

    move-result-object v13

    goto :goto_8c

    :cond_8b
    move-object v13, v10

    .line 3943
    :goto_8c
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3946
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v9, :cond_9d

    .line 3948
    invoke-virtual {v9}, Landroid/telephony/NetworkRegistrationInfo;->getRegistrationState()I

    move-result v13

    .line 3947
    invoke-static {v13}, Landroid/telephony/NetworkRegistrationInfo;->registrationStateToString(I)Ljava/lang/String;

    move-result-object v13

    goto :goto_9e

    :cond_9d
    move-object v13, v10

    .line 3946
    :goto_9e
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3948
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v8, :cond_af

    .line 3950
    invoke-virtual {v8}, Landroid/telephony/NetworkRegistrationInfo;->isNonTerrestrialNetwork()Z

    move-result v12

    invoke-static {v12}, Landroid/telephony/NetworkRegistrationInfo;->isNonTerrestrialNetworkToString(Z)Ljava/lang/String;

    move-result-object v12

    goto :goto_b0

    :cond_af
    move-object v12, v10

    .line 3949
    :goto_b0
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3951
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v9, :cond_c0

    .line 3952
    invoke-virtual {v9}, Landroid/telephony/NetworkRegistrationInfo;->isNonTerrestrialNetwork()Z

    move-result v10

    invoke-static {v10}, Landroid/telephony/NetworkRegistrationInfo;->isNonTerrestrialNetworkToString(Z)Ljava/lang/String;

    move-result-object v10

    .line 3951
    :cond_c0
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "] "

    .line 3953
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3954
    invoke-direct {p0, v8, v9}, Lcom/android/internal/telephony/data/DataNetworkController;->shouldReevaluateDataNetworks(Landroid/telephony/NetworkRegistrationInfo;Landroid/telephony/NetworkRegistrationInfo;)Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_e1

    const/16 v8, 0x10

    .line 3955
    invoke-virtual {p0, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v10

    if-nez v10, :cond_e1

    .line 3956
    sget-object v6, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->DATA_SERVICE_STATE_CHANGED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    invoke-virtual {p0, v8, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move v6, v9

    .line 3961
    :cond_e1
    iget-object v8, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-direct {p0, v8, v0, v7}, Lcom/android/internal/telephony/data/DataNetworkController;->shouldReevaluateNetworkRequests(Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;I)Z

    move-result v7

    if-eqz v7, :cond_fa

    const/4 v7, 0x5

    .line 3962
    invoke-virtual {p0, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v8

    if-nez v8, :cond_fa

    .line 3963
    sget-object v5, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->DATA_SERVICE_STATE_CHANGED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    invoke-virtual {p0, v7, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move v5, v9

    :cond_fa
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_37

    .line 3969
    :cond_fe
    iput-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    move v3, v5

    goto :goto_108

    .line 3971
    :cond_102
    const-string v0, "not changed"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v6, v3

    .line 3973
    :goto_108
    const-string v0, ". Evaluating network requests is "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3974
    const-string v0, "not "

    const-string v2, ""

    if-eqz v3, :cond_115

    move-object v3, v2

    goto :goto_116

    :cond_115
    move-object v3, v0

    .line 3973
    :goto_116
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "needed, evaluating existing data networks is "

    .line 3974
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v6, :cond_121

    move-object v0, v2

    .line 3975
    :cond_121
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "needed."

    .line 3976
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3977
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist onSimAbsent()V
    .registers 3

    .line 3578
    const-string v0, "onSimAbsent"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    const/16 v0, 0x10

    .line 3579
    sget-object v1, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->SIM_REMOVAL:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private blacklist onSimStateChanged(I)V
    .registers 4

    .line 3589
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSimStateChanged: state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/telephony/TelephonyManager;->simStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 3590
    iget v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mSimState:I

    if-eq v0, p1, :cond_33

    .line 3591
    iput p1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mSimState:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_25

    .line 3593
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->onSimAbsent()V

    return-void

    :cond_25
    const/16 v0, 0xa

    if-ne p1, v0, :cond_33

    const/4 p1, 0x5

    .line 3595
    sget-object v0, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->SIM_LOADED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_33
    return-void
.end method

.method private blacklist onSrvccStateChanged([I)V
    .registers 5

    if-eqz p1, :cond_3a

    .line 3545
    array-length v0, p1

    if-eqz v0, :cond_3a

    .line 3546
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSrvccStateChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    aget v2, p1, v1

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->srvccStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 3547
    aget p1, p1, v1

    if-nez p1, :cond_25

    const/4 v1, 0x1

    :cond_25
    iput-boolean v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mIsSrvccHandoverInProcess:Z

    if-nez v1, :cond_3a

    const/16 p1, 0x10

    .line 3550
    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 3551
    sget-object v0, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->SRVCC_STATE_CHANGED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3a
    return-void
.end method

.method private blacklist onSubscriptionChanged()V
    .registers 3

    .line 2798
    iget v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mSubId:I

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    if-eq v0, v1, :cond_5a

    .line 2799
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDataConfigUpdated: mSubId changed from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 2800
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2799
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 2801
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->isImsGracefulTearDownSupported()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 2802
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 2803
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->registerImsStateCallback(I)V

    goto :goto_4f

    .line 2805
    :cond_4a
    iget v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mSubId:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->unregisterImsStateCallbacks(I)V

    .line 2808
    :cond_4f
    :goto_4f
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mSubId:I

    .line 2809
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->updateSubscriptionPlans()V

    :cond_5a
    return-void
.end method

.method private blacklist onTearDownAllDataNetworks(I)V
    .registers 5

    .line 4159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTearDownAllDataNetworks: reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataNetwork;->tearDownReasonToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 4160
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 4161
    const-string p1, "tearDownAllDataNetworks: No pending networks. All disconnected now."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    return-void

    .line 4165
    :cond_26
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2c
    :goto_2c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/data/DataNetwork;

    .line 4166
    invoke-virtual {v1}, Lcom/android/internal/telephony/data/DataNetwork;->isDisconnecting()Z

    move-result v2

    if-nez v2, :cond_2c

    .line 4167
    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->tearDownGracefully(Lcom/android/internal/telephony/data/DataNetwork;I)V

    goto :goto_2c

    :cond_42
    return-void
.end method

.method private blacklist onTrackNetworkUnwanted()V
    .registers 3

    .line 2868
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mNetworkUnwantedCounter:Lcom/android/internal/telephony/SlidingWindowEventCounter;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SlidingWindowEventCounter;->addOccurrence()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 2869
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Network Unwanted called "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mNetworkUnwantedCounter:Lcom/android/internal/telephony/SlidingWindowEventCounter;

    .line 2870
    invoke-virtual {v1}, Lcom/android/internal/telephony/SlidingWindowEventCounter;->getFrequencyString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "9f3bc55b-bfa6-4e26-afaa-5031426a66d3"

    .line 2869
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->reportAnomaly(Ljava/lang/String;Ljava/lang/String;)V

    :cond_24
    return-void
.end method

.method private blacklist registerImsFeatureRegistrationState(II)V
    .registers 6

    .line 2647
    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$11;

    invoke-direct {v0, p0, p2}, Lcom/android/internal/telephony/data/DataNetworkController$11;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;I)V

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1d

    const/4 v1, 0x2

    if-eq p2, v1, :cond_c

    goto :goto_2b

    .line 2674
    :cond_c
    :try_start_c
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mImsManager:Landroid/telephony/ims/ImsManager;

    invoke-virtual {v1, p1}, Landroid/telephony/ims/ImsManager;->getImsRcsManager(I)Landroid/telephony/ims/ImsRcsManager;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda9;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;)V

    invoke-virtual {v1, v2, v0}, Landroid/telephony/ims/ImsRcsManager;->registerImsRegistrationCallback(Ljava/util/concurrent/Executor;Landroid/telephony/ims/RegistrationManager$RegistrationCallback;)V

    goto :goto_2b

    :catch_1b
    move-exception v0

    goto :goto_51

    .line 2670
    :cond_1d
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mImsManager:Landroid/telephony/ims/ImsManager;

    invoke-virtual {v1, p1}, Landroid/telephony/ims/ImsManager;->getImsMmTelManager(I)Landroid/telephony/ims/ImsMmTelManager;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda9;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;)V

    invoke-virtual {v1, v2, v0}, Landroid/telephony/ims/ImsMmTelManager;->registerImsRegistrationCallback(Ljava/util/concurrent/Executor;Landroid/telephony/ims/RegistrationManager$RegistrationCallback;)V

    .line 2680
    :goto_2b
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mImsFeatureRegistrationCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2681
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Successfully register "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/internal/telephony/data/DataUtils;->imsFeatureToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " registration state. subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V
    :try_end_50
    .catch Landroid/telephony/ims/ImsException; {:try_start_c .. :try_end_50} :catch_1b

    return-void

    .line 2684
    :goto_51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateImsFeatureRegistrationStateListening: subId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", imsFeature="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2685
    invoke-static {p2}, Lcom/android/internal/telephony/data/DataUtils;->imsFeatureToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2684
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist registerImsStateCallback(I)V
    .registers 7

    .line 2720
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->isImsSupportedOnDevice()Z

    move-result v0

    if-eqz v0, :cond_86

    .line 2721
    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda44;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda44;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;I)V

    const/4 v1, 0x1

    .line 2745
    :try_start_c
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsStateCallback;

    .line 2746
    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mImsManager:Landroid/telephony/ims/ImsManager;

    invoke-virtual {v3, p1}, Landroid/telephony/ims/ImsManager;->getImsMmTelManager(I)Landroid/telephony/ims/ImsMmTelManager;

    move-result-object v3

    new-instance v4, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda9;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda9;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;)V

    invoke-virtual {v3, v4, v2}, Landroid/telephony/ims/ImsMmTelManager;->registerImsStateCallback(Ljava/util/concurrent/Executor;Landroid/telephony/ims/ImsStateCallback;)V

    .line 2748
    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mImsStateCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2749
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Successfully register MMTEL state on sub "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    const/4 v1, 0x2

    .line 2751
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/ImsStateCallback;

    .line 2752
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mImsManager:Landroid/telephony/ims/ImsManager;

    invoke-virtual {v2, p1}, Landroid/telephony/ims/ImsManager;->getImsRcsManager(I)Landroid/telephony/ims/ImsRcsManager;

    move-result-object v2

    new-instance v3, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda9;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda9;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;)V

    invoke-virtual {v2, v3, v0}, Landroid/telephony/ims/ImsRcsManager;->registerImsStateCallback(Ljava/util/concurrent/Executor;Landroid/telephony/ims/ImsStateCallback;)V

    .line 2753
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mImsStateCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2754
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Successfully register RCS state on sub "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V
    :try_end_6f
    .catch Landroid/telephony/ims/ImsException; {:try_start_c .. :try_end_6f} :catch_70

    goto :goto_85

    :catch_70
    move-exception p1

    .line 2756
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception when registering IMS state callback. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->loge(Ljava/lang/String;)V

    :goto_85
    return-void

    .line 2759
    :cond_86
    const-string p1, "IMS is not supported on this device, skipping registerImsStateCallback"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist reportAnomaly(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 3125
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->logl(Ljava/lang/String;)V

    .line 3126
    invoke-static {p2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p2

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getCarrierId()I

    move-result p0

    invoke-static {p2, p1, p0}, Landroid/telephony/AnomalyReporter;->reportAnomaly(Ljava/util/UUID;Ljava/lang/String;I)V

    return-void
.end method

.method private blacklist serviceStateAllowsPSAttach(Landroid/telephony/ServiceState;I)Z
    .registers 5

    .line 1444
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataRegistrationState(Landroid/telephony/ServiceState;I)I

    move-result p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2e

    const/4 v1, 0x5

    if-ne p2, v1, :cond_b

    goto :goto_2e

    .line 1450
    :cond_b
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result p2

    if-nez p2, :cond_2c

    iget-object p2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1451
    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p2

    invoke-static {}, Lcom/android/internal/telephony/data/PhoneSwitcher;->getInstance()Lcom/android/internal/telephony/data/PhoneSwitcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->getPreferredDataPhoneId()I

    move-result v1

    if-eq p2, v1, :cond_2c

    .line 1452
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->isLegacyCs(I)Z

    move-result p0

    if-eqz p0, :cond_2c

    return v0

    :cond_2c
    const/4 p0, 0x0

    return p0

    :cond_2e
    :goto_2e
    return v0
.end method

.method private blacklist setupDataNetwork(Landroid/telephony/data/DataProfile;Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;)V
    .registers 16

    .line 2901
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSetupDataNetwork: dataProfile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", retryEntry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", allowed reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", service state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 2904
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_34
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x4

    if-eqz v1, :cond_72

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/data/DataNetwork;

    .line 2905
    invoke-virtual {v1}, Lcom/android/internal/telephony/data/DataNetwork;->getDataProfile()Landroid/telephony/data/DataProfile;

    move-result-object v3

    .line 2906
    invoke-virtual {p1, v3}, Landroid/telephony/data/DataProfile;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_53

    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataProfileManager:Lcom/android/internal/telephony/data/DataProfileManager;

    .line 2907
    invoke-virtual {v4, p1, v3}, Lcom/android/internal/telephony/data/DataProfileManager;->areDataProfilesSharingApn(Landroid/telephony/data/DataProfile;Landroid/telephony/data/DataProfile;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 2909
    :cond_53
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSetupDataNetwork: Found existing data network "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " using the same or a similar data profile."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    if-eqz p2, :cond_fa

    .line 2912
    invoke-virtual {p2, v2}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->setState(I)V

    return-void

    .line 2918
    :cond_72
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/data/DataNetworkController;->findSatisfiableNetworkRequests(Landroid/telephony/data/DataProfile;)Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    move-result-object v8

    .line 2920
    invoke-virtual {v8}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_87

    .line 2921
    const-string p1, "Can\'t find any unsatisfied network requests that can be satisfied by this data profile."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    if-eqz p2, :cond_fa

    .line 2924
    invoke-virtual {p2, v2}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->setState(I)V

    return-void

    .line 2930
    :cond_87
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAccessNetworksManager:Lcom/android/internal/telephony/data/AccessNetworksManager;

    const/4 v1, 0x0

    .line 2931
    invoke-virtual {v8, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    invoke-virtual {v1}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getHighestPriorityApnTypeNetworkCapability()I

    move-result v1

    .line 2930
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/AccessNetworksManager;->getPreferredTransportByNetworkCapability(I)I

    move-result v9

    .line 2932
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Creating data network on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2933
    invoke-static {v9}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", and attaching "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2934
    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " network requests to it."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2932
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->logl(Ljava/lang/String;)V

    .line 2936
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    new-instance v2, Lcom/android/internal/telephony/data/DataNetwork;

    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataServiceManagers:Landroid/util/SparseArray;

    new-instance v11, Lcom/android/internal/telephony/data/DataNetworkController$13;

    new-instance v1, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda9;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;)V

    invoke-direct {v11, p0, v1, p2}, Lcom/android/internal/telephony/data/DataNetworkController$13;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;Ljava/util/concurrent/Executor;Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;)V

    move-object v7, p1

    move-object v10, p3

    invoke-direct/range {v2 .. v11}, Lcom/android/internal/telephony/data/DataNetwork;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;Landroid/os/Looper;Landroid/util/SparseArray;Landroid/telephony/data/DataProfile;Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;ILcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3036
    iget-boolean p1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAnyDataNetworkExisting:Z

    if-nez p1, :cond_fa

    const/4 p1, 0x1

    .line 3037
    iput-boolean p1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAnyDataNetworkExisting:Z

    .line 3038
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkControllerCallbacks:Ljava/util/Set;

    new-instance p2, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda40;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda40;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;)V

    invoke-interface {p1, p2}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    :cond_fa
    return-void
.end method

.method private blacklist shouldIgnoreDataRoamingSettingForSatellite()Z
    .registers 2

    .line 1841
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->isUsingNonTerrestrialNetwork()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    .line 1842
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataConfigManager;->isIgnoringDataRoamingSettingForSatellite()Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist shouldReevaluateDataNetworks(Landroid/telephony/NetworkRegistrationInfo;Landroid/telephony/NetworkRegistrationInfo;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_65

    if-nez p2, :cond_6

    goto :goto_65

    .line 3827
    :cond_6
    invoke-virtual {p2}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result v1

    if-nez v1, :cond_d

    return v0

    .line 3833
    :cond_d
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/DataNetworkController;->areNetworkAvailableServicesChanged(Landroid/telephony/NetworkRegistrationInfo;Landroid/telephony/NetworkRegistrationInfo;)Z

    move-result p0

    const/4 v1, 0x1

    if-eqz p0, :cond_15

    return v1

    .line 3837
    :cond_15
    invoke-virtual {p1}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result p0

    invoke-virtual {p2}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result v2

    if-ne p0, v2, :cond_64

    .line 3839
    invoke-virtual {p1}, Landroid/telephony/NetworkRegistrationInfo;->isRoaming()Z

    move-result p0

    invoke-virtual {p2}, Landroid/telephony/NetworkRegistrationInfo;->isRoaming()Z

    move-result v2

    if-eq p0, v2, :cond_2a

    goto :goto_64

    .line 3843
    :cond_2a
    invoke-virtual {p1}, Landroid/telephony/NetworkRegistrationInfo;->isNonTerrestrialNetwork()Z

    move-result p0

    invoke-virtual {p2}, Landroid/telephony/NetworkRegistrationInfo;->isNonTerrestrialNetwork()Z

    move-result v2

    if-eq p0, v2, :cond_35

    return v1

    .line 3847
    :cond_35
    invoke-virtual {p1}, Landroid/telephony/NetworkRegistrationInfo;->getDataSpecificInfo()Landroid/telephony/DataSpecificRegistrationInfo;

    move-result-object p0

    .line 3848
    invoke-virtual {p2}, Landroid/telephony/NetworkRegistrationInfo;->getDataSpecificInfo()Landroid/telephony/DataSpecificRegistrationInfo;

    move-result-object p1

    if-nez p1, :cond_40

    return v0

    :cond_40
    if-eqz p0, :cond_52

    .line 3854
    invoke-virtual {p0}, Landroid/telephony/DataSpecificRegistrationInfo;->getVopsSupportInfo()Landroid/telephony/VopsSupportInfo;

    move-result-object p2

    if-eqz p2, :cond_52

    .line 3855
    invoke-virtual {p0}, Landroid/telephony/DataSpecificRegistrationInfo;->getVopsSupportInfo()Landroid/telephony/VopsSupportInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/VopsSupportInfo;->isVopsSupported()Z

    move-result p0

    if-eqz p0, :cond_63

    .line 3856
    :cond_52
    invoke-virtual {p1}, Landroid/telephony/DataSpecificRegistrationInfo;->getVopsSupportInfo()Landroid/telephony/VopsSupportInfo;

    move-result-object p0

    if-eqz p0, :cond_63

    invoke-virtual {p1}, Landroid/telephony/DataSpecificRegistrationInfo;->getVopsSupportInfo()Landroid/telephony/VopsSupportInfo;

    move-result-object p0

    .line 3857
    invoke-virtual {p0}, Landroid/telephony/VopsSupportInfo;->isVopsSupported()Z

    move-result p0

    if-nez p0, :cond_63

    return v1

    :cond_63
    return v0

    :cond_64
    :goto_64
    return v1

    :cond_65
    :goto_65
    return v0
.end method

.method private blacklist shouldReevaluateNetworkRequests(Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;I)Z
    .registers 10

    const/4 v0, 0x2

    .line 3870
    invoke-virtual {p1, v0, p3}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v1

    .line 3872
    invoke-virtual {p2, v0, p3}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_d

    return v2

    .line 3876
    :cond_d
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result v3

    if-nez v3, :cond_14

    return v2

    .line 3882
    :cond_14
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->areNetworkAvailableServicesChanged(Landroid/telephony/NetworkRegistrationInfo;Landroid/telephony/NetworkRegistrationInfo;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1c

    return v4

    :cond_1c
    if-eqz v1, :cond_86

    .line 3887
    invoke-virtual {v1}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result v3

    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result v5

    if-ne v3, v5, :cond_86

    .line 3888
    invoke-virtual {v1}, Landroid/telephony/NetworkRegistrationInfo;->isInService()Z

    move-result v3

    if-nez v3, :cond_34

    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo;->isInService()Z

    move-result v3

    if-nez v3, :cond_86

    .line 3890
    :cond_34
    invoke-virtual {v1}, Landroid/telephony/NetworkRegistrationInfo;->isRoaming()Z

    move-result v3

    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo;->isRoaming()Z

    move-result v5

    if-eq v3, v5, :cond_3f

    goto :goto_86

    .line 3895
    :cond_3f
    invoke-direct {p0, p1, p3}, Lcom/android/internal/telephony/data/DataNetworkController;->serviceStateAllowsPSAttach(Landroid/telephony/ServiceState;I)Z

    move-result v3

    if-nez v3, :cond_4c

    .line 3896
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/data/DataNetworkController;->serviceStateAllowsPSAttach(Landroid/telephony/ServiceState;I)Z

    move-result p0

    if-eqz p0, :cond_4c

    return v4

    .line 3900
    :cond_4c
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->isUsingNonTerrestrialNetwork()Z

    move-result p0

    invoke-virtual {p2}, Landroid/telephony/ServiceState;->isUsingNonTerrestrialNetwork()Z

    move-result p1

    if-eq p0, p1, :cond_57

    return v4

    .line 3904
    :cond_57
    invoke-virtual {v1}, Landroid/telephony/NetworkRegistrationInfo;->getDataSpecificInfo()Landroid/telephony/DataSpecificRegistrationInfo;

    move-result-object p0

    .line 3905
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo;->getDataSpecificInfo()Landroid/telephony/DataSpecificRegistrationInfo;

    move-result-object p1

    if-nez p0, :cond_62

    return v2

    :cond_62
    if-eqz p1, :cond_74

    .line 3911
    invoke-virtual {p1}, Landroid/telephony/DataSpecificRegistrationInfo;->getVopsSupportInfo()Landroid/telephony/VopsSupportInfo;

    move-result-object p2

    if-eqz p2, :cond_74

    .line 3912
    invoke-virtual {p1}, Landroid/telephony/DataSpecificRegistrationInfo;->getVopsSupportInfo()Landroid/telephony/VopsSupportInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/VopsSupportInfo;->isVopsSupported()Z

    move-result p1

    if-eqz p1, :cond_85

    .line 3913
    :cond_74
    invoke-virtual {p0}, Landroid/telephony/DataSpecificRegistrationInfo;->getVopsSupportInfo()Landroid/telephony/VopsSupportInfo;

    move-result-object p1

    if-eqz p1, :cond_85

    invoke-virtual {p0}, Landroid/telephony/DataSpecificRegistrationInfo;->getVopsSupportInfo()Landroid/telephony/VopsSupportInfo;

    move-result-object p0

    .line 3914
    invoke-virtual {p0}, Landroid/telephony/VopsSupportInfo;->isVopsSupported()Z

    move-result p0

    if-nez p0, :cond_85

    return v4

    :cond_85
    return v2

    :cond_86
    :goto_86
    return v4
.end method

.method private blacklist tearDownGracefully(Lcom/android/internal/telephony/data/DataNetwork;I)V
    .registers 10

    .line 4235
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataConfigManager;->getImsDeregistrationDelay()J

    move-result-wide v0

    .line 4236
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->isImsGracefulTearDownSupported()Z

    move-result v2

    if-eqz v2, :cond_79

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->isSafeToTearDown(Lcom/android/internal/telephony/data/DataNetwork;)Z

    move-result v2

    if-nez v2, :cond_79

    .line 4237
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tearDownGracefully: Not safe to tear down "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " at this point. Wait for IMS de-registration or timeout. MMTEL="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4239
    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mRegisteredImsFeatures:Ljava/util/Set;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "not registered"

    const-string v5, "registered"

    if-eqz v3, :cond_37

    move-object v3, v5

    goto :goto_38

    :cond_37
    move-object v3, v4

    .line 4240
    :goto_38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", RCS="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4242
    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mRegisteredImsFeatures:Ljava/util/Set;

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4e

    move-object v4, v5

    .line 4243
    :cond_4e
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4237
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 4245
    invoke-virtual {p1, p2, v0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->tearDownWhenConditionMet(IJ)Ljava/lang/Runnable;

    move-result-object p2

    if-eqz p2, :cond_64

    .line 4247
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPendingImsDeregDataNetworks:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 4249
    :cond_64
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is being torn down already."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    return-void

    .line 4253
    :cond_79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tearDownGracefully: Safe to tear down "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 4254
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/data/DataNetwork;->tearDown(I)V

    return-void
.end method

.method private blacklist trackSetupDataCallFailure(II)V
    .registers 6

    const/high16 v0, 0x10000

    const v1, 0xffff

    const/4 v2, 0x1

    if-eq p1, v2, :cond_41

    const/4 v2, 0x2

    if-eq p1, v2, :cond_11

    .line 3114
    const-string p1, "trackSetupDataCallFailure: INVALID transport."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->loge(Ljava/lang/String;)V

    return-void

    :cond_11
    if-eq p2, v1, :cond_15

    if-ne p2, v0, :cond_1c

    .line 3104
    :cond_15
    const-string p1, "IWLAN set up data call fails: unknown/unspecified error"

    const-string p2, "a16fc15c-815b-4908-b8e6-5f3bc7cbc20b"

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/DataNetworkController;->reportAnomaly(Ljava/lang/String;Ljava/lang/String;)V

    .line 3107
    :cond_1c
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mSetupDataCallWlanFailureCounter:Lcom/android/internal/telephony/SlidingWindowEventCounter;

    invoke-virtual {p1}, Lcom/android/internal/telephony/SlidingWindowEventCounter;->addOccurrence()Z

    move-result p1

    if-eqz p1, :cond_7d

    .line 3108
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "IWLAN data service fails setup data call request "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mSetupDataCallWlanFailureCounter:Lcom/android/internal/telephony/SlidingWindowEventCounter;

    .line 3109
    invoke-virtual {p2}, Lcom/android/internal/telephony/SlidingWindowEventCounter;->getFrequencyString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "e2248d8b-d55f-42bd-871c-0cfd80c3ddd1"

    .line 3108
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/DataNetworkController;->reportAnomaly(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3088
    :cond_41
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result p1

    if-gt p1, v2, :cond_4e

    goto :goto_7d

    :cond_4e
    if-eq p2, v1, :cond_52

    if-ne p2, v0, :cond_59

    .line 3093
    :cond_52
    const-string p1, "RIL set up data call fails: unknown/unspecified error"

    const-string p2, "ce7d1465-d8e4-404a-b76f-de2c60bee843"

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/DataNetworkController;->reportAnomaly(Ljava/lang/String;Ljava/lang/String;)V

    .line 3096
    :cond_59
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mSetupDataCallWwanFailureCounter:Lcom/android/internal/telephony/SlidingWindowEventCounter;

    invoke-virtual {p1}, Lcom/android/internal/telephony/SlidingWindowEventCounter;->addOccurrence()Z

    move-result p1

    if-eqz p1, :cond_7d

    .line 3097
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "RIL fails setup data call request "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mSetupDataCallWwanFailureCounter:Lcom/android/internal/telephony/SlidingWindowEventCounter;

    .line 3098
    invoke-virtual {p2}, Lcom/android/internal/telephony/SlidingWindowEventCounter;->getFrequencyString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "e6a98b97-9e34-4977-9a92-01d52a6691f6"

    .line 3097
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/DataNetworkController;->reportAnomaly(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7d
    :goto_7d
    return-void
.end method

.method private blacklist tryHandoverDataNetwork(Lcom/android/internal/telephony/data/DataNetwork;ILcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;)V
    .registers 7

    if-nez p3, :cond_24

    .line 3657
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataRetryManager:Lcom/android/internal/telephony/data/DataRetryManager;

    .line 3658
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/data/DataRetryManager;->isAnyHandoverRetryScheduled(Lcom/android/internal/telephony/data/DataNetwork;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 3659
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "tryHandoverDataNetwork: retry scheduled for"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", ignore this attempt"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    return-void

    .line 3663
    :cond_24
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->evaluateDataNetworkHandover(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataEvaluation;

    move-result-object v0

    .line 3664
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tryHandoverDataNetwork: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 3665
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataEvaluation;->containsDisallowedReasons()Z

    move-result v1

    if-nez v1, :cond_6e

    .line 3666
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Start handover "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3667
    invoke-static {p2}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3666
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->logl(Ljava/lang/String;)V

    .line 3668
    invoke-virtual {p1, p2, p3}, Lcom/android/internal/telephony/data/DataNetwork;->startHandover(ILcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;)Z

    return-void

    .line 3669
    :cond_6e
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->shouldDelayImsTearDownDueToInCall()Z

    move-result v1

    if-eqz v1, :cond_9e

    sget-object v1, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->NOT_IN_SERVICE:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    .line 3670
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/DataEvaluation;->containsOnly(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)Z

    move-result v2

    if-nez v2, :cond_88

    sget-object v2, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->NOT_ALLOWED_BY_POLICY:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    filled-new-array {v1, v2}, [Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    move-result-object v1

    .line 3671
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/DataEvaluation;->isSubsetOf([Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)Z

    move-result v1

    if-eqz v1, :cond_9e

    :cond_88
    if-eqz p3, :cond_8e

    const/4 p2, 0x2

    .line 3675
    invoke-virtual {p3, p2}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->setState(I)V

    .line 3677
    :cond_8e
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataRetryManager:Lcom/android/internal/telephony/data/DataRetryManager;

    const p3, 0x10006

    const-wide/16 v0, -0x1

    invoke-virtual {p2, p1, p3, v0, v1}, Lcom/android/internal/telephony/data/DataRetryManager;->evaluateDataHandoverRetry(Lcom/android/internal/telephony/data/DataNetwork;IJ)V

    .line 3680
    const-string p1, "tryHandoverDataNetwork: Scheduled retry due to in voice call and target OOS"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->logl(Ljava/lang/String;)V

    return-void

    .line 3681
    :cond_9e
    sget-object p3, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->NOT_ALLOWED_BY_POLICY:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    sget-object v1, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->NOT_IN_SERVICE:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    sget-object v2, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->VOPS_NOT_SUPPORTED:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    filled-new-array {p3, v1, v2}, [Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/android/internal/telephony/data/DataEvaluation;->containsAny([Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)Z

    move-result p3

    if-eqz p3, :cond_d4

    .line 3684
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "tryHandoverDataNetwork: Handover not allowed. Tear down"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " so a new network can be setup on "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3686
    invoke-static {p2}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 3684
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/data/DataNetworkController;->logl(Ljava/lang/String;)V

    const/16 p2, 0xe

    .line 3687
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/DataNetworkController;->tearDownGracefully(Lcom/android/internal/telephony/data/DataNetwork;I)V

    return-void

    .line 3689
    :cond_d4
    sget-object p2, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->ILLEGAL_STATE:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    sget-object p3, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->RETRY_SCHEDULED:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    filled-new-array {p2, p3}, [Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/data/DataEvaluation;->containsAny([Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)Z

    move-result p2

    if-eqz p2, :cond_107

    .line 3691
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "tryHandoverDataNetwork: Handover not allowed. "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " will remain on "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3693
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getTransport()I

    move-result p1

    .line 3692
    invoke-static {p1}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3691
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->logl(Ljava/lang/String;)V

    return-void

    .line 3695
    :cond_107
    const-string p1, "tryHandoverDataNetwork: Unexpected handover evaluation result."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist unregisterImsFeatureRegistrationState(II)V
    .registers 5

    .line 2698
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mImsFeatureRegistrationCallbacks:Landroid/util/SparseArray;

    .line 2699
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

    if-eqz v0, :cond_48

    const/4 v1, 0x1

    if-ne p2, v1, :cond_17

    .line 2702
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mImsManager:Landroid/telephony/ims/ImsManager;

    invoke-virtual {v1, p1}, Landroid/telephony/ims/ImsManager;->getImsMmTelManager(I)Landroid/telephony/ims/ImsMmTelManager;

    move-result-object v1

    .line 2703
    invoke-virtual {v1, v0}, Landroid/telephony/ims/ImsMmTelManager;->unregisterImsRegistrationCallback(Landroid/telephony/ims/RegistrationManager$RegistrationCallback;)V

    goto :goto_23

    :cond_17
    const/4 v1, 0x2

    if-ne p2, v1, :cond_23

    .line 2705
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mImsManager:Landroid/telephony/ims/ImsManager;

    invoke-virtual {v1, p1}, Landroid/telephony/ims/ImsManager;->getImsRcsManager(I)Landroid/telephony/ims/ImsRcsManager;

    move-result-object v1

    .line 2706
    invoke-virtual {v1, v0}, Landroid/telephony/ims/ImsRcsManager;->unregisterImsRegistrationCallback(Landroid/telephony/ims/RegistrationManager$RegistrationCallback;)V

    .line 2708
    :cond_23
    :goto_23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Successfully unregistered "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/internal/telephony/data/DataUtils;->imsFeatureToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " registration state. subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 2710
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mImsFeatureRegistrationCallbacks:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->remove(I)V

    :cond_48
    return-void
.end method

.method private blacklist unregisterImsStateCallbacks(I)V
    .registers 5

    .line 2769
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->isImsSupportedOnDevice()Z

    move-result v0

    if-eqz v0, :cond_61

    .line 2770
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mImsStateCallbacks:Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/ImsStateCallback;

    if-eqz v0, :cond_33

    .line 2772
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mImsManager:Landroid/telephony/ims/ImsManager;

    invoke-virtual {v2, p1}, Landroid/telephony/ims/ImsManager;->getImsMmTelManager(I)Landroid/telephony/ims/ImsMmTelManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/telephony/ims/ImsMmTelManager;->unregisterImsStateCallback(Landroid/telephony/ims/ImsStateCallback;)V

    .line 2773
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mImsStateCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 2774
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unregister MMTEL state on sub "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 2777
    :cond_33
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mImsStateCallbacks:Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/ImsStateCallback;

    if-eqz v0, :cond_60

    .line 2779
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mImsManager:Landroid/telephony/ims/ImsManager;

    invoke-virtual {v2, p1}, Landroid/telephony/ims/ImsManager;->getImsRcsManager(I)Landroid/telephony/ims/ImsRcsManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/telephony/ims/ImsRcsManager;->unregisterImsStateCallback(Landroid/telephony/ims/ImsStateCallback;)V

    .line 2780
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mImsStateCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 2781
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unregister RCS state on sub "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    :cond_60
    return-void

    .line 2784
    :cond_61
    const-string p1, "IMS is not supported on this device, skipping unregisterImsStateCallbacks"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist updateAnomalySlidingWindowCounters()V
    .registers 5

    .line 2846
    new-instance v0, Lcom/android/internal/telephony/SlidingWindowEventCounter;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    .line 2847
    invoke-virtual {v1}, Lcom/android/internal/telephony/data/DataConfigManager;->getAnomalyImsReleaseRequestThreshold()Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;

    move-result-object v1

    iget-wide v1, v1, Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;->timeWindow:J

    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    .line 2848
    invoke-virtual {v3}, Lcom/android/internal/telephony/data/DataConfigManager;->getAnomalyImsReleaseRequestThreshold()Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;

    move-result-object v3

    iget v3, v3, Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;->eventNumOccurrence:I

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/SlidingWindowEventCounter;-><init>(JI)V

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mImsThrottleCounter:Lcom/android/internal/telephony/SlidingWindowEventCounter;

    .line 2849
    new-instance v0, Lcom/android/internal/telephony/SlidingWindowEventCounter;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    .line 2850
    invoke-virtual {v1}, Lcom/android/internal/telephony/data/DataConfigManager;->getAnomalyNetworkUnwantedThreshold()Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;

    move-result-object v1

    iget-wide v1, v1, Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;->timeWindow:J

    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    .line 2851
    invoke-virtual {v3}, Lcom/android/internal/telephony/data/DataConfigManager;->getAnomalyNetworkUnwantedThreshold()Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;

    move-result-object v3

    iget v3, v3, Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;->eventNumOccurrence:I

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/SlidingWindowEventCounter;-><init>(JI)V

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mNetworkUnwantedCounter:Lcom/android/internal/telephony/SlidingWindowEventCounter;

    .line 2852
    new-instance v0, Lcom/android/internal/telephony/SlidingWindowEventCounter;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    .line 2853
    invoke-virtual {v1}, Lcom/android/internal/telephony/data/DataConfigManager;->getAnomalySetupDataCallThreshold()Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;

    move-result-object v1

    iget-wide v1, v1, Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;->timeWindow:J

    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    .line 2854
    invoke-virtual {v3}, Lcom/android/internal/telephony/data/DataConfigManager;->getAnomalySetupDataCallThreshold()Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;

    move-result-object v3

    iget v3, v3, Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;->eventNumOccurrence:I

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/SlidingWindowEventCounter;-><init>(JI)V

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mSetupDataCallWwanFailureCounter:Lcom/android/internal/telephony/SlidingWindowEventCounter;

    .line 2855
    new-instance v0, Lcom/android/internal/telephony/SlidingWindowEventCounter;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    .line 2856
    invoke-virtual {v1}, Lcom/android/internal/telephony/data/DataConfigManager;->getAnomalySetupDataCallThreshold()Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;

    move-result-object v1

    iget-wide v1, v1, Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;->timeWindow:J

    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    .line 2857
    invoke-virtual {v3}, Lcom/android/internal/telephony/data/DataConfigManager;->getAnomalySetupDataCallThreshold()Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;

    move-result-object v3

    iget v3, v3, Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;->eventNumOccurrence:I

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/SlidingWindowEventCounter;-><init>(JI)V

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mSetupDataCallWlanFailureCounter:Lcom/android/internal/telephony/SlidingWindowEventCounter;

    return-void
.end method

.method private blacklist updateDataActivity()V
    .registers 4

    .line 2544
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->isDataDormant()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x4

    goto :goto_1c

    .line 2546
    :cond_8
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getLinkBandwidthEstimator()Lcom/android/internal/telephony/data/LinkBandwidthEstimator;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 2547
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getLinkBandwidthEstimator()Lcom/android/internal/telephony/data/LinkBandwidthEstimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->getDataActivity()I

    move-result v0

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    .line 2550
    :goto_1c
    iget v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataActivity:I

    if-eq v1, v0, :cond_3f

    .line 2551
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDataActivity: dataActivity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2552
    invoke-static {v0}, Lcom/android/internal/telephony/data/DataUtils;->dataActivityToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2551
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->logv(Ljava/lang/String;)V

    .line 2553
    iput v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataActivity:I

    .line 2554
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->notifyDataActivity()V

    :cond_3f
    return-void
.end method

.method private blacklist updateNetworkRequestsPriority()V
    .registers 2

    .line 2837
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAllNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    .line 2838
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->updatePriority()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method private blacklist updateOverallInternetDataState()V
    .registers 7

    .line 3986
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda34;

    invoke-direct {v1}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda34;-><init>()V

    .line 3987
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    .line 3990
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda17;

    invoke-direct {v2}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda17;-><init>()V

    .line 3991
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda35;

    invoke-direct {v2}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda35;-><init>()V

    .line 3992
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 3994
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 3995
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_49

    .line 3996
    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v4, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda36;

    invoke-direct {v4}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda36;-><init>()V

    invoke-interface {v2, v4}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v2

    if-eqz v2, :cond_49

    const/4 v2, 0x1

    goto :goto_4a

    :cond_49
    move v2, v3

    .line 3997
    :goto_4a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isSuspended="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", anyInternetConnected="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", mDataNetworkList="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/data/DataNetworkController;->logv(Ljava/lang/String;)V

    if-eqz v2, :cond_74

    const/4 v3, 0x3

    goto :goto_77

    :cond_74
    if-eqz v0, :cond_77

    const/4 v3, 0x2

    .line 4007
    :cond_77
    :goto_77
    iget v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mInternetDataNetworkState:I

    if-eq v0, v3, :cond_a8

    .line 4008
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Internet data state changed from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mInternetDataNetworkState:I

    .line 4009
    invoke-static {v2}, Lcom/android/internal/telephony/util/TelephonyUtils;->dataStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4010
    invoke-static {v3}, Lcom/android/internal/telephony/util/TelephonyUtils;->dataStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4008
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->logl(Ljava/lang/String;)V

    .line 4011
    iput v3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mInternetDataNetworkState:I

    .line 4014
    :cond_a8
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mConnectedInternetNetworks:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_bc

    .line 4015
    iput-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mConnectedInternetNetworks:Ljava/util/Set;

    .line 4016
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkControllerCallbacks:Ljava/util/Set;

    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda37;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda37;-><init>(Ljava/util/Set;)V

    invoke-interface {p0, v0}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    :cond_bc
    return-void
.end method

.method private blacklist updateSubscriptionPlans()V
    .registers 4

    .line 3703
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mNetworkPolicyManager:Landroid/net/NetworkPolicyManager;

    iget v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mSubId:I

    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 3704
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 3703
    invoke-virtual {v0, v1, v2}, Landroid/net/NetworkPolicyManager;->getSubscriptionPlans(ILjava/lang/String;)[Landroid/telephony/SubscriptionPlan;

    move-result-object v0

    .line 3705
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mSubscriptionPlans:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 3706
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mSubscriptionPlans:Ljava/util/List;

    if-eqz v0, :cond_20

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_22

    :cond_20
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_22
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3707
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mCongestedOverrideNetworkTypes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 3708
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mUnmeteredOverrideNetworkTypes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 3709
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Subscription plans initialized: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mSubscriptionPlans:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blacklist addNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)V
    .registers 3

    const/4 v0, 0x2

    .line 1299
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public blacklist areAllDataDisconnected()Z
    .registers 4

    .line 1558
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_37

    .line 1559
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "areAllDataDisconnected false due to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda3;-><init>()V

    .line 1560
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    const-string v2, ", "

    invoke-static {v2}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1559
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 1562
    :cond_37
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9

    .line 4361
    new-instance v0, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 4362
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4363
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 4364
    const-string p2, "Current data networks:"

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4365
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 4366
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_40
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/data/DataNetwork;

    .line 4367
    invoke-virtual {v1, p1, v0, p3}, Lcom/android/internal/telephony/data/DataNetwork;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_40

    .line 4369
    :cond_50
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 4371
    const-string p2, "Pending tear down data networks:"

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4372
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 4373
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPendingImsDeregDataNetworks:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_65
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_75

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/data/DataNetwork;

    .line 4374
    invoke-virtual {v1, p1, v0, p3}, Lcom/android/internal/telephony/data/DataNetwork;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_65

    .line 4376
    :cond_75
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 4378
    const-string p2, "Previously connected data networks: (up to 10)"

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4380
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 4381
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPreviousConnectedDataNetworkList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_86
    :goto_86
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9e

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/data/DataNetwork;

    .line 4383
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_86

    .line 4384
    invoke-virtual {v1, p1, v0, p3}, Lcom/android/internal/telephony/data/DataNetwork;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_86

    .line 4387
    :cond_9e
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 4389
    const-string p2, "All telephony network requests:"

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4390
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 4391
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAllNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-virtual {p2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_af
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_bf

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    .line 4392
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_af

    .line 4394
    :cond_bf
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 4396
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IMS features registration state: MMTEL="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4397
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mRegisteredImsFeatures:Ljava/util/Set;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "not registered"

    const-string v3, "registered"

    if-eqz v1, :cond_df

    move-object v1, v3

    goto :goto_e0

    :cond_df
    move-object v1, v2

    .line 4398
    :goto_e0
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", RCS="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4400
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mRegisteredImsFeatures:Ljava/util/Set;

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f6

    move-object v2, v3

    .line 4401
    :cond_f6
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 4396
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4402
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mServiceState="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4403
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPsRestricted="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPsRestricted:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4404
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAnyDataNetworkExisting="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAnyDataNetworkExisting:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4405
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mInternetDataNetworkState="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mInternetDataNetworkState:I

    .line 4406
    invoke-static {v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->dataStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 4405
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4407
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mImsDataNetworkState="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mImsDataNetworkState:I

    .line 4408
    invoke-static {v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->dataStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 4407
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4409
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDataServiceBound="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataServiceBound:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4410
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsSrvccHandoverInProcess="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mIsSrvccHandoverInProcess:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4411
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSimState="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mSimState:I

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->simStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4412
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDataNetworkControllerCallbacks="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkControllerCallbacks:Ljava/util/Set;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4413
    const-string p2, "Subscription plans:"

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4414
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 4415
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mSubscriptionPlans:Ljava/util/List;

    new-instance v1, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;)V

    invoke-interface {p2, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 4416
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 4417
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unmetered override network types="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mUnmeteredOverrideNetworkTypes:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda6;

    invoke-direct {v2}, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda6;-><init>()V

    .line 4418
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    const-string v2, ","

    invoke-static {v2}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 4417
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4419
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Congested override network types="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mCongestedOverrideNetworkTypes:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda6;

    invoke-direct {v3}, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda6;-><init>()V

    .line 4420
    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {v2}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 4419
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4421
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mImsThrottleCounter="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mImsThrottleCounter:Lcom/android/internal/telephony/SlidingWindowEventCounter;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4422
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNetworkUnwantedCounter="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mNetworkUnwantedCounter:Lcom/android/internal/telephony/SlidingWindowEventCounter;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4423
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mBootStrapSimTotalDataUsageBytes="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mBootStrapSimTotalDataUsageBytes:J

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4424
    const-string p2, "Local logs:"

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4425
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 4426
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p2, p1, v0, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4427
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 4429
    const-string p2, "-------------------------------------"

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4430
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataProfileManager:Lcom/android/internal/telephony/data/DataProfileManager;

    invoke-virtual {v1, p1, v0, p3}, Lcom/android/internal/telephony/data/DataProfileManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4431
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4432
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataRetryManager:Lcom/android/internal/telephony/data/DataRetryManager;

    invoke-virtual {v1, p1, v0, p3}, Lcom/android/internal/telephony/data/DataRetryManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4433
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4434
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataSettingsManager:Lcom/android/internal/telephony/data/DataSettingsManager;

    invoke-virtual {v1, p1, v0, p3}, Lcom/android/internal/telephony/data/DataSettingsManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4435
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4436
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataStallRecoveryManager:Lcom/android/internal/telephony/data/DataStallRecoveryManager;

    invoke-virtual {v1, p1, v0, p3}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4437
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4438
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/internal/telephony/data/DataConfigManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4440
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    return-void
.end method

.method public blacklist evaluateNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;)Lcom/android/internal/telephony/data/DataEvaluation;
    .registers 13

    .line 1592
    new-instance v0, Lcom/android/internal/telephony/data/DataEvaluation;

    invoke-direct {v0, p2}, Lcom/android/internal/telephony/data/DataEvaluation;-><init>(Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;)V

    .line 1593
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAccessNetworksManager:Lcom/android/internal/telephony/data/AccessNetworksManager;

    .line 1594
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getHighestPriorityApnTypeNetworkCapability()I

    move-result v2

    .line 1593
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/data/AccessNetworksManager;->getPreferredTransportByNetworkCapability(I)I

    move-result v1

    .line 1597
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->canConnectivityTransportSatisfyNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;I)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 1598
    sget-object v2, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->DATA_NETWORK_TRANSPORT_NOT_ALLOWED:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    :cond_1a
    const/16 v2, 0xa

    .line 1603
    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->hasCapability(I)Z

    move-result v3

    if-eqz v3, :cond_6d

    .line 1604
    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataProfileManager:Lcom/android/internal/telephony/data/DataProfileManager;

    .line 1605
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataNetworkType(I)I

    move-result v6

    iget-object p2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    .line 1606
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->isUsingNonTerrestrialNetwork()Z

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v5, p1

    .line 1604
    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/telephony/data/DataProfileManager;->getDataProfileForNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;IZZZ)Landroid/telephony/data/DataProfile;

    move-result-object p1

    move-object v3, v5

    .line 1610
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    invoke-virtual {p2}, Lcom/android/internal/telephony/data/DataConfigManager;->shouldHonorRetryTimerForEmergencyNetworkRequest()Z

    move-result p2

    if-eqz p2, :cond_52

    if-eqz p1, :cond_52

    iget-object p2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataRetryManager:Lcom/android/internal/telephony/data/DataRetryManager;

    .line 1612
    invoke-virtual {p2, p1, v1}, Lcom/android/internal/telephony/data/DataRetryManager;->isDataProfileThrottled(Landroid/telephony/data/DataProfile;I)Z

    move-result p2

    if-eqz p2, :cond_52

    .line 1613
    sget-object p2, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->DATA_THROTTLED:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    .line 1614
    const-string p2, "Emergency network request is throttled by the previous setup data call response."

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 1618
    :cond_52
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataEvaluation;->containsDisallowedReasons()Z

    move-result p2

    if-nez p2, :cond_62

    .line 1619
    sget-object p2, Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;->EMERGENCY_REQUEST:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataAllowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;)V

    if-eqz p1, :cond_62

    .line 1621
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/data/DataEvaluation;->setCandidateDataProfile(Landroid/telephony/data/DataProfile;)V

    .line 1624
    :cond_62
    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->setEvaluation(Lcom/android/internal/telephony/data/DataEvaluation;)V

    .line 1625
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataEvaluation;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    return-object v0

    :cond_6d
    move-object v3, p1

    .line 1629
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->serviceStateAllowsPSAttach(Landroid/telephony/ServiceState;I)Z

    move-result p1

    if-nez p1, :cond_7b

    .line 1630
    sget-object p1, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->NOT_IN_SERVICE:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    .line 1634
    :cond_7b
    iget p1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mSimState:I

    if-eq p1, v2, :cond_84

    .line 1635
    sget-object p1, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->SIM_NOT_READY:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    .line 1639
    :cond_84
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataConfigManager;->isConfigCarrierSpecific()Z

    move-result p1

    if-nez p1, :cond_91

    .line 1640
    sget-object p1, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->DATA_CONFIG_NOT_READY:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    .line 1644
    :cond_91
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object p1

    if-eqz p1, :cond_ad

    .line 1646
    invoke-virtual {p1}, Landroid/telephony/NetworkRegistrationInfo;->getAvailableServices()Ljava/util/List;

    move-result-object p1

    .line 1647
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1646
    invoke-interface {p1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_ad

    .line 1648
    sget-object p1, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->SERVICE_OPTION_NOT_SUPPORTED:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    .line 1654
    :cond_ad
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->hasCalling()Z

    move-result p1

    if-eqz p1, :cond_d2

    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/CallTracker;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object p1

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq p1, v4, :cond_d2

    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1655
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/ServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result p1

    if-nez p1, :cond_d2

    .line 1656
    sget-object p1, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->CONCURRENT_VOICE_DATA_NOT_ALLOWED:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    :cond_d2
    const/4 p1, 0x1

    if-ne v1, p1, :cond_10c

    const/16 v4, 0x21

    .line 1662
    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->hasCapability(I)Z

    move-result v4

    if-eqz v4, :cond_10c

    .line 1663
    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v4, v2, p1}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v4

    if-eqz v4, :cond_10c

    .line 1666
    invoke-virtual {v4}, Landroid/telephony/NetworkRegistrationInfo;->getDataSpecificInfo()Landroid/telephony/DataSpecificRegistrationInfo;

    move-result-object v5

    if-eqz v5, :cond_10c

    .line 1667
    invoke-virtual {v5}, Landroid/telephony/DataSpecificRegistrationInfo;->getVopsSupportInfo()Landroid/telephony/VopsSupportInfo;

    move-result-object v6

    if-eqz v6, :cond_10c

    .line 1668
    invoke-virtual {v5}, Landroid/telephony/DataSpecificRegistrationInfo;->getVopsSupportInfo()Landroid/telephony/VopsSupportInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/VopsSupportInfo;->isVopsSupported()Z

    move-result v5

    if-nez v5, :cond_10c

    iget-object v5, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    .line 1670
    invoke-virtual {v4}, Landroid/telephony/NetworkRegistrationInfo;->getNetworkRegistrationState()I

    move-result v4

    .line 1669
    invoke-virtual {v5, v4}, Lcom/android/internal/telephony/data/DataConfigManager;->allowBringUpNetworkInNonVops(I)Z

    move-result v4

    if-nez v4, :cond_10c

    .line 1671
    sget-object v4, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->VOPS_NOT_SUPPORTED:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    .line 1678
    :cond_10c
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v4

    .line 1677
    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v4

    if-nez v4, :cond_11b

    .line 1679
    sget-object v4, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->DEFAULT_DATA_UNSELECTED:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    .line 1686
    :cond_11b
    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v4

    if-eqz v4, :cond_136

    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataSettingsManager:Lcom/android/internal/telephony/data/DataSettingsManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/data/DataSettingsManager;->isDataRoamingEnabled()Z

    move-result v4

    if-nez v4, :cond_136

    .line 1687
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->shouldIgnoreDataRoamingSettingForSatellite()Z

    move-result v4

    if-nez v4, :cond_136

    .line 1688
    sget-object v4, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->ROAMING_DISABLED:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    .line 1692
    :cond_136
    iget-boolean v4, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPsRestricted:Z

    if-eqz v4, :cond_141

    if-ne v1, p1, :cond_141

    .line 1693
    sget-object v4, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->DATA_RESTRICTED_BY_NETWORK:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    .line 1697
    :cond_141
    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/ServiceStateTracker;->isPendingRadioPowerOffAfterDataOff()Z

    move-result v4

    if-eqz v4, :cond_152

    .line 1698
    sget-object v4, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->PENDING_TEAR_DOWN_ALL:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    :cond_152
    if-ne v1, p1, :cond_16f

    .line 1704
    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1705
    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/ServiceStateTracker;->getDesiredPowerState()Z

    move-result v4

    if-eqz v4, :cond_16a

    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v4, v4, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 1706
    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result v4

    if-eq v4, p1, :cond_16f

    .line 1707
    :cond_16a
    sget-object v4, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->RADIO_POWER_OFF:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    .line 1711
    :cond_16f
    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/ServiceStateTracker;->getPowerStateFromCarrier()Z

    move-result v4

    if-nez v4, :cond_180

    .line 1712
    sget-object v4, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->RADIO_DISABLED_BY_CARRIER:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    .line 1716
    :cond_180
    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataServiceBound:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-nez v4, :cond_18d

    .line 1717
    sget-object v4, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->DATA_SERVICE_NOT_READY:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    .line 1721
    :cond_18d
    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->isInCdmaEcm()Z

    move-result v4

    if-eqz v4, :cond_19a

    .line 1722
    sget-object v4, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->CDMA_EMERGENCY_CALLBACK_MODE:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    .line 1726
    :cond_19a
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->isOnlySingleDataNetworkAllowed(I)Z

    move-result v4

    if-eqz v4, :cond_1c0

    .line 1727
    invoke-virtual {v3}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getCapabilities()[I

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/data/DataNetworkController;->hasCapabilityExemptsFromSinglePdnRule([I)Z

    move-result v4

    if-nez v4, :cond_1c0

    .line 1729
    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda15;

    invoke-direct {v5, p0}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda15;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;)V

    .line 1730
    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v4

    if-eqz v4, :cond_1c0

    .line 1732
    sget-object v4, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->ONLY_ALLOWED_SINGLE_NETWORK:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    .line 1737
    :cond_1c0
    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataSettingsManager:Lcom/android/internal/telephony/data/DataSettingsManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/data/DataSettingsManager;->isDataInitialized()Z

    move-result v4

    if-eqz v4, :cond_1de

    .line 1738
    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataSettingsManager:Lcom/android/internal/telephony/data/DataSettingsManager;

    .line 1739
    invoke-virtual {v3}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getHighestPriorityApnTypeNetworkCapability()I

    move-result v5

    .line 1738
    invoke-static {v5}, Lcom/android/internal/telephony/data/DataUtils;->networkCapabilityToApnType(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/data/DataSettingsManager;->isDataEnabled(I)Z

    move-result v4

    if-nez v4, :cond_1e3

    .line 1740
    sget-object v4, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->DATA_DISABLED:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    goto :goto_1e3

    .line 1743
    :cond_1de
    sget-object v4, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->DATA_SETTINGS_NOT_READY:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    .line 1747
    :cond_1e3
    :goto_1e3
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataEvaluation;->containsDisallowedReasons()Z

    move-result v4

    if-nez v4, :cond_20b

    .line 1748
    sget-object v4, Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;->NORMAL:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataAllowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;)V

    .line 1750
    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataSettingsManager:Lcom/android/internal/telephony/data/DataSettingsManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/data/DataSettingsManager;->isDataEnabled()Z

    move-result v4

    if-nez v4, :cond_262

    const/4 v4, 0x0

    .line 1751
    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->hasCapability(I)Z

    move-result v4

    if-eqz v4, :cond_262

    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataSettingsManager:Lcom/android/internal/telephony/data/DataSettingsManager;

    .line 1752
    invoke-virtual {v4, v2}, Lcom/android/internal/telephony/data/DataSettingsManager;->isMobileDataPolicyEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_262

    .line 1757
    sget-object v2, Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;->MMS_REQUEST:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataAllowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;)V

    goto :goto_262

    .line 1759
    :cond_20b
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataEvaluation;->containsHardDisallowedReasons()Z

    move-result v4

    if-nez v4, :cond_262

    .line 1760
    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v4}, Landroid/telecom/TelecomManager;->isInEmergencyCall()Z

    move-result v4

    if-nez v4, :cond_221

    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->isInEcm()Z

    move-result v4

    if-eqz v4, :cond_22d

    .line 1761
    :cond_221
    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->hasCapability(I)Z

    move-result v4

    if-eqz v4, :cond_22d

    .line 1763
    sget-object v2, Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;->EMERGENCY_SUPL:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataAllowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;)V

    goto :goto_262

    :cond_22d
    const/16 v4, 0xd

    .line 1764
    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->hasCapability(I)Z

    move-result v4

    if-nez v4, :cond_241

    .line 1766
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/data/DataNetworkController;->isValidRestrictedRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z

    move-result v4

    if-eqz v4, :cond_241

    .line 1769
    sget-object v2, Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;->RESTRICTED_REQUEST:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataAllowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;)V

    goto :goto_262

    :cond_241
    if-ne v1, v2, :cond_249

    .line 1772
    sget-object v2, Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;->UNMETERED_USAGE:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataAllowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;)V

    goto :goto_262

    :cond_249
    if-ne v1, p1, :cond_262

    .line 1774
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    .line 1775
    invoke-virtual {v3}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getCapabilities()[I

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v5

    .line 1774
    invoke-virtual {v2, v4, v5}, Lcom/android/internal/telephony/data/DataConfigManager;->isAnyMeteredCapability([IZ)Z

    move-result v2

    if-nez v2, :cond_262

    .line 1777
    sget-object v2, Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;->UNMETERED_USAGE:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataAllowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;)V

    .line 1783
    :cond_262
    :goto_262
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataNetworkType(I)I

    move-result v2

    if-nez v2, :cond_270

    if-ne v1, p1, :cond_270

    .line 1788
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v2

    :cond_270
    move v4, v2

    .line 1790
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataProfileManager:Lcom/android/internal/telephony/data/DataProfileManager;

    iget-object v5, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    .line 1792
    invoke-virtual {v5}, Landroid/telephony/ServiceState;->isUsingNonTerrestrialNetwork()Z

    move-result v5

    .line 1793
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->isEsimBootStrapProvisioningActivated()Z

    move-result v6

    .line 1796
    invoke-virtual {p2}, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->isConditionBased()Z

    move-result v7

    .line 1791
    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/data/DataProfileManager;->getDataProfileForNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;IZZZ)Landroid/telephony/data/DataProfile;

    move-result-object v2

    if-nez v2, :cond_28d

    .line 1798
    sget-object v4, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->NO_SUITABLE_DATA_PROFILE:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    goto :goto_2ac

    .line 1799
    :cond_28d
    sget-object v4, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->NEW_REQUEST:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    if-ne p2, v4, :cond_29f

    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataRetryManager:Lcom/android/internal/telephony/data/DataRetryManager;

    .line 1802
    invoke-virtual {v4, v3, v1}, Lcom/android/internal/telephony/data/DataRetryManager;->isSimilarNetworkRequestRetryScheduled(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;I)Z

    move-result v4

    if-eqz v4, :cond_29f

    .line 1804
    sget-object v4, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->RETRY_SCHEDULED:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    goto :goto_2ac

    .line 1805
    :cond_29f
    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataRetryManager:Lcom/android/internal/telephony/data/DataRetryManager;

    invoke-virtual {v4, v2, v1}, Lcom/android/internal/telephony/data/DataRetryManager;->isDataProfileThrottled(Landroid/telephony/data/DataProfile;I)Z

    move-result v4

    if-eqz v4, :cond_2ac

    .line 1806
    sget-object v4, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->DATA_THROTTLED:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    .line 1809
    :cond_2ac
    :goto_2ac
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataEvaluation;->containsDisallowedReasons()Z

    move-result v4

    if-nez v4, :cond_2ce

    if-ne v1, p1, :cond_2cb

    .line 1811
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->isEsimBootStrapProvisioningActivated()Z

    move-result p1

    if-eqz p1, :cond_2cb

    .line 1812
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->isEsimBootStrapMaxDataLimitReached()Z

    move-result p1

    if-eqz p1, :cond_2cb

    .line 1813
    const-string p1, "BootStrap Sim Data Usage limit reached"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 1814
    sget-object p1, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->DATA_LIMIT_REACHED:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    goto :goto_2ce

    .line 1816
    :cond_2cb
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/data/DataEvaluation;->setCandidateDataProfile(Landroid/telephony/data/DataProfile;)V

    .line 1820
    :cond_2ce
    :goto_2ce
    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->setEvaluation(Lcom/android/internal/telephony/data/DataEvaluation;)V

    .line 1822
    sget-object p1, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->EXTERNAL_QUERY:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    if-eq p2, p1, :cond_30e

    .line 1823
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", network type="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1824
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataNetworkType(I)I

    move-result p2

    invoke-static {p2}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", reg state="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    .line 1827
    invoke-direct {p0, p2, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataRegistrationState(Landroid/telephony/ServiceState;I)I

    move-result p2

    .line 1826
    invoke-static {p2}, Landroid/telephony/NetworkRegistrationInfo;->registrationStateToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1823
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    :cond_30e
    return-object v0
.end method

.method public blacklist getCongestedOverrideNetworkTypes()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 4080
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mCongestedOverrideNetworkTypes:Ljava/util/Set;

    return-object p0
.end method

.method public blacklist getDataActivity()I
    .registers 1

    .line 4121
    iget p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataActivity:I

    return p0
.end method

.method public blacklist getDataConfigManager()Lcom/android/internal/telephony/data/DataConfigManager;
    .registers 1

    .line 4027
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    return-object p0
.end method

.method public blacklist getDataNetworkByInterface(Ljava/lang/String;)Lcom/android/internal/telephony/data/DataNetwork;
    .registers 3

    .line 2613
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda0;-><init>()V

    .line 2614
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    .line 2616
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 2618
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    const/4 p1, 0x0

    .line 2619
    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/data/DataNetwork;

    return-object p0
.end method

.method public blacklist getDataProfileManager()Lcom/android/internal/telephony/data/DataProfileManager;
    .registers 1

    .line 4035
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataProfileManager:Lcom/android/internal/telephony/data/DataProfileManager;

    return-object p0
.end method

.method public blacklist getDataRetryManager()Lcom/android/internal/telephony/data/DataRetryManager;
    .registers 1

    .line 4051
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataRetryManager:Lcom/android/internal/telephony/data/DataRetryManager;

    return-object p0
.end method

.method public blacklist getDataServicePackages()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4276
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 4277
    :goto_6
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataServiceManagers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_20

    .line 4278
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataServiceManagers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/data/DataServiceManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/data/DataServiceManager;->getDataServicePackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_20
    return-object v0
.end method

.method public blacklist getDataSettingsManager()Lcom/android/internal/telephony/data/DataSettingsManager;
    .registers 1

    .line 4043
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataSettingsManager:Lcom/android/internal/telephony/data/DataSettingsManager;

    return-object p0
.end method

.method public blacklist getInternetDataDisallowedReasons()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;",
            ">;"
        }
    .end annotation

    .line 1571
    new-instance v0, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v2, 0xc

    .line 1573
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    .line 1574
    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;-><init>(Landroid/net/NetworkRequest;Lcom/android/internal/telephony/Phone;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    .line 1575
    sget-object v1, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->EXTERNAL_QUERY:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->evaluateNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;)Lcom/android/internal/telephony/data/DataEvaluation;

    move-result-object p0

    .line 1577
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataEvaluation;->getDataDisallowedReasons()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getInternetDataNetworkState()I
    .registers 1

    .line 4268
    iget p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mInternetDataNetworkState:I

    return p0
.end method

.method public blacklist getInternetEvaluation(Z)Lcom/android/internal/telephony/data/DataEvaluation;
    .registers 6

    .line 1511
    new-instance v0, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v2, 0xc

    .line 1513
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    .line 1514
    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;-><init>(Landroid/net/NetworkRequest;Lcom/android/internal/telephony/Phone;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    if-nez p1, :cond_33

    .line 1517
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda12;

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda12;-><init>(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)V

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    if-eqz p1, :cond_33

    .line 1520
    new-instance p0, Lcom/android/internal/telephony/data/DataEvaluation;

    sget-object p1, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->EXTERNAL_QUERY:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataEvaluation;-><init>(Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;)V

    return-object p0

    .line 1526
    :cond_33
    sget-object p1, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->EXTERNAL_QUERY:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->evaluateNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;)Lcom/android/internal/telephony/data/DataEvaluation;

    move-result-object p1

    .line 1528
    sget-object v1, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->ONLY_ALLOWED_SINGLE_NETWORK:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/data/DataEvaluation;->containsOnly(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)Z

    move-result v1

    if-eqz v1, :cond_77

    .line 1529
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getPriority()I

    move-result v0

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda13;

    invoke-direct {v1}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda13;-><init>()V

    .line 1530
    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda14;

    invoke-direct {v1}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda14;-><init>()V

    .line 1531
    invoke-static {v1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->max(Ljava/util/Comparator;)Ljava/util/Optional;

    move-result-object p0

    const/4 v1, 0x0

    .line 1532
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-le v0, p0, :cond_77

    .line 1535
    sget-object p0, Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;->NORMAL:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataAllowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;)V

    :cond_77
    return-object p1
.end method

.method public blacklist getSubscriptionPlans()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionPlan;",
            ">;"
        }
    .end annotation

    .line 4060
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mSubscriptionPlans:Ljava/util/List;

    return-object p0
.end method

.method public blacklist getUnmeteredOverrideNetworkTypes()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 4070
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mUnmeteredOverrideNetworkTypes:Ljava/util/Set;

    return-object p0
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 8

    .line 1143
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x10

    const/4 v2, 0x0

    const/4 v3, 0x5

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_216

    .line 1287
    :pswitch_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->loge(Ljava/lang/String;)V

    return-void

    .line 1194
    :pswitch_21
    sget-object p1, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->TAC_CHANGED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    invoke-virtual {p0, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    sget-wide v0, Lcom/android/internal/telephony/data/DataNetworkController;->REEVALUATE_UNSATISFIED_NETWORK_REQUESTS_TAC_CHANGED_DELAY_MILLIS:J

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 1174
    :pswitch_2d
    sget-object p1, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->SLICE_CONFIG_CHANGED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    invoke-virtual {p0, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 1250
    :pswitch_37
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1251
    iget v1, p1, Landroid/os/Message;->arg2:I

    if-eqz v1, :cond_3f

    move v1, v4

    goto :goto_40

    :cond_3f
    move v1, v2

    .line 1252
    :goto_40
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [I

    .line 1254
    const-string v3, ","

    const-string v5, ", networkTypes="

    if-ne v0, v4, :cond_a3

    .line 1255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unmetered subscription override: override="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1256
    invoke-static {p1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v4

    new-instance v5, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda6;

    invoke-direct {v5}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda6;-><init>()V

    .line 1257
    invoke-interface {v4, v5}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object v4

    .line 1258
    invoke-static {v3}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1255
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 1259
    array-length v0, p1

    :goto_7c
    if-ge v2, v0, :cond_98

    aget v3, p1, v2

    if-eqz v1, :cond_8c

    .line 1261
    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mUnmeteredOverrideNetworkTypes:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_95

    .line 1263
    :cond_8c
    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mUnmeteredOverrideNetworkTypes:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :goto_95
    add-int/lit8 v2, v2, 0x1

    goto :goto_7c

    .line 1266
    :cond_98
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkControllerCallbacks:Ljava/util/Set;

    new-instance p1, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda7;

    invoke-direct {p1}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda7;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    return-void

    :cond_a3
    const/4 v4, 0x2

    if-ne v0, v4, :cond_ff

    .line 1269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Congested subscription override: override="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1270
    invoke-static {p1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v4

    new-instance v5, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda6;

    invoke-direct {v5}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda6;-><init>()V

    .line 1271
    invoke-interface {v4, v5}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object v4

    .line 1272
    invoke-static {v3}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1269
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 1273
    array-length v0, p1

    :goto_d8
    if-ge v2, v0, :cond_f4

    aget v3, p1, v2

    if-eqz v1, :cond_e8

    .line 1275
    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mCongestedOverrideNetworkTypes:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_f1

    .line 1277
    :cond_e8
    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mCongestedOverrideNetworkTypes:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :goto_f1
    add-int/lit8 v2, v2, 0x1

    goto :goto_d8

    .line 1280
    :cond_f4
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkControllerCallbacks:Ljava/util/Set;

    new-instance p1, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda8;

    invoke-direct {p1}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda8;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    return-void

    .line 1283
    :cond_ff
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown override mask: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->loge(Ljava/lang/String;)V

    return-void

    .line 1242
    :pswitch_114
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Landroid/telephony/SubscriptionPlan;

    .line 1243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Subscription plans changed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 1244
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mSubscriptionPlans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1245
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mSubscriptionPlans:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1246
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkControllerCallbacks:Ljava/util/Set;

    new-instance p1, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda5;

    invoke-direct {p1}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda5;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    return-void

    .line 1239
    :pswitch_149
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    if-eqz p1, :cond_150

    move v2, v4

    :cond_150
    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/data/DataNetworkController;->onEvaluatePreferredTransport(IZ)V

    return-void

    .line 1230
    :pswitch_154
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->isInEcm()Z

    move-result p1

    if-eqz p1, :cond_166

    .line 1231
    sget-object p1, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->EMERGENCY_CALL_CHANGED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 1234
    :cond_166
    sget-object p1, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->EMERGENCY_CALL_CHANGED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    invoke-virtual {p0, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 1145
    :pswitch_170
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->onRegisterAllEvents()V

    return-void

    .line 1164
    :pswitch_174
    sget-object p1, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->VOICE_CALL_ENDED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1169
    invoke-virtual {p0, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    sget-wide v0, Lcom/android/internal/telephony/data/DataNetworkController;->REEVALUATE_UNSATISFIED_NETWORK_REQUESTS_AFTER_CALL_END_DELAY_MILLIS:J

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 1227
    :pswitch_187
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->onServiceStateChanged()V

    return-void

    .line 1155
    :pswitch_18b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    .line 1156
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->onReevaluateExistingDataNetworks(Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;)V

    return-void

    .line 1224
    :pswitch_193
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->onSubscriptionChanged()V

    return-void

    .line 1221
    :pswitch_197
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkControllerCallbacks:Ljava/util/Set;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void

    .line 1212
    :pswitch_1a1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;

    .line 1213
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkControllerCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1215
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_205

    .line 1216
    new-instance p0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda4;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda4;-><init>(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return-void

    .line 1209
    :pswitch_1bb
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->onTearDownAllDataNetworks(I)V

    return-void

    .line 1205
    :pswitch_1c1
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 1206
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->onSimStateChanged(I)V

    return-void

    .line 1199
    :pswitch_1c7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 1200
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1201
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 1202
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->onDataServiceBindingChanged(IZ)V

    return-void

    .line 1187
    :pswitch_1df
    iput-boolean v2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPsRestricted:Z

    .line 1188
    sget-object p1, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->DATA_RESTRICTED_CHANGED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    invoke-virtual {p0, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 1184
    :pswitch_1eb
    iput-boolean v4, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPsRestricted:Z

    return-void

    .line 1151
    :pswitch_1ee
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    .line 1152
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->onReevaluateUnsatisfiedNetworkRequests(Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;)V

    return-void

    .line 1178
    :pswitch_1f6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 1179
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_205

    .line 1180
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [I

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->onSrvccStateChanged([I)V

    :cond_205
    return-void

    .line 1159
    :pswitch_206
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->onRemoveNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)V

    return-void

    .line 1148
    :pswitch_20e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->onAddNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)V

    return-void

    :pswitch_data_216
    .packed-switch 0x2
        :pswitch_20e
        :pswitch_206
        :pswitch_1f6
        :pswitch_1ee
        :pswitch_1eb
        :pswitch_1df
        :pswitch_1c7
        :pswitch_1c1
        :pswitch_a
        :pswitch_a
        :pswitch_1bb
        :pswitch_1a1
        :pswitch_197
        :pswitch_193
        :pswitch_18b
        :pswitch_187
        :pswitch_174
        :pswitch_170
        :pswitch_154
        :pswitch_149
        :pswitch_114
        :pswitch_37
        :pswitch_2d
        :pswitch_21
    .end packed-switch
.end method

.method public blacklist isEsimBootStrapProvisioningActivated()Z
    .registers 2

    .line 2632
    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 2633
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSubscriptionInfoInternal(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object p0

    if-eqz p0, :cond_18

    .line 2635
    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getProfileClass()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_18

    return v0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isInternetDataAllowed(Z)Z
    .registers 2

    .line 1498
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->getInternetEvaluation(Z)Lcom/android/internal/telephony/data/DataEvaluation;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataEvaluation;->containsDisallowedReasons()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public blacklist isInternetNetwork(I)Z
    .registers 4

    .line 2517
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/data/DataNetwork;

    .line 2518
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataNetwork;->getId()I

    move-result v1

    if-ne v1, p1, :cond_6

    .line 2519
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataNetwork;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2520
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataNetwork;->isInternetSupported()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_26
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isInternetUnmetered()Z
    .registers 2

    .line 1545
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda16;-><init>()V

    .line 1546
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda17;-><init>()V

    .line 1547
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda18;

    invoke-direct {v0}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda18;-><init>()V

    .line 1548
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist isNetworkRequestExisting(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z
    .registers 2

    .line 2602
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAllNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public blacklist registerDataNetworkControllerCallback(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V
    .registers 3

    const/16 v0, 0xd

    .line 4131
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public blacklist removeNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)V
    .registers 3

    const/4 v0, 0x3

    .line 2567
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public blacklist requestNetworkValidation(ILjava/util/function/Consumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 4294
    invoke-static {p1}, Lcom/android/internal/telephony/data/DataUtils;->networkCapabilityToApnType(I)I

    move-result v0

    const/4 v1, 0x2

    .line 4299
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-nez v0, :cond_2f

    .line 4296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestNetworkValidation: the capability is not an apn type based. capability:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->loge(Ljava/lang/String;)V

    .line 4298
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda8;

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda8;-><init>(Ljava/util/function/Consumer;)V

    invoke-static {p0}, Lcom/android/internal/util/FunctionalUtils;->ignoreRemoteException(Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;)Ljava/util/function/Consumer;

    move-result-object p0

    .line 4299
    invoke-interface {p0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    .line 4304
    :cond_2f
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda10;

    invoke-direct {v2, p1}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda10;-><init>(I)V

    .line 4305
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 4307
    invoke-interface {p1}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object p1

    .line 4309
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_51

    .line 4311
    new-instance p0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda11;

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda11;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p1, p0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void

    .line 4314
    :cond_51
    const-string p1, "requestNetworkValidation: No matching DataNetwork was found"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->loge(Ljava/lang/String;)V

    .line 4315
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda8;

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda8;-><init>(Ljava/util/function/Consumer;)V

    invoke-static {p0}, Lcom/android/internal/util/FunctionalUtils;->ignoreRemoteException(Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;)Ljava/util/function/Consumer;

    move-result-object p0

    .line 4316
    invoke-interface {p0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public blacklist tearDownAllDataNetworks(I)V
    .registers 4

    const/16 v0, 0xc

    const/4 v1, 0x0

    .line 4150
    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public blacklist unregisterDataNetworkControllerCallback(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V
    .registers 3

    const/16 v0, 0xe

    .line 4141
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

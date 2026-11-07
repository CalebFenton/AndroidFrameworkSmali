.class public Lcom/android/internal/telephony/data/DataStallRecoveryManager;
.super Landroid/os/Handler;
.source "DataStallRecoveryManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/data/DataStallRecoveryManager$DataStallRecoveryManagerCallback;
    }
.end annotation


# static fields
.field private static final blacklist CONTENT_URL_DSRM_DURATION_MILLIS:Landroid/net/Uri;

.field private static final blacklist CONTENT_URL_DSRM_ENABLED_ACTIONS:Landroid/net/Uri;

.field public static final blacklist RECOVERY_ACTION_CLEANUP:I = 0x1

.field public static final blacklist RECOVERY_ACTION_GET_DATA_CALL_LIST:I = 0x0

.field public static final blacklist RECOVERY_ACTION_RADIO_RESTART:I = 0x3

.field public static final blacklist RECOVERY_ACTION_RESET_MODEM:I = 0x4


# instance fields
.field private blacklist mActionValidationCount:I

.field private final blacklist mContentObserver:Landroid/database/ContentObserver;

.field private final blacklist mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

.field private final blacklist mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

.field private blacklist mDataStallRecoveryDelayMillisArray:[J

.field private final blacklist mDataStallRecoveryManagerCallback:Lcom/android/internal/telephony/data/DataStallRecoveryManager$DataStallRecoveryManagerCallback;

.field public blacklist mDataStallStartMs:J

.field private blacklist mDataStalled:Z

.field private final blacklist mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

.field private blacklist mIsAirPlaneModeEnableDuringDataStall:Z

.field private blacklist mIsAttemptedAllSteps:Z

.field private blacklist mIsInternetNetworkConnected:Z

.field private blacklist mIsValidNetwork:Z

.field private blacklist mLastAction:I

.field private blacklist mLastActionReported:Z

.field private final blacklist mLocalLog:Lcom/android/internal/telephony/LocalLog;

.field private final blacklist mLogTag:Ljava/lang/String;

.field private blacklist mMobileDataChangedToEnabledDuringDataStall:Z

.field private blacklist mNetworkCheckTimerStarted:Z

.field private final blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private blacklist mPredictWaitingMillis:J

.field private blacklist mRadioPowerState:I

.field private blacklist mRadioStateChangedDuringDataStall:Z

.field private blacklist mRecoveryAction:I

.field private blacklist mRecoveryTriggered:Z

.field private blacklist mSkipRecoveryActionArray:[Z

.field private final blacklist mStats:Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;

.field private blacklist mTimeElapsedOfCurrentAction:J

.field private blacklist mTimeLastRecoveryStartMs:J

.field private blacklist mValidationCount:I

.field private final blacklist mWwanDataServiceManager:Lcom/android/internal/telephony/data/DataServiceManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmIsInternetNetworkConnected(Lcom/android/internal/telephony/data/DataStallRecoveryManager;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mIsInternetNetworkConnected:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsInternetNetworkConnected(Lcom/android/internal/telephony/data/DataStallRecoveryManager;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mIsInternetNetworkConnected:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mlog(Lcom/android/internal/telephony/data/DataStallRecoveryManager;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mlogl(Lcom/android/internal/telephony/data/DataStallRecoveryManager;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->logl(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monCarrierConfigUpdated(Lcom/android/internal/telephony/data/DataStallRecoveryManager;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->onCarrierConfigUpdated()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monInternetValidationStatusChanged(Lcom/android/internal/telephony/data/DataStallRecoveryManager;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->onInternetValidationStatusChanged(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monMobileDataEnabledChanged(Lcom/android/internal/telephony/data/DataStallRecoveryManager;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->onMobileDataEnabledChanged(Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetCONTENT_URL_DSRM_DURATION_MILLIS()Landroid/net/Uri;
    .registers 1

    .line 0
    sget-object v0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->CONTENT_URL_DSRM_DURATION_MILLIS:Landroid/net/Uri;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetCONTENT_URL_DSRM_ENABLED_ACTIONS()Landroid/net/Uri;
    .registers 1

    .line 0
    sget-object v0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->CONTENT_URL_DSRM_ENABLED_ACTIONS:Landroid/net/Uri;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 221
    const-string v0, "dsrm_enabled_actions"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->CONTENT_URL_DSRM_ENABLED_ACTIONS:Landroid/net/Uri;

    .line 229
    const-string v0, "dsrm_duration_millis"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->CONTENT_URL_DSRM_DURATION_MILLIS:Landroid/net/Uri;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataServiceManager;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;Landroid/os/Looper;Lcom/android/internal/telephony/data/DataStallRecoveryManager$DataStallRecoveryManagerCallback;)V
    .registers 9

    .line 280
    invoke-direct {p0, p5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 149
    new-instance p5, Lcom/android/internal/telephony/LocalLog;

    const/16 v0, 0x80

    invoke-direct {p5, v0}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object p5, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    const/4 p5, 0x0

    .line 175
    iput-boolean p5, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mRecoveryTriggered:Z

    .line 191
    iput-boolean p5, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mNetworkCheckTimerStarted:Z

    const-wide/16 v0, 0x0

    .line 238
    iput-wide v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mPredictWaitingMillis:J

    .line 405
    new-instance p5, Lcom/android/internal/telephony/data/DataStallRecoveryManager$4;

    invoke-direct {p5, p0, p0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager$4;-><init>(Lcom/android/internal/telephony/data/DataStallRecoveryManager;Landroid/os/Handler;)V

    iput-object p5, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mContentObserver:Landroid/database/ContentObserver;

    .line 281
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 282
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "DSRM-"

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    iput-object p5, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mLogTag:Ljava/lang/String;

    .line 283
    const-string p5, "DataStallRecoveryManager created."

    invoke-direct {p0, p5}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->log(Ljava/lang/String;)V

    .line 284
    iput-object p2, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

    .line 285
    iput-object p3, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mWwanDataServiceManager:Lcom/android/internal/telephony/data/DataServiceManager;

    .line 286
    iput-object p4, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 287
    invoke-virtual {p2}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataConfigManager()Lcom/android/internal/telephony/data/DataConfigManager;

    move-result-object p3

    iput-object p3, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    .line 289
    invoke-virtual {p2}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataSettingsManager()Lcom/android/internal/telephony/data/DataSettingsManager;

    move-result-object p3

    new-instance p5, Lcom/android/internal/telephony/data/DataStallRecoveryManager$1;

    new-instance v0, Lcom/android/internal/telephony/data/DataStallRecoveryManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/data/DataStallRecoveryManager;)V

    invoke-direct {p5, p0, v0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager$1;-><init>(Lcom/android/internal/telephony/data/DataStallRecoveryManager;Ljava/util/concurrent/Executor;)V

    .line 290
    invoke-virtual {p3, p5}, Lcom/android/internal/telephony/data/DataSettingsManager;->registerCallback(Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;)V

    .line 300
    iput-object p6, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mDataStallRecoveryManagerCallback:Lcom/android/internal/telephony/data/DataStallRecoveryManager$DataStallRecoveryManagerCallback;

    .line 301
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getRadioPowerState()I

    move-result p3

    iput p3, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mRadioPowerState:I

    .line 302
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->updateDataStallRecoveryConfigs()V

    .line 304
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->registerAllEvents()V

    .line 306
    new-instance p3, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;

    invoke-direct {p3, p1, p4, p2}, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;Lcom/android/internal/telephony/data/DataNetworkController;)V

    iput-object p3, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mStats:Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;

    return-void
.end method

.method private blacklist broadcastDataStallDetected(I)V
    .registers 12

    .line 692
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "broadcastDataStallDetected recoveryAction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->log(Ljava/lang/String;)V

    .line 693
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DATA_STALL_DETECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 694
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 695
    const-string v1, "recoveryAction"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 698
    iget-boolean v1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mDataStalled:Z

    xor-int/lit8 v4, v1, 0x1

    .line 699
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v5, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mDataStallStartMs:J

    sub-long/2addr v1, v5

    long-to-int v5, v1

    .line 700
    iget-boolean v1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mIsValidNetwork:Z

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->getRecoveredReason(Z)I

    move-result v6

    .line 701
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->getDurationOfCurrentRecoveryMs()J

    move-result-wide v1

    long-to-int v9, v1

    .line 702
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mValidationCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mValidationCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mActionValidationCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mActionValidationCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->log(Ljava/lang/String;)V

    .line 706
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mStats:Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;

    iget v7, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mValidationCount:I

    iget v8, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mActionValidationCount:I

    move v3, p1

    invoke-virtual/range {v2 .. v9}, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->getDataStallRecoveryMetricsData(IZIIIII)Landroid/os/Bundle;

    move-result-object p1

    .line 711
    const-string v1, "EXTRA_DSRS_STATS_BUNDLE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 714
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method private blacklist cancelNetworkCheckTimer()V
    .registers 2

    .line 766
    const-string v0, "cancelNetworkCheckTimer()"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->log(Ljava/lang/String;)V

    .line 767
    iget-boolean v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mNetworkCheckTimerStarted:Z

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    .line 768
    iput-boolean v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mNetworkCheckTimerStarted:Z

    const/4 v0, 0x1

    .line 769
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_10
    return-void
.end method

.method private blacklist cleanUpDataNetwork()V
    .registers 2

    .line 729
    const-string v0, "cleanUpDataNetwork: notify clean up data network"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->log(Ljava/lang/String;)V

    .line 730
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mDataStallRecoveryManagerCallback:Lcom/android/internal/telephony/data/DataStallRecoveryManager$DataStallRecoveryManagerCallback;

    .line 731
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/internal/telephony/data/DataStallRecoveryManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/telephony/data/DataStallRecoveryManager$DataStallRecoveryManagerCallback;)V

    .line 730
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method private blacklist doRecovery()V
    .registers 5

    .line 958
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->getRecoveryAction()I

    move-result v0

    .line 959
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v1

    .line 961
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 962
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeSignalStrengthEvent(II)V

    .line 963
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeDataStallEvent(II)V

    .line 964
    iput v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mLastAction:I

    const/4 v1, 0x0

    .line 965
    iput-boolean v1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mLastActionReported:Z

    .line 966
    iput-boolean v1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mNetworkCheckTimerStarted:Z

    .line 967
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mTimeElapsedOfCurrentAction:J

    const/4 v1, 0x1

    if-eqz v0, :cond_81

    const/4 v2, 0x3

    if-eq v0, v1, :cond_75

    const/4 v3, 0x4

    if-eq v0, v2, :cond_69

    if-ne v0, v3, :cond_4e

    .line 986
    const-string v0, "doRecovery(): modem reset"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->logl(Ljava/lang/String;)V

    .line 987
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->rebootModem()V

    .line 988
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->resetAction()V

    .line 989
    iput-boolean v1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mIsAttemptedAllSteps:Z

    goto :goto_8c

    .line 992
    :cond_4e
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doRecovery: Invalid recoveryAction = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 994
    invoke-static {v0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->recoveryActionToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 981
    :cond_69
    const-string v0, "doRecovery(): restarting radio"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->logl(Ljava/lang/String;)V

    .line 982
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->setRecoveryAction(I)V

    .line 983
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->powerOffRadio()V

    goto :goto_8c

    .line 976
    :cond_75
    const-string v0, "doRecovery(): cleanup all connections"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->logl(Ljava/lang/String;)V

    .line 977
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->cleanUpDataNetwork()V

    .line 978
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->setRecoveryAction(I)V

    goto :goto_8c

    .line 971
    :cond_81
    const-string v0, "doRecovery(): get data call list"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->logl(Ljava/lang/String;)V

    .line 972
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->getDataCallList()V

    .line 973
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->setRecoveryAction(I)V

    .line 997
    :goto_8c
    iget v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mLastAction:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->startNetworkCheckTimer(I)V

    return-void
.end method

.method private blacklist getDataCallList()V
    .registers 2

    .line 723
    const-string v0, "getDataCallList: request data call list"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->log(Ljava/lang/String;)V

    .line 724
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mWwanDataServiceManager:Lcom/android/internal/telephony/data/DataServiceManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataServiceManager;->requestDataCallList(Landroid/os/Message;)V

    return-void
.end method

.method private blacklist getDurationOfCurrentRecoveryMs()J
    .registers 5

    .line 683
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mTimeElapsedOfCurrentAction:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private blacklist getElapsedTimeSinceRecoveryMs()J
    .registers 5

    .line 674
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mTimeLastRecoveryStartMs:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private blacklist getRecoveredReason(Z)I
    .registers 4

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return p0

    .line 943
    :cond_4
    iget-boolean p1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mRadioStateChangedDuringDataStall:Z

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eqz p1, :cond_15

    .line 944
    iget p1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mLastAction:I

    if-gt p1, v1, :cond_f

    const/4 v1, 0x2

    .line 947
    :cond_f
    iget-boolean p0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mIsAirPlaneModeEnableDuringDataStall:Z

    if-eqz p0, :cond_14

    return v0

    :cond_14
    return v1

    .line 950
    :cond_15
    iget-boolean p0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mMobileDataChangedToEnabledDuringDataStall:Z

    if-eqz p0, :cond_1a

    return v0

    :cond_1a
    return v1
.end method

.method private blacklist isAnyPhoneNetworkScanStarted()Z
    .registers 8

    .line 839
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    if-ge v3, v1, :cond_3a

    aget-object v4, v0, v3

    .line 840
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NetworkScanStarted: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getNetworkScanStarted()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " on phone"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 841
    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 840
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->logl(Ljava/lang/String;)V

    .line 842
    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getNetworkScanStarted()Z

    move-result v4

    if-eqz v4, :cond_37

    const/4 p0, 0x1

    return p0

    :cond_37
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_3a
    return v2
.end method

.method private blacklist isPhoneStateIdle()Z
    .registers 8

    .line 856
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    if-ge v3, v1, :cond_3b

    aget-object v4, v0, v3

    .line 857
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Phone State: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " on phone"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->logl(Ljava/lang/String;)V

    .line 858
    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v4, v5, :cond_38

    return v2

    :cond_38
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_3b
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist isRecoveryAlreadyStarted()Z
    .registers 2

    .line 665
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->getRecoveryAction()I

    move-result v0

    if-nez v0, :cond_d

    iget-boolean p0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mRecoveryTriggered:Z

    if-eqz p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    return p0

    :cond_d
    :goto_d
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist isRecoveryNeeded(Z)Z
    .registers 8

    .line 782
    const-string v0, "enter: isRecoveryNeeded()"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->logv(Ljava/lang/String;)V

    .line 785
    iget-boolean v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mIsValidNetwork:Z

    const/4 v1, 0x0

    if-nez v0, :cond_16

    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->isRecoveryAlreadyStarted()Z

    move-result v0

    if-nez v0, :cond_16

    .line 786
    const-string p1, "skip when network still remains invalid and recovery was not started yet"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->logl(Ljava/lang/String;)V

    return v1

    .line 791
    :cond_16
    iget-boolean v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mIsAttemptedAllSteps:Z

    if-eqz v0, :cond_20

    .line 792
    const-string p1, "skip retrying continue recovery action"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->logl(Ljava/lang/String;)V

    return v1

    .line 797
    :cond_20
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->getElapsedTimeSinceRecoveryMs()J

    move-result-wide v2

    iget v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mLastAction:I

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->getDataStallRecoveryDelayMillis(I)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gez v0, :cond_36

    if-eqz p1, :cond_36

    .line 799
    const-string p1, "skip back to back data stall recovery"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->logl(Ljava/lang/String;)V

    return v1

    .line 804
    :cond_36
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->isPhoneStateIdle()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_49

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->getRecoveryAction()I

    move-result p1

    if-le p1, v0, :cond_49

    .line 805
    const-string p1, "skip data stall recovery as there is an active call"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->logl(Ljava/lang/String;)V

    return v1

    .line 810
    :cond_49
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->isAnyPhoneNetworkScanStarted()Z

    move-result p1

    if-eqz p1, :cond_55

    .line 811
    const-string p1, "skip data stall recovery as network scan started"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->logl(Ljava/lang/String;)V

    return v1

    .line 816
    :cond_55
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result p1

    if-gt p1, v0, :cond_67

    .line 817
    const-string p1, "skip data stall recovery as in poor signal condition"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->logl(Ljava/lang/String;)V

    return v1

    .line 821
    :cond_67
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->isInternetDataAllowed(Z)Z

    move-result p1

    if-nez p1, :cond_75

    .line 822
    const-string p1, "skip data stall recovery as data not allowed."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->logl(Ljava/lang/String;)V

    return v1

    .line 826
    :cond_75
    iget-boolean p1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mIsInternetNetworkConnected:Z

    if-nez p1, :cond_7f

    .line 827
    const-string p1, "skip data stall recovery as data not connected"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->logl(Ljava/lang/String;)V

    return v1

    :cond_7f
    return v0
.end method

.method private blacklist log(Ljava/lang/String;)V
    .registers 2

    .line 1056
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mLogTag:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist loge(Ljava/lang/String;)V
    .registers 2

    .line 1074
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mLogTag:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist logl(Ljava/lang/String;)V
    .registers 2

    .line 1083
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->log(Ljava/lang/String;)V

    .line 1084
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist logv(Ljava/lang/String;)V
    .registers 2

    .line 0
    return-void
.end method

.method private blacklist onCarrierConfigUpdated()V
    .registers 1

    .line 531
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->updateDataStallRecoveryConfigs()V

    return-void
.end method

.method private blacklist onInternetValidationStatusChanged(I)V
    .registers 6

    .line 573
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onInternetValidationStatusChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataUtils;->validationStatusToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->logl(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1e

    move p1, v1

    goto :goto_1f

    :cond_1e
    move p1, v0

    .line 575
    :goto_1f
    iget v2, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mValidationCount:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mValidationCount:I

    .line 576
    iget v2, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mActionValidationCount:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mActionValidationCount:I

    .line 577
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->setNetworkValidationState(Z)V

    if-eqz p1, :cond_37

    .line 580
    iget p1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mLastAction:I

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->broadcastDataStallDetected(I)V

    .line 581
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->reset()V

    return-void

    .line 582
    :cond_37
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->isRecoveryNeeded(Z)Z

    move-result p1

    if-eqz p1, :cond_51

    .line 584
    iput-boolean v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mIsValidNetwork:Z

    .line 585
    const-string p1, "trigger data stall recovery"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->log(Ljava/lang/String;)V

    .line 586
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mTimeLastRecoveryStartMs:J

    .line 587
    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_51
    return-void
.end method

.method private blacklist onMobileDataEnabledChanged(Z)V
    .registers 4

    .line 540
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMobileDataEnabledChanged: DataEnabled:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",DataStalled:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mDataStalled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->logl(Ljava/lang/String;)V

    .line 543
    iget-boolean v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mDataStalled:Z

    if-eqz v0, :cond_2c

    if-eqz p1, :cond_2c

    const/4 p1, 0x1

    .line 544
    iput-boolean p1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mMobileDataChangedToEnabledDuringDataStall:Z

    .line 545
    iget p1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mLastAction:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->setRecoveryAction(I)V

    :cond_2c
    return-void
.end method

.method private blacklist powerOffRadio()V
    .registers 2

    .line 736
    const-string v0, "powerOffRadio: Restart radio"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->log(Ljava/lang/String;)V

    .line 737
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->powerOffRadioSafely()V

    return-void
.end method

.method private static blacklist radioPowerStateToString(I)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_25

    const/4 v0, 0x1

    if-eq p0, v0, :cond_22

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1f

    .line 1029
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1028
    :cond_1f
    const-string p0, "RADIO_POWER_UNAVAILABLE"

    return-object p0

    .line 1027
    :cond_22
    const-string p0, "RADIO_POWER_ON"

    return-object p0

    .line 1026
    :cond_25
    const-string p0, "RADIO_POWER_OFF"

    return-object p0
.end method

.method private blacklist rebootModem()V
    .registers 2

    .line 742
    const-string v0, "rebootModem: reboot modem"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->log(Ljava/lang/String;)V

    .line 743
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/Phone;->rebootModem(Landroid/os/Message;)V

    return-void
.end method

.method private static blacklist recoveredReasonToString(I)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_2b

    const/4 v0, 0x1

    if-eq p0, v0, :cond_28

    const/4 v0, 0x2

    if-eq p0, v0, :cond_25

    const/4 v0, 0x3

    if-eq p0, v0, :cond_22

    .line 1013
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1012
    :cond_22
    const-string p0, "RECOVERED_REASON_USER"

    return-object p0

    .line 1011
    :cond_25
    const-string p0, "RECOVERED_REASON_MODEM"

    return-object p0

    .line 1010
    :cond_28
    const-string p0, "RECOVERED_REASON_DSRM"

    return-object p0

    .line 1009
    :cond_2b
    const-string p0, "RECOVERED_REASON_NONE"

    return-object p0
.end method

.method private static blacklist recoveryActionToString(I)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_2b

    const/4 v0, 0x1

    if-eq p0, v0, :cond_28

    const/4 v0, 0x3

    if-eq p0, v0, :cond_25

    const/4 v0, 0x4

    if-eq p0, v0, :cond_22

    .line 1046
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1045
    :cond_22
    const-string p0, "RECOVERY_ACTION_RESET_MODEM"

    return-object p0

    .line 1044
    :cond_25
    const-string p0, "RECOVERY_ACTION_RADIO_RESTART"

    return-object p0

    .line 1043
    :cond_28
    const-string p0, "RECOVERY_ACTION_CLEANUP"

    return-object p0

    .line 1042
    :cond_2b
    const-string p0, "RECOVERY_ACTION_GET_DATA_CALL_LIST"

    return-object p0
.end method

.method private blacklist registerAllEvents()V
    .registers 5

    .line 311
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    new-instance v1, Lcom/android/internal/telephony/data/DataStallRecoveryManager$2;

    new-instance v2, Lcom/android/internal/telephony/data/DataStallRecoveryManager$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/data/DataStallRecoveryManager;)V

    invoke-direct {v1, p0, v2}, Lcom/android/internal/telephony/data/DataStallRecoveryManager$2;-><init>(Lcom/android/internal/telephony/data/DataStallRecoveryManager;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/DataConfigManager;->registerCallback(Lcom/android/internal/telephony/data/DataConfigManager$DataConfigManagerCallback;)V

    .line 317
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

    new-instance v1, Lcom/android/internal/telephony/data/DataStallRecoveryManager$3;

    new-instance v2, Lcom/android/internal/telephony/data/DataStallRecoveryManager$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/data/DataStallRecoveryManager;)V

    invoke-direct {v1, p0, v2}, Lcom/android/internal/telephony/data/DataStallRecoveryManager$3;-><init>(Lcom/android/internal/telephony/data/DataStallRecoveryManager;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->registerDataNetworkControllerCallback(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V

    .line 348
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 351
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->CONTENT_URL_DSRM_ENABLED_ACTIONS:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mContentObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 353
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->CONTENT_URL_DSRM_DURATION_MILLIS:Landroid/net/Uri;

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private blacklist reset()V
    .registers 4

    const/4 v0, 0x1

    .line 553
    iput-boolean v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mIsValidNetwork:Z

    const/4 v0, 0x0

    .line 554
    iput-boolean v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mRecoveryTriggered:Z

    .line 555
    iput-boolean v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mIsAttemptedAllSteps:Z

    .line 556
    iput-boolean v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mRadioStateChangedDuringDataStall:Z

    .line 557
    iput-boolean v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mIsAirPlaneModeEnableDuringDataStall:Z

    .line 558
    iput-boolean v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mMobileDataChangedToEnabledDuringDataStall:Z

    .line 559
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->cancelNetworkCheckTimer()V

    const-wide/16 v1, 0x0

    .line 560
    iput-wide v1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mTimeLastRecoveryStartMs:J

    .line 561
    iput v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mLastAction:I

    .line 562
    iput v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mRecoveryAction:I

    .line 563
    iput v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mValidationCount:I

    .line 564
    iput v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mActionValidationCount:I

    return-void
.end method

.method private blacklist resetAction()V
    .registers 3

    const-wide/16 v0, 0x0

    .line 593
    iput-wide v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mTimeLastRecoveryStartMs:J

    const/4 v0, 0x0

    .line 594
    iput-boolean v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mMobileDataChangedToEnabledDuringDataStall:Z

    .line 595
    iput-boolean v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mRadioStateChangedDuringDataStall:Z

    .line 596
    iput-boolean v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mIsAirPlaneModeEnableDuringDataStall:Z

    .line 597
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->setRecoveryAction(I)V

    return-void
.end method

.method private blacklist setNetworkValidationState(Z)V
    .registers 14

    .line 876
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->getRecoveredReason(Z)I

    move-result v4

    if-eqz p1, :cond_c

    .line 878
    iget-boolean v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mDataStalled:Z

    if-nez v0, :cond_c

    goto/16 :goto_da

    .line 882
    :cond_c
    iget-boolean v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mDataStalled:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_39

    .line 885
    iput-boolean v1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mDataStalled:Z

    .line 887
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mDataStallStartMs:J

    .line 888
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data stall: start time = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mDataStallStartMs:J

    invoke-static {v5, v6}, Lcom/android/internal/telephony/data/DataUtils;->elapsedTimeToString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->logl(Ljava/lang/String;)V

    move v3, v1

    move v7, v3

    move v0, v2

    move v5, v0

    goto :goto_4f

    .line 889
    :cond_39
    iget-boolean v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mLastActionReported:Z

    if-nez v0, :cond_4b

    .line 892
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mDataStallStartMs:J

    sub-long/2addr v5, v7

    long-to-int v0, v5

    .line 893
    iput-boolean v1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mLastActionReported:Z

    move v3, v1

    move v5, v3

    move v7, v2

    goto :goto_4f

    :cond_4b
    move v0, v2

    move v3, v0

    move v5, v3

    move v7, v5

    :goto_4f
    if-eqz p1, :cond_5f

    .line 900
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mDataStallStartMs:J

    sub-long/2addr v8, v10

    long-to-int v0, v8

    .line 901
    iput-boolean v2, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mLastActionReported:Z

    .line 902
    iput-boolean v2, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mDataStalled:Z

    :goto_5d
    move v3, v0

    goto :goto_61

    :cond_5f
    move v1, v3

    goto :goto_5d

    :goto_61
    if-eqz v1, :cond_da

    .line 907
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->getRecoveryAction()I

    move-result v0

    if-lez v0, :cond_6d

    iget-boolean v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mIsAttemptedAllSteps:Z

    if-eqz v0, :cond_72

    :cond_6d
    iget v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mLastAction:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_77

    .line 910
    :cond_72
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->getDurationOfCurrentRecoveryMs()J

    move-result-wide v0

    long-to-int v2, v0

    :cond_77
    move v6, v2

    .line 912
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mStats:Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;

    iget v1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mLastAction:I

    move v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->uploadMetrics(IZIIZI)V

    .line 915
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "data stall: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v7, :cond_8f

    .line 917
    const-string v0, "start"

    goto :goto_96

    :cond_8f
    if-nez v2, :cond_94

    const-string v0, "in process"

    goto :goto_96

    :cond_94
    const-string v0, "end"

    :goto_96
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", lastaction="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mLastAction:I

    .line 919
    invoke-static {v0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->recoveryActionToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", isRecovered="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", reason="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 923
    invoke-static {v4}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->recoveredReasonToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", isFirstValidationAfterDoRecovery="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", TimeDuration="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", TimeDurationForCurrentRecoveryAction="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 915
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->logl(Ljava/lang/String;)V

    :cond_da
    :goto_da
    return-void
.end method

.method private blacklist startNetworkCheckTimer(I)V
    .registers 5

    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    goto :goto_39

    .line 754
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startNetworkCheckTimer(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->getDataStallRecoveryDelayMillis(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->log(Ljava/lang/String;)V

    .line 755
    iget-boolean v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mNetworkCheckTimerStarted:Z

    if-nez v0, :cond_39

    const/4 v0, 0x1

    .line 756
    iput-boolean v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mNetworkCheckTimerStarted:Z

    .line 757
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mTimeLastRecoveryStartMs:J

    .line 759
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 760
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->getDataStallRecoveryDelayMillis(I)J

    move-result-wide v1

    .line 758
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_39
    :goto_39
    return-void
.end method

.method private blacklist updateDataStallRecoveryConfigs()V
    .registers 2

    .line 499
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataConfigManager;->getDataStallRecoveryDelayMillis()[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mDataStallRecoveryDelayMillisArray:[J

    .line 500
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataConfigManager;->getDataStallRecoveryShouldSkipArray()[Z

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mSkipRecoveryActionArray:[Z

    .line 503
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->updateGlobalConfigActions()V

    .line 504
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->updateGlobalConfigDurations()V

    return-void
.end method

.method private blacklist updateGlobalConfigActions()V
    .registers 7

    .line 431
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 432
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dsrm_enabled_actions"

    .line 431
    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 435
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_65

    .line 436
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 437
    array-length v1, v0

    new-array v2, v1, [Z

    const/4 v3, 0x0

    move v4, v3

    :goto_21
    if-ge v4, v1, :cond_32

    .line 439
    aget-object v5, v0, v4

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    aput-boolean v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    .line 442
    :cond_32
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mSkipRecoveryActionArray:[Z

    array-length v0, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_39
    if-ge v3, v0, :cond_46

    .line 447
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mSkipRecoveryActionArray:[Z

    aget-boolean v4, v2, v3

    xor-int/lit8 v4, v4, 0x1

    aput-boolean v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_39

    .line 449
    :cond_46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SkipRecoveryAction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mSkipRecoveryActionArray:[Z

    .line 450
    invoke-static {v1}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 449
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->log(Ljava/lang/String;)V

    const-wide/16 v0, 0x3e8

    .line 451
    iput-wide v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mPredictWaitingMillis:J

    return-void

    :cond_65
    const-wide/16 v0, 0x0

    .line 453
    iput-wide v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mPredictWaitingMillis:J

    .line 454
    const-string v0, "Enabled actions is null"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist updateGlobalConfigDurations()V
    .registers 10

    .line 464
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 465
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dsrm_duration_millis"

    .line 464
    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 468
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-wide/16 v2, 0x0

    if-nez v1, :cond_67

    .line 469
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 470
    array-length v1, v0

    new-array v4, v1, [J

    const/4 v5, 0x0

    move v6, v5

    :goto_23
    if-ge v6, v1, :cond_3c

    .line 473
    :try_start_25
    aget-object v7, v0, v6

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    aput-wide v7, v4, v6
    :try_end_31
    .catch Ljava/lang/NumberFormatException; {:try_start_25 .. :try_end_31} :catch_34

    add-int/lit8 v6, v6, 0x1

    goto :goto_23

    .line 475
    :catch_34
    iput-wide v2, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mPredictWaitingMillis:J

    .line 476
    const-string v0, "Parsing duration millis error"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->loge(Ljava/lang/String;)V

    return-void

    .line 481
    :cond_3c
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mDataStallRecoveryDelayMillisArray:[J

    array-length v0, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 486
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mDataStallRecoveryDelayMillisArray:[J

    invoke-static {v4, v5, v1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 488
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataStallRecoveryDelayMillis: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mDataStallRecoveryDelayMillisArray:[J

    .line 489
    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 488
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->log(Ljava/lang/String;)V

    const-wide/16 v0, 0x3e8

    .line 490
    iput-wide v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mPredictWaitingMillis:J

    return-void

    .line 492
    :cond_67
    iput-wide v2, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mPredictWaitingMillis:J

    .line 493
    const-string v0, "Duration millis is null"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->log(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    .line 1095
    new-instance v0, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1096
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/internal/telephony/data/DataStallRecoveryManager;

    .line 1097
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1096
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1098
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1100
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsValidNetwork="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mIsValidNetwork:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1101
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsInternetNetworkConnected="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mIsInternetNetworkConnected:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1102
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsAirPlaneModeEnableDuringDataStall="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mIsAirPlaneModeEnableDuringDataStall:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1103
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDataStalled="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mDataStalled:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1104
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLastAction="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mLastAction:I

    invoke-static {v1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->recoveryActionToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1105
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsAttemptedAllSteps="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mIsAttemptedAllSteps:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1106
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDataStallStartMs="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mDataStallStartMs:J

    invoke-static {v1, v2}, Lcom/android/internal/telephony/data/DataUtils;->elapsedTimeToString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1107
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mRadioPowerState="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mRadioPowerState:I

    invoke-static {v1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->radioPowerStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1108
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLastActionReported="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mLastActionReported:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1109
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTimeLastRecoveryStartMs="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mTimeLastRecoveryStartMs:J

    .line 1110
    invoke-static {v1, v2}, Lcom/android/internal/telephony/data/DataUtils;->elapsedTimeToString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1109
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1111
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRecoveryAction()="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->getRecoveryAction()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->recoveryActionToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1112
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mRadioStateChangedDuringDataStall="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mRadioStateChangedDuringDataStall:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1113
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mMobileDataChangedToEnabledDuringDataStall="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mMobileDataChangedToEnabledDuringDataStall:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1116
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPredictWaitingMillis="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mPredictWaitingMillis:J

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1117
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataStallRecoveryDelayMillisArray="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mDataStallRecoveryDelayMillisArray:[J

    .line 1119
    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1117
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1120
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SkipRecoveryActionArray="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mSkipRecoveryActionArray:[Z

    invoke-static {v1}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1121
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1122
    const-string p2, ""

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1124
    const-string p2, "Local logs:"

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1125
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1126
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1127
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1128
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    return-void
.end method

.method public blacklist getContentObserver()Landroid/database/ContentObserver;
    .registers 1

    .line 422
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mContentObserver:Landroid/database/ContentObserver;

    return-object p0
.end method

.method public blacklist getDataStallRecoveryDelayMillis(I)J
    .registers 2

    .line 515
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mDataStallRecoveryDelayMillisArray:[J

    aget-wide p0, p0, p1

    return-wide p0
.end method

.method public blacklist getRecoveryAction()I
    .registers 3

    .line 608
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRecoveryAction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mRecoveryAction:I

    invoke-static {v1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->recoveryActionToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->log(Ljava/lang/String;)V

    .line 609
    iget p0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mRecoveryAction:I

    return p0
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->logv(Ljava/lang/String;)V

    .line 361
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_6f

    if-eq v0, v2, :cond_6b

    const/4 v2, 0x3

    if-eq v0, v2, :cond_43

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3f

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3b

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected message = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->loge(Ljava/lang/String;)V

    return-void

    .line 397
    :cond_3b
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->updateGlobalConfigDurations()V

    return-void

    .line 394
    :cond_3f
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->updateGlobalConfigActions()V

    return-void

    .line 380
    :cond_43
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getRadioPowerState()I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mRadioPowerState:I

    .line 381
    iget-boolean p1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mDataStalled:Z

    if-eqz p1, :cond_6a

    .line 383
    iput-boolean v3, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mRadioStateChangedDuringDataStall:Z

    .line 384
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 385
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "airplane_mode_on"

    .line 384
    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_65

    .line 388
    iput-boolean v3, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mIsAirPlaneModeEnableDuringDataStall:Z

    .line 390
    :cond_65
    iget p1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mLastAction:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->setRecoveryAction(I)V

    :cond_6a
    return-void

    .line 377
    :cond_6b
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->doRecovery()V

    return-void

    .line 363
    :cond_6f
    iput-boolean v3, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mRecoveryTriggered:Z

    .line 365
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->isRecoveryNeeded(Z)Z

    move-result p1

    if-nez p1, :cond_82

    .line 366
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->cancelNetworkCheckTimer()V

    .line 367
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->getRecoveryAction()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->startNetworkCheckTimer(I)V

    return-void

    .line 371
    :cond_82
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->getRecoveryAction()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->broadcastDataStallDetected(I)V

    .line 374
    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    iget-wide v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mPredictWaitingMillis:J

    .line 373
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public blacklist setRecoveryAction(I)V
    .registers 5

    .line 620
    iget v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mRecoveryAction:I

    if-eq v0, p1, :cond_7

    const/4 v0, 0x0

    .line 621
    iput v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mActionValidationCount:I

    .line 623
    :cond_7
    iput p1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mRecoveryAction:I

    .line 628
    iget-boolean v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mMobileDataChangedToEnabledDuringDataStall:Z

    const/4 v1, 0x3

    if-eqz v0, :cond_12

    if-ge p1, v1, :cond_12

    .line 630
    iput v1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mRecoveryAction:I

    .line 634
    :cond_12
    iget-boolean p1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mRadioStateChangedDuringDataStall:Z

    const/4 v0, 0x4

    const/4 v2, 0x1

    if-eqz p1, :cond_1e

    iget p1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mRadioPowerState:I

    if-ne p1, v2, :cond_1e

    .line 636
    iput v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mRecoveryAction:I

    .line 639
    :cond_1e
    iget p1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mRecoveryAction:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->shouldSkipRecoveryAction(I)Z

    move-result p1

    if-eqz p1, :cond_40

    .line 640
    iget p1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mRecoveryAction:I

    if-eqz p1, :cond_3d

    if-eq p1, v2, :cond_39

    if-eq p1, v1, :cond_35

    if-eq p1, v0, :cond_31

    goto :goto_40

    .line 651
    :cond_31
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->resetAction()V

    goto :goto_40

    .line 648
    :cond_35
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->setRecoveryAction(I)V

    goto :goto_40

    .line 645
    :cond_39
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->setRecoveryAction(I)V

    goto :goto_40

    .line 642
    :cond_3d
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->setRecoveryAction(I)V

    .line 656
    :cond_40
    :goto_40
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setRecoveryAction: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mRecoveryAction:I

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->recoveryActionToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist shouldSkipRecoveryAction(I)Z
    .registers 2

    .line 526
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mSkipRecoveryActionArray:[Z

    aget-boolean p0, p0, p1

    return p0
.end method

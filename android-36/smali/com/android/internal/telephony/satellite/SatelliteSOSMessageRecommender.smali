.class public Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;
.super Landroid/os/Handler;
.source "SatelliteSOSMessageRecommender.java"


# static fields
.field protected static final blacklist EVENT_SERVICE_STATE_CHANGED:I = 0x2

.field protected static final blacklist EVENT_TIME_OUT:I = 0x3


# instance fields
.field private blacklist mCheckingAccessRestrictionInProgress:Z

.field private final blacklist mContext:Landroid/content/Context;

.field protected blacklist mCountOfTimerStarted:I

.field private final blacklist mCountryDetector:Lcom/android/internal/telephony/TelephonyCountryDetector;

.field private blacklist mEmergencyConnection:Landroid/telecom/Connection;

.field private final blacklist mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

.field private final blacklist mISatelliteProvisionStateCallback:Landroid/telephony/satellite/ISatelliteProvisionStateCallback;

.field private blacklist mImsManager:Lcom/android/ims/ImsManager;

.field private blacklist mImsRegistrationCallbacks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/telephony/ims/RegistrationManager$RegistrationCallback;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mIsSatelliteAllowedForCurrentLocation:Z

.field protected final blacklist mIsSatelliteConnectedViaCarrierWithinHysteresisTime:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private blacklist mIsTestEmergencyNumber:Z

.field private blacklist mIsTimerTimedOut:Z

.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mOemEnabledTimeoutMillis:J

.field private blacklist mPersistentLogger:Landroid/telephony/PersistentLogger;

.field private final blacklist mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

.field protected final blacklist mSubIdOfSatelliteConnectedViaCarrierWithinHysteresisTime:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected blacklist mTimeoutMillis:J


# direct methods
.method public static synthetic blacklist $r8$lambda$toKpsHS4Qch5xJf8TS919lktfcg(I)Z
    .registers 3

    .line 0
    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eq p0, v0, :cond_b

    if-eq p0, v1, :cond_b

    if-nez p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    return p0

    :cond_b
    :goto_b
    return v1
.end method

.method static bridge synthetic blacklist -$$Nest$mplogd(Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->plogd(Ljava/lang/String;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .registers 5

    .line 142
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteController;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/telephony/satellite/SatelliteController;Lcom/android/ims/ImsManager;)V

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/telephony/satellite/SatelliteController;Lcom/android/ims/ImsManager;)V
    .registers 8

    .line 159
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p2, 0x0

    .line 110
    iput-object p2, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mEmergencyConnection:Landroid/telecom/Connection;

    .line 113
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mImsRegistrationCallbacks:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 115
    iput-boolean v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mIsSatelliteAllowedForCurrentLocation:Z

    .line 117
    iput-boolean v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mCheckingAccessRestrictionInProgress:Z

    const-wide/16 v1, 0x0

    .line 119
    iput-wide v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mTimeoutMillis:J

    .line 121
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mIsSatelliteConnectedViaCarrierWithinHysteresisTime:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 123
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mSubIdOfSatelliteConnectedViaCarrierWithinHysteresisTime:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 125
    iput-boolean v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mIsTimerTimedOut:Z

    .line 127
    iput v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mCountOfTimerStarted:I

    .line 128
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mLock:Ljava/lang/Object;

    .line 130
    iput-object p2, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mPersistentLogger:Landroid/telephony/PersistentLogger;

    .line 132
    iput-boolean v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mIsTestEmergencyNumber:Z

    .line 160
    invoke-static {p1}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->getPersistentLogger(Landroid/content/Context;)Landroid/telephony/PersistentLogger;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mPersistentLogger:Landroid/telephony/PersistentLogger;

    .line 161
    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mContext:Landroid/content/Context;

    .line 162
    iput-object p3, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    .line 163
    invoke-virtual {p3}, Lcom/android/internal/telephony/satellite/SatelliteController;->getFeatureFlags()Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 164
    invoke-static {p1, p2}, Lcom/android/internal/telephony/TelephonyCountryDetector;->getInstance(Landroid/content/Context;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)Lcom/android/internal/telephony/TelephonyCountryDetector;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mCountryDetector:Lcom/android/internal/telephony/TelephonyCountryDetector;

    .line 165
    iput-object p4, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mImsManager:Lcom/android/ims/ImsManager;

    .line 167
    invoke-static {p1}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->getOemEnabledEmergencyCallWaitForConnectionTimeoutMillis(Landroid/content/Context;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mOemEnabledTimeoutMillis:J

    .line 168
    new-instance p1, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender$1;

    invoke-direct {p1, p0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender$1;-><init>(Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;)V

    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mISatelliteProvisionStateCallback:Landroid/telephony/satellite/ISatelliteProvisionStateCallback;

    return-void
.end method

.method private blacklist cleanUpResources(Z)V
    .registers 3

    .line 452
    const-string v0, "cleanUpResources"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->plogd(Ljava/lang/String;)V

    .line 453
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->reportESosRecommenderDecision(Z)V

    .line 454
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 455
    :try_start_b
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->stopTimer()V

    .line 456
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mEmergencyConnection:Landroid/telecom/Connection;

    if-eqz v0, :cond_18

    .line 457
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->unregisterForInterestedStateChangedEvents()V

    goto :goto_18

    :catchall_16
    move-exception p0

    goto :goto_28

    :cond_18
    :goto_18
    const/4 v0, 0x0

    .line 459
    iput-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mEmergencyConnection:Landroid/telecom/Connection;

    const/4 v0, 0x0

    .line 460
    iput v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mCountOfTimerStarted:I

    .line 461
    iput-boolean v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mIsTimerTimedOut:Z

    .line 462
    iput-boolean v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mCheckingAccessRestrictionInProgress:Z

    .line 463
    iput-boolean v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mIsSatelliteAllowedForCurrentLocation:Z

    .line 464
    iput-boolean v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mIsTestEmergencyNumber:Z

    .line 465
    monitor-exit p1

    return-void

    :goto_28
    monitor-exit p1
    :try_end_29
    .catchall {:try_start_b .. :try_end_29} :catchall_16

    throw p0
.end method

.method private blacklist createExtraBundleForEventDisplayEmergencyMessage(Z)Landroid/os/Bundle;
    .registers 7

    .line 687
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->getEmergencyCallToSatelliteHandoverType()I

    move-result v0

    .line 688
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mContext:Landroid/content/Context;

    .line 689
    invoke-static {v1}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->getOemEnabledSatelliteHandoverAppFromOverlayConfig(Landroid/content/Context;)Landroid/util/Pair;

    move-result-object v1

    .line 690
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 691
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 692
    iget-object v3, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->getSatelliteEmergencyHandoverIntentActionFromOverlayConfig(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_27

    .line 696
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->getDefaultSmsApp()Landroid/content/ComponentName;

    move-result-object v1

    .line 697
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 698
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 700
    :cond_27
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_DISPLAY_EMERGENCY_MESSAGE: handoverType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", packageName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", className="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->plogd(Ljava/lang/String;)V

    .line 703
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 704
    const-string v4, "android.telephony.extra.EMERGENCY_CALL_TO_SATELLITE_HANDOVER_TYPE"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 705
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_72

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_72

    .line 706
    const-string v4, "android.telephony.extra.EMERGENCY_CALL_TO_SATELLITE_LAUNCH_INTENT"

    .line 707
    invoke-direct {p0, v0, v2, v1, p1}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->createHandoverAppLaunchPendingIntent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p0

    .line 706
    invoke-virtual {v3, v4, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_72
    return-object v3
.end method

.method private blacklist createHandoverAppLaunchPendingIntent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;
    .registers 6

    const/4 v0, 0x2

    if-ne p1, v0, :cond_43

    .line 718
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mEmergencyConnection:Landroid/telecom/Connection;

    if-eqz p1, :cond_10

    .line 719
    invoke-virtual {p1}, Landroid/telecom/Connection;->getAddress()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    goto :goto_12

    .line 718
    :cond_10
    const-string p1, "911"

    .line 721
    :goto_12
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "emergencyNumber="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p0, p4}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->plogd(Ljava/lang/String;)V

    .line 723
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "smsto:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 724
    new-instance p4, Landroid/content/Intent;

    const-string v0, "android.intent.action.SENDTO"

    invoke-direct {p4, v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_4e

    .line 726
    :cond_43
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, p4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p4, 0x4000000

    .line 727
    invoke-virtual {p1, p4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object p4, p1

    .line 729
    :goto_4e
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object p1

    const/4 v0, 0x1

    .line 730
    invoke-virtual {p1, v0}, Landroid/app/ActivityOptions;->setPendingIntentCreatorBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    move-result-object p1

    .line 732
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    .line 733
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p2, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p4, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 734
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mContext:Landroid/content/Context;

    const/4 p2, 0x0

    const/high16 p3, 0x44000000    # 512.0f

    invoke-static {p0, p2, p4, p3, p1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method private blacklist evaluateSendingConnectionEventDisplayEmergencyMessage()V
    .registers 6

    .line 323
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 324
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mEmergencyConnection:Landroid/telecom/Connection;

    if-nez v1, :cond_11

    .line 325
    const-string v1, "No emergency call is ongoing..."

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->ploge(Ljava/lang/String;)V

    .line 326
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    goto/16 :goto_c5

    .line 329
    :cond_11
    iget-boolean v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mIsTimerTimedOut:Z

    if-eqz v1, :cond_a3

    iget-boolean v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mCheckingAccessRestrictionInProgress:Z

    if-eqz v1, :cond_1b

    goto/16 :goto_a3

    .line 336
    :cond_1b
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->updateAndGetProvisionState()Z

    .line 343
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->updateSatelliteViaCarrierAvailability()V

    .line 346
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->isCellularAvailable()Z

    move-result v1

    if-nez v1, :cond_5f

    .line 348
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->isSatelliteAllowed()Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 349
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->isDeviceProvisioned()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->isSatelliteAllowedByReasons()Z

    move-result v2

    if-nez v2, :cond_3f

    .line 350
    :cond_39
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->isSatelliteEmergencyMessagingViaCarrierAvailable()Z

    move-result v2

    if-eqz v2, :cond_5f

    :cond_3f
    iget-object v2, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mEmergencyConnection:Landroid/telecom/Connection;

    .line 351
    invoke-virtual {v2}, Landroid/telecom/Connection;->getState()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->shouldTrackCall(I)Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 352
    const-string v2, "handleTimeoutEvent: Sent EVENT_DISPLAY_EMERGENCY_MESSAGE to Dialer"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->plogd(Ljava/lang/String;)V

    .line 353
    iget-boolean v2, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mIsTestEmergencyNumber:Z

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->createExtraBundleForEventDisplayEmergencyMessage(Z)Landroid/os/Bundle;

    move-result-object v2

    .line 355
    iget-object v3, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mEmergencyConnection:Landroid/telecom/Connection;

    const-string v4, "android.telephony.event.DISPLAY_EMERGENCY_MESSAGE"

    invoke-virtual {v3, v4, v2}, Landroid/telecom/Connection;->sendConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 v2, 0x1

    goto :goto_60

    :cond_5f
    const/4 v2, 0x0

    .line 360
    :goto_60
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleTimeoutEvent: isImsRegistered="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->isImsRegistered()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isCellularAvailable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isSatelliteAllowed="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->isSatelliteAllowed()Z

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", shouldTrackCall="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mEmergencyConnection:Landroid/telecom/Connection;

    .line 363
    invoke-virtual {v1}, Landroid/telecom/Connection;->getState()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->shouldTrackCall(I)Z

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 360
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->plogd(Ljava/lang/String;)V

    .line 364
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->cleanUpResources(Z)V

    .line 365
    monitor-exit v0

    return-void

    .line 330
    :cond_a3
    :goto_a3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsTimerTimedOut="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mIsTimerTimedOut:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mCheckingAccessRestrictionInProgress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mCheckingAccessRestrictionInProgress:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->plogd(Ljava/lang/String;)V

    .line 333
    monitor-exit v0

    return-void

    .line 365
    :goto_c5
    monitor-exit v0
    :try_end_c6
    .catchall {:try_start_3 .. :try_end_c6} :catchall_e

    throw p0
.end method

.method private blacklist getBestCellularServiceState()I
    .registers 9

    .line 515
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    move v4, v1

    move v3, v2

    :goto_9
    const/4 v5, 0x2

    if-ge v3, v0, :cond_27

    aget-object v6, p0, v3

    .line 516
    invoke-interface {v6}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v6

    if-eqz v6, :cond_24

    .line 518
    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getState()I

    move-result v7

    .line 519
    invoke-virtual {v6}, Landroid/telephony/ServiceState;->isUsingNonTerrestrialNetwork()Z

    move-result v6

    if-nez v6, :cond_24

    if-nez v7, :cond_21

    return v2

    :cond_21
    if-ne v7, v5, :cond_24

    move v4, v2

    :cond_24
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_27
    if-eqz v4, :cond_2a

    return v1

    :cond_2a
    return v5
.end method

.method private static blacklist getOemEnabledEmergencyCallWaitForConnectionTimeoutMillis(Landroid/content/Context;)J
    .registers 3

    .line 595
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10e0097

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method

.method private static blacklist getOemEnabledSatelliteHandoverAppFromOverlayConfig(Landroid/content/Context;)Landroid/util/Pair;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 607
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10402a4

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_22

    :catch_c
    move-exception p0

    .line 610
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getOemEnabledSatelliteHandoverAppFromOverlayConfig: ex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->loge(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 612
    :goto_22
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_3d

    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->isMockModemAllowed()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 613
    const-string p0, "getOemEnabledSatelliteHandoverAppFromOverlayConfig: Read config_oem_enabled_satellite_sos_handover_app from device config"

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->logd(Ljava/lang/String;)V

    .line 615
    const-string p0, "telephony"

    const-string v0, "config_oem_enabled_satellite_sos_handover_app"

    invoke-static {p0, v0, v1}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 618
    :cond_3d
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_49

    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, v1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 620
    :cond_49
    const-string v0, ";"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 621
    array-length v2, v0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5f

    .line 622
    new-instance p0, Landroid/util/Pair;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-direct {p0, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 624
    :cond_5f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getOemEnabledSatelliteHandoverAppFromOverlayConfig: invalid configured app="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->loge(Ljava/lang/String;)V

    .line 627
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, v1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method private static blacklist getSatelliteEmergencyHandoverIntentActionFromOverlayConfig(Landroid/content/Context;Z)Ljava/lang/String;
    .registers 4

    if-eqz p1, :cond_6

    const p1, 0x10402ca

    goto :goto_9

    :cond_6
    const p1, 0x10402c4

    :goto_9
    const/4 v0, 0x0

    .line 639
    :try_start_a
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_12
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_a .. :try_end_12} :catch_13

    goto :goto_29

    :catch_13
    move-exception p0

    .line 641
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSatelliteEmergencyHandoverIntentFilterActionFromOverlayConfig: ex="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->loge(Ljava/lang/String;)V

    move-object p0, v0

    .line 644
    :goto_29
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_42

    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->isMockModemAllowed()Z

    move-result p1

    if-eqz p1, :cond_42

    .line 645
    const-string p0, "getSatelliteEmergencyHandoverIntentActionFromOverlayConfig: Read config_satellite_emergency_handover_intent_action from device config"

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->logd(Ljava/lang/String;)V

    .line 647
    const-string p0, "telephony"

    const-string p1, "config_satellite_emergency_handover_intent_action"

    invoke-static {p0, p1, v0}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_42
    return-object p0
.end method

.method private blacklist handleCmdSendEventDisplayEmergencyMessageForcefully(Landroid/telecom/Connection;)V
    .registers 4

    .line 758
    const-string v0, "Sent EVENT_DISPLAY_EMERGENCY_MESSAGE to Dialer forcefully."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->plogd(Ljava/lang/String;)V

    .line 759
    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mEmergencyConnection:Landroid/telecom/Connection;

    const/4 v0, 0x1

    .line 760
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->createExtraBundleForEventDisplayEmergencyMessage(Z)Landroid/os/Bundle;

    move-result-object v0

    .line 762
    const-string v1, "android.telephony.event.DISPLAY_EMERGENCY_MESSAGE"

    invoke-virtual {p1, v1, v0}, Landroid/telecom/Connection;->sendConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 763
    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mEmergencyConnection:Landroid/telecom/Connection;

    return-void
.end method

.method private blacklist handleEmergencyCallConnectionStateChangedEvent(Landroid/util/Pair;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 402
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/satellite/SatelliteController;->setLastEmergencyCallTime()V

    .line 403
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mEmergencyConnection:Landroid/telecom/Connection;

    if-nez v0, :cond_a

    goto :goto_65

    .line 408
    :cond_a
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 409
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 410
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mEmergencyConnection:Landroid/telecom/Connection;

    invoke-virtual {v1}, Landroid/telecom/Connection;->getTelecomCallId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_4d

    .line 411
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleEmergencyCallConnectionStateChangedEvent: unexpected state changed event , mEmergencyConnection="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mEmergencyConnection:Landroid/telecom/Connection;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", callId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", state="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->ploge(Ljava/lang/String;)V

    .line 419
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->cleanUpResources(Z)V

    return-void

    .line 423
    :cond_4d
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->shouldTrackCall(I)Z

    move-result v0

    if-nez v0, :cond_57

    .line 424
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->cleanUpResources(Z)V

    return-void

    :cond_57
    const/4 v0, 0x3

    if-ne p1, v0, :cond_65

    .line 428
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    .line 429
    invoke-virtual {p1}, Lcom/android/internal/telephony/satellite/SatelliteController;->isSatelliteSupportedViaOem()Z

    move-result p1

    if-eqz p1, :cond_65

    .line 430
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->requestIsSatelliteAllowedForCurrentLocation()V

    :cond_65
    :goto_65
    return-void
.end method

.method private blacklist handleEmergencyCallStartedEvent(Landroid/telecom/Connection;)V
    .registers 4

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleEmergencyCallStartedEvent: connection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->plogd(Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/satellite/SatelliteController;->setLastEmergencyCallTime()V

    .line 291
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->sendEventDisplayEmergencyMessageForcefully(Landroid/telecom/Connection;)Z

    move-result v0

    if-eqz v0, :cond_20

    return-void

    .line 295
    :cond_20
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->selectEmergencyCallWaitForConnectionTimeoutDuration()V

    .line 296
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mEmergencyConnection:Landroid/telecom/Connection;

    if-nez v0, :cond_2a

    .line 297
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->registerForInterestedStateChangedEvents()V

    .line 299
    :cond_2a
    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mEmergencyConnection:Landroid/telecom/Connection;

    .line 300
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->handleStateChangedEventForHysteresisTimer()V

    .line 302
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mLock:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x0

    .line 303
    :try_start_33
    iput-boolean v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mCheckingAccessRestrictionInProgress:Z

    .line 304
    iput-boolean v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mIsSatelliteAllowedForCurrentLocation:Z

    .line 305
    monitor-exit p1

    return-void

    :catchall_39
    move-exception p0

    monitor-exit p1
    :try_end_3b
    .catchall {:try_start_33 .. :try_end_3b} :catchall_39

    throw p0
.end method

.method private blacklist handleSatelliteAccessRestrictionCheckingResult(Z)V
    .registers 3

    .line 567
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 568
    :try_start_3
    iput-boolean p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mIsSatelliteAllowedForCurrentLocation:Z

    const/4 p1, 0x0

    .line 569
    iput-boolean p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mCheckingAccessRestrictionInProgress:Z

    .line 570
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->evaluateSendingConnectionEventDisplayEmergencyMessage()V

    .line 571
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method private blacklist handleSatelliteProvisionStateChangedEvent(Z)V
    .registers 2

    if-nez p1, :cond_c

    .line 310
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->isSatelliteEmergencyMessagingViaCarrierAvailable()Z

    move-result p1

    if-nez p1, :cond_c

    const/4 p1, 0x0

    .line 311
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->cleanUpResources(Z)V

    :cond_c
    return-void
.end method

.method private declared-synchronized blacklist handleStateChangedEventForHysteresisTimer()V
    .registers 3

    monitor-enter p0

    .line 539
    :try_start_1
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->isCellularAvailable()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mEmergencyConnection:Landroid/telecom/Connection;

    if-eqz v0, :cond_11

    .line 540
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->startTimer()V

    goto :goto_2a

    :catchall_f
    move-exception v0

    goto :goto_2c

    .line 542
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleStateChangedEventForHysteresisTimer stopTimer, mEmergencyConnection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mEmergencyConnection:Landroid/telecom/Connection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->plogd(Ljava/lang/String;)V

    .line 544
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->stopTimer()V
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_f

    .line 546
    :goto_2a
    monitor-exit p0

    return-void

    :goto_2c
    :try_start_2c
    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_f

    throw v0
.end method

.method private blacklist handleTimeoutEvent()V
    .registers 3

    .line 316
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 317
    :try_start_4
    iput-boolean v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mIsTimerTimedOut:Z

    .line 318
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->evaluateSendingConnectionEventDisplayEmergencyMessage()V

    .line 319
    monitor-exit v0

    return-void

    :catchall_b
    move-exception p0

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_b

    throw p0
.end method

.method private blacklist isImsRegistered()Z
    .registers 5

    .line 532
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_7
    if-ge v2, v0, :cond_16

    aget-object v3, p0, v2

    .line 533
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->isImsRegistered()Z

    move-result v3

    if-eqz v3, :cond_13

    const/4 p0, 0x1

    return p0

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_16
    return v1
.end method

.method private static blacklist isMockModemAllowed()Z
    .registers 2

    .line 829
    const-string v0, "persist.radio.allow_mock_modem"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "ro.boot.radio.allow_mock_modem"

    .line 830
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_13

    :cond_12
    return v1

    :cond_13
    :goto_13
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist isMultiSim()Z
    .registers 3

    .line 767
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_13

    .line 769
    const-string v0, "isMultiSim: telephonyManager is null"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->ploge(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 772
    :cond_13
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result p0

    return p0
.end method

.method private blacklist isSatelliteAllowed()Z
    .registers 3

    .line 369
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 370
    :try_start_3
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->isSatelliteEmergencyMessagingViaCarrierAvailable()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 p0, 0x1

    monitor-exit v0

    return p0

    :catchall_c
    move-exception p0

    goto :goto_12

    .line 371
    :cond_e
    iget-boolean p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mIsSatelliteAllowedForCurrentLocation:Z

    monitor-exit v0

    return p0

    .line 372
    :goto_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_c

    throw p0
.end method

.method private blacklist isSatelliteEmergencyMessagingViaCarrierAvailable()Z
    .registers 2

    .line 392
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/satellite/SatelliteController;->isSatelliteEmergencyMessagingSupportedViaCarrier()Z

    move-result v0

    if-nez v0, :cond_f

    .line 393
    const-string v0, "isSatelliteEmergencyMessagingViaCarrierAvailable: false, device does not support satellite emergency messaging via carrier"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->plogd(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 397
    :cond_f
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mIsSatelliteConnectedViaCarrierWithinHysteresisTime:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method private blacklist isSatelliteSupported()Z
    .registers 3

    .line 834
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/satellite/SatelliteController;->isSatelliteEmergencyMessagingSupportedViaCarrier()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    .line 835
    :cond_a
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/satellite/SatelliteController;->isSatelliteSupportedViaOem()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->isSatelliteViaOemProvisioned()Z

    move-result p0

    if-eqz p0, :cond_19

    return v1

    :cond_19
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isSatelliteViaOemProvisioned()Z
    .registers 1

    .line 842
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/SatelliteController;->isDeviceProvisioned()Ljava/lang/Boolean;

    move-result-object p0

    if-eqz p0, :cond_10

    .line 843
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method private static blacklist logd(Ljava/lang/String;)V
    .registers 2

    .line 866
    const-string v0, "SatelliteSOSMessageRecommender"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static blacklist loge(Ljava/lang/String;)V
    .registers 2

    .line 870
    const-string v0, "SatelliteSOSMessageRecommender"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist plogd(Ljava/lang/String;)V
    .registers 3

    .line 874
    const-string v0, "SatelliteSOSMessageRecommender"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mPersistentLogger:Landroid/telephony/PersistentLogger;

    if-eqz p0, :cond_c

    .line 876
    invoke-virtual {p0, v0, p1}, Landroid/telephony/PersistentLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    return-void
.end method

.method private blacklist ploge(Ljava/lang/String;)V
    .registers 3

    .line 881
    const-string v0, "SatelliteSOSMessageRecommender"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mPersistentLogger:Landroid/telephony/PersistentLogger;

    if-eqz p0, :cond_c

    .line 883
    invoke-virtual {p0, v0, p1}, Landroid/telephony/PersistentLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    return-void
.end method

.method private blacklist registerForInterestedStateChangedEvents()V
    .registers 7

    .line 469
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    iget-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mISatelliteProvisionStateCallback:Landroid/telephony/satellite/ISatelliteProvisionStateCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteController;->registerForSatelliteProvisionStateChanged(Landroid/telephony/satellite/ISatelliteProvisionStateCallback;)I

    .line 471
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_19

    aget-object v3, v0, v2

    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 472
    invoke-virtual {v3, p0, v4, v5}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_19
    return-void
.end method

.method private blacklist requestIsSatelliteAllowedForCurrentLocation()V
    .registers 3

    .line 793
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 794
    :try_start_3
    iget-boolean v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mCheckingAccessRestrictionInProgress:Z

    if-eqz v1, :cond_10

    .line 795
    const-string v1, "requestIsSatelliteCommunicationAllowedForCurrentLocation was already sent"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->plogd(Ljava/lang/String;)V

    .line 796
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    goto :goto_1d

    :cond_10
    const/4 v1, 0x1

    .line 798
    iput-boolean v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mCheckingAccessRestrictionInProgress:Z

    .line 799
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_e

    .line 801
    new-instance v0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender$3;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender$3;-><init>(Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;)V

    .line 817
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->requestIsSatelliteCommunicationAllowedForCurrentLocation(Landroid/os/OutcomeReceiver;)V

    return-void

    .line 799
    :goto_1d
    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_e

    throw p0
.end method

.method private blacklist selectEmergencyCallWaitForConnectionTimeoutDuration()V
    .registers 4

    .line 575
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->isSatelliteEmergencyMessagingViaCarrierAvailable()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 576
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mSubIdOfSatelliteConnectedViaCarrierWithinHysteresisTime:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 577
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    .line 578
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/satellite/SatelliteController;->getCarrierEmergencyCallWaitForConnectionTimeoutMillis(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mTimeoutMillis:J

    goto :goto_30

    .line 581
    :cond_16
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/satellite/SatelliteController;->getSelectedSatelliteSubId()I

    move-result v0

    .line 582
    invoke-static {v0}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->isNtnOnlySubscriptionId(I)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 583
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    .line 584
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/satellite/SatelliteController;->getCarrierEmergencyCallWaitForConnectionTimeoutMillis(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mTimeoutMillis:J

    goto :goto_30

    .line 587
    :cond_2c
    iget-wide v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mOemEnabledTimeoutMillis:J

    iput-wide v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mTimeoutMillis:J

    .line 590
    :goto_30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTimeoutMillis = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mTimeoutMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->plogd(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist sendEventDisplayEmergencyMessageForcefully(Landroid/telecom/Connection;)Z
    .registers 6

    .line 744
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/satellite/SatelliteController;->getEnforcedEmergencyCallToSatelliteHandoverType()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    const/4 p0, 0x0

    return p0

    .line 749
    :cond_b
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/satellite/SatelliteController;->getDelayInSendingEventDisplayEmergencyMessage()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x6

    .line 751
    invoke-virtual {p0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    .line 750
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const/4 p0, 0x1

    return p0
.end method

.method private blacklist shouldTrackCall(I)Z
    .registers 2

    .line 0
    const/4 p0, 0x4

    if-eq p1, p0, :cond_8

    const/4 p0, 0x6

    if-eq p1, p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist startTimer()V
    .registers 5

    .line 549
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x3

    .line 550
    :try_start_4
    invoke-virtual {p0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 551
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    goto :goto_38

    .line 553
    :cond_e
    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mTimeoutMillis:J

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 554
    iget v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mCountOfTimerStarted:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mCountOfTimerStarted:I

    const/4 v1, 0x0

    .line 555
    iput-boolean v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mIsTimerTimedOut:Z

    .line 556
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startTimer mCountOfTimerStarted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mCountOfTimerStarted:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->plogd(Ljava/lang/String;)V

    .line 557
    monitor-exit v0

    return-void

    :goto_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_4 .. :try_end_39} :catchall_c

    throw p0
.end method

.method private blacklist stopTimer()V
    .registers 3

    .line 561
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x3

    .line 562
    :try_start_4
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 563
    monitor-exit v0

    return-void

    :catchall_9
    move-exception p0

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_9

    throw p0
.end method

.method private blacklist unregisterForInterestedStateChangedEvents()V
    .registers 5

    .line 489
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    iget-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mISatelliteProvisionStateCallback:Landroid/telephony/satellite/ISatelliteProvisionStateCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteController;->unregisterForSatelliteProvisionStateChanged(Landroid/telephony/satellite/ISatelliteProvisionStateCallback;)V

    .line 491
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_17

    aget-object v3, v0, v2

    .line 492
    invoke-virtual {v3, p0}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_17
    return-void
.end method

.method private blacklist updateSatelliteConnectedViaCarrierWithinHysteresisTimeState()V
    .registers 4

    .line 847
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    .line 848
    invoke-virtual {v0}, Lcom/android/internal/telephony/satellite/SatelliteController;->isSatelliteConnectedViaCarrierWithinHysteresisTime()Landroid/util/Pair;

    move-result-object v0

    .line 849
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSatelliteConnectedViaCarrierWithinHysteresisTimeState: subId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", connected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->plogd(Ljava/lang/String;)V

    .line 851
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mIsSatelliteConnectedViaCarrierWithinHysteresisTime:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 852
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 853
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mSubIdOfSatelliteConnectedViaCarrierWithinHysteresisTime:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 854
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 853
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void

    .line 856
    :cond_4b
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mSubIdOfSatelliteConnectedViaCarrierWithinHysteresisTime:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method private blacklist updateSatelliteViaCarrierAvailability()V
    .registers 2

    .line 376
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mIsSatelliteConnectedViaCarrierWithinHysteresisTime:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_b

    .line 377
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->updateSatelliteConnectedViaCarrierWithinHysteresisTimeState()V

    :cond_b
    return-void
.end method


# virtual methods
.method protected blacklist getDefaultSmsApp()Landroid/content/ComponentName;
    .registers 2

    .line 263
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSendToApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getEmergencyCallToSatelliteHandoverType()I
    .registers 3

    .line 777
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->isSatelliteEmergencyMessagingViaCarrierAvailable()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 778
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mSubIdOfSatelliteConnectedViaCarrierWithinHysteresisTime:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 779
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteController;->getCarrierRoamingNtnEmergencyCallToSatelliteHandoverType(I)I

    move-result p0

    return p0

    .line 782
    :cond_13
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/satellite/SatelliteController;->getSelectedSatelliteSubId()I

    move-result v0

    .line 783
    invoke-static {v0}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->isNtnOnlySubscriptionId(I)Z

    move-result v1

    if-nez v1, :cond_26

    .line 784
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    .line 785
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteController;->getCarrierRoamingNtnEmergencyCallToSatelliteHandoverType(I)I

    move-result p0

    return p0

    :cond_26
    const/4 p0, 0x1

    return p0
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 186
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_54

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage: unexpected message code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->plogd(Ljava/lang/String;)V

    return-void

    .line 206
    :pswitch_1c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->handleSatelliteAccessRestrictionCheckingResult(Z)V

    return-void

    .line 203
    :pswitch_28
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/telecom/Connection;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->handleCmdSendEventDisplayEmergencyMessageForcefully(Landroid/telecom/Connection;)V

    return-void

    .line 197
    :pswitch_30
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/util/Pair;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->handleEmergencyCallConnectionStateChangedEvent(Landroid/util/Pair;)V

    return-void

    .line 194
    :pswitch_38
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->handleSatelliteProvisionStateChangedEvent(Z)V

    return-void

    .line 191
    :pswitch_44
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->handleTimeoutEvent()V

    return-void

    .line 200
    :pswitch_48
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->handleStateChangedEventForHysteresisTimer()V

    return-void

    .line 188
    :pswitch_4c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/telecom/Connection;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->handleEmergencyCallStartedEvent(Landroid/telecom/Connection;)V

    return-void

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_4c
        :pswitch_48
        :pswitch_44
        :pswitch_38
        :pswitch_30
        :pswitch_28
        :pswitch_1c
    .end packed-switch
.end method

.method public blacklist isDeviceProvisioned()Z
    .registers 1

    .line 387
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/SatelliteController;->isDeviceProvisioned()Ljava/lang/Boolean;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 388
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method protected blacklist isSatelliteAllowedByReasons()Z
    .registers 4

    .line 274
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/satellite/SatelliteManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/satellite/SatelliteManager;

    .line 275
    invoke-virtual {v0}, Landroid/telephony/satellite/SatelliteManager;->getSatelliteDisallowedReasons()[I

    move-result-object v0

    .line 276
    invoke-static {v0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/IntStream;->anyMatch(Ljava/util/function/IntPredicate;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 280
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAllowedForDefaultMessageApp:false, disallowedReasons="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 280
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->plogd(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_37
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist onEmergencyCallConnectionStateChanged(Ljava/lang/String;I)V
    .registers 5

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->plogd(Ljava/lang/String;)V

    .line 253
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->isSatelliteSupported()Z

    move-result v0

    if-nez v0, :cond_28

    .line 254
    const-string p1, "onEmergencyCallConnectionStateChanged: satellite is not supported"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->plogd(Ljava/lang/String;)V

    return-void

    .line 257
    :cond_28
    new-instance v0, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x5

    .line 258
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public blacklist onEmergencyCallStarted(Landroid/telecom/Connection;Z)V
    .registers 4

    .line 222
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->isSatelliteSupported()Z

    move-result v0

    if-nez v0, :cond_c

    .line 223
    const-string p1, "onEmergencyCallStarted: satellite is not supported"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->plogd(Ljava/lang/String;)V

    return-void

    .line 226
    :cond_c
    iput-boolean p2, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mIsTestEmergencyNumber:Z

    const/4 p2, 0x1

    .line 228
    invoke-virtual {p0, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 229
    const-string p0, "onEmergencyCallStarted: Ignoring due to ongoing event:"

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->logd(Ljava/lang/String;)V

    return-void

    .line 239
    :cond_1b
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->updateSatelliteConnectedViaCarrierWithinHysteresisTimeState()V

    .line 240
    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected blacklist reportESosRecommenderDecision(Z)V
    .registers 4

    .line 437
    invoke-static {}, Lcom/android/internal/telephony/metrics/SatelliteStats;->getInstance()Lcom/android/internal/telephony/metrics/SatelliteStats;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;

    invoke-direct {v1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;-><init>()V

    .line 439
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;->setDisplaySosMessageSent(Z)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;

    move-result-object p1

    iget v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mCountOfTimerStarted:I

    .line 440
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;->setCountOfTimerStarted(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;

    move-result-object p1

    .line 441
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->isImsRegistered()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;->setImsRegistered(Z)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;

    move-result-object p1

    .line 442
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->getBestCellularServiceState()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;->setCellularServiceState(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;

    move-result-object p1

    .line 443
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->isMultiSim()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;->setIsMultiSim(Z)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;

    move-result-object p1

    .line 444
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->getEmergencyCallToSatelliteHandoverType()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;->setRecommendingHandoverType(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;

    move-result-object p1

    .line 445
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->isSatelliteAllowed()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;->setIsSatelliteAllowedInCurrentLocation(Z)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;

    move-result-object p1

    iget-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mCountryDetector:Lcom/android/internal/telephony/TelephonyCountryDetector;

    .line 446
    invoke-virtual {v1}, Lcom/android/internal/telephony/TelephonyCountryDetector;->isWifiNetworkConnected()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;->setIsWifiConnected(Z)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;

    move-result-object p1

    iget-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    .line 447
    invoke-virtual {v1}, Lcom/android/internal/telephony/satellite/SatelliteController;->getSatelliteCarrierId()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;->setCarrierId(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    .line 448
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/SatelliteController;->isNtnOnlyCarrier()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;->setIsNtnOnlyCarrier(Z)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;->build()Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams;

    move-result-object p0

    .line 437
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/metrics/SatelliteStats;->onSatelliteSosMessageRecommender(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams;)V

    return-void
.end method

.method protected blacklist requestIsSatelliteCommunicationAllowedForCurrentLocation(Landroid/os/OutcomeReceiver;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Boolean;",
            "Landroid/telephony/satellite/SatelliteManager$SatelliteException;",
            ">;)V"
        }
    .end annotation

    .line 823
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/satellite/SatelliteManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/satellite/SatelliteManager;

    .line 824
    new-instance v1, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;)V

    invoke-virtual {v0, v1, p1}, Landroid/telephony/satellite/SatelliteManager;->requestIsCommunicationAllowedForCurrentLocation(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    return-void
.end method

.method protected blacklist updateAndGetProvisionState()Z
    .registers 2

    .line 268
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/satellite/SatelliteController;->updateSatelliteProvisionedStatePerSubscriberId()V

    .line 269
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->isDeviceProvisioned()Z

    move-result p0

    return p0
.end method

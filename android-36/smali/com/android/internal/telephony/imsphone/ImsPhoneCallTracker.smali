.class public Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
.super Lcom/android/internal/telephony/CallTracker;
.source "ImsPhoneCallTracker.java"

# interfaces
.implements Lcom/android/internal/telephony/imsphone/ImsPullCall;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$ConnectorFactory;,
        Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;,
        Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$Config;,
        Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$VtDataUsageProvider;,
        Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$SrvccStartedCallback;,
        Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;,
        Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$SharedPreferenceProxy;,
        Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$CacheEntry;,
        Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$ImsReasonInfoKeyPair;,
        Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$ImsTrafficSession;,
        Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$PhoneStateListener;,
        Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$ProvisioningItem;
    }
.end annotation


# static fields
.field private static final blacklist PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

.field private static final blacklist VERBOSE_STATE_LOGGING:Z


# instance fields
.field private blacklist mAllowAddCallDuringVideoCall:Z

.field private greylist-max-r mAllowEmergencyVideoCalls:Z

.field private blacklist mAllowHoldingVideoCall:Z

.field private blacklist mAlwaysPlayRemoteHoldTone:Z

.field private blacklist mAutoRetryFailedWifiEmergencyCall:Z

.field public greylist-max-r mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

.field private greylist-max-r mCallExpectedToResume:Lcom/android/ims/ImsCall;

.field private final blacklist mCallQualityMetrics:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/metrics/CallQualityMetrics;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mCallQualityMetricsHistory:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/android/internal/telephony/metrics/CallQualityMetrics;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCarrierConfigChangeListener:Landroid/telephony/CarrierConfigManager$CarrierConfigChangeListener;

.field private blacklist mCarrierConfigForSubId:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroid/os/PersistableBundle;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCarrierConfigLoadedForSubscription:Z

.field private blacklist mClirMode:I

.field private blacklist mConfig:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$Config;

.field private final blacklist mConfigCallback:Landroid/telephony/ims/ProvisioningManager$Callback;

.field private greylist-max-r mConnections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mConnectorFactory:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$ConnectorFactory;

.field private blacklist mConnectorRunnable:Ljava/lang/Runnable;

.field private blacklist mCurrentlyConnectedSubId:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDefaultDialerUid:Ljava/util/concurrent/atomic/AtomicInteger;

.field private blacklist mDesiredMute:Z

.field private blacklist mDeviceToDeviceForceEnabled:Z

.field private blacklist mDropVideoCallWhenAnsweringAudioCall:Z

.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field public greylist-max-r mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

.field public greylist-max-r mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

.field private blacklist mHasAttemptedStartOfCallHandover:Z

.field private blacklist mHoldSwitchingState:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

.field private blacklist mIgnoreDataEnabledChangedForVideoCalls:Z

.field private final blacklist mImsCallInfoTracker:Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker;

.field private greylist-max-r mImsCallListener:Lcom/android/ims/ImsCall$Listener;

.field private final blacklist mImsCapabilityCallback:Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;

.field private greylist-max-r mImsManager:Lcom/android/ims/ImsManager;

.field private final blacklist mImsManagerConnector:Lcom/android/ims/FeatureConnector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/ims/FeatureConnector<",
            "Lcom/android/ims/ImsManager;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mImsReasonCodeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$ImsReasonInfoKeyPair;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mImsStatsCallback:Lcom/android/ims/ImsManager$ImsStatsCallback;

.field private final blacklist mImsTrafficSessions:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$ImsTrafficSession;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mImsUssdListener:Lcom/android/ims/ImsCall$Listener;

.field private blacklist mIsConferenceEventPackageEnabled:Z

.field private blacklist mIsDataEnabled:Z

.field private blacklist mIsInEmergencyCall:Z

.field private blacklist mIsMonitoringConnectivity:Z

.field private blacklist mIsViLteDataMetered:Z

.field private blacklist mLastDialArgs:Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;

.field private blacklist mLastDialString:Ljava/lang/String;

.field private blacklist mMediaThreshold:Landroid/telephony/ims/MediaThreshold;

.field private blacklist mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

.field private blacklist mMmTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

.field private final blacklist mMmTelFeatureListener:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;

.field private blacklist mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private blacklist mNotifyHandoverVideoFromLTEToWifi:Z

.field private blacklist mNotifyHandoverVideoFromWifiToLTE:Z

.field private blacklist mNotifyVtHandoverToWifiFail:Z

.field private greylist-max-r mOnHoldToneId:I

.field private greylist-max-r mOnHoldToneStarted:Z

.field private final blacklist mOperationLocalLog:Lcom/android/internal/telephony/LocalLog;

.field private blacklist mPendingCallVideoState:I

.field private blacklist mPendingIntentExtras:Landroid/os/Bundle;

.field private greylist-max-r mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

.field private blacklist mPendingSilentRedialInfo:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-r mPendingUssd:Landroid/os/Message;

.field greylist-max-r mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

.field private final blacklist mPhoneNumAndConnTime:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$CacheEntry;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPhoneStateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$PhoneStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mProvisioningItemQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$ProvisioningItem;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mReceiver:Landroid/content/BroadcastReceiver;

.field private final blacklist mRegLocalLog:Lcom/android/internal/telephony/LocalLog;

.field public greylist-max-r mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

.field private blacklist mSettingsCallback:Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;

.field private blacklist mSharedPreferenceProxy:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$SharedPreferenceProxy;

.field private blacklist mShouldUpdateImsConfigOnDisconnect:Z

.field private final blacklist mSrvccStartedCallback:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$SrvccStartedCallback;

.field private blacklist mSrvccState:Lcom/android/internal/telephony/Call$SrvccState;

.field private final blacklist mSrvccTypeSupported:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mState:Lcom/android/internal/telephony/PhoneConstants$State;

.field private blacklist mSupportCepOnPeer:Z

.field private blacklist mSupportD2DUsingRtp:Z

.field private blacklist mSupportDowngradeVtToAudio:Z

.field private blacklist mSupportPauseVideo:Z

.field private blacklist mSupportSdpForRtpHeaderExtensions:Z

.field private greylist-max-r mSwitchingFgAndBgCalls:Z

.field private greylist-max-r mSyncHold:Ljava/lang/Object;

.field private blacklist mTelecomFlags:Lcom/android/server/telecom/flags/FeatureFlags;

.field private blacklist mThresholdRtpInactivityTime:J

.field private blacklist mThresholdRtpJitter:I

.field private blacklist mThresholdRtpPacketLoss:I

.field private blacklist mTreatDowngradedVideoCallsAsVideoCalls:Z

.field private final blacklist mUnknownPeerConnTime:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$CacheEntry;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mUssdMethod:I

.field private greylist-max-r mUssdSession:Lcom/android/ims/ImsCall;

.field private blacklist mUtInterface:Lcom/android/ims/ImsUtInterface;

.field private blacklist mVoiceCallEndedRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private blacklist mVoiceCallStartedRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private final blacklist mVtDataUsageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mVtDataUsageProvider:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$VtDataUsageProvider;

.field private volatile blacklist mVtDataUsageSnapshot:Landroid/net/NetworkStats;

.field private volatile blacklist mVtDataUsageUidSnapshot:Landroid/net/NetworkStats;

.field private blacklist pendingCallClirMode:I

.field private blacklist pendingCallInEcm:Z


# direct methods
.method public static synthetic blacklist $r8$lambda$6kCo2LYXQTEfJDq5cf6UQfhanaU(JLjava/util/Map$Entry;)Z
    .registers 5

    .line 2446
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$CacheEntry;

    invoke-static {p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$CacheEntry;->-$$Nest$fgetmCachedTime(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$CacheEntry;)J

    move-result-wide v0

    cmp-long p0, v0, p0

    if-gez p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$nsdgR3B_9SO0WAxj21SHU7mTl1g(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->lambda$hangupAllConnections$1(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$pxAH1E7VMNvECbKeYO6NwPcgISM(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 1

    .line 1161
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$wLvRSTWgtCSNDY2R9Nzb9bjKhhE(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Ljava/lang/Integer;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->lambda$stopAllImsTrafficTypes$3(Ljava/lang/Integer;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAllowAddCallDuringVideoCall(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mAllowAddCallDuringVideoCall:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAllowHoldingVideoCall(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mAllowHoldingVideoCall:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAutoRetryFailedWifiEmergencyCall(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mAutoRetryFailedWifiEmergencyCall:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallExpectedToResume(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/ImsCall;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mCallExpectedToResume:Lcom/android/ims/ImsCall;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallQualityMetrics(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Ljava/util/Map;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mCallQualityMetrics:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallQualityMetricsHistory(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mCallQualityMetricsHistory:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmConnections(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Ljava/util/ArrayList;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mConnections:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmConnectorRunnable(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Ljava/lang/Runnable;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mConnectorRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCurrentlyConnectedSubId(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Ljava/util/Optional;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mCurrentlyConnectedSubId:Ljava/util/Optional;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDefaultDialerUid(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mDefaultDialerUid:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExecutor(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Ljava/util/concurrent/Executor;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHasAttemptedStartOfCallHandover(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHasAttemptedStartOfCallHandover:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHoldSwitchingState(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHoldSwitchingState:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmImsCallInfoTracker(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsCallInfoTracker:Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmImsCallListener(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsCallListener:Lcom/android/ims/ImsCall$Listener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmImsManager(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/ImsManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmImsManagerConnector(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/FeatureConnector;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManagerConnector:Lcom/android/ims/FeatureConnector;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmImsUssdListener(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsUssdListener:Lcom/android/ims/ImsCall$Listener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsConferenceEventPackageEnabled(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIsConferenceEventPackageEnabled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsDataEnabled(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIsDataEnabled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsViLteDataMetered(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIsViLteDataMetered:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMetrics(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/metrics/TelephonyMetrics;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNotifyHandoverVideoFromLTEToWifi(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mNotifyHandoverVideoFromLTEToWifi:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNotifyHandoverVideoFromWifiToLTE(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mNotifyHandoverVideoFromWifiToLTE:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNotifyVtHandoverToWifiFail(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mNotifyVtHandoverToWifiFail:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnHoldToneId(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mOnHoldToneId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnHoldToneStarted(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mOnHoldToneStarted:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOperationLocalLog(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/LocalLog;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mOperationLocalLog:Lcom/android/internal/telephony/LocalLog;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPendingMO(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPendingSilentRedialInfo(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Landroid/util/Pair;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingSilentRedialInfo:Landroid/util/Pair;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPendingUssd(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Landroid/os/Message;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingUssd:Landroid/os/Message;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmProvisioningItemQueue(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mProvisioningItemQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmShouldUpdateImsConfigOnDisconnect(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mShouldUpdateImsConfigOnDisconnect:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmState(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/PhoneConstants$State;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSupportCepOnPeer(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSupportCepOnPeer:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSupportPauseVideo(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSupportPauseVideo:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSyncHold(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSyncHold:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTelecomFlags(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/server/telecom/flags/FeatureFlags;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mTelecomFlags:Lcom/android/server/telecom/flags/FeatureFlags;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUssdMethod(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mUssdMethod:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUssdSession(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/ImsCall;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mUssdSession:Lcom/android/ims/ImsCall;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVtDataUsageProvider(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$VtDataUsageProvider;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVtDataUsageProvider:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$VtDataUsageProvider;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVtDataUsageSnapshot(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Landroid/net/NetworkStats;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVtDataUsageSnapshot:Landroid/net/NetworkStats;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVtDataUsageUidSnapshot(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Landroid/net/NetworkStats;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVtDataUsageUidSnapshot:Landroid/net/NetworkStats;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCallExpectedToResume(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mCallExpectedToResume:Lcom/android/ims/ImsCall;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCarrierConfigForSubId(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Landroid/util/Pair;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mCarrierConfigForSubId:Landroid/util/Pair;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmHasAttemptedStartOfCallHandover(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHasAttemptedStartOfCallHandover:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmHoldSwitchingState(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHoldSwitchingState:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmImsManager(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsManager;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsDataEnabled(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIsDataEnabled:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmOnHoldToneId(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mOnHoldToneId:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmOnHoldToneStarted(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mOnHoldToneStarted:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPendingMO(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPendingSilentRedialInfo(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Landroid/util/Pair;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingSilentRedialInfo:Landroid/util/Pair;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPendingUssd(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Landroid/os/Message;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingUssd:Landroid/os/Message;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmShouldUpdateImsConfigOnDisconnect(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mShouldUpdateImsConfigOnDisconnect:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmUssdSession(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mUssdSession:Lcom/android/ims/ImsCall;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$maddConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->addConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdialInternal(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;IIIILandroid/os/Bundle;)V
    .registers 7

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->dialInternal(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;IIIILandroid/os/Bundle;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdialPendingMO(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->dialPendingMO()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdowngradeVideoCall(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;ILcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->downgradeVideoCall(ILcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mfindConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->findConnection(Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mfindConnectionTimeUsePhoneNumber(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/internal/ConferenceParticipant;)Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$CacheEntry;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->findConnectionTimeUsePhoneNumber(Lcom/android/ims/internal/ConferenceParticipant;)Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$CacheEntry;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetCarrierConfigBundle(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;I)Landroid/os/PersistableBundle;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getCarrierConfigBundle(I)Landroid/os/PersistableBundle;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetImsTrafficSession(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;I)Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$ImsTrafficSession;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getImsTrafficSession(I)Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$ImsTrafficSession;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetNetworkCountryIso(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetPackageUid(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Landroid/content/Context;Ljava/lang/String;)I
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getPackageUid(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetPreciseDisconnectCauseFromReasonInfo(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Landroid/telephony/ims/ImsReasonInfo;)I
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getPreciseDisconnectCauseFromReasonInfo(Landroid/telephony/ims/ImsReasonInfo;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misForegroundHigherPriority(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isForegroundHigherPriority()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misWifiConnected(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isWifiConnected()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$monDataEnabledChanged(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;ZI)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->onDataEnabledChanged(ZI)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mprocessCallStateChange(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;I)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->processCallStateChange(Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mprocessCallStateChange(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;IZ)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->processCallStateChange(Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;IZ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mpruneCallQualityMetricsHistory(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->pruneCallQualityMetricsHistory()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mregisterForConnectivityChanges(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->registerForConnectivityChanges()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mregisterImsTrafficSession(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;IIILandroid/telephony/ims/aidl/IImsTrafficSessionCallback;)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->registerImsTrafficSession(IIILandroid/telephony/ims/aidl/IImsTrafficSessionCallback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mscheduleHandoverCheck(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->scheduleHandoverCheck()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetVideoCallProvider(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Lcom/android/ims/ImsCall;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->setVideoCallProvider(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Lcom/android/ims/ImsCall;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mshouldDisconnectActiveCallOnAnswer(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCall;)Z
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->shouldDisconnectActiveCallOnAnswer(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCall;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mstopAllImsTrafficTypes(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->stopAllImsTrafficTypes()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mstopListeningForCalls(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->stopListeningForCalls()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mswitchAfterConferenceSuccess(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->switchAfterConferenceSuccess()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$munregisterForConnectivityChanges(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->unregisterForConnectivityChanges()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$munregisterImsTrafficSession(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->unregisterImsTrafficSession(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateCarrierConfiguration(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;ILandroid/os/PersistableBundle;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->updateCarrierConfiguration(ILandroid/os/PersistableBundle;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateImsServiceConfig(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->updateImsServiceConfig()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdatePhoneState(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->updatePhoneState()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 16

    .line 240
    const-string v0, "IPCTState"

    const/4 v1, 0x2

    .line 241
    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->VERBOSE_STATE_LOGGING:Z

    .line 867
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x65

    const/16 v2, 0x4b0

    .line 869
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0x66

    const/16 v2, 0x4b1

    .line 871
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0x67

    const/16 v3, 0x4b2

    .line 873
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0x6a

    const/16 v4, 0x4b3

    .line 875
    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0x6b

    const/16 v5, 0x4b4

    .line 877
    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0x6c

    const/16 v5, 0x10

    .line 879
    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0x6f

    const/16 v5, 0x4b5

    .line 881
    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0x70

    const/16 v5, 0x4b6

    .line 883
    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0x79

    const/16 v5, 0x4b7

    .line 885
    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0x7a

    const/16 v5, 0x4b8

    .line 887
    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0x7b

    const/16 v5, 0x4b9

    .line 889
    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0x7c

    const/16 v5, 0x4ba

    .line 891
    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0x83

    const/16 v5, 0x4bb

    .line 893
    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0x84

    const/16 v5, 0x4bc

    .line 895
    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0x8d

    const/16 v5, 0x4bd

    .line 897
    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0x8f

    const/16 v5, 0x4be

    .line 899
    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0x90

    const/16 v5, 0x4bf

    .line 901
    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0x91

    const/16 v5, 0x4c0

    .line 903
    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0x92

    const/16 v5, 0x4c1

    .line 905
    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0x93

    const/16 v5, 0x4c2

    .line 907
    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0x94

    const/16 v5, 0x4c3

    .line 909
    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0x95

    const/16 v5, 0x4c4

    .line 911
    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0xc9

    const/16 v5, 0x4c5

    .line 913
    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0xca

    const/16 v5, 0x4c6

    .line 915
    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0xcb

    const/16 v5, 0x4c7

    .line 917
    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0xf1

    .line 919
    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0x141

    const/16 v5, 0x514

    .line 921
    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0x14b

    const/16 v6, 0x51e

    .line 923
    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0x14c

    const/16 v6, 0x51f

    .line 925
    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0x14d

    const/16 v6, 0x520

    .line 927
    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0x14e

    const/16 v6, 0x521

    .line 929
    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0x14f

    const/16 v6, 0x522

    .line 931
    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0x150

    const/16 v6, 0x523

    .line 933
    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0x151

    const/16 v6, 0x524

    .line 935
    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0x152

    const/16 v6, 0x525

    .line 937
    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0x153

    const/16 v6, 0x526

    .line 939
    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0x154

    const/16 v6, 0x527

    .line 941
    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0x155

    const/16 v6, 0x528

    .line 943
    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0x156

    const/16 v6, 0x529

    .line 945
    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0x157

    const/16 v6, 0x52a

    .line 947
    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0x15f

    const/16 v6, 0x532

    .line 949
    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0x160

    const/16 v6, 0x533

    .line 951
    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0x161

    const/16 v6, 0x534

    .line 953
    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0x162

    const/16 v6, 0x535

    .line 955
    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0x169

    const/16 v6, 0x53c

    .line 957
    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0x16a

    const/16 v6, 0x53d

    .line 959
    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0x16b

    const/16 v6, 0x53e

    .line 961
    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0x16c

    const/16 v6, 0x53f

    .line 963
    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0x191

    const/16 v6, 0x578

    .line 965
    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0x192

    const/16 v7, 0x579

    .line 967
    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0x193

    const/16 v8, 0x57a

    .line 969
    invoke-virtual {v0, v1, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0x194

    const/16 v9, 0x57b

    .line 971
    invoke-virtual {v0, v1, v9}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0x1f5

    const/16 v10, 0x5dc

    .line 973
    invoke-virtual {v0, v1, v10}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0x1f6

    const/16 v11, 0x5dd

    .line 975
    invoke-virtual {v0, v1, v11}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0x1f7

    const/16 v12, 0x5de

    .line 977
    invoke-virtual {v0, v1, v12}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0x1f8

    const/16 v13, 0x5df

    .line 979
    invoke-virtual {v0, v1, v13}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0x1f9

    const/16 v14, 0x5e0

    .line 981
    invoke-virtual {v0, v1, v14}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0x1fa

    const/16 v15, 0x5e1

    .line 983
    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0x1fe

    const/16 v15, 0x5e6

    .line 985
    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0x321

    const/16 v15, 0x708

    .line 987
    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0x322

    const/16 v15, 0x709

    .line 989
    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0x323

    const/16 v15, 0x70a

    .line 991
    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0x324

    const/16 v15, 0x70b

    .line 993
    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0x335

    const/16 v15, 0x70c

    .line 995
    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0x385

    const/16 v15, 0x76c

    .line 997
    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0x386

    const/16 v15, 0x76d

    .line 999
    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0x44c

    const/16 v15, 0x7d0

    .line 1001
    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0x3f6

    const/16 v15, 0x834

    .line 1003
    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0x3f7

    const/16 v15, 0x835

    .line 1005
    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0x3f8

    const/16 v15, 0x836

    .line 1007
    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0x8fc

    .line 1009
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0x8fd

    .line 1011
    invoke-virtual {v0, v3, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0x8fe

    .line 1013
    invoke-virtual {v0, v4, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0x960

    .line 1015
    invoke-virtual {v0, v5, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0x9c4

    .line 1017
    invoke-virtual {v0, v6, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0x9c5

    .line 1019
    invoke-virtual {v0, v7, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0x9c6

    .line 1021
    invoke-virtual {v0, v8, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0x9c7

    .line 1023
    invoke-virtual {v0, v9, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0x57c

    const/16 v2, 0x9c8

    .line 1025
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0x57d

    const/16 v2, 0x9c9

    .line 1027
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0x57e

    const/16 v2, 0x9ca

    .line 1029
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0x57f

    const/16 v2, 0x9cb

    .line 1031
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0xf7

    .line 1033
    invoke-virtual {v0, v10, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0xf9

    .line 1035
    invoke-virtual {v0, v11, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0xfa

    .line 1037
    invoke-virtual {v0, v12, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0xfb

    .line 1039
    invoke-virtual {v0, v13, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0xfc

    .line 1041
    invoke-virtual {v0, v14, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0xfd

    const/16 v2, 0x5e1

    .line 1043
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0x5e2

    const/16 v2, 0xfe

    .line 1045
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0x5e3

    const/16 v2, 0xff

    .line 1047
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0x5e4

    const/16 v2, 0x100

    .line 1049
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0x5e5

    const/16 v2, 0x101

    .line 1051
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0x102

    const/16 v2, 0x5e6

    .line 1053
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0x5e7

    const/16 v2, 0x103

    .line 1055
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0x5e8

    const/16 v2, 0x104

    .line 1057
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0x5e9

    const/16 v2, 0x105

    .line 1059
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0x5eb

    const/4 v2, 0x1

    .line 1061
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    const v1, 0xf001

    .line 1063
    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->append(II)V

    const v1, 0xf002

    .line 1065
    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->append(II)V

    const v1, 0xf003

    .line 1067
    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->append(II)V

    const v1, 0xf004

    .line 1069
    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->append(II)V

    const v1, 0xf005

    .line 1071
    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->append(II)V

    const v1, 0xf006

    .line 1073
    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->append(II)V

    const v1, 0xf007

    const v2, 0xf007

    .line 1075
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    const v1, 0xf008

    const v2, 0xf008

    .line 1077
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    const v1, 0xf009

    const v2, 0xf009

    .line 1079
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    const v1, 0xf00a

    const v2, 0xf00a

    .line 1081
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    const v1, 0xf00b

    const v2, 0xf00b

    .line 1083
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    const v1, 0xf00c

    const v2, 0xf00c

    .line 1085
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    const v1, 0xf00d

    const v2, 0xf00d

    .line 1087
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    const v1, 0xf00e

    const v2, 0xf00e

    .line 1089
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    const v1, 0xf00f

    const v2, 0xf00f

    .line 1091
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/imsphone/ImsPhone;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$ConnectorFactory;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    .registers 5

    .line 1268
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$ConnectorFactory;Ljava/util/concurrent/Executor;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/imsphone/ImsPhone;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$ConnectorFactory;Ljava/util/concurrent/Executor;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    .registers 12

    .line 1274
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/CallTracker;-><init>(Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    .line 244
    new-instance p4, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-direct {p4}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;-><init>()V

    iput-object p4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMmTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    .line 248
    new-instance p4, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mCallQualityMetrics:Ljava/util/Map;

    .line 249
    new-instance p4, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p4}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mCallQualityMetricsHistory:Ljava/util/concurrent/ConcurrentLinkedQueue;

    const/4 p4, 0x0

    .line 253
    iput-boolean p4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mCarrierConfigLoadedForSubscription:Z

    const/4 v0, 0x0

    .line 256
    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mCarrierConfigForSubId:Landroid/util/Pair;

    .line 259
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mCurrentlyConnectedSubId:Ljava/util/Optional;

    .line 261
    new-instance v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker-IA;)V

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMmTelFeatureListener:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;

    .line 262
    new-instance v1, Lcom/android/server/telecom/flags/FeatureFlagsImpl;

    invoke-direct {v1}, Lcom/android/server/telecom/flags/FeatureFlagsImpl;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mTelecomFlags:Lcom/android/server/telecom/flags/FeatureFlags;

    .line 577
    new-instance v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mCarrierConfigChangeListener:Landroid/telephony/CarrierConfigManager$CarrierConfigChangeListener;

    .line 602
    new-instance v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 616
    iput-boolean p4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIsMonitoringConnectivity:Z

    const/4 v2, 0x1

    .line 622
    iput-boolean v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIsConferenceEventPackageEnabled:Z

    .line 627
    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mConfig:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$Config;

    .line 632
    iput-boolean p4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mDeviceToDeviceForceEnabled:Z

    .line 637
    new-instance v3, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$3;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$3;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V

    iput-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 704
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mConnections:Ljava/util/ArrayList;

    .line 706
    new-instance v3, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v3}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVoiceCallEndedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 707
    new-instance v3, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v3}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVoiceCallStartedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 709
    new-instance v3, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    const-string v4, "RG"

    invoke-direct {v3, p0, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 711
    new-instance v3, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    const-string v4, "FG"

    invoke-direct {v3, p0, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 714
    new-instance v3, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    const-string v4, "BG"

    invoke-direct {v3, p0, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 717
    new-instance v3, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    const-string v4, "HO"

    invoke-direct {v3, p0, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 722
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVtDataUsageMap:Ljava/util/HashMap;

    .line 723
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhoneNumAndConnTime:Ljava/util/Map;

    .line 724
    new-instance v3, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v3}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mUnknownPeerConnTime:Ljava/util/Queue;

    .line 752
    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVtDataUsageSnapshot:Landroid/net/NetworkStats;

    .line 753
    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVtDataUsageUidSnapshot:Landroid/net/NetworkStats;

    .line 754
    new-instance v3, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$VtDataUsageProvider;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$VtDataUsageProvider;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V

    iput-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVtDataUsageProvider:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$VtDataUsageProvider;

    .line 756
    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v5, -0x1

    invoke-direct {v4, v5}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mDefaultDialerUid:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 760
    iput p4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mClirMode:I

    .line 761
    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSyncHold:Ljava/lang/Object;

    .line 764
    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mUssdSession:Lcom/android/ims/ImsCall;

    .line 766
    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingUssd:Landroid/os/Message;

    .line 772
    iput-boolean p4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mDesiredMute:Z

    .line 773
    iput-boolean p4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mOnHoldToneStarted:Z

    .line 775
    iput v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mOnHoldToneId:I

    .line 778
    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 784
    sget-object v5, Lcom/android/internal/telephony/Call$SrvccState;->NONE:Lcom/android/internal/telephony/Call$SrvccState;

    iput-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSrvccState:Lcom/android/internal/telephony/Call$SrvccState;

    .line 786
    iput-boolean p4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIsInEmergencyCall:Z

    .line 787
    iput-boolean p4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIsDataEnabled:Z

    .line 792
    iput-boolean p4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->pendingCallInEcm:Z

    .line 793
    iput-boolean p4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSwitchingFgAndBgCalls:Z

    .line 795
    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mCallExpectedToResume:Lcom/android/ims/ImsCall;

    .line 797
    iput-boolean p4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mAllowEmergencyVideoCalls:Z

    .line 799
    iput-boolean p4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIgnoreDataEnabledChangedForVideoCalls:Z

    .line 800
    iput-boolean p4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIsViLteDataMetered:Z

    .line 801
    iput-boolean p4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mAlwaysPlayRemoteHoldTone:Z

    .line 802
    iput-boolean p4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mAutoRetryFailedWifiEmergencyCall:Z

    .line 803
    iput-boolean v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSupportCepOnPeer:Z

    .line 804
    iput-boolean p4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSupportD2DUsingRtp:Z

    .line 805
    iput-boolean p4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSupportSdpForRtpHeaderExtensions:Z

    .line 809
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSrvccTypeSupported:Ljava/util/List;

    .line 810
    new-instance v5, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$SrvccStartedCallback;

    invoke-direct {v5, p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$SrvccStartedCallback;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker-IA;)V

    iput-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSrvccStartedCallback:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$SrvccStartedCallback;

    .line 813
    sget-object v5, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->INACTIVE:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    iput-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHoldSwitchingState:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    .line 816
    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mLastDialString:Ljava/lang/String;

    .line 817
    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mLastDialArgs:Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;

    .line 818
    new-instance v5, Lcom/android/internal/telephony/DisplayInfoController$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lcom/android/internal/telephony/DisplayInfoController$$ExternalSyntheticLambda0;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mExecutor:Ljava/util/concurrent/Executor;

    .line 826
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhoneStateListeners:Ljava/util/List;

    .line 832
    iput-boolean p4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mTreatDowngradedVideoCallsAsVideoCalls:Z

    .line 838
    iput-boolean p4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mDropVideoCallWhenAnsweringAudioCall:Z

    .line 844
    iput-boolean v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mAllowAddCallDuringVideoCall:Z

    .line 850
    iput-boolean v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mAllowHoldingVideoCall:Z

    .line 856
    iput-boolean p4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mNotifyVtHandoverToWifiFail:Z

    .line 862
    iput-boolean p4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSupportDowngradeVtToAudio:Z

    .line 1101
    iput-boolean p4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mNotifyHandoverVideoFromWifiToLTE:Z

    .line 1109
    iput-boolean p4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mNotifyHandoverVideoFromLTEToWifi:Z

    .line 1117
    iput-boolean p4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHasAttemptedStartOfCallHandover:Z

    .line 1124
    iput-boolean p4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSupportPauseVideo:Z

    .line 1135
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsReasonCodeMap:Ljava/util/Map;

    .line 1142
    iput p4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mUssdMethod:I

    .line 1153
    iput-boolean p4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mShouldUpdateImsConfigOnDisconnect:Z

    .line 1155
    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingSilentRedialInfo:Landroid/util/Pair;

    .line 1160
    new-instance p4, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$$ExternalSyntheticLambda1;

    invoke-direct {p4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$$ExternalSyntheticLambda1;-><init>()V

    iput-object p4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSharedPreferenceProxy:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$SharedPreferenceProxy;

    .line 1164
    new-instance p4, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;

    invoke-direct {p4, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V

    iput-object p4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mConnectorRunnable:Ljava/lang/Runnable;

    .line 1189
    new-instance p4, Lcom/android/internal/telephony/LocalLog;

    const/16 v5, 0x40

    invoke-direct {p4, v5}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object p4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRegLocalLog:Lcom/android/internal/telephony/LocalLog;

    .line 1191
    new-instance p4, Lcom/android/internal/telephony/LocalLog;

    invoke-direct {p4, v5}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object p4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mOperationLocalLog:Lcom/android/internal/telephony/LocalLog;

    .line 1193
    new-instance p4, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsTrafficSessions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1245
    new-instance p4, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p4}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mProvisioningItemQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 3494
    new-instance p4, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;

    invoke-direct {p4, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V

    iput-object p4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsCallListener:Lcom/android/ims/ImsCall$Listener;

    .line 4549
    new-instance p4, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$9;

    invoke-direct {p4, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$9;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V

    iput-object p4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsUssdListener:Lcom/android/ims/ImsCall$Listener;

    .line 4626
    new-instance p4, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$10;

    invoke-direct {p4, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$10;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V

    iput-object p4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsCapabilityCallback:Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;

    .line 4641
    new-instance p4, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$11;

    invoke-direct {p4, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$11;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V

    iput-object p4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsStatsCallback:Lcom/android/ims/ImsManager$ImsStatsCallback;

    .line 4653
    new-instance p4, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$12;

    invoke-direct {p4, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$12;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V

    iput-object p4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mConfigCallback:Landroid/telephony/ims/ProvisioningManager$Callback;

    .line 1276
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 1277
    iput-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mConnectorFactory:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$ConnectorFactory;

    if-eqz p3, :cond_182

    .line 1279
    iput-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mExecutor:Ljava/util/concurrent/Executor;

    .line 1282
    :cond_182
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object p4

    iput-object p4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    .line 1284
    new-instance p4, Landroid/content/IntentFilter;

    invoke-direct {p4}, Landroid/content/IntentFilter;-><init>()V

    .line 1285
    const-string v5, "android.telecom.action.DEFAULT_DIALER_CHANGED"

    invoke-virtual {p4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1286
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v1, p4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1288
    iget-object p4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p4

    const-class v1, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p4, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/telephony/CarrierConfigManager;

    if-eqz p4, :cond_1ce

    .line 1292
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 1293
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mCarrierConfigChangeListener:Landroid/telephony/CarrierConfigManager$CarrierConfigChangeListener;

    .line 1292
    invoke-virtual {p4, v1, v5}, Landroid/telephony/CarrierConfigManager;->registerCarrierConfigChangeListener(Ljava/util/concurrent/Executor;Landroid/telephony/CarrierConfigManager$CarrierConfigChangeListener;)V

    .line 1294
    iget-object p4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 1295
    invoke-virtual {p4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getSubId()I

    move-result p4

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getSubId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getCarrierConfigBundle(I)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 1294
    invoke-direct {p0, p4, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->updateCarrierConfiguration(ILandroid/os/PersistableBundle;)V

    goto :goto_1d3

    .line 1297
    :cond_1ce
    const-string p4, "CarrierConfigManager is not available."

    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    .line 1300
    :goto_1d3
    new-instance p4, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$5;

    new-instance v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V

    invoke-direct {p4, p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$5;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Ljava/util/concurrent/Executor;)V

    iput-object p4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSettingsCallback:Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;

    .line 1307
    iget-object p4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/internal/telephony/Phone;->getDataSettingsManager()Lcom/android/internal/telephony/data/DataSettingsManager;

    move-result-object p4

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSettingsCallback:Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;

    invoke-virtual {p4, v1}, Lcom/android/internal/telephony/data/DataSettingsManager;->registerCallback(Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;)V

    .line 1309
    iget-object p4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 1310
    invoke-virtual {p4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p4

    const-string v1, "telecom"

    invoke-virtual {p4, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/telecom/TelecomManager;

    .line 1311
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 1312
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p4}, Landroid/telecom/TelecomManager;->getDefaultDialerPackage()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p0, v1, p4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getPackageUid(Landroid/content/Context;Ljava/lang/String;)I

    move-result p4

    .line 1311
    invoke-virtual {v4, p4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1314
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1315
    new-instance p4, Landroid/net/NetworkStats;

    invoke-direct {p4, v4, v5, v2}, Landroid/net/NetworkStats;-><init>(JI)V

    iput-object p4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVtDataUsageSnapshot:Landroid/net/NetworkStats;

    .line 1316
    new-instance p4, Landroid/net/NetworkStats;

    invoke-direct {p4, v4, v5, v2}, Landroid/net/NetworkStats;-><init>(JI)V

    iput-object p4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVtDataUsageUidSnapshot:Landroid/net/NetworkStats;

    .line 1317
    iget-object p4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 1318
    invoke-virtual {p4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p4

    const-string v1, "netstats"

    invoke-virtual {p4, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/app/usage/NetworkStatsManager;

    .line 1320
    const-string v1, "ImsPhoneCallTracker"

    invoke-virtual {p4, v1, v3}, Landroid/app/usage/NetworkStatsManager;->registerNetworkStatsProvider(Ljava/lang/String;Landroid/net/netstats/provider/NetworkStatsProvider;)V

    .line 1322
    iget-object p4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object p4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v3

    new-instance v5, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;

    invoke-direct {v5, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V

    const-string v4, "ImsPhoneCallTracker"

    move-object v1, p2

    move-object v6, p3

    invoke-interface/range {v1 .. v6}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$ConnectorFactory;->create(Landroid/content/Context;ILjava/lang/String;Lcom/android/ims/FeatureConnector$Listener;Ljava/util/concurrent/Executor;)Lcom/android/ims/FeatureConnector;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManagerConnector:Lcom/android/ims/FeatureConnector;

    .line 1341
    iget-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mConnectorRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1343
    new-instance p2, Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker;

    invoke-direct {p2, p1}, Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker;-><init>(Lcom/android/internal/telephony/Phone;)V

    iput-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsCallInfoTracker:Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker;

    .line 1345
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    const/16 p2, 0x22

    invoke-virtual {p1, p0, p2, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->registerForConnectionSetupFailure(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist access$000(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;
    .registers 1

    .line 194
    iget-object p0, p0, Lcom/android/internal/telephony/CallTracker;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    return-object p0
.end method

.method static synthetic blacklist access$100(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;
    .registers 1

    .line 194
    iget-object p0, p0, Lcom/android/internal/telephony/CallTracker;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    return-object p0
.end method

.method static synthetic blacklist access$300(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;
    .registers 1

    .line 194
    iget-object p0, p0, Lcom/android/internal/telephony/CallTracker;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    return-object p0
.end method

.method private declared-synchronized greylist-max-r addConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V
    .registers 3

    monitor-enter p0

    .line 3072
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3073
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->isEmergency()Z

    move-result p1

    if-eqz p1, :cond_17

    const/4 p1, 0x1

    .line 3074
    iput-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIsInEmergencyCall:Z

    .line 3075
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendEmergencyCallStateChange(Z)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_15

    goto :goto_17

    :catchall_15
    move-exception p1

    goto :goto_19

    .line 3077
    :cond_17
    :goto_17
    monitor-exit p0

    return-void

    :goto_19
    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_15

    throw p1
.end method

.method private blacklist addConnection(Ljava/util/List;Landroid/telephony/ims/SrvccCall;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/SrvccConnection;",
            ">;",
            "Landroid/telephony/ims/SrvccCall;",
            "Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_3

    goto :goto_67

    :cond_3
    if-nez p2, :cond_6

    goto :goto_67

    .line 6208
    :cond_6
    invoke-virtual {p2}, Landroid/telephony/ims/SrvccCall;->getPreciseCallState()I

    move-result v0

    .line 6209
    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isAlive(I)Z

    move-result v1

    const-string v2, "ImsPhoneCallTracker"

    if-nez v1, :cond_27

    .line 6210
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "addConnection not alive, "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6214
    :cond_27
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getConferenceParticipants(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)Ljava/util/List;

    move-result-object p0

    .line 6215
    const-string v1, "addConnection "

    if-eqz p0, :cond_68

    .line 6216
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_33
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_67

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/ims/internal/ConferenceParticipant;

    .line 6217
    invoke-virtual {p2}, Lcom/android/ims/internal/ConferenceParticipant;->getState()I

    move-result p3

    const/4 v3, 0x6

    if-ne p3, v3, :cond_4c

    .line 6218
    const-string p2, "addConnection participant is disconnected"

    invoke-static {v2, p2}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33

    .line 6221
    :cond_4c
    new-instance p3, Lcom/android/internal/telephony/SrvccConnection;

    invoke-direct {p3, p2, v0}, Lcom/android/internal/telephony/SrvccConnection;-><init>(Lcom/android/ims/internal/ConferenceParticipant;I)V

    .line 6222
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6223
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_33

    :cond_67
    :goto_67
    return-void

    .line 6226
    :cond_68
    new-instance p0, Lcom/android/internal/telephony/SrvccConnection;

    .line 6227
    invoke-virtual {p2}, Landroid/telephony/ims/SrvccCall;->getImsCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p2

    invoke-direct {p0, p2, p3, v0}, Lcom/android/internal/telephony/SrvccConnection;-><init>(Landroid/telephony/ims/ImsCallProfile;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;I)V

    .line 6228
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6229
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private blacklist answerWaitingCall()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2432
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 2434
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getVoiceCallSessionStats()Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getConnections()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->onImsAcceptCall(Ljava/util/List;)V

    .line 2435
    iget v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingCallVideoState:I

    .line 2436
    invoke-static {v1}, Landroid/telephony/ims/ImsCallProfile;->getCallTypeFromVideoState(I)I

    move-result v1

    .line 2435
    invoke-virtual {v0, v1}, Lcom/android/ims/ImsCall;->accept(I)V

    .line 2437
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result p0

    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->getSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v1, p0, v0, v2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsCommand(ILandroid/telephony/ims/ImsCallSession;I)V

    :cond_30
    return-void
.end method

.method private blacklist cacheConnectionTimeWithPhoneNumber(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V
    .registers 12

    .line 2458
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/lit8 v9, v0, 0x1

    .line 2460
    new-instance v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$CacheEntry;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 2461
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getConnectTime()J

    move-result-wide v5

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getConnectTimeReal()J

    move-result-wide v7

    invoke-direct/range {v2 .. v9}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$CacheEntry;-><init>(JJJI)V

    .line 2462
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->maintainConnectTimeCache()V

    .line 2463
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getNumberPresentation()I

    move-result v0

    if-ne v1, v0, :cond_4c

    .line 2467
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getFormattedPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2468
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhoneNumAndConnTime:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 2469
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getConnectTime()J

    move-result-wide v3

    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhoneNumAndConnTime:Ljava/util/Map;

    .line 2470
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$CacheEntry;

    invoke-static {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$CacheEntry;->-$$Nest$fgetmConnectTime(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$CacheEntry;)J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-gtz p1, :cond_46

    return-void

    .line 2474
    :cond_46
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhoneNumAndConnTime:Ljava/util/Map;

    invoke-interface {p0, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 2476
    :cond_4c
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mUnknownPeerConnTime:Ljava/util/Queue;

    invoke-interface {p0, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private blacklist canAddVideoCallDuringImsAudioCall(I)Z
    .registers 6

    .line 2627
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mAllowHoldingVideoCall:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    .line 2631
    :cond_6
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v0

    if-nez v0, :cond_14

    .line 2633
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v0

    .line 2636
    :cond_14
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v3, :cond_28

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 2637
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object p0

    sget-object v2, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne p0, v2, :cond_39

    :cond_28
    if-eqz v0, :cond_39

    .line 2638
    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->isVideoCall()Z

    move-result p0

    if-nez p0, :cond_39

    .line 2642
    invoke-static {p1}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result p0

    if-nez p0, :cond_37

    goto :goto_39

    :cond_37
    const/4 p0, 0x0

    return p0

    :cond_39
    :goto_39
    return v1
.end method

.method private blacklist cleanseInstantLetteringMessage(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 5455
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_13

    .line 5459
    :cond_7
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getSubId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getCarrierConfigBundle(I)Landroid/os/PersistableBundle;

    move-result-object v0

    if-nez v0, :cond_14

    :goto_13
    return-object p1

    .line 5466
    :cond_14
    const-string v1, "carrier_instant_lettering_invalid_chars_string"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5468
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_26

    .line 5469
    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5473
    :cond_26
    const-string v1, "carrier_instant_lettering_escaped_chars_string"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5475
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_37

    .line 5476
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->escapeChars(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_37
    return-object p1
.end method

.method private blacklist dialInternal(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;IIIILandroid/os/Bundle;)V
    .registers 23

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p6

    .line 2078
    const-string v3, "CallRadioTech"

    const-string v4, "android.telecom.extra.OUTGOING_PICTURE"

    const-string v5, "android.telecom.extra.LOCATION"

    const-string v6, "android.telecom.extra.PRIORITY"

    const-string v7, "CallPull"

    const-string v8, "android.telecom.extra.CALL_SUBJECT"

    if-nez v2, :cond_16

    goto/16 :goto_1b0

    .line 2082
    :cond_16
    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->isAdhocConference()Z

    move-result v9

    const-wide/16 v10, 0x1f4

    const/16 v12, 0x12

    if-nez v9, :cond_44

    .line 2083
    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3c

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_3c

    .line 2084
    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v9

    const/16 v13, 0x4e

    invoke-virtual {v9, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-ltz v9, :cond_44

    :cond_3c
    const/4 v0, 0x7

    .line 2086
    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setDisconnectCause(I)V

    .line 2087
    invoke-virtual {v1, v12, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_44
    const/4 v9, 0x0

    .line 2092
    invoke-virtual {v1, v9}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->setMute(Z)V

    .line 2093
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->isEmergency()Z

    move-result v9

    const/4 v13, 0x1

    if-eqz v9, :cond_51

    const/4 v14, 0x2

    goto :goto_52

    :cond_51
    move v14, v13

    .line 2096
    :goto_52
    invoke-static/range {p3 .. p3}, Landroid/telephony/ims/ImsCallProfile;->getCallTypeFromVideoState(I)I

    move-result v15

    move/from16 v10, p3

    .line 2098
    invoke-virtual {v2, v10}, Lcom/android/internal/telephony/Connection;->setVideoState(I)V

    .line 2101
    :try_start_5b
    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    .line 2102
    iget-object v11, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {v11, v14, v15}, Lcom/android/ims/ImsManager;->createCallProfile(II)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v11

    .line 2103
    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->isAdhocConference()Z

    move-result v14

    if-eqz v14, :cond_7d

    .line 2104
    const-string v14, "android.telephony.ims.extra.CONFERENCE"

    invoke-virtual {v11, v14, v13}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 2107
    const-string v14, "conference"

    invoke-virtual {v11, v14, v13}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    goto :goto_7d

    :catch_7a
    move-exception v0

    goto/16 :goto_17c

    .line 2109
    :cond_7d
    :goto_7d
    const-string v14, "oir"

    move/from16 v15, p2

    invoke-virtual {v11, v14, v15}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 2110
    const-string v14, "android.telephony.ims.extra.RETRY_CALL_FAIL_REASON"

    move/from16 v15, p4

    invoke-virtual {v11, v14, v15}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 2112
    const-string v14, "android.telephony.ims.extra.RETRY_CALL_FAIL_NETWORKTYPE"

    move/from16 v15, p5

    invoke-virtual {v11, v14, v15}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    if-eqz v9, :cond_97

    .line 2117
    invoke-direct {v1, v11, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->setEmergencyCallInfo(Landroid/telephony/ims/ImsCallProfile;Lcom/android/internal/telephony/Connection;)V

    :cond_97
    if-eqz v0, :cond_13c

    .line 2123
    invoke-virtual {v0, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b5

    .line 2124
    const-string v9, "DisplayText"

    .line 2125
    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v1, v14}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->cleanseInstantLetteringMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2124
    invoke-virtual {v0, v9, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2128
    const-string v9, "android.telephony.ims.extra.CALL_SUBJECT"

    .line 2129
    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2128
    invoke-virtual {v11, v9, v8}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 2132
    :cond_b5
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c4

    .line 2133
    const-string v8, "android.telephony.ims.extra.PRIORITY"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v11, v8, v6}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 2137
    :cond_c4
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d3

    .line 2138
    const-string v6, "android.telephony.ims.extra.LOCATION"

    .line 2139
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    .line 2138
    invoke-virtual {v11, v6, v5}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2143
    :cond_d3
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f2

    .line 2145
    iget-object v5, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 2146
    invoke-virtual {v5}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getSubId()I

    move-result v5

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/os/ParcelUuid;

    .line 2147
    invoke-virtual {v4}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v4

    .line 2145
    invoke-static {v5, v4}, Landroid/telephony/TelephonyLocalConnection;->getCallComposerServerUrlForHandle(ILjava/util/UUID;)Ljava/lang/String;

    move-result-object v4

    .line 2148
    const-string v5, "android.telephony.ims.extra.PICTURE_URL"

    invoke-virtual {v11, v5, v4}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 2151
    :cond_f2
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->hasRttTextStream()Z

    move-result v4

    if-eqz v4, :cond_fc

    .line 2152
    iget-object v4, v11, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iput v13, v4, Landroid/telephony/ims/ImsStreamMediaProfile;->mRttMode:I

    .line 2155
    :cond_fc
    invoke-virtual {v0, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_117

    .line 2156
    iget-object v4, v11, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    .line 2157
    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 2156
    invoke-virtual {v4, v7, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2158
    const-string v4, "android.telephony.ImsExternalCallTracker.extra.EXTERNAL_CALL_ID"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 2160
    invoke-virtual {v2, v13}, Lcom/android/internal/telephony/Connection;->setIsPulledCall(Z)V

    .line 2161
    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/Connection;->setPulledDialogId(I)V

    .line 2164
    :cond_117
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_135

    .line 2165
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dialInternal containing EXTRA_CALL_RAT_TYPE, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2166
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2165
    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->logi(Ljava/lang/String;)V

    .line 2170
    :cond_135
    iget-object v3, v11, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    const-string v4, "android.telephony.ims.extra.OEM_EXTRAS"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2178
    :cond_13c
    iget-object v0, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getVoiceCallSessionStats()Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->onImsDial(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    .line 2180
    iget-object v0, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    .line 2181
    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->isAdhocConference()Z

    move-result v3

    if-eqz v3, :cond_151

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getParticipantsToDial()[Ljava/lang/String;

    move-result-object v10

    :cond_151
    iget-object v3, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsCallListener:Lcom/android/ims/ImsCall$Listener;

    .line 2180
    invoke-virtual {v0, v11, v10, v3}, Lcom/android/ims/ImsManager;->makeCall(Landroid/telephony/ims/ImsCallProfile;[Ljava/lang/String;Lcom/android/ims/ImsCall$Listener;)Lcom/android/ims/ImsCall;

    move-result-object v0

    .line 2183
    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setImsCall(Lcom/android/ims/ImsCall;)V

    .line 2185
    iget-object v3, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v4, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v4

    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->getSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsCallStart(ILandroid/telephony/ims/ImsCallSession;)V

    .line 2187
    invoke-direct {v1, v2, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->setVideoCallProvider(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Lcom/android/ims/ImsCall;)V

    .line 2188
    iget-boolean v0, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mAllowAddCallDuringVideoCall:Z

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/Connection;->setAllowAddCallDuringVideoCall(Z)V

    .line 2189
    iget-boolean v0, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mAllowHoldingVideoCall:Z

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/Connection;->setAllowHoldingVideoCall(Z)V

    .line 2190
    iget-object v0, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsCallInfoTracker:Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker;->addImsCallStatus(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V
    :try_end_17b
    .catch Lcom/android/ims/ImsException; {:try_start_5b .. :try_end_17b} :catch_7a
    .catch Landroid/os/RemoteException; {:try_start_5b .. :try_end_17b} :catch_1b0

    return-void

    .line 2192
    :goto_17c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dialInternal : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    .line 2193
    iget-object v3, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mOperationLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dialInternal exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    const/16 v0, 0x24

    .line 2194
    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setDisconnectCause(I)V

    const-wide/16 v2, 0x1f4

    .line 2195
    invoke-virtual {v1, v12, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :catch_1b0
    :goto_1b0
    return-void
.end method

.method private blacklist dialInternal(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;IILandroid/os/Bundle;)V
    .registers 12

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v6, p4

    .line 2071
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->dialInternal(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;IIIILandroid/os/Bundle;)V

    return-void
.end method

.method private greylist-max-r dialPendingMO()V
    .registers 3

    .line 3482
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isPhoneInEcbMode()Z

    move-result v0

    .line 3483
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->isEmergency()Z

    move-result v1

    if-eqz v0, :cond_17

    if-eqz v0, :cond_11

    if-eqz v1, :cond_11

    goto :goto_17

    :cond_11
    const/16 v0, 0x15

    .line 3487
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_17
    :goto_17
    const/16 v0, 0x14

    .line 3485
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private blacklist downgradeVideoCall(ILcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V
    .registers 6

    .line 5748
    invoke-virtual {p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v0

    if-eqz v0, :cond_7e

    const/4 v1, 0x3

    .line 5750
    invoke-virtual {p2, v1}, Lcom/android/internal/telephony/Connection;->hasCapabilities(I)Z

    move-result v1

    const-string v2, "downgradeVideoCall :: callId="

    if-eqz v1, :cond_33

    iget-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSupportPauseVideo:Z

    if-nez v1, :cond_33

    .line 5754
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getTelecomCallId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " Downgrade to audio"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 5758
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->modifyVideoCall(Lcom/android/ims/ImsCall;I)V

    return-void

    .line 5759
    :cond_33
    iget-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSupportPauseVideo:Z

    if-eqz v1, :cond_5e

    const/16 v1, 0x57f

    if-eq p1, v1, :cond_5e

    .line 5762
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getTelecomCallId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Pause audio"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 5764
    iput-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mShouldUpdateImsConfigOnDisconnect:Z

    const/4 p0, 0x2

    .line 5765
    invoke-virtual {p2, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->pauseVideo(I)V

    return-void

    .line 5767
    :cond_5e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getTelecomCallId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " Disconnect call."

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    const/16 p0, 0x1f5

    .line 5770
    invoke-virtual {v0, p0, p1}, Lcom/android/ims/ImsCall;->terminate(II)V

    :cond_7e
    return-void
.end method

.method private blacklist escapeChars(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 5490
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5491
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v0, :cond_24

    aget-char v2, p2, v1

    .line 5492
    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 5493
    const-string v3, "\\"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5495
    :cond_1e
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 5498
    :cond_24
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized greylist-max-r findConnection(Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .registers 7

    monitor-enter p0

    .line 3012
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_8
    if-ge v2, v1, :cond_1c

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 3013
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v4
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_1a

    if-ne v4, p1, :cond_8

    .line 3014
    monitor-exit p0

    return-object v3

    :catchall_1a
    move-exception p1

    goto :goto_1f

    .line 3017
    :cond_1c
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :goto_1f
    :try_start_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1a

    throw p1
.end method

.method private declared-synchronized blacklist findConnection(Ljava/lang/String;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .registers 7

    monitor-enter p0

    .line 6183
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_8
    :goto_8
    if-ge v2, v1, :cond_2e

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 6184
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v4

    if-nez v4, :cond_19

    goto :goto_8

    .line 6186
    :cond_19
    invoke-virtual {v4}, Lcom/android/ims/ImsCall;->getCallSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object v4

    if-nez v4, :cond_20

    goto :goto_8

    .line 6189
    :cond_20
    invoke-virtual {v4}, Landroid/telephony/ims/ImsCallSession;->getCallId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_2c

    if-eqz v4, :cond_8

    .line 6190
    monitor-exit p0

    return-object v3

    :catchall_2c
    move-exception p1

    goto :goto_31

    .line 6193
    :cond_2e
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :goto_31
    :try_start_31
    monitor-exit p0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_2c

    throw p1
.end method

.method private blacklist findConnectionTimeUsePhoneNumber(Lcom/android/ims/internal/ConferenceParticipant;)Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$CacheEntry;
    .registers 4

    .line 2482
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->maintainConnectTimeCache()V

    .line 2483
    invoke-virtual {p1}, Lcom/android/ims/internal/ConferenceParticipant;->getParticipantPresentation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_41

    .line 2484
    invoke-virtual {p1}, Lcom/android/ims/internal/ConferenceParticipant;->getHandle()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_40

    .line 2485
    invoke-virtual {p1}, Lcom/android/ims/internal/ConferenceParticipant;->getHandle()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1c

    goto :goto_40

    .line 2489
    :cond_1c
    invoke-virtual {p1}, Lcom/android/ims/internal/ConferenceParticipant;->getHandle()Landroid/net/Uri;

    move-result-object p1

    .line 2490
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 2489
    invoke-static {p1, v0}, Lcom/android/ims/internal/ConferenceParticipant;->getParticipantAddress(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 2490
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    .line 2491
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_33

    return-object v1

    .line 2494
    :cond_33
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getFormattedPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2495
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhoneNumAndConnTime:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$CacheEntry;

    return-object p0

    :cond_40
    :goto_40
    return-object v1

    .line 2497
    :cond_41
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mUnknownPeerConnTime:Ljava/util/Queue;

    invoke-interface {p0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$CacheEntry;

    return-object p0
.end method

.method private blacklist getCarrierConfigBundle(I)Landroid/os/PersistableBundle;
    .registers 4

    .line 5432
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 5433
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    const/4 v1, 0x0

    if-nez v0, :cond_17

    .line 5435
    const-string p1, "getCarrierConfigBundle: No carrier config service found"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    return-object v1

    .line 5438
    :cond_17
    invoke-virtual {v0, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p1

    if-nez p1, :cond_23

    .line 5440
    const-string p1, "getCarrierConfigBundle: carrier config is null, skipping."

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    return-object v1

    :cond_23
    return-object p1
.end method

.method private blacklist getConferenceParticipants(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/ims/internal/ConferenceParticipant;",
            ">;"
        }
    .end annotation

    .line 6234
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSrvccTypeSupported:Ljava/util/List;

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_f

    return-object v0

    .line 6236
    :cond_f
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object p0

    if-nez p0, :cond_16

    return-object v0

    .line 6239
    :cond_16
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->getConferenceParticipants()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_24

    .line 6240
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_23

    goto :goto_24

    :cond_23
    return-object p0

    :cond_24
    :goto_24
    return-object v0
.end method

.method private blacklist getCountryIso()Ljava/lang/String;
    .registers 2

    .line 2511
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getSubId()I

    move-result v0

    .line 2512
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 2513
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    if-nez p0, :cond_18

    const/4 p0, 0x0

    return-object p0

    .line 2514
    :cond_18
    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getCountryIso()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getFormattedPhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 2502
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getCountryIso()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_7

    goto :goto_d

    .line 2506
    :cond_7
    invoke-static {p1, p0}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_e

    :goto_d
    return-object p1

    :cond_e
    return-object p0
.end method

.method private blacklist getImsManagerIsNullException()Lcom/android/ims/ImsException;
    .registers 3

    .line 5531
    new-instance p0, Lcom/android/ims/ImsException;

    const-string v0, "no ims manager"

    const/16 v1, 0x66

    invoke-direct {p0, v0, v1}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    return-object p0
.end method

.method private blacklist getImsTrafficSession(I)Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$ImsTrafficSession;
    .registers 2

    .line 6304
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsTrafficSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$ImsTrafficSession;

    return-object p0
.end method

.method private blacklist getNetworkCountryIso()Ljava/lang/String;
    .registers 1

    .line 5965
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-eqz p0, :cond_15

    .line 5966
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p0

    if-eqz p0, :cond_15

    .line 5968
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getLocaleTracker()Lcom/android/internal/telephony/LocaleTracker;

    move-result-object p0

    if-eqz p0, :cond_15

    .line 5970
    invoke-virtual {p0}, Lcom/android/internal/telephony/LocaleTracker;->getCurrentCountry()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5974
    :cond_15
    const-string p0, ""

    return-object p0
.end method

.method private blacklist getPackageUid(Landroid/content/Context;Ljava/lang/String;)I
    .registers 5

    const/4 v0, -0x1

    if-nez p2, :cond_4

    return v0

    .line 1367
    :cond_4
    :try_start_4
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result p0
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_d} :catch_e

    return p0

    .line 1369
    :catch_e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot find package uid. pkg = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    return v0
.end method

.method private blacklist getPreciseDisconnectCauseFromReasonInfo(Landroid/telephony/ims/ImsReasonInfo;)I
    .registers 3

    .line 3465
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->maybeRemapReasonCode(Landroid/telephony/ims/ImsReasonInfo;)I

    move-result p0

    const p1, 0xffff

    invoke-virtual {v0, p0, p1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    return p0
.end method

.method private blacklist handleConferenceFailed(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V
    .registers 3

    if-eqz p1, :cond_5

    .line 6041
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->handleMergeComplete()V

    :cond_5
    if-eqz p2, :cond_a

    .line 6044
    invoke-virtual {p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->handleMergeComplete()V

    .line 6046
    :cond_a
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    sget-object p1, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->CONFERENCE:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;)V

    return-void
.end method

.method private blacklist handleDataEnabledChange(ZI)V
    .registers 8

    const/4 v0, 0x0

    if-nez p1, :cond_3d

    .line 5714
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :cond_9
    :goto_9
    if-ge v0, v1, :cond_7d

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    check-cast v2, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 5715
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 5716
    invoke-virtual {v3}, Lcom/android/ims/ImsCall;->isVideoCall()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v3}, Lcom/android/ims/ImsCall;->isWifiCall()Z

    move-result v3

    if-nez v3, :cond_9

    .line 5717
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleDataEnabledChange - downgrading "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 5718
    invoke-direct {p0, p2, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->downgradeVideoCall(ILcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    goto :goto_9

    .line 5721
    :cond_3d
    iget-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSupportPauseVideo:Z

    if-eqz p1, :cond_7d

    .line 5723
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    move v1, v0

    :cond_48
    :goto_48
    if-ge v1, p2, :cond_7b

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 5726
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleDataEnabledChange - resuming "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 5727
    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getVideoState()I

    move-result v3

    invoke-static {v3}, Landroid/telecom/VideoProfile;->isPaused(I)Z

    move-result v3

    if-eqz v3, :cond_48

    const/4 v3, 0x2

    .line 5728
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->wasVideoPausedFromSource(I)Z

    move-result v4

    if-eqz v4, :cond_48

    .line 5731
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->resumeVideo(I)V

    goto :goto_48

    .line 5734
    :cond_7b
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mShouldUpdateImsConfigOnDisconnect:Z

    :cond_7d
    return-void
.end method

.method private greylist-max-r handleEcmTimer(I)V
    .registers 2

    .line 2066
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->handleTimerInEmergencyCallbackMode(I)V

    return-void
.end method

.method private blacklist handleFeatureCapabilityChanged(Landroid/telephony/ims/feature/ImsFeature$Capabilities;)V
    .registers 5

    .line 5880
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isVideoCallEnabled()Z

    move-result v0

    .line 5884
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x78

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 5885
    const-string v2, "handleFeatureCapabilityChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5887
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 5888
    new-instance v2, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-direct {v2, p1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;-><init>(Landroid/telephony/ims/feature/ImsFeature$Capabilities;)V

    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMmTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    .line 5890
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isVideoCallEnabled()Z

    move-result p1

    if-eq v0, p1, :cond_22

    const/4 v0, 0x1

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    .line 5893
    :goto_23
    const-string v2, " isVideoEnabledStateChanged="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5894
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_46

    .line 5898
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleFeatureCapabilityChanged - notifyForVideoCapabilityChanged="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 5900
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyForVideoCapabilityChanged(Z)V

    .line 5903
    :cond_46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 5905
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleFeatureCapabilityChanged: isVolteEnabled="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5906
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isVoiceOverCellularImsEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isVideoCallEnabled="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5907
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isVideoCallEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isVowifiEnabled="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5908
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isVowifiEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isUtEnabled="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5909
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isUtEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5911
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 5913
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRegLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 5915
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onFeatureCapabilityChanged()V

    .line 5917
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getImsRegistrationTech()I

    move-result p1

    .line 5918
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMmTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsCapabilities(IILandroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)V

    .line 5919
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getImsStats()Lcom/android/internal/telephony/metrics/ImsStats;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMmTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-virtual {v0, p1, p0}, Lcom/android/internal/telephony/metrics/ImsStats;->onImsCapabilitiesChanged(ILandroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)V

    return-void
.end method

.method private blacklist handleProvisioningChanged()V
    .registers 5

    const/4 v0, 0x0

    .line 6323
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mProvisioningItemQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$ProvisioningItem;

    if-eqz v1, :cond_34

    .line 6324
    iget v2, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$ProvisioningItem;->mItem:I

    .line 6325
    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$ProvisioningItem;->mValue:Ljava/lang/Object;

    instance-of v3, v1, Ljava/lang/Integer;

    if-eqz v3, :cond_28

    .line 6326
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->sendConfigChangedIntent(ILjava/lang/String;)V

    const/16 v1, 0x1c

    if-eq v2, v1, :cond_26

    const/16 v1, 0xa

    if-eq v2, v1, :cond_26

    const/16 v1, 0xb

    if-ne v2, v1, :cond_1

    :cond_26
    const/4 v0, 0x1

    goto :goto_1

    .line 6332
    :cond_28
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 6333
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->sendConfigChangedIntent(ILjava/lang/String;)V

    goto :goto_1

    :cond_34
    if-eqz v0, :cond_39

    .line 6338
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->updateImsServiceConfig()V

    :cond_39
    return-void
.end method

.method private blacklist holdActiveCallForPendingMo()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 2299
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHoldSwitchingState:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    sget-object v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->PENDING_SINGLE_CALL_HOLD:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    if-eq v0, v1, :cond_4e

    sget-object v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->SWAPPING_ACTIVE_AND_HELD:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    if-ne v0, v1, :cond_b

    goto :goto_4e

    .line 2305
    :cond_b
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v1

    .line 2307
    sget-object v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->HOLDING_TO_DIAL_OUTGOING:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHoldSwitchingState:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    .line 2308
    const-string v2, "holdActiveCallForPendingMo"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->logHoldSwapState(Ljava/lang/String;)V

    .line 2310
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->switchWith(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    .line 2312
    :try_start_21
    invoke-virtual {v1}, Lcom/android/ims/ImsCall;->hold()V

    .line 2313
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v3

    invoke-virtual {v1}, Lcom/android/ims/ImsCall;->getSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object v1

    const/4 v4, 0x5

    invoke-virtual {v2, v3, v1, v4}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsCommand(ILandroid/telephony/ims/ImsCallSession;I)V
    :try_end_34
    .catch Lcom/android/ims/ImsException; {:try_start_21 .. :try_end_34} :catch_35

    return-void

    :catch_35
    move-exception v1

    .line 2316
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->switchWith(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    .line 2317
    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHoldSwitchingState:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    .line 2318
    const-string v0, "holdActiveCallForPendingMo - fail"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->logHoldSwapState(Ljava/lang/String;)V

    .line 2319
    new-instance p0, Lcom/android/internal/telephony/CallStateException;

    invoke-virtual {v1}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2301
    :cond_4e
    :goto_4e
    const-string v0, "Ignoring hold request while already holding or swapping"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->logi(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist initializeTerminalBasedCallWaiting()V
    .registers 5

    .line 6067
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_21

    const-wide/16 v2, 0x4

    .line 6069
    :try_start_7
    invoke-virtual {v0, v2, v3}, Lcom/android/ims/ImsManager;->isCapable(J)Z

    move-result v0
    :try_end_b
    .catch Lcom/android/ims/ImsException; {:try_start_7 .. :try_end_b} :catch_c

    goto :goto_22

    :catch_c
    move-exception v0

    .line 6071
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initializeTerminalBasedCallWaiting : exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    :cond_21
    move v0, v1

    .line 6074
    :goto_22
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initializeTerminalBasedCallWaiting capable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->logi(Ljava/lang/String;)V

    .line 6075
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setTerminalBasedCallWaitingSupported(Z)V

    if-eqz v0, :cond_46

    .line 6078
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getTerminalBasedCallWaitingState(Z)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->setTerminalBasedCallWaitingStatus(I)V

    :cond_46
    return-void
.end method

.method private blacklist internalClearDisconnected()V
    .registers 2

    .line 2681
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->clearDisconnected()V

    .line 2682
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->clearDisconnected()V

    .line 2683
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->clearDisconnected()V

    .line 2684
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->clearDisconnected()V

    return-void
.end method

.method private static blacklist isAlive(I)Z
    .registers 3

    .line 0
    const/16 v0, 0x9

    const/4 v1, 0x1

    if-eq p0, v0, :cond_a

    packed-switch p0, :pswitch_data_c

    const/4 p0, 0x0

    return p0

    :cond_a
    :pswitch_a
    return v1

    nop

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
    .end packed-switch
.end method

.method private blacklist isCallProfileSupported(Landroid/telephony/ims/SrvccCall;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_9

    .line 6155
    const-string p1, "isCallProfileSupported null profile"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    return v0

    .line 6159
    :cond_9
    invoke-virtual {p1}, Landroid/telephony/ims/SrvccCall;->getPreciseCallState()I

    move-result v1

    const/16 v2, 0x9

    const/4 v3, 0x2

    if-eq v1, v2, :cond_72

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_7e

    .line 6175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCallProfileSupported invalid state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6176
    invoke-virtual {p1}, Landroid/telephony/ims/SrvccCall;->getPreciseCallState()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6175
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    return v0

    .line 6171
    :pswitch_2f
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSrvccTypeSupported:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 6169
    :pswitch_3a
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSrvccTypeSupported:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 6167
    :pswitch_45
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSrvccTypeSupported:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 6165
    :pswitch_50
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSrvccTypeSupported:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 6163
    :pswitch_5b
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSrvccTypeSupported:Ljava/util/List;

    const/4 p1, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 6161
    :pswitch_67
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSrvccTypeSupported:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 6173
    :cond_72
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSrvccTypeSupported:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_7e
    .packed-switch 0x1
        :pswitch_67
        :pswitch_5b
        :pswitch_50
        :pswitch_45
        :pswitch_3a
        :pswitch_2f
    .end packed-switch
.end method

.method private blacklist isForegroundHigherPriority()Z
    .registers 3

    .line 6054
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_e

    return v1

    .line 6057
    :cond_e
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getFirstConnection()Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v0

    .line 6058
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getFirstConnection()Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object p0

    .line 6059
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getCallPriority()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getCallPriority()I

    move-result p0

    if-le v0, p0, :cond_25

    return v1

    :cond_25
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isImsCapabilityInCacheAvailable(II)Z
    .registers 4

    .line 5372
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getImsRegistrationTech()I

    move-result v0

    if-ne v0, p2, :cond_10

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMmTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-virtual {p0, p1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isPhoneInEcbMode()Z
    .registers 1

    .line 3473
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isInEcm()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isWifiConnected()Z
    .registers 3

    .line 5793
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "connectivity"

    .line 5794
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    const/4 v0, 0x0

    if-eqz p0, :cond_25

    .line 5796
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_25

    .line 5797
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 5798
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_25

    return v1

    :cond_25
    return v0
.end method

.method private synthetic blacklist lambda$hangupAllConnections$1(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V
    .registers 4

    .line 1533
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Disconnecting callId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getTelecomCallId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->logi(Ljava/lang/String;)V

    .line 1535
    :try_start_18
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->hangup()V
    :try_end_1b
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_18 .. :try_end_1b} :catch_1c

    return-void

    .line 1537
    :catch_1c
    const-string p1, "Failed to disconnet call..."

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic blacklist lambda$stopAllImsTrafficTypes$3(Ljava/lang/Integer;)V
    .registers 3

    .line 6313
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->stopImsTraffic(ILandroid/os/Message;)V

    return-void
.end method

.method private blacklist maintainConnectTimeCache()V
    .registers 5

    .line 2444
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    sub-long/2addr v0, v2

    .line 2446
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhoneNumAndConnTime:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    new-instance v3, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$$ExternalSyntheticLambda3;

    invoke-direct {v3, v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$$ExternalSyntheticLambda3;-><init>(J)V

    invoke-interface {v2, v3}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 2450
    :goto_16
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mUnknownPeerConnTime:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_34

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mUnknownPeerConnTime:Ljava/util/Queue;

    .line 2451
    invoke-interface {v2}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$CacheEntry;

    invoke-static {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$CacheEntry;->-$$Nest$fgetmCachedTime(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$CacheEntry;)J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-gez v2, :cond_34

    .line 2452
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mUnknownPeerConnTime:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    goto :goto_16

    :cond_34
    return-void
.end method

.method private blacklist maybeConfigureRtpHeaderExtensions()V
    .registers 4

    .line 1433
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mDeviceToDeviceForceEnabled:Z

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mConfig:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$Config;

    if-eqz v0, :cond_49

    iget-boolean v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$Config;->isD2DCommunicationSupported:Z

    if-eqz v0, :cond_49

    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSupportD2DUsingRtp:Z

    if-eqz v0, :cond_49

    .line 1436
    :cond_10
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 1437
    iget-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSupportSdpForRtpHeaderExtensions:Z

    if-eqz v1, :cond_29

    .line 1438
    sget-object v1, Lcom/android/internal/telephony/d2d/RtpTransport;->CALL_STATE_RTP_HEADER_EXTENSION_TYPE:Landroid/telephony/ims/RtpHeaderExtensionType;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1439
    sget-object v1, Lcom/android/internal/telephony/d2d/RtpTransport;->DEVICE_STATE_RTP_HEADER_EXTENSION_TYPE:Landroid/telephony/ims/RtpHeaderExtensionType;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1440
    const-string v1, "maybeConfigureRtpHeaderExtensions: set offered RTP header extension types"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->logi(Ljava/lang/String;)V

    goto :goto_2e

    .line 1443
    :cond_29
    const-string v1, "maybeConfigureRtpHeaderExtensions: SDP negotiation not supported; not setting offered RTP header extension types"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->logi(Ljava/lang/String;)V

    .line 1447
    :goto_2e
    :try_start_2e
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {v1, v0}, Lcom/android/ims/ImsManager;->setOfferedRtpHeaderExtensionTypes(Ljava/util/Set;)V
    :try_end_33
    .catch Lcom/android/ims/ImsException; {:try_start_2e .. :try_end_33} :catch_34

    return-void

    :catch_34
    move-exception v0

    .line 1449
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maybeConfigureRtpHeaderExtensions: failed to set extensions; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    :cond_49
    return-void
.end method

.method private blacklist maybeNotifyDataDisabled(ZI)V
    .registers 7

    if-nez p1, :cond_41

    .line 5679
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    :cond_9
    :goto_9
    if-ge v0, p1, :cond_41

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    check-cast v1, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 5680
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 5681
    invoke-virtual {v2}, Lcom/android/ims/ImsCall;->isVideoCall()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v2}, Lcom/android/ims/ImsCall;->isWifiCall()Z

    move-result v2

    if-nez v2, :cond_9

    const/4 v2, 0x3

    .line 5682
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/Connection;->hasCapabilities(I)Z

    move-result v2

    if-eqz v2, :cond_9

    const/16 v2, 0x57e

    const/4 v3, 0x0

    if-ne p2, v2, :cond_37

    .line 5689
    const-string v2, "android.telephony.event.EVENT_DOWNGRADE_DATA_DISABLED"

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/Connection;->onConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_9

    :cond_37
    const/16 v2, 0x57d

    if-ne p2, v2, :cond_9

    .line 5692
    const-string v2, "android.telephony.event.EVENT_DOWNGRADE_DATA_LIMIT_REACHED"

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/Connection;->onConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_9

    :cond_41
    return-void
.end method

.method private blacklist maybeSetVideoCallProvider(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Lcom/android/ims/ImsCall;)V
    .registers 5

    .line 3180
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v0

    .line 3181
    invoke-virtual {p2}, Lcom/android/ims/ImsCall;->getCallSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object v1

    if-nez v0, :cond_2c

    if-eqz v1, :cond_2c

    .line 3183
    invoke-virtual {v1}, Landroid/telephony/ims/ImsCallSession;->getVideoCallProvider()Lcom/android/ims/internal/IImsVideoCallProvider;

    move-result-object v0

    if-nez v0, :cond_13

    goto :goto_2c

    .line 3188
    :cond_13
    :try_start_13
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->setVideoCallProvider(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Lcom/android/ims/ImsCall;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_16} :catch_17

    return-void

    :catch_17
    move-exception p1

    .line 3190
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "maybeSetVideoCallProvider: exception "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    :cond_2c
    :goto_2c
    return-void
.end method

.method private blacklist modifyVideoCall(Lcom/android/ims/ImsCall;I)V
    .registers 4

    .line 5599
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->findConnection(Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object p0

    if-eqz p0, :cond_21

    .line 5601
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getVideoState()I

    move-result p1

    .line 5602
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 5603
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object p0

    new-instance v0, Landroid/telecom/VideoProfile;

    invoke-direct {v0, p1}, Landroid/telecom/VideoProfile;-><init>(I)V

    new-instance p1, Landroid/telecom/VideoProfile;

    invoke-direct {p1, p2}, Landroid/telecom/VideoProfile;-><init>(I)V

    invoke-virtual {p0, v0, p1}, Landroid/telecom/Connection$VideoProvider;->onSendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    :cond_21
    return-void
.end method

.method private blacklist notifyPhoneStateChanged(Lcom/android/internal/telephony/PhoneConstants$State;Lcom/android/internal/telephony/PhoneConstants$State;)V
    .registers 4

    .line 5588
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhoneStateListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$PhoneStateListener;

    .line 5589
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$PhoneStateListener;->onPhoneStateChanged(Lcom/android/internal/telephony/PhoneConstants$State;Lcom/android/internal/telephony/PhoneConstants$State;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method private blacklist onDataEnabledChanged(ZI)V
    .registers 10

    .line 5619
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDataEnabledChanged: enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 5621
    iput-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIsDataEnabled:Z

    .line 5623
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIsViLteDataMetered:Z

    if-nez v0, :cond_43

    .line 5624
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ignore data "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_31

    const-string p1, "enabled"

    goto :goto_33

    :cond_31
    const-string p1, "disabled"

    :goto_33
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " - carrier policy indicates that data is not metered for ViLTE calls."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    return-void

    .line 5631
    :cond_43
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_4b
    const/4 v4, 0x1

    if-ge v3, v1, :cond_6a

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v3, v3, 0x1

    check-cast v5, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 5632
    invoke-virtual {v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v6

    if-nez p1, :cond_66

    if-eqz v6, :cond_65

    .line 5633
    invoke-virtual {v6}, Lcom/android/ims/ImsCall;->isWifiCall()Z

    move-result v6

    if-eqz v6, :cond_65

    goto :goto_66

    :cond_65
    move v4, v2

    .line 5634
    :cond_66
    :goto_66
    invoke-virtual {v5, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setLocalVideoCapable(Z)V

    goto :goto_4b

    :cond_6a
    if-ne p2, v4, :cond_6f

    const/16 v0, 0x57d

    goto :goto_71

    :cond_6f
    const/16 v0, 0x57e

    .line 5649
    :goto_71
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->maybeNotifyDataDisabled(ZI)V

    .line 5651
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->handleDataEnabledChange(ZI)V

    .line 5655
    iget-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mShouldUpdateImsConfigOnDisconnect:Z

    if-nez p1, :cond_85

    const/4 p1, -0x1

    if-eq p2, p1, :cond_85

    iget-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mCarrierConfigLoadedForSubscription:Z

    if-eqz p1, :cond_85

    .line 5660
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->updateImsServiceConfig()V

    :cond_85
    return-void
.end method

.method private blacklist prepareForDialing(Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 1623
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->clearDisconnected()V

    .line 1624
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    if-eqz v0, :cond_6b

    .line 1629
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->checkForDialIssues()V

    .line 1630
    iget v0, p1, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->videoState:I

    .line 1631
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->canAddVideoCallDuringImsAudioCall(I)Z

    move-result v1

    if-eqz v1, :cond_63

    .line 1638
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_3b

    .line 1639
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v4, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v4, :cond_32

    .line 1646
    iput v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingCallVideoState:I

    .line 1647
    iget-object p1, p1, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->intentExtras:Landroid/os/Bundle;

    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingIntentExtras:Landroid/os/Bundle;

    .line 1648
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->holdActiveCallForPendingMo()V

    const/4 p1, 0x1

    goto :goto_3c

    .line 1641
    :cond_32
    new-instance p0, Lcom/android/internal/telephony/CallStateException;

    const/4 p1, 0x6

    const-string v0, "Already too many ongoing calls."

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/CallStateException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_3b
    move p1, v3

    .line 1654
    :goto_3c
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSyncHold:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_5e

    .line 1656
    :try_start_41
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 1657
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object p0

    if-eq v1, v2, :cond_56

    .line 1663
    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne p0, v1, :cond_5e

    goto :goto_5f

    :catchall_54
    move-exception p0

    goto :goto_61

    .line 1660
    :cond_56
    new-instance p0, Lcom/android/internal/telephony/CallStateException;

    const-string p1, "cannot dial in current state"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5e
    move v3, p1

    .line 1667
    :goto_5f
    monitor-exit v0

    return v3

    :goto_61
    monitor-exit v0
    :try_end_62
    .catchall {:try_start_41 .. :try_end_62} :catchall_54

    throw p0

    .line 1632
    :cond_63
    new-instance p0, Lcom/android/internal/telephony/CallStateException;

    const-string p1, "cannot dial in current state"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1625
    :cond_6b
    new-instance p0, Lcom/android/internal/telephony/CallStateException;

    const-string p1, "service not available"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private greylist-max-r processCallStateChange(Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;I)V
    .registers 6

    .line 3081
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processCallStateChange "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " cause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 3086
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->processCallStateChange(Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;IZ)V

    return-void
.end method

.method private greylist-max-r processCallStateChange(Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;IZ)V
    .registers 10

    .line 3093
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processCallStateChange state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " cause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ignoreState="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    if-nez p1, :cond_28

    goto/16 :goto_11d

    .line 3100
    :cond_28
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->findConnection(Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v0

    if-nez v0, :cond_30

    goto/16 :goto_11d

    .line 3112
    :cond_30
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->updateMediaCapabilities(Lcom/android/ims/ImsCall;)Z

    if-eqz p4, :cond_4c

    .line 3114
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->updateAddressDisplay(Lcom/android/ims/ImsCall;)Z

    .line 3115
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->updateExtras(Lcom/android/ims/ImsCall;)Z

    .line 3118
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->maybeChangeRingbackState()V

    .line 3120
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->maybeSetVideoCallProvider(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Lcom/android/ims/ImsCall;)V

    .line 3122
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsCallInfoTracker:Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker;->updateImsCallStatus(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    .line 3127
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyPreciseCallStateToNotifier()V

    return-void

    .line 3132
    :cond_4c
    iget-object p4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mOperationLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processCallStateChange: state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " connId="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3133
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3132
    invoke-virtual {p4, v1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 3135
    iget-object p4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {p4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object p4

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p4, v1, :cond_8a

    iget-object p4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 3136
    invoke-virtual {p4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object p4

    if-eq p4, v1, :cond_8a

    move p4, v2

    goto :goto_8b

    :cond_8a
    move p4, v3

    .line 3139
    :goto_8b
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->update(Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;)Z

    move-result v4

    if-eqz p4, :cond_9e

    if-eqz v4, :cond_9e

    if-ne p2, v1, :cond_9e

    const/16 p4, 0x23

    .line 3141
    invoke-virtual {p0, p4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p4

    invoke-virtual {p0, p4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3143
    :cond_9e
    sget-object p4, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne p2, p4, :cond_f8

    .line 3144
    invoke-virtual {v0, p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onDisconnect(I)Z

    move-result p2

    if-nez p2, :cond_ac

    if-eqz v4, :cond_ab

    goto :goto_ac

    :cond_ab
    move v2, v3

    .line 3146
    :cond_ac
    :goto_ac
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->detach(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    .line 3147
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->removeConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    .line 3150
    iget-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    if-ne p2, v0, :cond_c0

    .line 3151
    invoke-virtual {p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->finalize()V

    const/4 p2, 0x0

    .line 3152
    iput-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 3156
    :cond_c0
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getConferenceParticipants()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_f6

    .line 3158
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_ca
    :goto_ca
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_f6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/ims/internal/ConferenceParticipant;

    .line 3159
    invoke-virtual {p2}, Lcom/android/ims/internal/ConferenceParticipant;->getHandle()Landroid/net/Uri;

    move-result-object p2

    .line 3160
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getCountryIso()Ljava/lang/String;

    move-result-object p3

    .line 3159
    invoke-static {p2, p3}, Lcom/android/ims/internal/ConferenceParticipant;->getParticipantAddress(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 3160
    invoke-virtual {p2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p2

    .line 3161
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_ca

    .line 3162
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getFormattedPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3163
    iget-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhoneNumAndConnTime:Ljava/util/Map;

    invoke-interface {p3, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_ca

    :cond_f6
    move v4, v2

    goto :goto_105

    .line 3168
    :cond_f8
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getVoiceCallSessionStats()Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;

    move-result-object p1

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->onCallStateChanged(Lcom/android/internal/telephony/Call;)V

    :goto_105
    if-eqz v4, :cond_11d

    .line 3172
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsCallInfoTracker:Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker;->updateImsCallStatus(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    .line 3173
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object p1

    iget-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    if-ne p1, p2, :cond_115

    goto :goto_11d

    .line 3174
    :cond_115
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->updatePhoneState()V

    .line 3175
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyPreciseCallStateChanged()V

    :cond_11d
    :goto_11d
    return-void
.end method

.method private blacklist pruneCallQualityMetricsHistory()V
    .registers 3

    .line 5874
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mCallQualityMetricsHistory:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_f

    .line 5875
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mCallQualityMetricsHistory:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    :cond_f
    return-void
.end method

.method private blacklist registerForConnectivityChanges()V
    .registers 5

    .line 5809
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIsMonitoringConnectivity:Z

    if-nez v0, :cond_34

    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mNotifyVtHandoverToWifiFail:Z

    if-nez v0, :cond_9

    goto :goto_34

    .line 5812
    :cond_9
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    .line 5813
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_34

    .line 5815
    const-string v1, "ImsPhoneCallTracker"

    const-string v2, "registerForConnectivityChanges"

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5816
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v2, 0x1

    .line 5817
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 5818
    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1, v3}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 5819
    iput-boolean v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIsMonitoringConnectivity:Z

    :cond_34
    :goto_34
    return-void
.end method

.method private blacklist registerImsTrafficSession(IIILandroid/telephony/ims/aidl/IImsTrafficSessionCallback;)V
    .registers 6

    .line 6295
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsTrafficSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$ImsTrafficSession;

    invoke-direct {v0, p2, p3, p4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$ImsTrafficSession;-><init>(IILandroid/telephony/ims/aidl/IImsTrafficSessionCallback;)V

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private blacklist resetImsCapabilities()V
    .registers 6

    .line 5776
    const-string v0, "Resetting Capabilities..."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 5777
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isVideoCallEnabled()Z

    move-result v0

    .line 5778
    new-instance v1, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-direct {v1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMmTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    .line 5779
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setServiceState(I)V

    .line 5780
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->resetImsRegistrationState()V

    .line 5781
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v3, 0x6a

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->processDisconnectReason(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 5783
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isVideoCallEnabled()Z

    move-result v1

    if-eq v0, v1, :cond_33

    .line 5785
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyForVideoCapabilityChanged(Z)V

    :cond_33
    return-void
.end method

.method private blacklist resetState()V
    .registers 3

    const/4 v0, 0x0

    .line 4854
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIsInEmergencyCall:Z

    .line 4855
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/Phone;->setEcmCanceledForEmergency(Z)V

    .line 4856
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->INACTIVE:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHoldSwitchingState:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    return-void
.end method

.method private blacklist resumeForegroundCall()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2416
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 2418
    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->isPendingHold()Z

    move-result v1

    if-nez v1, :cond_22

    .line 2419
    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->resume()V

    .line 2420
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result p0

    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->getSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object v0

    const/4 v2, 0x6

    invoke-virtual {v1, p0, v0, v2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsCommand(ILandroid/telephony/ims/ImsCallSession;I)V

    return-void

    .line 2423
    :cond_22
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->PENDING_RESUME_FOREGROUND_AFTER_HOLD:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHoldSwitchingState:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    .line 2425
    const-string v0, "resumeForegroundCall - unhold pending; resume request again"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->logHoldSwapState(Ljava/lang/String;)V

    :cond_2b
    return-void
.end method

.method private blacklist scheduleHandoverCheck()V
    .registers 5

    .line 5846
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v0

    .line 5847
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getFirstConnection()Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v1

    .line 5848
    iget-boolean v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mNotifyVtHandoverToWifiFail:Z

    if-eqz v2, :cond_3a

    if-eqz v0, :cond_3a

    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->isVideoCall()Z

    move-result v2

    if-eqz v2, :cond_3a

    if-eqz v1, :cond_3a

    .line 5849
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getDisconnectCause()I

    move-result v1

    if-eqz v1, :cond_21

    goto :goto_3a

    :cond_21
    const/16 v1, 0x19

    .line 5853
    invoke-virtual {p0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_3a

    .line 5854
    const-string v2, "ImsPhoneCallTracker"

    const-string v3, "scheduleHandoverCheck: schedule"

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5855
    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/32 v1, 0xea60

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_3a
    :goto_3a
    return-void
.end method

.method private blacklist sendConfigChangedIntent(ILjava/lang/String;)V
    .registers 5

    .line 6350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendConfigChangedIntent - ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 6351
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.intent.action.IMS_CONFIG_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6352
    const-string v1, "item"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6353
    const-string p1, "value"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6354
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-eqz p1, :cond_49

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_49

    .line 6356
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string p2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {p0, v0, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    :cond_49
    return-void
.end method

.method private blacklist sendImsServiceStateIntent(Ljava/lang/String;)V
    .registers 4

    .line 1543
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1544
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result p1

    const-string v1, "android:phone_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1545
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-eqz p1, :cond_25

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_25

    .line 1547
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_25
    return-void
.end method

.method private blacklist setEmergencyCallInfo(Landroid/telephony/ims/ImsCallProfile;Lcom/android/internal/telephony/Connection;)V
    .registers 3

    .line 2281
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getEmergencyNumberInfo()Landroid/telephony/emergency/EmergencyNumber;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 2283
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->hasKnownUserIntentEmergency()Z

    move-result p2

    invoke-virtual {p1, p0, p2}, Landroid/telephony/ims/ImsCallProfile;->setEmergencyCallInfo(Landroid/telephony/emergency/EmergencyNumber;Z)V

    :cond_d
    return-void
.end method

.method private greylist-max-r setVideoCallProvider(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Lcom/android/ims/ImsCall;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5402
    invoke-virtual {p2}, Lcom/android/ims/ImsCall;->getCallSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ims/ImsCallSession;->getVideoCallProvider()Lcom/android/ims/internal/IImsVideoCallProvider;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 5405
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110294

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 5408
    new-instance v2, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    invoke-direct {v2, v0}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;-><init>(Lcom/android/ims/internal/IImsVideoCallProvider;)V

    if-eqz v1, :cond_25

    .line 5411
    invoke-virtual {v2, v1}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->setUseVideoPauseWorkaround(Z)V

    .line 5413
    :cond_25
    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setVideoProvider(Landroid/telecom/Connection$VideoProvider;)V

    const/16 v0, 0x16

    .line 5415
    invoke-virtual {v2, p0, v0, p2}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->registerForDataUsageUpdate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 5416
    invoke-virtual {v2, p1}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->addImsVideoProviderCallback(Lcom/android/ims/internal/ImsVideoCallProviderWrapper$ImsVideoProviderWrapperCallback;)V

    :cond_30
    return-void
.end method

.method private blacklist shouldDisconnectActiveCallOnAnswer(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCall;)Z
    .registers 10

    const/4 v0, 0x0

    if-eqz p1, :cond_73

    if-nez p2, :cond_7

    goto/16 :goto_73

    .line 5554
    :cond_7
    iget-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mDropVideoCallWhenAnsweringAudioCall:Z

    if-nez v1, :cond_c

    return v0

    .line 5558
    :cond_c
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->isVideoCall()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_20

    iget-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mTreatDowngradedVideoCallsAsVideoCalls:Z

    if-eqz v1, :cond_1e

    .line 5559
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->wasVideoCall()Z

    move-result v1

    if-eqz v1, :cond_1e

    goto :goto_20

    :cond_1e
    move v1, v0

    goto :goto_21

    :cond_20
    :goto_20
    move v1, v2

    .line 5560
    :goto_21
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->isWifiCall()Z

    move-result p1

    .line 5561
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {v3}, Lcom/android/ims/ImsManager;->isWfcEnabledByPlatform()Z

    move-result v3

    if-eqz v3, :cond_37

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    .line 5562
    invoke-virtual {v3}, Lcom/android/ims/ImsManager;->isWfcEnabledByUser()Z

    move-result v3

    if-eqz v3, :cond_37

    move v3, v2

    goto :goto_38

    :cond_37
    move v3, v0

    .line 5563
    :goto_38
    invoke-virtual {p2}, Lcom/android/ims/ImsCall;->isVideoCall()Z

    move-result p2

    xor-int/lit8 v4, p2, 0x1

    .line 5564
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "shouldDisconnectActiveCallOnAnswer : isActiveCallVideo="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " isActiveCallOnWifi="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " isIncomingCallAudio="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " isVowifiEnabled="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    if-eqz v1, :cond_73

    if-eqz p1, :cond_73

    if-nez p2, :cond_73

    if-nez v3, :cond_73

    return v2

    :cond_73
    :goto_73
    return v0
.end method

.method private blacklist shouldNumberBePlacedOnIms(ZLjava/lang/String;)Z
    .registers 6

    .line 1838
    const-string v0, "ImsPhoneCallTracker"

    const/4 v1, 0x0

    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    if-eqz p0, :cond_41

    .line 1839
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/android/ims/ImsManager;->shouldProcessCall(Z[Ljava/lang/String;)I

    move-result p0

    .line 1841
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shouldProcessCall: number: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, p2}, Lcom/android/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", result: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catch Lcom/android/ims/ImsException; {:try_start_3 .. :try_end_2f} :catch_47

    const/4 p1, 0x1

    if-eqz p0, :cond_40

    if-eq p0, p1, :cond_3a

    .line 1861
    const-string p0, "shouldProcessCall returned unknown result."

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1857
    :cond_3a
    const-string p0, "shouldProcessCall: place over CSFB instead."

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_40
    return p1

    .line 1844
    :cond_41
    :try_start_41
    const-string p0, "ImsManager unavailable, shouldProcessCall returning false."

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46
    .catch Lcom/android/ims/ImsException; {:try_start_41 .. :try_end_46} :catch_47

    return v1

    .line 1848
    :catch_47
    const-string p0, "ImsService unavailable, shouldProcessCall returning false."

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private blacklist stopAllImsTrafficTypes()V
    .registers 5

    .line 6308
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsTrafficSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    .line 6309
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopAllImsTrafficTypes empty="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->logi(Ljava/lang/String;)V

    if-eqz v0, :cond_1d

    return-void

    .line 6313
    :cond_1d
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsTrafficSessions:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$$ExternalSyntheticLambda4;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->forEachKey(JLjava/util/function/Consumer;)V

    .line 6314
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsTrafficSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method private blacklist stopListeningForCalls()V
    .registers 4

    .line 1464
    const-string v0, "stopListeningForCalls"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1465
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mOperationLocalLog:Lcom/android/internal/telephony/LocalLog;

    const-string v1, "stopListeningForCalls - Disconnecting from ImsService"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 1467
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_46

    .line 1468
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getImsMmTelRegistrationCallback()Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/ims/ImsManager;->removeRegistrationListener(Landroid/telephony/ims/RegistrationManager$RegistrationCallback;)V

    .line 1469
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsCapabilityCallback:Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;

    invoke-virtual {v0, v2}, Lcom/android/ims/ImsManager;->removeCapabilitiesCallback(Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;)V

    .line 1471
    :try_start_21
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v0

    invoke-static {v0, v1}, Lcom/android/ims/ImsManager;->setImsStatsCallback(ILcom/android/ims/ImsManager$ImsStatsCallback;)V

    .line 1472
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->getConfigInterface()Lcom/android/ims/ImsConfig;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mConfigCallback:Landroid/telephony/ims/ProvisioningManager$Callback;

    invoke-virtual {v2}, Landroid/telephony/ims/ProvisioningManager$Callback;->getBinder()Landroid/telephony/ims/aidl/IImsConfigCallback;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/ims/ImsConfig;->removeConfigCallback(Landroid/telephony/ims/aidl/IImsConfigCallback;)V
    :try_end_39
    .catch Lcom/android/ims/ImsException; {:try_start_21 .. :try_end_39} :catch_3a

    goto :goto_41

    .line 1474
    :catch_3a
    const-string v0, "ImsPhoneCallTracker"

    const-string v2, "stopListeningForCalls: unable to remove config callback."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1477
    :goto_41
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->close()V

    .line 1479
    :cond_46
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mUtInterface:Lcom/android/ims/ImsUtInterface;

    if-eqz v0, :cond_4f

    .line 1480
    invoke-interface {v0, p0}, Lcom/android/ims/ImsUtInterface;->unregisterForSuppServiceIndication(Landroid/os/Handler;)V

    .line 1481
    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mUtInterface:Lcom/android/ims/ImsUtInterface;

    .line 1483
    :cond_4f
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mCurrentlyConnectedSubId:Ljava/util/Optional;

    .line 1484
    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMediaThreshold:Landroid/telephony/ims/MediaThreshold;

    .line 1485
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->resetImsCapabilities()V

    const/16 v0, 0xe

    .line 1486
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->hangupAllOrphanedConnections(I)V

    .line 1488
    const-string v0, "com.android.ims.IMS_SERVICE_DOWN"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->sendImsServiceStateIntent(Ljava/lang/String;)V

    return-void
.end method

.method private greylist-max-r switchAfterConferenceSuccess()V
    .registers 3

    .line 2289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switchAfterConferenceSuccess fg ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 2290
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2289
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 2292
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_3e

    .line 2293
    const-string v0, "switchAfterConferenceSuccess"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 2294
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->switchWith(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    :cond_3e
    return-void
.end method

.method private blacklist transferHandoverConnections(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V
    .registers 9

    .line 4759
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getConnections()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_37

    .line 4760
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getConnections()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v1

    :goto_10
    if-ge v3, v2, :cond_37

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/internal/telephony/Connection;

    .line 4761
    iget-object v5, p1, Lcom/android/internal/telephony/Call;->mState:Lcom/android/internal/telephony/Call$State;

    iput-object v5, v4, Lcom/android/internal/telephony/Connection;->mPreHandoverState:Lcom/android/internal/telephony/Call$State;

    .line 4762
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Connection state before handover is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getStateBeforeHandover()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    goto :goto_10

    .line 4765
    :cond_37
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getConnections()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_46

    .line 4766
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v2, p1, Lcom/android/internal/telephony/Call;->mConnections:Ljava/util/ArrayList;

    iput-object v2, v0, Lcom/android/internal/telephony/Call;->mConnections:Ljava/util/ArrayList;

    goto :goto_4f

    .line 4768
    :cond_46
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v0, v0, Lcom/android/internal/telephony/Call;->mConnections:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/android/internal/telephony/Call;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4770
    :goto_4f
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/Call;->copyConnectionFrom(Lcom/android/internal/telephony/Call;)V

    .line 4771
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getConnections()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_88

    .line 4772
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v0

    if-eqz v0, :cond_69

    .line 4773
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->close()V

    .line 4775
    :cond_69
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getConnections()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_73
    if-ge v1, v2, :cond_88

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    check-cast v3, Lcom/android/internal/telephony/Connection;

    .line 4776
    check-cast v3, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->changeParent(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    .line 4777
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->releaseWakeLock()V

    goto :goto_73

    .line 4780
    :cond_88
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_ae

    .line 4781
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Call is alive and state is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/internal/telephony/Call;->mState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 4782
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v1, p1, Lcom/android/internal/telephony/Call;->mState:Lcom/android/internal/telephony/Call$State;

    iput-object v1, v0, Lcom/android/internal/telephony/Call;->mState:Lcom/android/internal/telephony/Call$State;

    .line 4784
    :cond_ae
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->clearConnections()V

    .line 4785
    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v0, p1, Lcom/android/internal/telephony/Call;->mState:Lcom/android/internal/telephony/Call$State;

    .line 4786
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    if-eqz p1, :cond_c1

    .line 4789
    const-string p1, "pending MO on handover, clearing..."

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->logi(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 4790
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    :cond_c1
    return-void
.end method

.method private blacklist unregisterForConnectivityChanges()V
    .registers 4

    .line 5828
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIsMonitoringConnectivity:Z

    if-eqz v0, :cond_28

    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mNotifyVtHandoverToWifiFail:Z

    if-nez v0, :cond_9

    goto :goto_28

    .line 5831
    :cond_9
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    .line 5832
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_28

    .line 5834
    const-string v1, "ImsPhoneCallTracker"

    const-string v2, "unregisterForConnectivityChanges"

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5835
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    const/4 v0, 0x0

    .line 5836
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIsMonitoringConnectivity:Z

    :cond_28
    :goto_28
    return-void
.end method

.method private blacklist unregisterImsTrafficSession(I)V
    .registers 2

    .line 6300
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsTrafficSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private blacklist updateCarrierConfiguration(ILandroid/os/PersistableBundle;)V
    .registers 5

    const/4 v0, 0x0

    .line 1876
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mCarrierConfigLoadedForSubscription:Z

    if-nez p2, :cond_b

    .line 1879
    const-string p1, "updateCarrierConfiguration: carrier config is null, skipping."

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    return-void

    .line 1886
    :cond_b
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->updateCarrierConfigCache(Landroid/os/PersistableBundle;)V

    .line 1887
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateCarrierConfiguration: Updating mAllowEmergencyVideoCalls = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mAllowEmergencyVideoCalls:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1890
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->maybeConfigureRtpHeaderExtensions()V

    .line 1892
    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object v0

    .line 1893
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSubscriptionInfoInternal(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object v0

    if-eqz v0, :cond_94

    .line 1894
    invoke-virtual {v0}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->isActive()Z

    move-result v0

    if-nez v0, :cond_38

    goto :goto_94

    .line 1900
    :cond_38
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getPhone()Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p1

    if-eqz p1, :cond_73

    .line 1901
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    if-eqz v0, :cond_73

    .line 1902
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object p1

    if-eqz p1, :cond_73

    .line 1906
    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCardConstants$State;->iccCardExist()Z

    move-result v0

    if-eqz v0, :cond_5e

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCardConstants$State;->isPinLocked()Z

    move-result v0

    if-eqz v0, :cond_73

    .line 1907
    :cond_5e
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateCarrierConfiguration: card state is not ready, skipping notification to ImsService. State= "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    return-void

    .line 1913
    :cond_73
    invoke-static {p2}, Landroid/telephony/CarrierConfigManager;->isConfigForIdentifiedCarrier(Landroid/os/PersistableBundle;)Z

    move-result p1

    if-nez p1, :cond_7f

    .line 1914
    const-string p1, "updateCarrierConfiguration: Empty or default carrier config, skipping notification to ImsService."

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->logi(Ljava/lang/String;)V

    return-void

    .line 1921
    :cond_7f
    const-string p1, "updateCarrierConfiguration: Updating ImsService configs."

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->logi(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 1922
    iput-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mCarrierConfigLoadedForSubscription:Z

    .line 1923
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->updateImsServiceConfig()V

    .line 1924
    iget p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mThresholdRtpPacketLoss:I

    iget p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mThresholdRtpJitter:I

    iget-wide v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mThresholdRtpInactivityTime:J

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->updateMediaThreshold(IIJ)V

    return-void

    .line 1895
    :cond_94
    :goto_94
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateCarrierConfiguration: skipping notification to ImsService, nonactive subId = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist updateImsRegistrationInfo()V
    .registers 4

    .line 6275
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMmTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v0

    .line 6279
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMmTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v1

    if-eqz v1, :cond_12

    or-int/lit8 v0, v0, 0x2

    .line 6283
    :cond_12
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMmTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v1

    if-eqz v1, :cond_1e

    or-int/lit8 v0, v0, 0x4

    .line 6288
    :cond_1e
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->updateImsRegistrationInfo(I)V

    return-void
.end method

.method private blacklist updateImsServiceConfig()V
    .registers 2

    .line 5669
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    if-eqz v0, :cond_b

    iget-boolean p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mCarrierConfigLoadedForSubscription:Z

    if-eqz p0, :cond_b

    .line 5670
    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->updateImsServiceConfig()V

    :cond_b
    return-void
.end method

.method private blacklist updateMediaThreshold(IIJ)V
    .registers 8

    const/4 v0, 0x1

    .line 2039
    invoke-static {p3, p4}, Landroid/telephony/ims/MediaThreshold;->isValidRtpInactivityTimeMillis(J)Z

    move-result v1

    if-nez v1, :cond_19

    .line 2040
    invoke-static {p2}, Landroid/telephony/ims/MediaThreshold;->isValidJitterMillis(I)Z

    move-result v1

    if-nez v1, :cond_19

    .line 2041
    invoke-static {p1}, Landroid/telephony/ims/MediaThreshold;->isValidRtpPacketLossRate(I)Z

    move-result v1

    if-nez v1, :cond_19

    .line 2042
    const-string p1, "There is no valid RTP threshold value"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->logi(Ljava/lang/String;)V

    return-void

    .line 2045
    :cond_19
    filled-new-array {p1}, [I

    move-result-object p1

    .line 2046
    new-array v1, v0, [J

    const/4 v2, 0x0

    aput-wide p3, v1, v2

    .line 2047
    filled-new-array {p2}, [I

    move-result-object p2

    .line 2048
    new-instance p3, Landroid/telephony/ims/MediaThreshold$Builder;

    invoke-direct {p3}, Landroid/telephony/ims/MediaThreshold$Builder;-><init>()V

    .line 2049
    invoke-virtual {p3, p1}, Landroid/telephony/ims/MediaThreshold$Builder;->setThresholdsRtpPacketLossRate([I)Landroid/telephony/ims/MediaThreshold$Builder;

    move-result-object p1

    .line 2050
    invoke-virtual {p1, v1}, Landroid/telephony/ims/MediaThreshold$Builder;->setThresholdsRtpInactivityTimeMillis([J)Landroid/telephony/ims/MediaThreshold$Builder;

    move-result-object p1

    .line 2051
    invoke-virtual {p1, p2}, Landroid/telephony/ims/MediaThreshold$Builder;->setThresholdsRtpJitterMillis([I)Landroid/telephony/ims/MediaThreshold$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/ims/MediaThreshold$Builder;->build()Landroid/telephony/ims/MediaThreshold;

    move-result-object p1

    .line 2052
    iget-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMediaThreshold:Landroid/telephony/ims/MediaThreshold;

    if-eqz p2, :cond_45

    invoke-virtual {p2, p1}, Landroid/telephony/ims/MediaThreshold;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_76

    .line 2053
    :cond_45
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setMediaThreshold :"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->logi(Ljava/lang/String;)V

    .line 2055
    :try_start_59
    iget-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {p2, v0, p1}, Lcom/android/ims/ImsManager;->setMediaThreshold(ILandroid/telephony/ims/MediaThreshold;)V

    .line 2057
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMediaThreshold:Landroid/telephony/ims/MediaThreshold;
    :try_end_60
    .catch Lcom/android/ims/ImsException; {:try_start_59 .. :try_end_60} :catch_61

    return-void

    :catch_61
    move-exception p1

    .line 2059
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setMediaThreshold Failed: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    :cond_76
    return-void
.end method

.method private greylist-max-r updatePhoneState()V
    .registers 7

    .line 2690
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 2692
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v1

    if-nez v1, :cond_11

    goto :goto_13

    :cond_11
    const/4 v1, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v1, 0x1

    .line 2694
    :goto_14
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 2695
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    goto :goto_3d

    :cond_21
    if-eqz v1, :cond_39

    .line 2696
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v1

    if-eqz v1, :cond_39

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v1

    if-nez v1, :cond_34

    goto :goto_39

    .line 2700
    :cond_34
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    goto :goto_3d

    .line 2698
    :cond_39
    :goto_39
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 2703
    :goto_3d
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_51

    if-eq v0, v1, :cond_51

    .line 2704
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVoiceCallEndedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v3, v3, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_5f

    :cond_51
    if-ne v0, v2, :cond_5f

    if-eq v0, v1, :cond_5f

    .line 2707
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVoiceCallStartedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v3, v3, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2712
    :cond_5f
    :goto_5f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePhoneState pendingMo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    const-string v3, ")"

    const-string v4, "("

    if-nez v2, :cond_74

    const-string v2, "null"

    goto :goto_a3

    .line 2714
    :cond_74
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 2713
    invoke-virtual {v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getTelecomCallId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/objId:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 2714
    invoke-static {v5}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_a3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", rng= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 2715
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 2716
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getConnectionSummary()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "), fg= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 2717
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 2718
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getConnectionSummary()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "), bg= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 2719
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 2720
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getConnectionSummary()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2712
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 2721
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePhoneState oldState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", newState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 2724
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v1, v0, :cond_137

    .line 2725
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyPhoneStateChanged()V

    .line 2726
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writePhoneState(ILcom/android/internal/telephony/PhoneConstants$State;)V

    .line 2727
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->notifyPhoneStateChanged(Lcom/android/internal/telephony/PhoneConstants$State;Lcom/android/internal/telephony/PhoneConstants$State;)V

    :cond_137
    return-void
.end method


# virtual methods
.method public blacklist acceptCall(I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 2208
    const-string v0, "acceptCall"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 2209
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mOperationLocalLog:Lcom/android/internal/telephony/LocalLog;

    const-string v1, "accepted incoming call"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 2211
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    const-string v1, "cannot accept call"

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 2212
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-nez v0, :cond_27

    goto :goto_2d

    .line 2213
    :cond_27
    new-instance p0, Lcom/android/internal/telephony/CallStateException;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2216
    :cond_2d
    :goto_2d
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    const/4 v3, 0x0

    if-ne v0, v2, :cond_91

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 2217
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_91

    .line 2218
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->setMute(Z)V

    .line 2221
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v0

    .line 2222
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v2

    .line 2223
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->hasConnections()Z

    move-result v4

    if-eqz v4, :cond_67

    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->hasConnections()Z

    move-result v4

    if-eqz v4, :cond_67

    .line 2225
    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->shouldDisconnectActiveCallOnAnswer(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCall;)Z

    move-result v3

    .line 2229
    :cond_67
    iput p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingCallVideoState:I

    if-eqz v3, :cond_8d

    .line 2233
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->hangup()V

    .line 2234
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getVoiceCallSessionStats()Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getConnections()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->onImsAcceptCall(Ljava/util/List;)V

    .line 2236
    :try_start_7f
    invoke-static {p1}, Landroid/telephony/ims/ImsCallProfile;->getCallTypeFromVideoState(I)I

    move-result p0

    invoke-virtual {v2, p0}, Lcom/android/ims/ImsCall;->accept(I)V
    :try_end_86
    .catch Lcom/android/ims/ImsException; {:try_start_7f .. :try_end_86} :catch_87

    return-void

    .line 2238
    :catch_87
    new-instance p0, Lcom/android/internal/telephony/CallStateException;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2241
    :cond_8d
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->holdActiveCallForWaitingCall()V

    return-void

    .line 2243
    :cond_91
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_e2

    .line 2244
    const-string v0, "acceptCall: incoming..."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 2246
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->setMute(Z)V

    .line 2248
    :try_start_a5
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v0

    if-eqz v0, :cond_d4

    .line 2250
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getVoiceCallSessionStats()Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 2251
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getConnections()Ljava/util/ArrayList;

    move-result-object v3

    .line 2250
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->onImsAcceptCall(Ljava/util/List;)V

    .line 2252
    invoke-static {p1}, Landroid/telephony/ims/ImsCallProfile;->getCallTypeFromVideoState(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/ims/ImsCall;->accept(I)V

    .line 2253
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result p0

    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->getSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {p1, p0, v0, v2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsCommand(ILandroid/telephony/ims/ImsCallSession;I)V

    return-void

    .line 2256
    :cond_d4
    new-instance p0, Lcom/android/internal/telephony/CallStateException;

    const-string p1, "no valid ims call"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_dc
    .catch Lcom/android/ims/ImsException; {:try_start_a5 .. :try_end_dc} :catch_dc

    .line 2259
    :catch_dc
    new-instance p0, Lcom/android/internal/telephony/CallStateException;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2262
    :cond_e2
    new-instance p0, Lcom/android/internal/telephony/CallStateException;

    const-string p1, "phone not ringing"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist addReasonCodeRemapping(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;)V
    .registers 6

    if-eqz p2, :cond_8

    .line 3204
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    .line 3206
    :cond_8
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsReasonCodeMap:Ljava/util/Map;

    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$ImsReasonInfoKeyPair;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$ImsReasonInfoKeyPair;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker-IA;)V

    invoke-interface {p0, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method blacklist callEndCleanupHandOverCallIfAny()V
    .registers 3

    .line 2955
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getConnections()Ljava/util/ArrayList;

    move-result-object v0

    .line 2956
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_34

    .line 2957
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callEndCleanupHandOverCallIfAny, mHandoverCall.mConnections="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 2958
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getConnections()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2957
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 2959
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->clearConnections()V

    .line 2960
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2961
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    :cond_34
    return-void
.end method

.method public blacklist canConference()Z
    .registers 3

    .line 2620
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 2621
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 2622
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->isFull()Z

    move-result v0

    if-nez v0, :cond_26

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 2623
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->isFull()Z

    move-result p0

    if-nez p0, :cond_26

    const/4 p0, 0x1

    return p0

    :cond_26
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist canTransfer()Z
    .registers 3

    .line 2673
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_16

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 2674
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object p0

    sget-object v0, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne p0, v0, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist cancelUSSD(Landroid/os/Message;)V
    .registers 3

    .line 3005
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mUssdSession:Lcom/android/ims/ImsCall;

    if-nez v0, :cond_5

    return-void

    .line 3006
    :cond_5
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingUssd:Landroid/os/Message;

    const/16 p0, 0x1f5

    .line 3007
    invoke-virtual {v0, p0}, Lcom/android/ims/ImsCall;->terminate(I)V

    return-void
.end method

.method public blacklist checkForDialIssues()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 2652
    invoke-static {}, Landroid/internal/telephony/sysprop/TelephonyProperties;->disable_call()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_51

    .line 2657
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    if-nez v0, :cond_48

    .line 2661
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v0

    if-nez v0, :cond_3f

    .line 2665
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result p0

    and-int/2addr p0, v0

    if-nez p0, :cond_36

    return-void

    .line 2666
    :cond_36
    new-instance p0, Lcom/android/internal/telephony/CallStateException;

    const/4 v0, 0x6

    const-string v1, "Already an active foreground and background call."

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 2662
    :cond_3f
    new-instance p0, Lcom/android/internal/telephony/CallStateException;

    const/4 v0, 0x4

    const-string v1, "Can\'t place a call while another is ringing."

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 2658
    :cond_48
    new-instance p0, Lcom/android/internal/telephony/CallStateException;

    const/4 v0, 0x3

    const-string v1, "Another outgoing call is already being dialed."

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 2654
    :cond_51
    new-instance p0, Lcom/android/internal/telephony/CallStateException;

    const/4 v0, 0x5

    const-string v1, "ro.telephony.disable-call has been used to disable calling."

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public declared-synchronized blacklist cleanupAndRemoveConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V
    .registers 5

    monitor-enter p0

    .line 3027
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mOperationLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cleanupAndRemoveConnection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 3029
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 3030
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->detach(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    goto :goto_27

    :catchall_25
    move-exception p1

    goto :goto_3e

    .line 3033
    :cond_27
    :goto_27
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->removeConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    .line 3036
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    if-ne p1, v0, :cond_34

    .line 3037
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->finalize()V

    const/4 p1, 0x0

    .line 3038
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 3041
    :cond_34
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->updatePhoneState()V

    .line 3042
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyPreciseCallStateChanged()V
    :try_end_3c
    .catchall {:try_start_1 .. :try_end_3c} :catchall_25

    .line 3043
    monitor-exit p0

    return-void

    :goto_3e
    :try_start_3e
    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_25

    throw p1
.end method

.method public greylist-max-r clearDisconnected()V
    .registers 2

    .line 2610
    const-string v0, "clearDisconnected"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 2612
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->internalClearDisconnected()V

    .line 2614
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->updatePhoneState()V

    .line 2615
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyPreciseCallStateChanged()V

    return-void
.end method

.method public blacklist conference()V
    .registers 11

    .line 2519
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v0

    if-nez v0, :cond_e

    .line 2521
    const-string v0, "conference no foreground ims call"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    return-void

    .line 2525
    :cond_e
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v1

    if-nez v1, :cond_1c

    .line 2527
    const-string v0, "conference no background ims call"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    return-void

    .line 2531
    :cond_1c
    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->isCallSessionMergePending()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 2532
    const-string v0, "conference: skip; foreground call already in process of merging."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    return-void

    .line 2536
    :cond_28
    invoke-virtual {v1}, Lcom/android/ims/ImsCall;->isCallSessionMergePending()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 2537
    const-string v0, "conference: skip; background call already in process of merging."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    return-void

    .line 2543
    :cond_34
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getEarliestConnectTime()J

    move-result-wide v2

    .line 2544
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getEarliestConnectTime()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v2, v6

    if-lez v8, :cond_6f

    cmp-long v6, v4, v6

    if-lez v6, :cond_6f

    .line 2547
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getEarliestConnectTime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 2548
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getEarliestConnectTime()J

    move-result-wide v4

    .line 2547
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 2549
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "conference - using connect time = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    goto :goto_9b

    :cond_6f
    if-lez v8, :cond_86

    .line 2551
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "conference - bg call connect time is 0; using fg = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    goto :goto_9b

    .line 2554
    :cond_86
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "conference - fg call connect time is 0; using bg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    move-wide v2, v4

    .line 2559
    :goto_9b
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getFirstConnection()Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v4

    .line 2560
    const-string v5, ""

    if-eqz v4, :cond_b3

    .line 2561
    invoke-virtual {v4, v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setConferenceConnectTime(J)V

    .line 2562
    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->handleMergeStart()V

    .line 2563
    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getTelecomCallId()Ljava/lang/String;

    move-result-object v2

    .line 2564
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->cacheConnectionTimeWithPhoneNumber(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    goto :goto_b4

    :cond_b3
    move-object v2, v5

    .line 2567
    :goto_b4
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->findConnection(Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v3

    if-eqz v3, :cond_c4

    .line 2569
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->handleMergeStart()V

    .line 2570
    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getTelecomCallId()Ljava/lang/String;

    move-result-object v5

    .line 2571
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->cacheConnectionTimeWithPhoneNumber(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    .line 2573
    :cond_c4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "conference: fgCallId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", bgCallId="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 2574
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mOperationLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 2578
    :try_start_fa
    invoke-virtual {v0, v1}, Lcom/android/ims/ImsCall;->merge(Lcom/android/ims/ImsCall;)V
    :try_end_fd
    .catch Lcom/android/ims/ImsException; {:try_start_fa .. :try_end_fd} :catch_fe

    return-void

    :catch_fe
    move-exception v0

    .line 2580
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "conference "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 2581
    invoke-direct {p0, v4, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->handleConferenceFailed(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    return-void
.end method

.method public blacklist convertToSrvccConnectionInfo(Ljava/util/List;)[Lcom/android/internal/telephony/SrvccConnection;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/ims/SrvccCall;",
            ">;)[",
            "Lcom/android/internal/telephony/SrvccConnection;"
        }
    .end annotation

    .line 6108
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSrvccTypeSupported:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_7b

    if-eqz p1, :cond_7b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_7b

    .line 6113
    :cond_12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6114
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_52

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/SrvccCall;

    .line 6115
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isCallProfileSupported(Landroid/telephony/ims/SrvccCall;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 6117
    invoke-virtual {v2}, Landroid/telephony/ims/SrvccCall;->getCallId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->findConnection(Ljava/lang/String;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v3

    .line 6116
    invoke-direct {p0, v0, v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->addConnection(Ljava/util/List;Landroid/telephony/ims/SrvccCall;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    goto :goto_1b

    .line 6119
    :cond_39
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "convertToSrvccConnectionInfo not supported state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6120
    invoke-virtual {v2}, Landroid/telephony/ims/SrvccCall;->getPreciseCallState()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 6119
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->logi(Ljava/lang/String;)V

    goto :goto_1b

    .line 6124
    :cond_52
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "convertToSrvccConnectionInfo size="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->logi(Ljava/lang/String;)V

    .line 6125
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_71

    return-object v1

    :cond_71
    const/4 p0, 0x0

    .line 6126
    new-array p0, p0, [Lcom/android/internal/telephony/SrvccConnection;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/android/internal/telephony/SrvccConnection;

    return-object p0

    .line 6109
    :cond_7b
    :goto_7b
    const-string p1, "convertToSrvccConnectionInfo empty list"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    return-object v1
.end method

.method public greylist-max-r dial(Ljava/lang/String;ILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 1713
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;

    invoke-direct {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;-><init>()V

    .line 1714
    invoke-virtual {v0, p3}, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;->setIntentExtras(Landroid/os/Bundle;)Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;

    move-result-object p3

    check-cast p3, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;

    .line 1715
    invoke-virtual {p3, p2}, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;->setVideoState(I)Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;

    move-result-object p2

    check-cast p2, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;

    .line 1716
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getClirMode()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;->setClirMode(I)Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;

    move-result-object p2

    check-cast p2, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;

    .line 1717
    invoke-virtual {p2}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->build()Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;

    move-result-object p2

    .line 1718
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->dial(Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;)Lcom/android/internal/telephony/Connection;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized blacklist dial(Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;)Lcom/android/internal/telephony/Connection;
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v8, p1

    move-object/from16 v7, p2

    monitor-enter p0

    .line 1723
    :try_start_7
    invoke-direct {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isPhoneInEcbMode()Z

    move-result v9

    .line 1724
    iget-boolean v5, v7, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->isEmergency:Z

    .line 1725
    iget-boolean v6, v7, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;->isWpsCall:Z

    .line 1727
    invoke-direct {v1, v5, v8}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->shouldNumberBePlacedOnIms(ZLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16b

    .line 1733
    iget v0, v7, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->clirMode:I

    .line 1734
    iget v2, v7, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->videoState:I

    .line 1736
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dial clirMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    if-eqz v5, :cond_4a

    .line 1740
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dial emergency call, set clirModIe="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    move v10, v3

    move-object v3, v8

    goto :goto_51

    :catchall_47
    move-exception v0

    goto/16 :goto_181

    .line 1742
    :cond_4a
    iget-object v3, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1, v3, v8}, Lcom/android/internal/telephony/CallTracker;->convertNumberIfNecessary(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move v10, v0

    .line 1745
    :goto_51
    iput v10, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mClirMode:I

    .line 1746
    invoke-direct {v1, v7}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->prepareForDialing(Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;)Z

    move-result v11

    const/4 v12, 0x1

    if-eqz v9, :cond_61

    if-eqz v5, :cond_61

    .line 1749
    iget-object v0, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/imsphone/ImsPhone;->handleTimerInEmergencyCallbackMode(I)V

    :cond_61
    const/4 v13, 0x0

    if-eqz v5, :cond_75

    .line 1754
    invoke-static {v2}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result v0

    if-eqz v0, :cond_75

    iget-boolean v0, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mAllowEmergencyVideoCalls:Z

    if-nez v0, :cond_75

    .line 1756
    const-string v0, "dial: carrier does not support video emergency calls; downgrade to audio-only"

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    move v14, v13

    goto :goto_76

    :cond_75
    move v14, v2

    .line 1761
    :goto_76
    iput v14, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingCallVideoState:I

    .line 1763
    iget-object v15, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSyncHold:Ljava/lang/Object;

    monitor-enter v15
    :try_end_7b
    .catchall {:try_start_7 .. :try_end_7b} :catchall_47

    .line 1764
    :try_start_7b
    iput-object v3, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mLastDialString:Ljava/lang/String;

    .line 1765
    iput-object v7, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mLastDialArgs:Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;

    .line 1766
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    iget-object v2, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v4, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;
    :try_end_85
    .catchall {:try_start_7b .. :try_end_85} :catchall_df

    move-object/from16 v16, v3

    move-object v3, v1

    move-object v1, v2

    move-object/from16 v2, v16

    :try_start_8b
    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;-><init>(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCall;ZZLcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;)V
    :try_end_8e
    .catchall {:try_start_8b .. :try_end_8e} :catchall_167

    move-object v1, v3

    :try_start_8f
    iput-object v0, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 1768
    iget-object v0, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mOperationLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dial requested. connId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    if-eqz v5, :cond_e2

    .line 1769
    iget-object v0, v7, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->intentExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_e2

    .line 1770
    const-string v0, "ImsPhoneCallTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dial ims emergency dialer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->intentExtras:Landroid/os/Bundle;

    const-string v4, "android.telecom.extra.IS_USER_INTENT_EMERGENCY_CALL"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1772
    iget-object v0, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    iget-object v2, v7, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->intentExtras:Landroid/os/Bundle;

    const-string v3, "android.telecom.extra.IS_USER_INTENT_EMERGENCY_CALL"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/Connection;->setHasKnownUserIntentEmergency(Z)V

    goto :goto_e2

    :catchall_df
    move-exception v0

    goto/16 :goto_169

    .line 1775
    :cond_e2
    :goto_e2
    iget-object v0, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/Connection;->setVideoState(I)V

    .line 1776
    iget-object v0, v7, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;->rttTextStream:Landroid/telecom/Connection$RttTextStream;

    if-eqz v0, :cond_f7

    .line 1777
    const-string v0, "dial: setting RTT stream on mPendingMO"

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1778
    iget-object v0, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    iget-object v2, v7, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;->rttTextStream:Landroid/telecom/Connection$RttTextStream;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setCurrentRttTextStream(Landroid/telecom/Connection$RttTextStream;)V

    .line 1780
    :cond_f7
    monitor-exit v15
    :try_end_f8
    .catchall {:try_start_8f .. :try_end_f8} :catchall_df

    .line 1781
    :try_start_f8
    iget-object v0, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->addConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    if-nez v11, :cond_150

    if-eqz v9, :cond_143

    if-eqz v9, :cond_106

    if-eqz v5, :cond_106

    goto :goto_143

    .line 1788
    :cond_106
    invoke-static {}, Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;->getInstance()Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;->isDomainSelectionSupported()Z

    move-result v0

    if-eqz v0, :cond_11d

    .line 1791
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$7;

    invoke-direct {v0, v1, v10, v14, v7}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$7;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;IILcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;)V

    .line 1799
    invoke-static {}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->getInstance()Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    move-result-object v2

    invoke-virtual {v2, v0, v12}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->exitEmergencyCallbackMode(Ljava/lang/Runnable;I)V
    :try_end_11c
    .catchall {:try_start_f8 .. :try_end_11c} :catchall_47

    goto :goto_150

    .line 1803
    :cond_11d
    :try_start_11d
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getEcbmInterface()Lcom/android/ims/ImsEcbm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ims/ImsEcbm;->exitEmergencyCallbackMode()V
    :try_end_124
    .catch Lcom/android/ims/ImsException; {:try_start_11d .. :try_end_124} :catch_137
    .catchall {:try_start_11d .. :try_end_124} :catchall_47

    .line 1808
    :try_start_124
    iget-object v0, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    const/16 v2, 0xe

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setOnEcbModeExitResponse(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1809
    iput v10, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->pendingCallClirMode:I

    .line 1810
    iput v14, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingCallVideoState:I

    .line 1811
    iget-object v0, v7, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->intentExtras:Landroid/os/Bundle;

    iput-object v0, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingIntentExtras:Landroid/os/Bundle;

    .line 1812
    iput-boolean v12, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->pendingCallInEcm:Z

    goto :goto_150

    :catch_137
    move-exception v0

    .line 1805
    invoke-virtual {v0}, Lcom/android/ims/ImsException;->printStackTrace()V

    .line 1806
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v2, "service not available"

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1786
    :cond_143
    :goto_143
    iget-object v2, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    iget v5, v7, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;->retryCallFailCause:I

    iget v6, v7, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;->retryCallFailNetworkType:I

    iget-object v7, v7, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->intentExtras:Landroid/os/Bundle;

    move v3, v10

    move v4, v14

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->dialInternal(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;IIIILandroid/os/Bundle;)V

    .line 1816
    :cond_150
    :goto_150
    iget-boolean v0, v1, Lcom/android/internal/telephony/CallTracker;->mNumberConverted:Z

    if-eqz v0, :cond_15b

    .line 1817
    iget-object v0, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/Connection;->restoreDialedNumberAfterConversion(Ljava/lang/String;)V

    .line 1818
    iput-boolean v13, v1, Lcom/android/internal/telephony/CallTracker;->mNumberConverted:Z

    .line 1821
    :cond_15b
    invoke-direct {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->updatePhoneState()V

    .line 1822
    iget-object v0, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyPreciseCallStateChanged()V

    .line 1824
    iget-object v0, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    :try_end_165
    .catchall {:try_start_124 .. :try_end_165} :catchall_47

    monitor-exit p0

    return-object v0

    :catchall_167
    move-exception v0

    move-object v1, v3

    .line 1780
    :goto_169
    :try_start_169
    monitor-exit v15
    :try_end_16a
    .catchall {:try_start_169 .. :try_end_16a} :catchall_df

    :try_start_16a
    throw v0

    .line 1728
    :cond_16b
    const-string v0, "ImsPhoneCallTracker"

    const-string v2, "dial: shouldNumberBePlacedOnIms = false"

    invoke-static {v0, v2}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1729
    iget-object v0, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mOperationLocalLog:Lcom/android/internal/telephony/LocalLog;

    const-string v2, "dial: shouldNumberBePlacedOnIms = false"

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 1730
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v2, "cs_fallback"

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1780
    :goto_181
    monitor-exit p0
    :try_end_182
    .catchall {:try_start_16a .. :try_end_182} :catchall_47

    throw v0
.end method

.method public blacklist dispose()V
    .registers 3

    .line 1555
    const-string v0, "dispose"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1556
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->dispose()V

    .line 1557
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->dispose()V

    .line 1558
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->dispose()V

    .line 1559
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->dispose()V

    .line 1561
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->clearDisconnected()V

    .line 1562
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1563
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    if-eqz v0, :cond_3e

    .line 1564
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mCarrierConfigChangeListener:Landroid/telephony/CarrierConfigManager$CarrierConfigChangeListener;

    if-eqz v1, :cond_3e

    .line 1565
    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->unregisterCarrierConfigChangeListener(Landroid/telephony/CarrierConfigManager$CarrierConfigChangeListener;)V

    .line 1567
    :cond_3e
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getDataSettingsManager()Lcom/android/internal/telephony/data/DataSettingsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSettingsCallback:Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/DataSettingsManager;->unregisterCallback(Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;)V

    .line 1568
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManagerConnector:Lcom/android/ims/FeatureConnector;

    invoke-virtual {v0}, Lcom/android/ims/FeatureConnector;->disconnect()V

    .line 1570
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 1571
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "netstats"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/NetworkStatsManager;

    .line 1573
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVtDataUsageProvider:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$VtDataUsageProvider;

    invoke-virtual {v0, v1}, Landroid/app/usage/NetworkStatsManager;->unregisterNetworkStatsProvider(Landroid/net/netstats/provider/NetworkStatsProvider;)V

    .line 1575
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->unregisterForConnectionSetupFailure(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    .line 5259
    new-instance v0, Lcom/android/internal/telephony/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/telephony/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 5260
    const-string p2, "ImsPhoneCallTracker extends:"

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5261
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 5262
    invoke-super {p0, p1, v0, p3}, Lcom/android/internal/telephony/CallTracker;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 5263
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 5264
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mVoiceCallEndedRegistrants="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVoiceCallEndedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5265
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mVoiceCallStartedRegistrants="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVoiceCallStartedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5266
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mRingingCall="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5267
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mForegroundCall="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5268
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mBackgroundCall="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5269
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mHandoverCall="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5270
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mPendingMO="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5271
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mPhone="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5272
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mDesiredMute="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mDesiredMute:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5273
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mState="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5274
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mMmTelCapabilities="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMmTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5275
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mDefaultDialerUid="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mDefaultDialerUid:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5276
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mVtDataUsageSnapshot="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVtDataUsageSnapshot:Landroid/net/NetworkStats;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5277
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mVtDataUsageUidSnapshot="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVtDataUsageUidSnapshot:Landroid/net/NetworkStats;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5278
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCallQualityMetrics="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mCallQualityMetrics:Ljava/util/Map;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5279
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCallQualityMetricsHistory="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mCallQualityMetricsHistory:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5280
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mIsConferenceEventPackageHandlingEnabled="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIsConferenceEventPackageEnabled:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5281
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSupportCepOnPeer="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSupportCepOnPeer:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5282
    iget-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mConfig:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$Config;

    if-eqz p2, :cond_20e

    .line 5283
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " isDeviceToDeviceCommsSupported= "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mConfig:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$Config;

    iget-boolean v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$Config;->isD2DCommunicationSupported:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5284
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(forceEnabled="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mDeviceToDeviceForceEnabled:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5285
    iget-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mConfig:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$Config;

    iget-boolean p2, p2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$Config;->isD2DCommunicationSupported:Z

    if-eqz p2, :cond_20e

    .line 5286
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSupportD2DUsingRtp= "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSupportD2DUsingRtp:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5287
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSupportSdpForRtpHeaderExtensions= "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSupportSdpForRtpHeaderExtensions:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5291
    :cond_20e
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSrvccTypeSupported="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSrvccTypeSupported:Ljava/util/List;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5292
    const-string p2, " Event Log:"

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5293
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 5294
    iget-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mOperationLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/PrintWriter;)V

    .line 5295
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 5296
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 5297
    const-string p2, "++++++++++++++++++++++++++++++++"

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5300
    :try_start_23c
    iget-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    if-eqz p2, :cond_248

    .line 5301
    invoke-virtual {p2, p1, v0, p3}, Lcom/android/ims/ImsManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_243
    .catch Ljava/lang/Exception; {:try_start_23c .. :try_end_243} :catch_244

    goto :goto_248

    :catch_244
    move-exception p1

    .line 5304
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 5307
    :cond_248
    :goto_248
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mConnections:Ljava/util/ArrayList;

    if-eqz p1, :cond_285

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_285

    .line 5308
    const-string p1, "mConnections:"

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 5309
    :goto_258
    iget-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_285

    .line 5310
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  ["

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "]: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_258

    :cond_285
    return-void
.end method

.method public blacklist explicitCallTransfer()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 2591
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v0

    .line 2592
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v1

    if-eqz v0, :cond_25

    if-eqz v1, :cond_25

    .line 2593
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->canTransfer()Z

    move-result p0

    if-eqz p0, :cond_25

    .line 2601
    :try_start_16
    invoke-virtual {v1, v0}, Lcom/android/ims/ImsCall;->consultativeTransfer(Lcom/android/ims/ImsCall;)V
    :try_end_19
    .catch Lcom/android/ims/ImsException; {:try_start_16 .. :try_end_19} :catch_1a

    return-void

    :catch_1a
    move-exception p0

    .line 2603
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    invoke-virtual {p0}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2594
    :cond_25
    new-instance p0, Lcom/android/internal/telephony/CallStateException;

    const-string v0, "cannot transfer"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected whitelist test-api finalize()V
    .registers 2

    .line 1580
    const-string v0, "ImsPhoneCallTracker finalized"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist getClirMode()I
    .registers 5

    .line 1609
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSharedPreferenceProxy:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$SharedPreferenceProxy;

    const/4 v1, 0x0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 1610
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSharedPreferenceProxy:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$SharedPreferenceProxy;

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 1611
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 1610
    invoke-interface {v0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$SharedPreferenceProxy;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1612
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clir_sub_key"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getSubId()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0

    .line 1615
    :cond_35
    const-string v0, "dial; could not get default CLIR mode."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    return v1
.end method

.method public blacklist getConnections()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;",
            ">;"
        }
    .end annotation

    .line 6022
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mConnections:Ljava/util/ArrayList;

    return-object p0
.end method

.method public blacklist getDisconnectCauseFromReasonInfo(Landroid/telephony/ims/ImsReasonInfo;Lcom/android/internal/telephony/Call$State;)I
    .registers 6

    .line 3277
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->maybeRemapReasonCode(Landroid/telephony/ims/ImsReasonInfo;)I

    move-result p1

    const/16 v0, 0x153

    const/4 v1, 0x2

    if-ne p1, v0, :cond_a

    return v1

    :cond_a
    const/16 v0, 0x51

    const/16 v2, 0xc

    sparse-switch p1, :sswitch_data_d4

    goto/16 :goto_d0

    :sswitch_13
    const/16 p0, 0x4f

    return p0

    :sswitch_16
    const/16 p0, 0x4e

    return p0

    :sswitch_19
    return v0

    :sswitch_1a
    const/16 p0, 0x19

    return p0

    :sswitch_1d
    const/16 p0, 0x47

    return p0

    :sswitch_20
    const/16 p0, 0x3c

    return p0

    :sswitch_23
    const/16 p0, 0x3b

    return p0

    :sswitch_26
    const/16 p0, 0x36

    return p0

    :sswitch_29
    const/16 p0, 0x37

    return p0

    :sswitch_2c
    const/16 p0, 0x35

    return p0

    :sswitch_2f
    const/16 p0, 0x33

    return p0

    :sswitch_32
    const/16 p0, 0x34

    return p0

    :sswitch_35
    const/4 p0, 0x3

    return p0

    :sswitch_37
    const/16 p0, 0x4d

    return p0

    :sswitch_3a
    const/16 p0, 0x40

    return p0

    :sswitch_3d
    const/16 p0, 0x3f

    return p0

    :sswitch_40
    return v1

    :sswitch_41
    const/16 p0, 0x9

    return p0

    :sswitch_44
    const/4 p0, 0x4

    return p0

    :sswitch_46
    const/16 p0, 0x8

    return p0

    :sswitch_49
    const/4 p0, 0x7

    return p0

    :sswitch_4b
    return v2

    .line 3443
    :sswitch_4c
    sget-object p0, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq p2, p0, :cond_56

    sget-object p0, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne p2, p0, :cond_55

    goto :goto_56

    :cond_55
    return v0

    :cond_56
    :goto_56
    :sswitch_56
    return v2

    :sswitch_57
    const/16 p0, 0x44

    return p0

    :sswitch_5a
    const/16 p0, 0x43

    return p0

    :sswitch_5d
    const/16 p0, 0x46

    return p0

    :sswitch_60
    const/16 p0, 0x45

    return p0

    :sswitch_63
    const/16 p0, 0x42

    return p0

    :sswitch_66
    const/16 p0, 0x30

    return p0

    :sswitch_69
    const/16 p0, 0x2f

    return p0

    :sswitch_6c
    const/16 p0, 0x2e

    return p0

    :sswitch_6f
    const/16 p0, 0x3a

    return p0

    :sswitch_72
    const/16 p0, 0x15

    return p0

    :sswitch_75
    const/16 p0, 0x14

    return p0

    :sswitch_78
    const/16 p0, 0xd

    return p0

    :sswitch_7b
    const/16 p0, 0x10

    return p0

    .line 3354
    :sswitch_7e
    sget-object p0, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-ne p2, p0, :cond_85

    const/16 p0, 0x3e

    return p0

    :cond_85
    const/16 p0, 0x3d

    return p0

    :sswitch_88
    const/16 p0, 0x11

    return p0

    :sswitch_8b
    const/16 p0, 0x2d

    return p0

    :sswitch_8e
    const/16 p0, 0x12

    return p0

    .line 3428
    :sswitch_91
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p1

    iget-object p1, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    .line 3429
    invoke-virtual {p1}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    move-result p1

    if-eqz p1, :cond_a6

    const/16 p0, 0x16

    return p0

    .line 3431
    :cond_a6
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p1

    iget-object p1, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    .line 3432
    invoke-virtual {p1}, Lcom/android/internal/telephony/RestrictedState;->isCsEmergencyRestricted()Z

    move-result p1

    if-eqz p1, :cond_bb

    const/16 p0, 0x18

    return p0

    .line 3434
    :cond_bb
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p0

    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    .line 3435
    invoke-virtual {p0}, Lcom/android/internal/telephony/RestrictedState;->isCsNormalRestricted()Z

    move-result p0

    if-eqz p0, :cond_d0

    const/16 p0, 0x17

    return p0

    :cond_d0
    :goto_d0
    const/16 p0, 0x24

    return p0

    nop

    :sswitch_data_d4
    .sparse-switch
        0x0 -> :sswitch_91
        0x6a -> :sswitch_8e
        0x6c -> :sswitch_8b
        0x6f -> :sswitch_88
        0x70 -> :sswitch_7e
        0x79 -> :sswitch_8e
        0x7a -> :sswitch_8e
        0x7b -> :sswitch_8e
        0x7c -> :sswitch_8e
        0x83 -> :sswitch_8e
        0x84 -> :sswitch_8e
        0x8f -> :sswitch_7b
        0x90 -> :sswitch_8e
        0xc9 -> :sswitch_78
        0xca -> :sswitch_78
        0xcb -> :sswitch_78
        0xf0 -> :sswitch_75
        0xf1 -> :sswitch_72
        0xf3 -> :sswitch_6f
        0xf4 -> :sswitch_6c
        0xf5 -> :sswitch_69
        0xf6 -> :sswitch_66
        0xf7 -> :sswitch_63
        0xf8 -> :sswitch_60
        0xf9 -> :sswitch_5d
        0xfa -> :sswitch_5a
        0xfb -> :sswitch_57
        0x141 -> :sswitch_56
        0x14b -> :sswitch_4c
        0x14c -> :sswitch_4b
        0x14d -> :sswitch_49
        0x14f -> :sswitch_78
        0x151 -> :sswitch_46
        0x152 -> :sswitch_44
        0x154 -> :sswitch_56
        0x155 -> :sswitch_46
        0x160 -> :sswitch_41
        0x162 -> :sswitch_41
        0x169 -> :sswitch_40
        0x16a -> :sswitch_56
        0x16b -> :sswitch_3d
        0x16c -> :sswitch_3a
        0x192 -> :sswitch_37
        0x1f5 -> :sswitch_35
        0x1f9 -> :sswitch_7e
        0x1fe -> :sswitch_40
        0x3f6 -> :sswitch_32
        0x3f8 -> :sswitch_2f
        0x3f9 -> :sswitch_7b
        0x57b -> :sswitch_2c
        0x57c -> :sswitch_7b
        0x57d -> :sswitch_29
        0x57e -> :sswitch_26
        0x57f -> :sswitch_23
        0x5dc -> :sswitch_88
        0x5e8 -> :sswitch_20
        0x5ea -> :sswitch_1d
        0x5eb -> :sswitch_1a
        0x642 -> :sswitch_19
        0x646 -> :sswitch_19
        0x647 -> :sswitch_19
        0x648 -> :sswitch_19
        0x64b -> :sswitch_19
        0x64e -> :sswitch_19
        0x650 -> :sswitch_19
        0x652 -> :sswitch_19
        0x656 -> :sswitch_16
        0x657 -> :sswitch_13
    .end sparse-switch
.end method

.method greylist-max-r getEcbmInterface()Lcom/android/ims/ImsEcbm;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 5322
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    if-eqz v0, :cond_9

    .line 5326
    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->getEcbmInterface()Lcom/android/ims/ImsEcbm;

    move-result-object p0

    return-object p0

    .line 5323
    :cond_9
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getImsManagerIsNullException()Lcom/android/ims/ImsException;

    move-result-object p0

    throw p0
.end method

.method public blacklist getImsCallListener()Lcom/android/ims/ImsCall$Listener;
    .registers 1

    .line 6017
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsCallListener:Lcom/android/ims/ImsCall$Listener;

    return-object p0
.end method

.method public blacklist getImsRegistrationTech()I
    .registers 1

    .line 5381
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    if-eqz p0, :cond_9

    .line 5382
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getRegistrationTech()I

    move-result p0

    return p0

    :cond_9
    const/4 p0, -0x1

    return p0
.end method

.method public blacklist getImsRegistrationTech(Ljava/util/function/Consumer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 5391
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    if-eqz p0, :cond_8

    .line 5392
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsManager;->getRegistrationTech(Ljava/util/function/Consumer;)V

    return-void

    :cond_8
    const/4 p0, -0x1

    .line 5394
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public blacklist getMute()Z
    .registers 1

    .line 2809
    iget-boolean p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mDesiredMute:Z

    return p0
.end method

.method public blacklist getPendingMO()Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .registers 1

    .line 6027
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    return-object p0
.end method

.method public bridge synthetic blacklist getPhone()Lcom/android/internal/telephony/Phone;
    .registers 1

    .line 194
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getPhone()Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getPhone()Lcom/android/internal/telephony/imsphone/ImsPhone;
    .registers 1

    .line 5979
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    return-object p0
.end method

.method public blacklist getState()Lcom/android/internal/telephony/PhoneConstants$State;
    .registers 1

    .line 5377
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    return-object p0
.end method

.method public greylist-max-r getUtInterface()Lcom/android/ims/ImsUtInterface;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 4750
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    if-eqz v0, :cond_9

    .line 4754
    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->createOrGetSupplementaryServiceConfiguration()Lcom/android/ims/ImsUtInterface;

    move-result-object p0

    return-object p0

    .line 4751
    :cond_9
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getImsManagerIsNullException()Lcom/android/ims/ImsException;

    move-result-object p0

    throw p0
.end method

.method public blacklist getVtInterface()Ljava/lang/String;
    .registers 3

    .line 5177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vt_data0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getSubId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 7

    .line 4870
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage what="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 4872
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const-string v2, "ImsPhoneCallTracker"

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_346

    :pswitch_20
    goto/16 :goto_305

    .line 5114
    :pswitch_22
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->handleProvisioningChanged()V

    return-void

    .line 5097
    :pswitch_26
    :try_start_26
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    .line 5098
    invoke-virtual {p1, v4}, Lcom/android/ims/ImsManager;->queryMediaQualityStatus(I)Landroid/telephony/ims/MediaQualityStatus;

    move-result-object p1

    if-eqz p1, :cond_305

    .line 5100
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-eqz v0, :cond_52

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_52

    .line 5101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notify media quality status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 5102
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onMediaQualityStatusChanged(Landroid/telephony/ims/MediaQualityStatus;)V

    return-void

    :catch_50
    move-exception p0

    goto :goto_58

    .line 5104
    :cond_52
    const-string p1, "onMediaQualityStatusChanged: null phone"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V
    :try_end_57
    .catch Lcom/android/ims/ImsException; {:try_start_26 .. :try_end_57} :catch_50

    return-void

    .line 5108
    :goto_58
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exception in queryMediaQualityStatus: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_305

    .line 5066
    :pswitch_6e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 5068
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/ims/aidl/IImsTrafficSessionCallback;

    .line 5070
    :try_start_76
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_ac

    .line 5071
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    if-eqz p1, :cond_ac

    .line 5072
    array-length v3, p1

    if-le v3, v4, :cond_ac

    if-nez v0, :cond_9a

    .line 5075
    aget-object v1, p1, v1

    check-cast v1, Ljava/lang/Integer;

    .line 5076
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getImsTrafficSession(I)Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$ImsTrafficSession;

    move-result-object p0

    if-eqz p0, :cond_9a

    .line 5077
    invoke-static {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$ImsTrafficSession;->-$$Nest$fgetmCallback(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$ImsTrafficSession;)Landroid/telephony/ims/aidl/IImsTrafficSessionCallback;

    move-result-object v0

    goto :goto_9a

    :catch_98
    move-exception p0

    goto :goto_bb

    :cond_9a
    :goto_9a
    if-nez v0, :cond_9e

    goto/16 :goto_305

    .line 5081
    :cond_9e
    aget-object p0, p1, v4

    if-nez p0, :cond_a6

    invoke-interface {v0}, Landroid/telephony/ims/aidl/IImsTrafficSessionCallback;->onReady()V

    return-void

    .line 5082
    :cond_a6
    check-cast p0, Landroid/telephony/ims/feature/ConnectionFailureInfo;

    invoke-interface {v0, p0}, Landroid/telephony/ims/aidl/IImsTrafficSessionCallback;->onError(Landroid/telephony/ims/feature/ConnectionFailureInfo;)V

    return-void

    :cond_ac
    if-eqz v0, :cond_305

    .line 5087
    new-instance p0, Landroid/telephony/ims/feature/ConnectionFailureInfo;

    const p1, 0xffff

    const/4 v3, -0x1

    invoke-direct {p0, p1, v1, v3}, Landroid/telephony/ims/feature/ConnectionFailureInfo;-><init>(III)V

    invoke-interface {v0, p0}, Landroid/telephony/ims/aidl/IImsTrafficSessionCallback;->onError(Landroid/telephony/ims/feature/ConnectionFailureInfo;)V
    :try_end_ba
    .catch Landroid/os/RemoteException; {:try_start_76 .. :try_end_ba} :catch_98

    return-void

    .line 5090
    :goto_bb
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exception: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_305

    .line 5036
    :pswitch_d1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/util/Pair;

    const/16 v0, 0x20

    .line 5037
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 5038
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/android/ims/ImsCall;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->findConnection(Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v0

    if-nez v0, :cond_f0

    .line 5040
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/android/ims/ImsCall;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->sendCallStartFailedDisconnect(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V

    return-void

    .line 5043
    :cond_f0
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->detach(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    .line 5044
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->removeConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    .line 5046
    :try_start_f8
    iput-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 5047
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mLastDialArgs:Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;

    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->from(Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;

    move-result-object v1

    .line 5048
    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->setRttTextStream(Landroid/telecom/Connection$RttTextStream;)Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;

    move-result-object v1

    const/16 v2, 0xbb9

    .line 5049
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->setRetryCallFailCause(I)Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;

    move-result-object v1

    .line 5052
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCallRadioTech()I

    move-result v2

    .line 5051
    invoke-static {v2}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result v2

    .line 5050
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->setRetryCallFailNetworkType(I)Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;

    move-result-object v1

    .line 5053
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->build()Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;

    move-result-object v1

    .line 5055
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 5056
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mLastDialString:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Lcom/android/internal/telephony/PhoneInternalInterface;->dial(Ljava/lang/String;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 5057
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Connection;->onOriginalConnectionReplaced(Lcom/android/internal/telephony/Connection;)V
    :try_end_129
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_f8 .. :try_end_129} :catch_12a

    return-void

    .line 5059
    :catch_12a
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/android/ims/ImsCall;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->sendCallStartFailedDisconnect(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_305

    .line 4885
    :pswitch_137
    :try_start_137
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->resumeForegroundCall()V
    :try_end_13a
    .catch Lcom/android/ims/ImsException; {:try_start_137 .. :try_end_13a} :catch_13b

    return-void

    :catch_13b
    move-exception p1

    .line 4888
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage EVENT_RESUME_NOW_FOREGROUND_CALL exception="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_305

    .line 4894
    :pswitch_152
    :try_start_152
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->answerWaitingCall()V
    :try_end_155
    .catch Lcom/android/ims/ImsException; {:try_start_152 .. :try_end_155} :catch_156

    return-void

    :catch_156
    move-exception p1

    .line 4897
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage EVENT_ANSWER_WAITING_CALL exception="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_305

    .line 5028
    :pswitch_16d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/util/Pair;

    .line 5029
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    const/16 v0, 0x1c

    .line 5030
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 5031
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/android/ims/ImsCall;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->sendCallStartFailedDisconnect(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V

    return-void

    .line 4998
    :pswitch_18d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    iget-object p1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Landroid/util/Pair;

    const/16 v0, 0x1d

    .line 5000
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 5001
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 5002
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/android/ims/ImsCall;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->findConnection(Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v0

    if-nez v0, :cond_1bb

    .line 5004
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/android/ims/ImsCall;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->sendCallStartFailedDisconnect(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V

    return-void

    .line 5007
    :cond_1bb
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->detach(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    .line 5008
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->removeConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    .line 5010
    :try_start_1c3
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 5011
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mLastDialString:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mLastDialArgs:Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/PhoneInternalInterface;->dial(Ljava/lang/String;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 5012
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Connection;->onOriginalConnectionReplaced(Lcom/android/internal/telephony/Connection;)V

    .line 5014
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v0

    .line 5015
    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v1

    .line 5018
    const-string v2, "e_call"

    invoke-virtual {v1, v2, v4}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 5020
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->findConnection(Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v1

    .line 5021
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->updateExtras(Lcom/android/ims/ImsCall;)Z
    :try_end_1ea
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1c3 .. :try_end_1ea} :catch_1eb

    return-void

    .line 5023
    :catch_1eb
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/android/ims/ImsCall;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->sendCallStartFailedDisconnect(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_305

    .line 4987
    :pswitch_1f8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 4988
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object p0, p0, Lcom/android/internal/telephony/CallTracker;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    invoke-direct {v0, v1, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    .line 4990
    :try_start_205
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->setIsSsInfo(Z)V

    .line 4991
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->processImsSsData(Landroid/os/AsyncResult;)V
    :try_end_20b
    .catch Lcom/android/ims/ImsException; {:try_start_205 .. :try_end_20b} :catch_20c

    return-void

    :catch_20c
    move-exception p0

    .line 4993
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exception in parsing SS Data: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_305

    .line 4976
    :pswitch_223
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/SomeArgs;

    .line 4978
    :try_start_227
    iget-object v0, p1, Lcom/android/internal/telephony/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    .line 4979
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->handleFeatureCapabilityChanged(Landroid/telephony/ims/feature/ImsFeature$Capabilities;)V

    .line 4980
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->updateImsRegistrationInfo()V
    :try_end_231
    .catchall {:try_start_227 .. :try_end_231} :catchall_235

    .line 4982
    invoke-virtual {p1}, Lcom/android/internal/telephony/SomeArgs;->recycle()V

    return-void

    :catchall_235
    move-exception p0

    invoke-virtual {p1}, Lcom/android/internal/telephony/SomeArgs;->recycle()V

    .line 4983
    throw p0

    .line 4949
    :pswitch_23a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, p1, Lcom/android/ims/ImsCall;

    if-eqz v0, :cond_305

    .line 4950
    check-cast p1, Lcom/android/ims/ImsCall;

    .line 4951
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v0

    if-eq p1, v0, :cond_253

    .line 4952
    const-string p1, "handoverCheck: no longer FG; check skipped."

    invoke-static {v2, p1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4953
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->unregisterForConnectivityChanges()V

    return-void

    .line 4957
    :cond_253
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHasAttemptedStartOfCallHandover:Z

    if-nez v0, :cond_259

    .line 4958
    iput-boolean v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHasAttemptedStartOfCallHandover:Z

    .line 4960
    :cond_259
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->isWifiCall()Z

    move-result v0

    if-nez v0, :cond_305

    .line 4962
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->findConnection(Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v0

    if-eqz v0, :cond_26d

    .line 4964
    const-string v1, "handoverCheck: handover failed."

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4965
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->onHandoverToWifiFailed()V

    .line 4968
    :cond_26d
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->isVideoCall()Z

    move-result p1

    if-eqz p1, :cond_305

    .line 4969
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getDisconnectCause()I

    move-result p1

    if-nez p1, :cond_305

    .line 4970
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->registerForConnectivityChanges()V

    return-void

    .line 4942
    :pswitch_27d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 4943
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v0, p1, Landroid/util/Pair;

    if-eqz v0, :cond_305

    .line 4944
    check-cast p1, Landroid/util/Pair;

    .line 4945
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->onDataEnabledChanged(ZI)V

    return-void

    .line 4933
    :pswitch_29d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 4934
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/ims/ImsCall;

    .line 4935
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 4936
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VT data usage update. usage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", imsCall = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 4937
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_305

    .line 4938
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->updateVtDataUsage(Lcom/android/ims/ImsCall;J)V

    return-void

    .line 4907
    :pswitch_2da
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    if-eqz p1, :cond_305

    .line 4910
    :try_start_2de
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getEcbmInterface()Lcom/android/ims/ImsEcbm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/ims/ImsEcbm;->exitEmergencyCallbackMode()V

    .line 4911
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    const/16 v0, 0xe

    invoke-virtual {p1, p0, v0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setOnEcbModeExitResponse(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4912
    iget p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mClirMode:I

    iput p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->pendingCallClirMode:I

    .line 4913
    iput-boolean v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->pendingCallInEcm:Z
    :try_end_2f2
    .catch Lcom/android/ims/ImsException; {:try_start_2de .. :try_end_2f2} :catch_2f3

    return-void

    :catch_2f3
    move-exception p1

    .line 4915
    invoke-virtual {p1}, Lcom/android/ims/ImsException;->printStackTrace()V

    .line 4916
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    const/16 v0, 0x24

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setDisconnectCause(I)V

    const/16 p1, 0x12

    const-wide/16 v0, 0x1f4

    .line 4917
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_305
    :goto_305
    return-void

    .line 4902
    :pswitch_306
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    iget v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mClirMode:I

    iget v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingCallVideoState:I

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingIntentExtras:Landroid/os/Bundle;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->dialInternal(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;IILandroid/os/Bundle;)V

    .line 4903
    iput-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingIntentExtras:Landroid/os/Bundle;

    return-void

    .line 4874
    :pswitch_314
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    if-eqz p1, :cond_322

    .line 4875
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onDisconnect()Z

    .line 4876
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->removeConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    .line 4877
    iput-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 4879
    :cond_322
    iput-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingIntentExtras:Landroid/os/Bundle;

    .line 4880
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->updatePhoneState()V

    .line 4881
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyPreciseCallStateChanged()V

    return-void

    .line 4924
    :pswitch_32d
    iget-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->pendingCallInEcm:Z

    if-eqz p1, :cond_340

    .line 4925
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    iget v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->pendingCallClirMode:I

    iget v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingCallVideoState:I

    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingIntentExtras:Landroid/os/Bundle;

    invoke-direct {p0, p1, v0, v2, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->dialInternal(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;IILandroid/os/Bundle;)V

    .line 4927
    iput-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingIntentExtras:Landroid/os/Bundle;

    .line 4928
    iput-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->pendingCallInEcm:Z

    .line 4930
    :cond_340
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->unsetOnEcbModeExitResponse(Landroid/os/Handler;)V

    return-void

    :pswitch_data_346
    .packed-switch 0xe
        :pswitch_32d
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_314
        :pswitch_20
        :pswitch_306
        :pswitch_2da
        :pswitch_29d
        :pswitch_27d
        :pswitch_20
        :pswitch_23a
        :pswitch_223
        :pswitch_1f8
        :pswitch_18d
        :pswitch_16d
        :pswitch_152
        :pswitch_137
        :pswitch_d1
        :pswitch_6e
        :pswitch_6e
        :pswitch_26
        :pswitch_22
    .end packed-switch
.end method

.method protected blacklist handlePollCalls(Landroid/os/AsyncResult;)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist handleSendAnbrQuery(III)V
    .registers 6

    .line 6131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleSendAnbrQuery - mediaType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 6132
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p0

    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v0, 0x0

    invoke-interface {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/CommandsInterface;->sendAnbrQuery(IIILandroid/os/Message;)V

    return-void
.end method

.method public blacklist handleSrvccConnectionInfo(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/ims/SrvccCall;",
            ">;)V"
        }
    .end annotation

    .line 6101
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 6102
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->convertToSrvccConnectionInfo(Ljava/util/List;)[Lcom/android/internal/telephony/SrvccConnection;

    move-result-object p0

    const/4 p1, 0x0

    .line 6101
    invoke-interface {v0, p0, p1}, Lcom/android/internal/telephony/CommandsInterface;->setSrvccCallInfo([Lcom/android/internal/telephony/SrvccConnection;Landroid/os/Message;)V

    return-void
.end method

.method public blacklist hangup(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 2871
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->hangup(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;I)V

    return-void
.end method

.method public blacklist hangup(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;I)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 2876
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hangup call - reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 2878
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getConnectionsCount()I

    move-result v0

    if-eqz v0, :cond_14f

    .line 2882
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v0

    .line 2883
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->findConnection(Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v1

    if-eqz v0, :cond_38

    .line 2887
    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->isCallSessionMergePending()Z

    move-result v2

    if-nez v2, :cond_2b

    goto :goto_38

    .line 2888
    :cond_2b
    const-string p1, "hangup call failed during call merge"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 2890
    new-instance p0, Lcom/android/internal/telephony/CallStateException;

    const-string p1, "can not hangup during call merge"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2895
    :cond_38
    :goto_38
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    if-ne p1, v2, :cond_40

    .line 2897
    const-string v2, "(ringing) hangup incoming"

    const/4 v3, 0x1

    goto :goto_5e

    .line 2898
    :cond_40
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    const/4 v3, 0x0

    if-ne p1, v2, :cond_51

    .line 2899
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->isDialingOrAlerting()Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 2900
    const-string v2, "(foregnd) hangup dialing or alerting..."

    goto :goto_5e

    .line 2902
    :cond_4e
    const-string v2, "(foregnd) hangup foreground"

    goto :goto_5e

    .line 2905
    :cond_51
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    if-ne p1, v2, :cond_58

    .line 2906
    const-string v2, "(backgnd) hangup waiting or background"

    goto :goto_5e

    .line 2907
    :cond_58
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    if-ne p1, v2, :cond_10e

    .line 2908
    const-string v2, "(handover) hangup handover (SRVCC) call"

    .line 2915
    :goto_5e
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 2916
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mOperationLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hangup: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", connId="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2917
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2916
    invoke-virtual {v4, v2}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 2919
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->onHangupLocal()V

    .line 2920
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsCallInfoTracker:Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker;->updateImsCallStatus(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    if-eqz v0, :cond_c6

    if-eqz v3, :cond_b0

    const/4 p1, 0x2

    if-ne p2, p1, :cond_9a

    const/16 p1, 0x16d

    .line 2926
    :try_start_94
    invoke-virtual {v0, p1}, Lcom/android/ims/ImsCall;->reject(I)V

    goto :goto_9f

    :catch_98
    move-exception p1

    goto :goto_ee

    :cond_9a
    const/16 p1, 0x1f8

    .line 2928
    invoke-virtual {v0, p1}, Lcom/android/ims/ImsCall;->reject(I)V

    .line 2930
    :goto_9f
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result p2

    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->getSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p1, p2, v0, v1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsCommand(ILandroid/telephony/ims/ImsCallSession;I)V

    goto :goto_e8

    :cond_b0
    const/16 p1, 0x1f5

    .line 2933
    invoke-virtual {v0, p1}, Lcom/android/ims/ImsCall;->terminate(I)V

    .line 2934
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result p2

    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->getSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p1, p2, v0, v1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsCommand(ILandroid/telephony/ims/ImsCallSession;I)V

    goto :goto_e8

    .line 2937
    :cond_c6
    iget-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    if-eqz p2, :cond_e8

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    if-ne p1, v0, :cond_e8

    .line 2939
    sget-object p1, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->update(Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;)Z

    .line 2940
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onDisconnect()Z

    .line 2941
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->removeConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    .line 2942
    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 2943
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->updatePhoneState()V

    const/16 p1, 0x14

    .line 2944
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_e8
    .catch Lcom/android/ims/ImsException; {:try_start_94 .. :try_end_e8} :catch_98

    .line 2951
    :cond_e8
    :goto_e8
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyPreciseCallStateChanged()V

    return-void

    .line 2947
    :goto_ee
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mOperationLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "hangup: ImsException="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 2948
    new-instance p0, Lcom/android/internal/telephony/CallStateException;

    invoke-virtual {p1}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2910
    :cond_10e
    iget-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mOperationLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hangup: ImsPhoneCall "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " does not belong to ImsPhoneCallTracker "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 2912
    new-instance p2, Lcom/android/internal/telephony/CallStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImsPhoneCall "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "does not belong to ImsPhoneCallTracker "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 2879
    :cond_14f
    new-instance p0, Lcom/android/internal/telephony/CallStateException;

    const-string p1, "no connections"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist hangup(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 2858
    const-string v0, "hangup connection"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 2860
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getOwner()Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    move-result-object v0

    if-ne v0, p0, :cond_13

    .line 2865
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->hangup(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    return-void

    .line 2861
    :cond_13
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImsPhoneConnection "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "does not belong to ImsPhoneCallTracker "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist hangupAllConnections()V
    .registers 3

    .line 1532
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getConnections()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public blacklist hangupAllOrphanedConnections(I)V
    .registers 8

    .line 1500
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hangupAllOngoingConnections called for cause "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsPhoneCallTracker"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1506
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getConnections()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_20
    const/4 v1, -0x1

    if-le v0, v1, :cond_39

    .line 1509
    :try_start_23
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getConnections()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->hangup()V
    :try_end_30
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_23 .. :try_end_30} :catch_31

    goto :goto_36

    .line 1511
    :catch_31
    const-string v1, "Failed to disconnet call..."

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    :goto_36
    add-int/lit8 v0, v0, -0x1

    goto :goto_20

    .line 1515
    :cond_39
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_40
    if-ge v2, v1, :cond_5e

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 1516
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->update(Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;)Z

    .line 1517
    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onDisconnect(I)Z

    .line 1518
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->detach(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    goto :goto_40

    .line 1520
    :cond_5e
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    const/4 p1, 0x0

    .line 1523
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 1524
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->updatePhoneState()V

    .line 1525
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsCallInfoTracker:Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker;->clearAllOrphanedConnections()V

    return-void
.end method

.method public blacklist holdActiveCall()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 2327
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_72

    .line 2328
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHoldSwitchingState:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    sget-object v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->PENDING_SINGLE_CALL_HOLD:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    if-eq v0, v1, :cond_6d

    sget-object v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->SWAPPING_ACTIVE_AND_HELD:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    if-ne v0, v2, :cond_15

    goto :goto_6d

    .line 2334
    :cond_15
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v3

    .line 2335
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v4

    if-eqz v4, :cond_32

    .line 2336
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mCallExpectedToResume:Lcom/android/ims/ImsCall;

    .line 2337
    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHoldSwitchingState:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    goto :goto_34

    .line 2339
    :cond_32
    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHoldSwitchingState:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    .line 2341
    :goto_34
    const-string v1, "holdActiveCall"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->logHoldSwapState(Ljava/lang/String;)V

    .line 2342
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->switchWith(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    .line 2344
    :try_start_40
    invoke-virtual {v3}, Lcom/android/ims/ImsCall;->hold()V

    .line 2345
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v2

    invoke-virtual {v3}, Lcom/android/ims/ImsCall;->getSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsCommand(ILandroid/telephony/ims/ImsCallSession;I)V
    :try_end_53
    .catch Lcom/android/ims/ImsException; {:try_start_40 .. :try_end_53} :catch_54
    .catch Ljava/lang/NullPointerException; {:try_start_40 .. :try_end_53} :catch_54

    return-void

    :catch_54
    move-exception v1

    .line 2348
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->switchWith(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    .line 2349
    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHoldSwitchingState:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    .line 2350
    const-string v0, "holdActiveCall - fail"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->logHoldSwapState(Ljava/lang/String;)V

    .line 2351
    new-instance p0, Lcom/android/internal/telephony/CallStateException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2330
    :cond_6d
    :goto_6d
    const-string v0, "Ignoring hold request while already holding or swapping"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->logi(Ljava/lang/String;)V

    :cond_72
    return-void
.end method

.method public blacklist holdActiveCallForWaitingCall()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 2360
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-nez v0, :cond_67

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 2361
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_67

    .line 2363
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v0

    .line 2364
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHoldSwitchingState:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    .line 2365
    sget-object v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->HOLDING_TO_ANSWER_INCOMING:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHoldSwitchingState:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    .line 2366
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mCallExpectedToResume:Lcom/android/ims/ImsCall;

    .line 2367
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mCallExpectedToResume:Lcom/android/ims/ImsCall;

    .line 2368
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->switchWith(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    .line 2369
    const-string v3, "holdActiveCallForWaitingCall"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->logHoldSwapState(Ljava/lang/String;)V

    .line 2371
    :try_start_38
    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->hold()V

    .line 2372
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v4

    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->getSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object v0

    const/4 v5, 0x5

    invoke-virtual {v3, v4, v0, v5}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsCommand(ILandroid/telephony/ims/ImsCallSession;I)V
    :try_end_4b
    .catch Lcom/android/ims/ImsException; {:try_start_38 .. :try_end_4b} :catch_4c

    return-void

    :catch_4c
    move-exception v0

    .line 2375
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->switchWith(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    .line 2376
    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHoldSwitchingState:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    .line 2377
    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mCallExpectedToResume:Lcom/android/ims/ImsCall;

    .line 2378
    const-string v1, "holdActiveCallForWaitingCall - fail"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->logHoldSwapState(Ljava/lang/String;)V

    .line 2379
    new-instance p0, Lcom/android/internal/telephony/CallStateException;

    invoke-virtual {v0}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_67
    return-void
.end method

.method public blacklist injectTestConferenceState(Landroid/telephony/ims/ImsConferenceState;)V
    .registers 5

    .line 5992
    invoke-static {p1}, Lcom/android/ims/ImsCall;->parseConferenceState(Landroid/telephony/ims/ImsConferenceState;)Ljava/util/List;

    move-result-object p1

    .line 5993
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getConnections()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v0, :cond_1b

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 5994
    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/Connection;->updateConferenceParticipants(Ljava/util/List;)V

    goto :goto_d

    :cond_1b
    return-void
.end method

.method public blacklist isCarrierDowngradeOfVtCallSupported()Z
    .registers 1

    .line 5864
    iget-boolean p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSupportDowngradeVtToAudio:Z

    return p0
.end method

.method public blacklist isConferenceEventPackageEnabled()Z
    .registers 1

    .line 6012
    iget-boolean p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIsConferenceEventPackageEnabled:Z

    return p0
.end method

.method public blacklist isHoldOrSwapInProgress()Z
    .registers 2

    .line 4861
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHoldSwitchingState:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->INACTIVE:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    if-eq p0, v0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isImsCapabilityAvailable(II)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 5340
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    if-eqz p0, :cond_9

    .line 5341
    invoke-virtual {p0, p1, p2}, Lcom/android/ims/ImsManager;->queryMmTelCapabilityStatus(II)Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method blacklist isImsServiceReady()Z
    .registers 1

    .line 1828
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 1832
    :cond_6
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isServiceReady()Z

    move-result p0

    return p0
.end method

.method public blacklist isInEmergencyCall()Z
    .registers 1

    .line 5331
    iget-boolean p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIsInEmergencyCall:Z

    return p0
.end method

.method public blacklist isUtEnabled()Z
    .registers 2

    .line 5422
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMmTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result p0

    return p0
.end method

.method public blacklist isViLteDataMetered()Z
    .registers 1

    .line 5610
    iget-boolean p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIsViLteDataMetered:Z

    return p0
.end method

.method public blacklist isVideoCallEnabled()Z
    .registers 2

    .line 5368
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMmTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result p0

    return p0
.end method

.method public blacklist isVoiceOverCellularImsEnabled()Z
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 5351
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isImsCapabilityInCacheAvailable(II)Z

    move-result v2

    if-nez v2, :cond_11

    const/4 v2, 0x3

    .line 5353
    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isImsCapabilityInCacheAvailable(II)Z

    move-result p0

    if-eqz p0, :cond_10

    goto :goto_11

    :cond_10
    return v1

    :cond_11
    :goto_11
    return v0
.end method

.method public blacklist isVowifiEnabled()Z
    .registers 3

    const/4 v0, 0x1

    .line 5359
    invoke-direct {p0, v0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isImsCapabilityInCacheAvailable(II)Z

    move-result v1

    if-nez v1, :cond_11

    const/4 v1, 0x2

    .line 5361
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isImsCapabilityInCacheAvailable(II)Z

    move-result p0

    if-eqz p0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    return p0

    :cond_11
    :goto_11
    return v0
.end method

.method protected greylist-max-r log(Ljava/lang/String;)V
    .registers 4

    .line 5183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ImsPhoneCallTracker"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method blacklist logHoldSwapState(Ljava/lang/String;)V
    .registers 5

    .line 5201
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHoldSwitchingState:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_40

    const-string v0, "???"

    goto :goto_23

    .line 5224
    :pswitch_c
    const-string v0, "PENDING_RESUME_FOREGROUND_AFTER_HOLD"

    goto :goto_23

    .line 5222
    :pswitch_f
    const-string v0, "HOLDING_TO_DIAL_OUTGOING"

    goto :goto_23

    .line 5219
    :pswitch_12
    const-string v0, "PENDING_RESUME_FOREGROUND_AFTER_FAILURE"

    goto :goto_23

    .line 5216
    :pswitch_15
    const-string v0, "HOLDING_TO_ANSWER_INCOMING"

    goto :goto_23

    .line 5213
    :pswitch_18
    const-string v0, "SWAPPING_ACTIVE_AND_HELD"

    goto :goto_23

    .line 5210
    :pswitch_1b
    const-string v0, "PENDING_SINGLE_CALL_UNHOLD"

    goto :goto_23

    .line 5207
    :pswitch_1e
    const-string v0, "PENDING_SINGLE_CALL_HOLD"

    goto :goto_23

    .line 5204
    :pswitch_21
    const-string v0, "INACTIVE"

    .line 5227
    :goto_23
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "holdSwapState set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " at "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->logi(Ljava/lang/String;)V

    return-void

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
    .end packed-switch
.end method

.method blacklist logState()V
    .registers 4

    .line 5236
    sget-boolean v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->VERBOSE_STATE_LOGGING:Z

    if-nez v0, :cond_5

    return-void

    .line 5240
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5241
    const-string v1, "Current IMS PhoneCall State:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5242
    const-string v1, " Foreground: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5243
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 5244
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5245
    const-string v2, " Background: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5246
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 5247
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5248
    const-string v2, " Ringing: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5249
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 5250
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5251
    const-string v2, " Handover: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5252
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 5253
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5254
    const-string p0, "ImsPhoneCallTracker"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected greylist-max-r loge(Ljava/lang/String;)V
    .registers 4

    .line 5188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ImsPhoneCallTracker"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method blacklist logi(Ljava/lang/String;)V
    .registers 4

    .line 5196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ImsPhoneCallTracker"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist maybeRemapReasonCode(Landroid/telephony/ims/ImsReasonInfo;)I
    .registers 11

    .line 3220
    invoke-virtual {p1}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v0

    .line 3221
    invoke-virtual {p1}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_d

    .line 3223
    const-string v1, ""

    goto :goto_13

    .line 3225
    :cond_d
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 3227
    :goto_13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "maybeRemapReasonCode : fromCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ; message = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 3229
    new-instance v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$ImsReasonInfoKeyPair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v2, v5, v1, v6}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$ImsReasonInfoKeyPair;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker-IA;)V

    .line 3230
    new-instance v5, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$ImsReasonInfoKeyPair;

    invoke-direct {v5, v6, v1, v6}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$ImsReasonInfoKeyPair;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker-IA;)V

    .line 3231
    new-instance v7, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$ImsReasonInfoKeyPair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v7, v8, v6, v6}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$ImsReasonInfoKeyPair;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker-IA;)V

    .line 3233
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsReasonCodeMap:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    const-string v8, " ; toCode = "

    if-eqz v6, :cond_84

    .line 3234
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsReasonCodeMap:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3236
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    return v0

    .line 3239
    :cond_84
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c3

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsReasonCodeMap:Ljava/util/Map;

    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c3

    .line 3244
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsReasonCodeMap:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3246
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "maybeRemapReasonCode : fromCode(wildcard) = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    return v0

    .line 3250
    :cond_c3
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsReasonCodeMap:Ljava/util/Map;

    invoke-interface {v2, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_fb

    .line 3258
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsReasonCodeMap:Ljava/util/Map;

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3259
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " ; message(wildcard) = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    :cond_fb
    return v0
.end method

.method public blacklist notifySrvccState(I)V
    .registers 8

    .line 4799
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifySrvccState state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 4801
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_4b

    if-nez p1, :cond_25

    .line 4804
    :try_start_1d
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSrvccStartedCallback:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$SrvccStartedCallback;

    invoke-virtual {v0, v4}, Lcom/android/ims/ImsManager;->notifySrvccStarted(Landroid/telephony/ims/aidl/ISrvccStartedCallback;)V

    goto :goto_4b

    :catch_23
    move-exception v0

    goto :goto_37

    :cond_25
    if-ne p1, v3, :cond_2b

    .line 4806
    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->notifySrvccCompleted()V

    goto :goto_4b

    :cond_2b
    if-ne p1, v2, :cond_31

    .line 4808
    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->notifySrvccFailed()V

    goto :goto_4b

    :cond_31
    if-ne p1, v1, :cond_4b

    .line 4810
    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->notifySrvccCanceled()V
    :try_end_36
    .catch Lcom/android/ims/ImsException; {:try_start_1d .. :try_end_36} :catch_23

    goto :goto_4b

    .line 4813
    :goto_37
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifySrvccState : exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    :cond_4b
    :goto_4b
    if-eqz p1, :cond_8c

    if-eq p1, v3, :cond_5e

    if-eq p1, v2, :cond_59

    if-eq p1, v1, :cond_54

    goto :goto_90

    .line 4844
    :cond_54
    sget-object p1, Lcom/android/internal/telephony/Call$SrvccState;->CANCELED:Lcom/android/internal/telephony/Call$SrvccState;

    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSrvccState:Lcom/android/internal/telephony/Call$SrvccState;

    goto :goto_90

    .line 4840
    :cond_59
    sget-object p1, Lcom/android/internal/telephony/Call$SrvccState;->FAILED:Lcom/android/internal/telephony/Call$SrvccState;

    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSrvccState:Lcom/android/internal/telephony/Call$SrvccState;

    goto :goto_90

    .line 4823
    :cond_5e
    sget-object p1, Lcom/android/internal/telephony/Call$SrvccState;->COMPLETED:Lcom/android/internal/telephony/Call$SrvccState;

    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSrvccState:Lcom/android/internal/telephony/Call$SrvccState;

    .line 4827
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->maybeStopRingback()V

    .line 4828
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->maybeClearRemotelyHeldStatus()V

    .line 4829
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->maybeClearRemotelyHeldStatus()V

    .line 4831
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->resetState()V

    .line 4832
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->transferHandoverConnections(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    .line 4833
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->transferHandoverConnections(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    .line 4834
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->transferHandoverConnections(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    .line 4835
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->updatePhoneState()V

    .line 4836
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsCallInfoTracker:Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker;->notifySrvccCompleted()V

    goto :goto_90

    .line 4819
    :cond_8c
    sget-object p1, Lcom/android/internal/telephony/Call$SrvccState;->STARTED:Lcom/android/internal/telephony/Call$SrvccState;

    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSrvccState:Lcom/android/internal/telephony/Call$SrvccState;

    :goto_90
    return-void
.end method

.method public blacklist onCallHoldReceived(Lcom/android/ims/ImsCall;)V
    .registers 6

    .line 5924
    const-string v0, "onCallHoldReceived"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 5926
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->findConnection(Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5c

    .line 5928
    iget-boolean v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mOnHoldToneStarted:Z

    if-nez v2, :cond_2f

    invoke-static {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->isLocalTone(Lcom/android/ims/ImsCall;)Z

    move-result v2

    if-nez v2, :cond_1a

    iget-boolean v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mAlwaysPlayRemoteHoldTone:Z

    if-eqz v2, :cond_2f

    .line 5930
    :cond_1a
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_2f

    .line 5931
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->startOnHoldTone(Lcom/android/internal/telephony/Connection;)V

    .line 5932
    iput-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mOnHoldToneStarted:Z

    .line 5933
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mOnHoldToneId:I

    .line 5935
    :cond_2f
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setRemotelyHeld()V

    .line 5936
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsCallInfoTracker:Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker;->updateImsCallStatus(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;ZZ)V

    .line 5938
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1110294

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 5940
    iget-boolean v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSupportPauseVideo:Z

    if-eqz v2, :cond_5c

    .line 5941
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getVideoState()I

    move-result v2

    invoke-static {v2}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 5947
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->changeToPausedState()V

    .line 5951
    :cond_5c
    new-instance v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/SuppServiceNotification;-><init>()V

    .line 5952
    iput v1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->notificationType:I

    const/4 v1, 0x2

    .line 5953
    iput v1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    .line 5954
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifySuppSvcNotification(Lcom/android/internal/telephony/gsm/SuppServiceNotification;)V

    .line 5955
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result p0

    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getCallSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsCallHoldReceived(ILandroid/telephony/ims/ImsCallSession;)V

    return-void
.end method

.method public blacklist pullExternalCall(Ljava/lang/String;II)V
    .registers 7

    .line 5519
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 5520
    const-string v1, "CallPull"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5521
    const-string v1, "android.telephony.ImsExternalCallTracker.extra.EXTERNAL_CALL_ID"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5523
    :try_start_10
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->dial(Ljava/lang/String;ILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;

    move-result-object p1

    .line 5524
    iget-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p2, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyUnknownConnection(Lcom/android/internal/telephony/Connection;)V
    :try_end_19
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_10 .. :try_end_19} :catch_1a

    return-void

    :catch_1a
    move-exception p1

    .line 5526
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "pullExternalCall failed - "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 1599
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1600
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVoiceCallEndedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    return-void
.end method

.method public blacklist registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 1588
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1589
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVoiceCallStartedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    return-void
.end method

.method public blacklist registerPhoneStateListener(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$PhoneStateListener;)V
    .registers 2

    .line 5572
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhoneStateListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist rejectCall()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 2267
    const-string v0, "rejectCall"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 2268
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mOperationLocalLog:Lcom/android/internal/telephony/LocalLog;

    const-string v1, "rejected incoming call"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 2270
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 2271
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->hangup(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    return-void

    .line 2273
    :cond_1e
    new-instance p0, Lcom/android/internal/telephony/CallStateException;

    const-string v0, "phone not ringing"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public declared-synchronized greylist-max-r removeConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V
    .registers 7

    monitor-enter p0

    .line 3047
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3050
    iget-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIsInEmergencyCall:Z

    if-eqz p1, :cond_3c

    .line 3053
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :cond_12
    if-ge v2, v0, :cond_28

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    if-eqz v3, :cond_12

    .line 3054
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->isEmergency()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_12

    goto :goto_3c

    :catchall_26
    move-exception p1

    goto :goto_3e

    .line 3061
    :cond_28
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->isEcmCanceledForEmergency()Z

    move-result p1

    if-eqz p1, :cond_35

    .line 3062
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->handleTimerInEmergencyCallbackMode(I)V

    .line 3064
    :cond_35
    iput-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIsInEmergencyCall:Z

    .line 3065
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendEmergencyCallStateChange(Z)V
    :try_end_3c
    .catchall {:try_start_1 .. :try_end_3c} :catchall_26

    .line 3068
    :cond_3c
    :goto_3c
    monitor-exit p0

    return-void

    :goto_3e
    :try_start_3e
    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_26

    throw p1
.end method

.method public blacklist sendCallStartFailedDisconnect(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 6

    const/4 v0, 0x0

    .line 4724
    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 4725
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->findConnection(Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 4728
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    goto :goto_10

    .line 4734
    :cond_e
    sget-object v1, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    .line 4736
    :goto_10
    invoke-virtual {p0, p2, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getDisconnectCauseFromReasonInfo(Landroid/telephony/ims/ImsReasonInfo;Lcom/android/internal/telephony/Call$State;)I

    move-result v1

    .line 4738
    sget-object v2, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    invoke-direct {p0, p1, v2, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->processCallStateChange(Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;I)V

    if-eqz v0, :cond_22

    .line 4742
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getPreciseDisconnectCauseFromReasonInfo(Landroid/telephony/ims/ImsReasonInfo;)I

    move-result p1

    .line 4741
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setPreciseDisconnectCause(I)V

    .line 4745
    :cond_22
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyImsReason(Landroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method public blacklist sendDtmf(CLandroid/os/Message;)V
    .registers 4

    .line 2823
    const-string v0, "sendDtmf"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 2825
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object p0

    if-eqz p0, :cond_10

    .line 2827
    invoke-virtual {p0, p1, p2}, Lcom/android/ims/ImsCall;->sendDtmf(CLandroid/os/Message;)V

    :cond_10
    return-void
.end method

.method public blacklist sendUSSD(Ljava/lang/String;Landroid/os/Message;)V
    .registers 6

    .line 2967
    const-string v0, "sendUSSD"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 2970
    :try_start_5
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mUssdSession:Lcom/android/ims/ImsCall;

    if-eqz v0, :cond_18

    const/4 v1, 0x0

    .line 2972
    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingUssd:Landroid/os/Message;

    .line 2973
    invoke-virtual {v0, p1}, Lcom/android/ims/ImsCall;->sendUssd(Ljava/lang/String;)V

    .line 2974
    invoke-static {p2, v1, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2975
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    return-void

    :catch_16
    move-exception p1

    goto :goto_58

    .line 2979
    :cond_18
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    if-nez v0, :cond_26

    .line 2980
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getImsManagerIsNullException()Lcom/android/ims/ImsException;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendErrorResponse(Landroid/os/Message;Ljava/lang/Throwable;)V

    return-void

    .line 2984
    :cond_26
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    const/4 v2, 0x2

    .line 2985
    invoke-virtual {v0, v1, v2}, Lcom/android/ims/ImsManager;->createCallProfile(II)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    .line 2987
    const-string v1, "dialstring"

    invoke-virtual {v0, v1, v2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 2990
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsUssdListener:Lcom/android/ims/ImsCall$Listener;

    invoke-virtual {v1, v0, p1, v2}, Lcom/android/ims/ImsManager;->makeCall(Landroid/telephony/ims/ImsCallProfile;[Ljava/lang/String;Lcom/android/ims/ImsCall$Listener;)Lcom/android/ims/ImsCall;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mUssdSession:Lcom/android/ims/ImsCall;

    .line 2991
    iput-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingUssd:Landroid/os/Message;

    .line 2992
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "pending ussd updated, "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingUssd:Landroid/os/Message;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V
    :try_end_57
    .catch Lcom/android/ims/ImsException; {:try_start_5 .. :try_end_57} :catch_16

    return-void

    .line 2994
    :goto_58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendUSSD : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    .line 2995
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0, p2, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendErrorResponse(Landroid/os/Message;Ljava/lang/Throwable;)V

    return-void
.end method

.method public blacklist setAlwaysPlayRemoteHoldTone(Z)V
    .registers 2

    .line 5960
    iput-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mAlwaysPlayRemoteHoldTone:Z

    return-void
.end method

.method public blacklist setConferenceEventPackageEnabled(Z)V
    .registers 4

    .line 6003
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setConferenceEventPackageEnabled isEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 6004
    iput-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIsConferenceEventPackageEnabled:Z

    return-void
.end method

.method public blacklist setConfig(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$Config;)V
    .registers 2

    .line 6035
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mConfig:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$Config;

    return-void
.end method

.method public blacklist setDataEnabled(Z)V
    .registers 2

    .line 5869
    iput-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIsDataEnabled:Z

    return-void
.end method

.method public blacklist setDeviceToDeviceForceEnabled(Z)V
    .registers 2

    .line 1459
    iput-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mDeviceToDeviceForceEnabled:Z

    .line 1460
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->maybeConfigureRtpHeaderExtensions()V

    return-void
.end method

.method public blacklist setMute(Z)V
    .registers 2

    .line 2804
    iput-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mDesiredMute:Z

    .line 2805
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->setMute(Z)V

    return-void
.end method

.method public blacklist setSharedPreferenceProxy(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$SharedPreferenceProxy;)V
    .registers 2

    .line 1355
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSharedPreferenceProxy:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$SharedPreferenceProxy;

    return-void
.end method

.method public blacklist setSupportCepOnPeer(Z)V
    .registers 2

    .line 5984
    iput-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSupportCepOnPeer:Z

    return-void
.end method

.method public blacklist setTerminalBasedCallWaitingStatus(I)V
    .registers 4

    const/4 v0, -0x1

    if-ne p1, v0, :cond_4

    goto :goto_3c

    .line 6088
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    if-eqz v0, :cond_3c

    .line 6090
    :try_start_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTerminalBasedCallWaitingStatus state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 6091
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_22

    goto :goto_23

    :cond_22
    const/4 v1, 0x0

    :goto_23
    invoke-virtual {v0, v1}, Lcom/android/ims/ImsManager;->setTerminalBasedCallWaitingStatus(Z)V
    :try_end_26
    .catch Lcom/android/ims/ImsException; {:try_start_8 .. :try_end_26} :catch_27

    return-void

    :catch_27
    move-exception p1

    .line 6094
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTerminalBasedCallWaitingStatus : exception "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    :cond_3c
    :goto_3c
    return-void
.end method

.method public blacklist setTtyMode(I)V
    .registers 4

    .line 2773
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    if-nez v0, :cond_c

    .line 2774
    const-string p0, "ImsPhoneCallTracker"

    const-string p1, "ImsManager is null when setting TTY mode"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2779
    :cond_c
    :try_start_c
    invoke-virtual {v0, p1}, Lcom/android/ims/ImsManager;->setTtyMode(I)V
    :try_end_f
    .catch Lcom/android/ims/ImsException; {:try_start_c .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception p1

    .line 2781
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTtyMode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist setUiTTYMode(ILandroid/os/Message;)V
    .registers 5

    .line 2790
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    if-nez v0, :cond_e

    .line 2791
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getImsManagerIsNullException()Lcom/android/ims/ImsException;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendErrorResponse(Landroid/os/Message;Ljava/lang/Throwable;)V

    return-void

    .line 2796
    :cond_e
    :try_start_e
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/ims/ImsManager;->setUiTTYMode(Landroid/content/Context;ILandroid/os/Message;)V
    :try_end_17
    .catch Lcom/android/ims/ImsException; {:try_start_e .. :try_end_17} :catch_18

    return-void

    :catch_18
    move-exception p1

    .line 2798
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setUITTYMode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    .line 2799
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0, p2, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendErrorResponse(Landroid/os/Message;Ljava/lang/Throwable;)V

    return-void
.end method

.method public blacklist startConference([Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;)Lcom/android/internal/telephony/Connection;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 1674
    iget v0, p2, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->clirMode:I

    .line 1675
    iget v1, p2, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->videoState:I

    .line 1677
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dial clirMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1678
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->prepareForDialing(Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;)Z

    move-result v2

    .line 1680
    iput v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mClirMode:I

    .line 1682
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSyncHold:Ljava/lang/Object;

    monitor-enter v3

    .line 1683
    :try_start_21
    iput-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mLastDialArgs:Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;

    .line 1684
    new-instance v4, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v8, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    const/4 v9, 0x0

    move-object v7, p0

    move-object v6, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;-><init>(Lcom/android/internal/telephony/Phone;[Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCall;Z)V

    .line 1691
    iput-object v4, v7, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 1692
    invoke-virtual {v4, v1}, Lcom/android/internal/telephony/Connection;->setVideoState(I)V

    .line 1693
    iget-object p0, p2, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;->rttTextStream:Landroid/telecom/Connection$RttTextStream;

    if-eqz p0, :cond_46

    .line 1694
    const-string p0, "startConference: setting RTT stream on mPendingMO"

    invoke-virtual {v7, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1695
    iget-object p0, p2, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;->rttTextStream:Landroid/telecom/Connection$RttTextStream;

    invoke-virtual {v4, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setCurrentRttTextStream(Landroid/telecom/Connection$RttTextStream;)V

    goto :goto_46

    :catchall_43
    move-exception v0

    move-object p0, v0

    goto :goto_5a

    .line 1697
    :cond_46
    :goto_46
    monitor-exit v3
    :try_end_47
    .catchall {:try_start_21 .. :try_end_47} :catchall_43

    .line 1698
    invoke-direct {v7, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->addConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    if-nez v2, :cond_51

    .line 1701
    iget-object p0, p2, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->intentExtras:Landroid/os/Bundle;

    invoke-direct {v7, v4, v0, v1, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->dialInternal(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;IILandroid/os/Bundle;)V

    .line 1704
    :cond_51
    invoke-direct {v7}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->updatePhoneState()V

    .line 1705
    iget-object p0, v7, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyPreciseCallStateChanged()V

    return-object v4

    .line 1697
    :goto_5a
    :try_start_5a
    monitor-exit v3
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_43

    throw p0
.end method

.method public blacklist startDtmf(C)V
    .registers 3

    .line 2833
    const-string v0, "startDtmf"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 2835
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 2837
    invoke-virtual {v0, p1}, Lcom/android/ims/ImsCall;->startDtmf(C)V

    return-void

    .line 2839
    :cond_11
    const-string p1, "startDtmf : no foreground call"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist startListeningForCalls(I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1376
    const-string v0, "startListeningForCalls"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1377
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mOperationLocalLog:Lcom/android/internal/telephony/LocalLog;

    const-string v1, "startListeningForCalls - Connecting to ImsService"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 1378
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getExternalCallTracker()Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    .line 1381
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->getExternalCallStateListener()Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalCallStateListener;

    move-result-object v0

    goto :goto_1b

    :cond_1a
    move-object v0, v1

    .line 1383
    :goto_1b
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMmTelFeatureListener:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;

    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getImsEcbmStateListener()Lcom/android/ims/ImsEcbmStateListener;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0}, Lcom/android/ims/ImsManager;->open(Landroid/telephony/ims/feature/MmTelFeature$Listener;Lcom/android/ims/ImsEcbmStateListener;Lcom/android/ims/ImsExternalCallStateListener;)V

    .line 1385
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getImsMmTelRegistrationCallback()Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

    move-result-object v2

    new-instance v3, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V

    invoke-virtual {v0, v2, v3}, Lcom/android/ims/ImsManager;->addRegistrationCallback(Landroid/telephony/ims/RegistrationManager$RegistrationCallback;Ljava/util/concurrent/Executor;)V

    .line 1386
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsCapabilityCallback:Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;

    new-instance v3, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V

    invoke-virtual {v0, v2, v3}, Lcom/android/ims/ImsManager;->addCapabilitiesCallback(Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;Ljava/util/concurrent/Executor;)V

    .line 1388
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v0

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsStatsCallback:Lcom/android/ims/ImsManager$ImsStatsCallback;

    invoke-static {v0, v2}, Lcom/android/ims/ImsManager;->setImsStatsCallback(ILcom/android/ims/ImsManager$ImsStatsCallback;)V

    .line 1390
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->getConfigInterface()Lcom/android/ims/ImsConfig;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mConfigCallback:Landroid/telephony/ims/ProvisioningManager$Callback;

    invoke-virtual {v0, v2}, Lcom/android/ims/ImsConfig;->addConfigCallback(Landroid/telephony/ims/ProvisioningManager$Callback;)V

    .line 1392
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isInEcm()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 1394
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->exitEmergencyCallbackMode()V

    .line 1396
    :cond_67
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 1397
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "preferred_tty_mode"

    const/4 v3, 0x0

    .line 1396
    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1400
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/ims/ImsManager;->setUiTTYMode(Landroid/content/Context;ILandroid/os/Message;)V

    .line 1404
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mUtInterface:Lcom/android/ims/ImsUtInterface;

    if-eqz v0, :cond_90

    const/16 v2, 0x1b

    .line 1406
    invoke-interface {v0, p0, v2, v1}, Lcom/android/ims/ImsUtInterface;->registerForSuppServiceIndication(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1410
    :cond_90
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mCarrierConfigForSubId:Landroid/util/Pair;

    if-eqz v0, :cond_a8

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_a8

    .line 1414
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mCarrierConfigForSubId:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/os/PersistableBundle;

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->updateCarrierConfiguration(ILandroid/os/PersistableBundle;)V

    goto :goto_ad

    .line 1416
    :cond_a8
    const-string v0, "startListeningForCalls - waiting for the first carrier config indication for this subscription"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1420
    :goto_ad
    const-string v0, "com.android.ims.IMS_SERVICE_UP"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->sendImsServiceStateIntent(Ljava/lang/String;)V

    .line 1421
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mCurrentlyConnectedSubId:Ljava/util/Optional;

    .line 1423
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->initializeTerminalBasedCallWaiting()V

    return-void
.end method

.method public blacklist stopDtmf()V
    .registers 2

    .line 2845
    const-string v0, "stopDtmf"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 2847
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 2849
    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->stopDtmf()V

    return-void

    .line 2851
    :cond_11
    const-string v0, "stopDtmf : no foreground call"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist triggerImsDeregistration(I)V
    .registers 4

    .line 6264
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    if-nez v0, :cond_5

    goto :goto_1e

    .line 6266
    :cond_5
    :try_start_5
    invoke-virtual {v0, p1}, Lcom/android/ims/ImsManager;->triggerDeregistration(I)V
    :try_end_8
    .catch Lcom/android/ims/ImsException; {:try_start_5 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception p1

    .line 6268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "triggerImsDeregistration: exception "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    :goto_1e
    return-void
.end method

.method public blacklist triggerNotifyAnbr(III)V
    .registers 7

    .line 6145
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getFirstConnection()Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 6148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "triggerNotifyAnbr - mediaType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 6149
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/ims/ImsCall;->callSessionNotifyAnbr(III)V

    :cond_23
    return-void
.end method

.method public blacklist unholdHeldCall()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 2388
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v0

    .line 2389
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHoldSwitchingState:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    sget-object v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->PENDING_SINGLE_CALL_UNHOLD:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    if-eq v1, v2, :cond_51

    sget-object v3, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->SWAPPING_ACTIVE_AND_HELD:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    if-ne v1, v3, :cond_11

    goto :goto_51

    :cond_11
    if-eqz v0, :cond_50

    .line 2395
    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mCallExpectedToResume:Lcom/android/ims/ImsCall;

    .line 2397
    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHoldSwitchingState:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    .line 2398
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->switchWith(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    .line 2399
    const-string v2, "unholdCurrentCall"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->logHoldSwapState(Ljava/lang/String;)V

    .line 2401
    :try_start_23
    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->resume()V

    .line 2402
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v3

    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->getSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object v0

    const/4 v4, 0x6

    invoke-virtual {v2, v3, v0, v4}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsCommand(ILandroid/telephony/ims/ImsCallSession;I)V
    :try_end_36
    .catch Lcom/android/ims/ImsException; {:try_start_23 .. :try_end_36} :catch_37

    return-void

    :catch_37
    move-exception v0

    .line 2405
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->switchWith(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    .line 2406
    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHoldSwitchingState:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    .line 2407
    const-string v1, "unholdCurrentCall - fail"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->logHoldSwapState(Ljava/lang/String;)V

    .line 2408
    new-instance p0, Lcom/android/internal/telephony/CallStateException;

    invoke-virtual {v0}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_50
    return-void

    .line 2391
    :cond_51
    :goto_51
    const-string v0, "Ignoring unhold request while already unholding or swapping"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->logi(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist unregisterForVoiceCallEnded(Landroid/os/Handler;)V
    .registers 2

    .line 1605
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVoiceCallEndedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForVoiceCallStarted(Landroid/os/Handler;)V
    .registers 2

    .line 1594
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVoiceCallStartedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterPhoneStateListener(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$PhoneStateListener;)V
    .registers 2

    .line 5576
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhoneStateListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist updateCarrierConfigCache(Landroid/os/PersistableBundle;)V
    .registers 13

    .line 1935
    const-string v0, "*"

    const-string v1, "allow_emergency_video_calls_bool"

    .line 1936
    invoke-virtual {p1, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mAllowEmergencyVideoCalls:Z

    .line 1937
    const-string v1, "treat_downgraded_video_calls_as_video_calls_bool"

    .line 1938
    invoke-virtual {p1, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mTreatDowngradedVideoCallsAsVideoCalls:Z

    .line 1940
    const-string v1, "drop_video_call_when_answering_audio_call_bool"

    .line 1941
    invoke-virtual {p1, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mDropVideoCallWhenAnsweringAudioCall:Z

    .line 1943
    const-string v1, "allow_add_call_during_video_call"

    .line 1944
    invoke-virtual {p1, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mAllowAddCallDuringVideoCall:Z

    .line 1946
    const-string v1, "allow_hold_video_call_bool"

    .line 1947
    invoke-virtual {p1, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mAllowHoldingVideoCall:Z

    .line 1949
    const-string v1, "notify_vt_handover_to_wifi_failure_bool"

    invoke-virtual {p1, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mNotifyVtHandoverToWifiFail:Z

    .line 1951
    const-string v1, "support_downgrade_vt_to_audio_bool"

    invoke-virtual {p1, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSupportDowngradeVtToAudio:Z

    .line 1953
    const-string v1, "notify_handover_video_from_wifi_to_lte_bool"

    invoke-virtual {p1, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mNotifyHandoverVideoFromWifiToLTE:Z

    .line 1955
    const-string v1, "notify_handover_video_from_lte_to_wifi_bool"

    invoke-virtual {p1, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mNotifyHandoverVideoFromLTEToWifi:Z

    .line 1957
    const-string v1, "ignore_data_enabled_changed_for_video_calls"

    invoke-virtual {p1, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIgnoreDataEnabledChangedForVideoCalls:Z

    .line 1959
    const-string v1, "vilte_data_is_metered_bool"

    invoke-virtual {p1, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIsViLteDataMetered:Z

    .line 1961
    const-string v1, "support_pause_ims_video_calls_bool"

    invoke-virtual {p1, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSupportPauseVideo:Z

    .line 1963
    const-string v1, "always_play_remote_hold_tone_bool"

    invoke-virtual {p1, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mAlwaysPlayRemoteHoldTone:Z

    .line 1965
    const-string v1, "auto_retry_failed_wifi_emergency_call"

    invoke-virtual {p1, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mAutoRetryFailedWifiEmergencyCall:Z

    .line 1967
    const-string v1, "support_ims_conference_event_package_on_peer_bool"

    invoke-virtual {p1, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSupportCepOnPeer:Z

    .line 1969
    const-string v1, "supports_device_to_device_communication_using_rtp_bool"

    invoke-virtual {p1, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSupportD2DUsingRtp:Z

    .line 1971
    const-string v1, "supports_sdp_negotiation_of_d2d_rtp_header_extensions_bool"

    invoke-virtual {p1, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSupportSdpForRtpHeaderExtensions:Z

    .line 1974
    const-string v1, "imsvoice.rtp_packet_loss_rate_threshold_int"

    invoke-virtual {p1, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mThresholdRtpPacketLoss:I

    .line 1976
    const-string v1, "imsvoice.rtp_inactivity_time_threshold_millis_long"

    invoke-virtual {p1, v1}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mThresholdRtpInactivityTime:J

    .line 1979
    const-string v1, "imsvoice.rtp_jitter_threshold_millis_int"

    invoke-virtual {p1, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mThresholdRtpJitter:I

    .line 1982
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110030

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_bd

    .line 1984
    const-string v1, "carrier_ussd_method_int"

    invoke-virtual {p1, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mUssdMethod:I

    .line 1987
    :cond_bd
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsReasonCodeMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_ca

    .line 1988
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsReasonCodeMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 1990
    :cond_ca
    const-string v1, "ims_reasoninfo_mapping_string_array"

    .line 1991
    invoke-virtual {p1, v1}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_164

    .line 1992
    array-length v2, v1

    if-lez v2, :cond_164

    .line 1993
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_d8
    if-ge v4, v2, :cond_169

    aget-object v5, v1, v4

    .line 1994
    const-string v6, "|"

    invoke-static {v6}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1995
    array-length v7, v6

    const/4 v8, 0x3

    if-eq v7, v8, :cond_ec

    goto/16 :goto_160

    .line 2001
    :cond_ec
    :try_start_ec
    aget-object v7, v6, v3

    invoke-virtual {v7, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_f7

    move-object v7, v8

    goto :goto_101

    .line 2004
    :cond_f7
    aget-object v7, v6, v3

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    :goto_101
    const/4 v9, 0x1

    .line 2006
    aget-object v9, v6, v9

    if-nez v9, :cond_109

    .line 2008
    const-string v8, ""

    goto :goto_111

    .line 2010
    :cond_109
    invoke-virtual {v9, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_110

    goto :goto_111

    :cond_110
    move-object v8, v9

    :goto_111
    const/4 v9, 0x2

    .line 2013
    aget-object v6, v6, v9

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 2015
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p0, v7, v8, v9}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->addReasonCodeRemapping(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2016
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Loaded ImsReasonInfo mapping : fromCode = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_129
    .catch Ljava/lang/NumberFormatException; {:try_start_ec .. :try_end_129} :catch_14c

    .line 2017
    const-string v10, "any"

    if-nez v7, :cond_12e

    move-object v7, v10

    :cond_12e
    :try_start_12e
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " ; message = "

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v8, :cond_139

    move-object v8, v10

    .line 2018
    :cond_139
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " ; toCode = "

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2016
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V
    :try_end_14b
    .catch Ljava/lang/NumberFormatException; {:try_start_12e .. :try_end_14b} :catch_14c

    goto :goto_160

    .line 2021
    :catch_14c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid ImsReasonInfo mapping found: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    :goto_160
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_d8

    .line 2025
    :cond_164
    const-string v0, "No carrier ImsReasonInfo mappings defined."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 2028
    :cond_169
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSrvccTypeSupported:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2029
    const-string v0, "imsvoice.srvcc_type_int_array"

    .line 2030
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object p1

    if-eqz p1, :cond_190

    .line 2031
    array-length v0, p1

    if-lez v0, :cond_190

    .line 2032
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSrvccTypeSupported:Ljava/util/List;

    .line 2033
    invoke-static {p1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    .line 2032
    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_190
    return-void
.end method

.method public blacklist updateVtDataUsage(Lcom/android/ims/ImsCall;J)V
    .registers 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 5129
    iget-object v2, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVtDataUsageMap:Ljava/util/HashMap;

    iget v3, v1, Lcom/android/ims/ImsCall;->uniqueId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 5130
    iget-object v2, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVtDataUsageMap:Ljava/util/HashMap;

    iget v3, v1, Lcom/android/ims/ImsCall;->uniqueId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_27

    :cond_25
    const-wide/16 v2, 0x0

    :goto_27
    sub-long v2, p2, v2

    .line 5134
    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVtDataUsageMap:Ljava/util/HashMap;

    iget v5, v1, Lcom/android/ims/ImsCall;->uniqueId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5136
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateVtDataUsage: call="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", delta="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 5138
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 5139
    iget-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v12

    .line 5142
    new-instance v1, Landroid/net/NetworkStats;

    const/4 v6, 0x1

    invoke-direct {v1, v4, v5, v6}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 5143
    iget-object v7, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVtDataUsageSnapshot:Landroid/net/NetworkStats;

    invoke-virtual {v1, v7}, Landroid/net/NetworkStats;->add(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v1

    move v7, v6

    .line 5147
    new-instance v6, Landroid/net/NetworkStats$Entry;

    move v8, v7

    .line 5148
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getVtInterface()Ljava/lang/String;

    move-result-object v7

    const-wide/16 v9, 0x2

    div-long v14, v2, v9

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    move v2, v8

    const/4 v8, -0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v13, 0x1

    const-wide/16 v16, 0x0

    move-wide/from16 v18, v14

    invoke-direct/range {v6 .. v23}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIIIIJJJJJ)V

    .line 5147
    invoke-virtual {v1, v6}, Landroid/net/NetworkStats;->addEntry(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVtDataUsageSnapshot:Landroid/net/NetworkStats;

    .line 5154
    new-instance v1, Landroid/net/NetworkStats;

    invoke-direct {v1, v4, v5, v2}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 5155
    iget-object v2, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVtDataUsageUidSnapshot:Landroid/net/NetworkStats;

    invoke-virtual {v1, v2}, Landroid/net/NetworkStats;->add(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v1

    .line 5160
    iget-object v2, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mDefaultDialerUid:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_c6

    .line 5161
    iget-object v2, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 5162
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "telecom"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/TelecomManager;

    .line 5163
    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mDefaultDialerUid:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 5164
    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->getDefaultDialerPackage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v4, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getPackageUid(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 5163
    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 5169
    :cond_c6
    new-instance v6, Landroid/net/NetworkStats$Entry;

    .line 5170
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getVtInterface()Ljava/lang/String;

    move-result-object v7

    iget-object v2, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mDefaultDialerUid:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v8

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v13, 0x1

    const-wide/16 v16, 0x0

    move-wide/from16 v18, v14

    invoke-direct/range {v6 .. v23}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIIIIJJJJJ)V

    .line 5169
    invoke-virtual {v1, v6}, Landroid/net/NetworkStats;->addEntry(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVtDataUsageUidSnapshot:Landroid/net/NetworkStats;

    return-void
.end method

.class public Lcom/android/internal/telephony/emergency/EmergencyStateTracker;
.super Ljava/lang/Object;
.source "EmergencyStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/emergency/EmergencyStateTracker$PhoneFactoryProxy;,
        Lcom/android/internal/telephony/emergency/EmergencyStateTracker$PhoneSwitcherProxy;,
        Lcom/android/internal/telephony/emergency/EmergencyStateTracker$MyHandler;,
        Lcom/android/internal/telephony/emergency/EmergencyStateTracker$TelephonyManagerProxyImpl;,
        Lcom/android/internal/telephony/emergency/EmergencyStateTracker$TelephonyManagerProxy;,
        Lcom/android/internal/telephony/emergency/EmergencyStateTracker$OnDisconnectListener;
    }
.end annotation


# static fields
.field public static final blacklist EMERGENCY_TYPE_CALL:I = 0x1

.field public static final blacklist EMERGENCY_TYPE_SMS:I = 0x2

.field private static blacklist INSTANCE:Lcom/android/internal/telephony/emergency/EmergencyStateTracker; = null

.field public static final blacklist MSG_EXIT_EMERGENCY_MODE_DONE:I = 0x2

.field public static final blacklist MSG_NEW_RINGING_CONNECTION:I = 0x5

.field public static final blacklist MSG_SET_EMERGENCY_CALLBACK_MODE_DONE:I = 0x3

.field public static final blacklist MSG_SET_EMERGENCY_MODE_DONE:I = 0x1

.field public static final blacklist MSG_VOICE_REG_STATE_CHANGED:I = 0x6


# instance fields
.field private final blacklist mActiveEmergencyCalls:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/telecom/Connection;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mBroadcastEmergencyCallStateChanges:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCallEmergencyModeFuture:Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mCarrierConfigChangeListener:Landroid/telephony/CarrierConfigManager$CarrierConfigChangeListener;

.field private final blacklist mConfigManager:Landroid/telephony/CarrierConfigManager;

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mEcmExitReceiver:Landroid/content/BroadcastReceiver;

.field private final blacklist mEcmExitTimeoutMs:J

.field private blacklist mEmergencyCallDomain:I

.field private blacklist mEmergencyCallPhoneType:I

.field private blacklist mEmergencyMode:I

.field private blacklist mEmergencyTransportChangedFuture:Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mExitEcmRunnable:Ljava/lang/Runnable;

.field private final blacklist mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

.field private final blacklist mHandler:Landroid/os/Handler;

.field private blacklist mIsEmergencyCallStartedDuringEmergencySms:Z

.field private blacklist mIsEmergencyModeInProgress:Z

.field private blacklist mIsEmergencySmsStartedDuringScbm:Z

.field private blacklist mIsInEcm:Z

.field private blacklist mIsInEmergencyCall:Z

.field private blacklist mIsInScbm:Z

.field private final blacklist mIsSuplDdsSwitchRequiredForEmergencyCall:Z

.field private blacklist mIsTestEmergencyNumber:Z

.field private blacklist mIsTestEmergencyNumberForSms:Z

.field private blacklist mIsWaitingForRadioOff:Z

.field private blacklist mLastEmergencyRegistrationResult:Landroid/telephony/EmergencyRegistrationResult;

.field private final blacklist mNoSimEcbmSupported:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mNormalRoutingEmergencyConnection:Landroid/telecom/Connection;

.field private blacklist mOnEcmExitCompleteRunnable:Ljava/lang/Runnable;

.field private blacklist mOngoingCallProperties:I

.field private blacklist mOngoingConnection:Landroid/telecom/Connection;

.field private final blacklist mOngoingEmergencySmsIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private blacklist mPhoneFactoryProxy:Lcom/android/internal/telephony/emergency/EmergencyStateTracker$PhoneFactoryProxy;

.field private blacklist mPhoneSwitcherProxy:Lcom/android/internal/telephony/emergency/EmergencyStateTracker$PhoneSwitcherProxy;

.field private blacklist mRadioOnHelper:Lcom/android/internal/telephony/emergency/RadioOnHelper;

.field private final blacklist mRegistrantidentifier:Ljava/lang/Object;

.field private blacklist mSentEmergencyCallState:Z

.field private blacklist mSmsEmergencyModeFuture:Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSmsPhone:Lcom/android/internal/telephony/Phone;

.field private final blacklist mTelephonyManagerProxy:Lcom/android/internal/telephony/emergency/EmergencyStateTracker$TelephonyManagerProxy;

.field private final blacklist mTurnOffNonEmergencyNbIotNtnSatelliteForEmergencyCall:Z

.field private final blacklist mTurnOffOemEnabledSatelliteDuringEmergencyCall:Z

.field private final blacklist mWaitForInServiceTimeoutMs:I

.field private final blacklist mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private blacklist mWasEmergencyModeSetOnModem:Z


# direct methods
.method public static synthetic blacklist $r8$lambda$G2tpdUcbo9qo4qBI5Zxn6fWXYRc(Ljava/util/concurrent/CompletableFuture;)V
    .registers 2

    .line 1879
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$LZgH_inD9ydkKdyCzZn5I0V1yrg(Ljava/lang/Throwable;)Ljava/lang/Void;
    .registers 3

    .line 2202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "maybeRejectIncomingCall - exceptionally= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "EmergencyStateTracker"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$M3hrDqSsV6kJ0cXf6jVz70bOpWk(Ljava/util/concurrent/CompletableFuture;)V
    .registers 2

    .line 2198
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$UKoE7UdjiV2SNr53LvkTJl_F0yg(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;II)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->lambda$onEmergencyTransportChanged$4(II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$aYgpE1dqx41-uAGE3vwsAwyVfMo(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->lambda$new$0()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$aqmpKW_-D9AUt4EqjFstrEtHvwk(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;Lcom/android/internal/telephony/Phone;ILjava/lang/Boolean;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->lambda$switchDdsAndSetEmergencyMode$3(Lcom/android/internal/telephony/Phone;ILjava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$edvEK3WbYMIRTkHSJZTy_4gUO6E(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;Landroid/telecom/Connection;Ljava/lang/Boolean;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->lambda$startEmergencyCall$2(Landroid/telecom/Connection;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$nJzNpEKStV2OMDUmoae1VVySOfM(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;IIII)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->lambda$new$1(IIII)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEmergencyMode(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mEmergencyMode:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFeatureFlags(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;)Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsEmergencyCallStartedDuringEmergencySms(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mIsEmergencyCallStartedDuringEmergencySms:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsEmergencySmsStartedDuringScbm(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mIsEmergencySmsStartedDuringScbm:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsTestEmergencyNumber(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mIsTestEmergencyNumber:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsWaitingForRadioOff(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mIsWaitingForRadioOff:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLastEmergencyRegistrationResult(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;)Landroid/telephony/EmergencyRegistrationResult;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mLastEmergencyRegistrationResult:Landroid/telephony/EmergencyRegistrationResult;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnEcmExitCompleteRunnable(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;)Ljava/lang/Runnable;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mOnEcmExitCompleteRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOngoingConnection(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;)Landroid/telecom/Connection;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mOngoingConnection:Landroid/telecom/Connection;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPhone(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;)Lcom/android/internal/telephony/Phone;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPhoneFactoryProxy(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;)Lcom/android/internal/telephony/emergency/EmergencyStateTracker$PhoneFactoryProxy;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mPhoneFactoryProxy:Lcom/android/internal/telephony/emergency/EmergencyStateTracker$PhoneFactoryProxy;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSmsPhone(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;)Lcom/android/internal/telephony/Phone;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mSmsPhone:Lcom/android/internal/telephony/Phone;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmEmergencyMode(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mEmergencyMode:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsEmergencyCallStartedDuringEmergencySms(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mIsEmergencyCallStartedDuringEmergencySms:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsEmergencySmsStartedDuringScbm(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mIsEmergencySmsStartedDuringScbm:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLastEmergencyRegistrationResult(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;Landroid/telephony/EmergencyRegistrationResult;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mLastEmergencyRegistrationResult:Landroid/telephony/EmergencyRegistrationResult;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmOnEcmExitCompleteRunnable(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;Ljava/lang/Runnable;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mOnEcmExitCompleteRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPhone(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;Lcom/android/internal/telephony/Phone;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmWasEmergencyModeSetOnModem(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mWasEmergencyModeSetOnModem:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcompleteEmergencyMode(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->completeEmergencyMode(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcompleteEmergencyMode(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;II)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->completeEmergencyMode(II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mexitEmergencyMode(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;Lcom/android/internal/telephony/Phone;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->exitEmergencyMode(Lcom/android/internal/telephony/Phone;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mexitEmergencySmsCallbackMode(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->exitEmergencySmsCallbackMode(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mexitEmergencySmsCallbackModeAndEmergencyMode(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->exitEmergencySmsCallbackModeAndEmergencyMode(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleNewRingingConnection(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;Landroid/os/Message;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->handleNewRingingConnection(Landroid/os/Message;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$misPowerOff(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->isPowerOff()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mmaybeNotifyTransportChangeCompleted(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;IZ)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->maybeNotifyTransportChangeCompleted(IZ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetEmergencyMode(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;Lcom/android/internal/telephony/Phone;III)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->setEmergencyMode(Lcom/android/internal/telephony/Phone;III)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetEmergencyModeInProgress(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->setEmergencyModeInProgress(Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetIsInEmergencyCall(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->setIsInEmergencyCall(Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mswitchDdsAndSetEmergencyMode(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;Lcom/android/internal/telephony/Phone;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->switchDdsAndSetEmergencyMode(Lcom/android/internal/telephony/Phone;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mturnOnRadioAndSwitchDds(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;Lcom/android/internal/telephony/Phone;IZ)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->turnOnRadioAndSwitchDds(Lcom/android/internal/telephony/Phone;IZ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$munregisterForVoiceRegStateOrRatChanged(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->unregisterForVoiceRegStateOrRatChanged()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smemergencyTypeToString(I)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->emergencyTypeToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smisNetworkRegistered(Lcom/android/internal/telephony/Phone;)Z
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->isNetworkRegistered(Lcom/android/internal/telephony/Phone;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smisSamePhone(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;)Z
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->isSamePhone(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;)Z

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;Landroid/os/Looper;ZIZZLcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    .registers 12

    .line 535
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 150
    iput v0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mEmergencyMode:I

    .line 161
    new-instance v1, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;)V

    iput-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mExitEcmRunnable:Ljava/lang/Runnable;

    .line 164
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mActiveEmergencyCalls:Ljava/util/Set;

    .line 169
    iput v0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mEmergencyCallDomain:I

    .line 171
    iput v0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mEmergencyCallPhoneType:I

    .line 182
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mOngoingEmergencySmsIds:Ljava/util/Set;

    .line 191
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mRegistrantidentifier:Ljava/lang/Object;

    .line 193
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mNoSimEcbmSupported:Landroid/util/ArrayMap;

    .line 195
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mBroadcastEmergencyCallStateChanges:Landroid/util/ArrayMap;

    .line 197
    new-instance v0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mCarrierConfigChangeListener:Landroid/telephony/CarrierConfigManager$CarrierConfigChangeListener;

    .line 206
    new-instance v1, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$1;-><init>(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;)V

    iput-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mEcmExitReceiver:Landroid/content/BroadcastReceiver;

    .line 230
    new-instance v2, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$$ExternalSyntheticLambda3;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mPhoneFactoryProxy:Lcom/android/internal/telephony/emergency/EmergencyStateTracker$PhoneFactoryProxy;

    .line 239
    new-instance v2, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$$ExternalSyntheticLambda4;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mPhoneSwitcherProxy:Lcom/android/internal/telephony/emergency/EmergencyStateTracker$PhoneSwitcherProxy;

    const-wide/32 v2, 0x493e0

    .line 536
    iput-wide v2, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mEcmExitTimeoutMs:J

    .line 537
    iput-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mContext:Landroid/content/Context;

    .line 538
    new-instance v2, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$MyHandler;

    invoke-direct {v2, p0, p2}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$MyHandler;-><init>(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mHandler:Landroid/os/Handler;

    .line 539
    iput-boolean p3, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mIsSuplDdsSwitchRequiredForEmergencyCall:Z

    .line 540
    iput p4, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mWaitForInServiceTimeoutMs:I

    .line 541
    iput-boolean p5, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mTurnOffOemEnabledSatelliteDuringEmergencyCall:Z

    .line 543
    iput-boolean p6, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mTurnOffNonEmergencyNbIotNtnSatelliteForEmergencyCall:Z

    .line 545
    iput-object p7, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 546
    const-class p2, Landroid/os/PowerManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/PowerManager;

    const/4 p3, 0x0

    if-eqz p2, :cond_7b

    const/4 p4, 0x1

    .line 547
    const-string p5, "telephony:EmergencyStateTracker"

    invoke-virtual {p2, p4, p5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p2

    goto :goto_7c

    :cond_7b
    move-object p2, p3

    .line 548
    :goto_7c
    iput-object p2, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 549
    const-class p2, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/CarrierConfigManager;

    iput-object p2, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mConfigManager:Landroid/telephony/CarrierConfigManager;

    if-eqz p2, :cond_93

    .line 552
    new-instance p4, Lcom/android/internal/telephony/NetworkTypeController$$ExternalSyntheticLambda0;

    invoke-direct {p4, v2}, Lcom/android/internal/telephony/NetworkTypeController$$ExternalSyntheticLambda0;-><init>(Landroid/os/Handler;)V

    invoke-virtual {p2, p4, v0}, Landroid/telephony/CarrierConfigManager;->registerCarrierConfigChangeListener(Ljava/util/concurrent/Executor;Landroid/telephony/CarrierConfigManager$CarrierConfigChangeListener;)V

    goto :goto_9a

    .line 555
    :cond_93
    const-string p2, "EmergencyStateTracker"

    const-string p4, "CarrierConfigLoader is not available."

    invoke-static {p2, p4}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    :goto_9a
    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    .line 560
    const-string p4, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {p2, p4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 561
    invoke-virtual {p1, v1, p2, p3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 562
    new-instance p2, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$TelephonyManagerProxyImpl;

    invoke-direct {p2, p1}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$TelephonyManagerProxyImpl;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mTelephonyManagerProxy:Lcom/android/internal/telephony/emergency/EmergencyStateTracker$TelephonyManagerProxy;

    .line 564
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->registerForNewRingingConnection()V

    .line 567
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->maybeResetEmergencyCallStateChangedIntent()V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/os/Looper;ZIZZLcom/android/internal/telephony/emergency/EmergencyStateTracker$PhoneFactoryProxy;Lcom/android/internal/telephony/emergency/EmergencyStateTracker$PhoneSwitcherProxy;Lcom/android/internal/telephony/emergency/EmergencyStateTracker$TelephonyManagerProxy;Lcom/android/internal/telephony/emergency/RadioOnHelper;JLcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    .registers 17

    .line 601
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 150
    iput v0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mEmergencyMode:I

    .line 161
    new-instance v1, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;)V

    iput-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mExitEcmRunnable:Ljava/lang/Runnable;

    .line 164
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mActiveEmergencyCalls:Ljava/util/Set;

    .line 169
    iput v0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mEmergencyCallDomain:I

    .line 171
    iput v0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mEmergencyCallPhoneType:I

    .line 182
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mOngoingEmergencySmsIds:Ljava/util/Set;

    .line 191
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mRegistrantidentifier:Ljava/lang/Object;

    .line 193
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mNoSimEcbmSupported:Landroid/util/ArrayMap;

    .line 195
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mBroadcastEmergencyCallStateChanges:Landroid/util/ArrayMap;

    .line 197
    new-instance v0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mCarrierConfigChangeListener:Landroid/telephony/CarrierConfigManager$CarrierConfigChangeListener;

    .line 206
    new-instance v1, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$1;-><init>(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;)V

    iput-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mEcmExitReceiver:Landroid/content/BroadcastReceiver;

    .line 230
    new-instance v2, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$$ExternalSyntheticLambda3;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mPhoneFactoryProxy:Lcom/android/internal/telephony/emergency/EmergencyStateTracker$PhoneFactoryProxy;

    .line 239
    new-instance v2, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$$ExternalSyntheticLambda4;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mPhoneSwitcherProxy:Lcom/android/internal/telephony/emergency/EmergencyStateTracker$PhoneSwitcherProxy;

    .line 602
    iput-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mContext:Landroid/content/Context;

    .line 603
    new-instance v2, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$MyHandler;

    invoke-direct {v2, p0, p2}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$MyHandler;-><init>(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mHandler:Landroid/os/Handler;

    .line 604
    iput-boolean p3, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mIsSuplDdsSwitchRequiredForEmergencyCall:Z

    .line 605
    iput p4, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mWaitForInServiceTimeoutMs:I

    .line 606
    iput-boolean p5, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mTurnOffOemEnabledSatelliteDuringEmergencyCall:Z

    .line 608
    iput-boolean p6, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mTurnOffNonEmergencyNbIotNtnSatelliteForEmergencyCall:Z

    .line 610
    iput-object p7, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mPhoneFactoryProxy:Lcom/android/internal/telephony/emergency/EmergencyStateTracker$PhoneFactoryProxy;

    .line 611
    iput-object p8, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mPhoneSwitcherProxy:Lcom/android/internal/telephony/emergency/EmergencyStateTracker$PhoneSwitcherProxy;

    .line 612
    iput-object p9, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mTelephonyManagerProxy:Lcom/android/internal/telephony/emergency/EmergencyStateTracker$TelephonyManagerProxy;

    .line 613
    iput-object p10, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mRadioOnHelper:Lcom/android/internal/telephony/emergency/RadioOnHelper;

    .line 614
    iput-wide p11, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mEcmExitTimeoutMs:J

    move-object/from16 p2, p13

    .line 615
    iput-object p2, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    const/4 p2, 0x0

    .line 616
    iput-object p2, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 617
    const-class p3, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/telephony/CarrierConfigManager;

    iput-object p3, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 618
    new-instance p4, Lcom/android/internal/telephony/NetworkTypeController$$ExternalSyntheticLambda0;

    invoke-direct {p4, v2}, Lcom/android/internal/telephony/NetworkTypeController$$ExternalSyntheticLambda0;-><init>(Landroid/os/Handler;)V

    invoke-virtual {p3, p4, v0}, Landroid/telephony/CarrierConfigManager;->registerCarrierConfigChangeListener(Ljava/util/concurrent/Executor;Landroid/telephony/CarrierConfigManager$CarrierConfigChangeListener;)V

    .line 620
    new-instance p3, Landroid/content/IntentFilter;

    invoke-direct {p3}, Landroid/content/IntentFilter;-><init>()V

    .line 621
    const-string p4, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {p3, p4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 622
    invoke-virtual {p1, v1, p3, p2, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 623
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->registerForNewRingingConnection()V

    return-void
.end method

.method private blacklist clearEmergencyCallInfo()V
    .registers 3

    const/4 v0, 0x0

    .line 795
    iput v0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mEmergencyCallDomain:I

    .line 796
    iput v0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mEmergencyCallPhoneType:I

    .line 797
    iput-boolean v0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mIsTestEmergencyNumber:Z

    .line 798
    iput-boolean v0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mIsEmergencyCallStartedDuringEmergencySms:Z

    const/4 v1, 0x0

    .line 799
    iput-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mCallEmergencyModeFuture:Ljava/util/concurrent/CompletableFuture;

    .line 800
    iput-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mOngoingConnection:Landroid/telecom/Connection;

    .line 801
    iput v0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mOngoingCallProperties:I

    .line 802
    iput-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    return-void
.end method

.method private blacklist clearEmergencySmsInfo()V
    .registers 2

    .line 1588
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mOngoingEmergencySmsIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    const/4 v0, 0x0

    .line 1589
    iput-boolean v0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mIsEmergencySmsStartedDuringScbm:Z

    .line 1590
    iput-boolean v0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mIsTestEmergencyNumberForSms:Z

    const/4 v0, 0x0

    .line 1591
    iput-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mSmsEmergencyModeFuture:Ljava/util/concurrent/CompletableFuture;

    .line 1592
    iput-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mSmsPhone:Lcom/android/internal/telephony/Phone;

    return-void
.end method

.method private blacklist completeEmergencyMode(I)V
    .registers 3

    const/4 v0, 0x0

    .line 908
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->completeEmergencyMode(II)V

    return-void
.end method

.method private blacklist completeEmergencyMode(II)V
    .registers 4

    const/4 v0, 0x1

    if-ne p1, v0, :cond_b

    .line 916
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mCallEmergencyModeFuture:Ljava/util/concurrent/CompletableFuture;

    if-eqz p2, :cond_17

    .line 919
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->clearEmergencyCallInfo()V

    goto :goto_17

    :cond_b
    const/4 v0, 0x2

    if-ne p1, v0, :cond_16

    .line 922
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mSmsEmergencyModeFuture:Ljava/util/concurrent/CompletableFuture;

    if-eqz p2, :cond_17

    .line 925
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->clearEmergencySmsInfo()V

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    :cond_17
    :goto_17
    if-eqz p1, :cond_26

    .line 929
    invoke-virtual {p1}, Ljava/util/concurrent/CompletableFuture;->isDone()Z

    move-result p0

    if-nez p0, :cond_26

    .line 930
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    :cond_26
    return-void
.end method

.method private static blacklist emergencyTypeToString(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_c

    const/4 v0, 0x2

    if-eq p0, v0, :cond_9

    .line 2036
    const-string p0, "UNKNOWN"

    return-object p0

    .line 2035
    :cond_9
    const-string p0, "SMS"

    return-object p0

    .line 2034
    :cond_c
    const-string p0, "CALL"

    return-object p0
.end method

.method private blacklist enterEmergencyCallbackMode()V
    .registers 5

    .line 1252
    const-string v0, "EmergencyStateTracker"

    const-string v1, "enter ECBM"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 1253
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->setIsInEmergencyCall(Z)V

    .line 1255
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->isInEcm()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_33

    .line 1256
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->setIsInEcm(Z)V

    .line 1257
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getUnitTestMode()Z

    move-result v0

    if-nez v0, :cond_22

    .line 1258
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0}, Landroid/internal/telephony/sysprop/TelephonyProperties;->in_ecm_mode(Ljava/lang/Boolean;)V

    .line 1262
    :cond_22
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->sendEmergencyCallbackModeChange()V

    .line 1263
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->isInImsEcm()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 1266
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyEmergencyCallRegistrants(Z)V

    goto :goto_3c

    .line 1270
    :cond_33
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/GsmCdmaPhone;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyEcbmTimerReset(Ljava/lang/Boolean;)V

    .line 1273
    :cond_3c
    :goto_3c
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->setEmergencyCallbackMode(Lcom/android/internal/telephony/Phone;I)V

    .line 1275
    invoke-static {}, Landroid/internal/telephony/sysprop/TelephonyProperties;->ecm_exit_timer()Ljava/util/Optional;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mEcmExitTimeoutMs:J

    .line 1276
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1278
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->startEmergencyCallbackMode(IJ)V

    .line 1283
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mExitEcmRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1286
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz p0, :cond_68

    invoke-virtual {p0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    :cond_68
    return-void
.end method

.method private blacklist enterEmergencySmsCallbackMode()V
    .registers 8

    .line 1616
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enter SCBM while "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->isInScbm()Z

    move-result v1

    if-eqz v1, :cond_13

    const-string v1, "in"

    goto :goto_15

    :cond_13
    const-string v1, "not in"

    :goto_15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " SCBM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EmergencyStateTracker"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1618
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->isInScbm()Z

    move-result v0

    .line 1621
    iget-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1623
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->isInScbm()Z

    move-result v1

    if-nez v1, :cond_3a

    const/4 v1, 0x1

    .line 1624
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->setIsInScbm(Z)V

    .line 1627
    :cond_3a
    iget-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mSmsPhone:Lcom/android/internal/telephony/Phone;

    const/4 v3, 0x2

    invoke-direct {p0, v1, v3}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->setEmergencyCallbackMode(Lcom/android/internal/telephony/Phone;I)V

    .line 1631
    iget-wide v4, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mEcmExitTimeoutMs:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    .line 1632
    iget-object v4, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mSmsPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v4

    .line 1633
    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v5

    if-eqz v5, :cond_68

    .line 1634
    const-string v5, "emergency_sms_mode_timer_ms_int"

    invoke-direct {p0, v4, v5, v1}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->getConfig(ILjava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_68

    .line 1638
    iget-wide v4, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mEcmExitTimeoutMs:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    .line 1643
    :cond_68
    iget-object v4, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mHandler:Landroid/os/Handler;

    int-to-long v5, v1

    invoke-virtual {v4, v2, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    if-eqz v0, :cond_76

    .line 1647
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mSmsPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0, v3, v5, v6}, Lcom/android/internal/telephony/Phone;->restartEmergencyCallbackMode(IJ)V

    return-void

    .line 1649
    :cond_76
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mSmsPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0, v3, v5, v6}, Lcom/android/internal/telephony/Phone;->startEmergencyCallbackMode(IJ)V

    return-void
.end method

.method private blacklist exitEmergencyMode(Lcom/android/internal/telephony/Phone;I)V
    .registers 8

    .line 981
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exitEmergencyMode for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->emergencyTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EmergencyStateTracker"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p2, v3, :cond_32

    .line 984
    iget-object v4, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mSmsPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v4, :cond_44

    invoke-static {p1, v4}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->isSamePhone(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;)Z

    move-result v4

    if-eqz v4, :cond_44

    .line 986
    const-string p1, "exitEmergencyMode: waits for emergency SMS end."

    invoke-static {v1, p1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->setIsInEmergencyCall(Z)V

    return-void

    :cond_32
    if-ne p2, v0, :cond_44

    .line 991
    iget-object v4, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v4, :cond_44

    invoke-static {p1, v4}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->isSamePhone(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;)Z

    move-result v4

    if-eqz v4, :cond_44

    .line 993
    const-string p0, "exitEmergencyMode: waits for emergency call end."

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 998
    :cond_44
    iget v4, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mEmergencyMode:I

    if-nez v4, :cond_49

    return-void

    .line 1001
    :cond_49
    iput v2, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mEmergencyMode:I

    .line 1002
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->setEmergencyModeInProgress(Z)V

    .line 1004
    iget-object v3, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mHandler:Landroid/os/Handler;

    .line 1005
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 1004
    invoke-virtual {v3, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    .line 1006
    iget-boolean v0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mWasEmergencyModeSetOnModem:Z

    if-nez v0, :cond_69

    .line 1007
    const-string p0, "Emergency mode was not set on modem: Skipping exiting emergency mode."

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 1009
    invoke-static {p2, p0, p0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1012
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 1016
    :cond_69
    iput-boolean v2, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mWasEmergencyModeSetOnModem:Z

    .line 1017
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/Phone;->exitEmergencyMode(Landroid/os/Message;)V

    return-void
.end method

.method private blacklist exitEmergencySmsCallbackMode(I)V
    .registers 5

    .line 1684
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1686
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->isInScbm()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    .line 1687
    const-string v0, "EmergencyStateTracker"

    const-string v2, "exit SCBM"

    invoke-static {v0, v2}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1690
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mSmsPhone:Lcom/android/internal/telephony/Phone;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, p1}, Lcom/android/internal/telephony/Phone;->stopEmergencyCallbackMode(II)V

    .line 1693
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->setIsInScbm(Z)V

    .line 1696
    :cond_1d
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mOngoingEmergencySmsIds:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 1697
    iput-boolean v1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mIsTestEmergencyNumberForSms:Z

    const/4 p1, 0x0

    .line 1698
    iput-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mSmsPhone:Lcom/android/internal/telephony/Phone;

    :cond_2a
    return-void
.end method

.method private blacklist exitEmergencySmsCallbackModeAndEmergencyMode(I)V
    .registers 4

    .line 1663
    const-string v0, "EmergencyStateTracker"

    const-string v1, "exit SCBM and emergency mode"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1664
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mSmsPhone:Lcom/android/internal/telephony/Phone;

    .line 1665
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->isInScbm()Z

    move-result v1

    .line 1666
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->exitEmergencySmsCallbackMode(I)V

    if-eqz v1, :cond_1e

    .line 1669
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mOngoingEmergencySmsIds:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1e

    const/4 p1, 0x2

    .line 1671
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->exitEmergencyMode(Lcom/android/internal/telephony/Phone;I)V

    :cond_1e
    return-void
.end method

.method private blacklist getBroadcastEmergencyCallStateChanges(Lcom/android/internal/telephony/Phone;)Z
    .registers 2

    .line 2110
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mBroadcastEmergencyCallStateChanges:Landroid/util/ArrayMap;

    .line 2111
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 2110
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-nez p0, :cond_14

    const/4 p0, 0x0

    return p0

    .line 2112
    :cond_14
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private blacklist getConfig(ILjava/lang/String;I)I
    .registers 5

    .line 1983
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->getConfigBundle(I[Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private blacklist getConfig(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1980
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->getConfigBundle(I[Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getConfig(ILjava/lang/String;Z)Z
    .registers 5

    .line 1989
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->getConfigBundle(I[Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private blacklist getConfig(ILjava/lang/String;)[Ljava/lang/String;
    .registers 4

    .line 1986
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->getConfigBundle(I[Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private varargs blacklist getConfigBundle(I[Ljava/lang/String;)Landroid/os/PersistableBundle;
    .registers 3

    .line 1992
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mConfigManager:Landroid/telephony/CarrierConfigManager;

    if-nez p0, :cond_a

    new-instance p0, Landroid/os/PersistableBundle;

    invoke-direct {p0}, Landroid/os/PersistableBundle;-><init>()V

    return-object p0

    .line 1993
    :cond_a
    invoke-virtual {p0, p1, p2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I[Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getInstance()Lcom/android/internal/telephony/emergency/EmergencyStateTracker;
    .registers 2

    .line 522
    sget-object v0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->INSTANCE:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    if-eqz v0, :cond_5

    return-object v0

    .line 523
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "EmergencyStateTracker is not ready!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist getRingingCall(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Call;
    .registers 5

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return-object p0

    .line 2137
    :cond_4
    invoke-interface {p1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 2139
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v2, :cond_1b

    .line 2140
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v2, :cond_1b

    return-object v0

    .line 2144
    :cond_1b
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p1

    if-eqz p1, :cond_25

    .line 2146
    invoke-interface {p1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    :cond_25
    if-eqz p1, :cond_3a

    if-eqz v0, :cond_3a

    .line 2149
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object p1

    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq p1, v1, :cond_3a

    .line 2150
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object p1

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq p1, v1, :cond_3a

    return-object v0

    :cond_3a
    return-object p0
.end method

.method private blacklist handleNewRingingConnection(Landroid/os/Message;)V
    .registers 5

    .line 2229
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/Connection;

    if-nez p1, :cond_b

    goto :goto_5d

    .line 2231
    :cond_b
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mNormalRoutingEmergencyConnection:Landroid/telecom/Connection;

    const/4 v1, 0x6

    const/4 v2, 0x4

    if-eqz v0, :cond_1f

    .line 2232
    invoke-virtual {v0}, Landroid/telecom/Connection;->getState()I

    move-result v0

    if-eq v0, v2, :cond_1f

    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mNormalRoutingEmergencyConnection:Landroid/telecom/Connection;

    .line 2233
    invoke-virtual {v0}, Landroid/telecom/Connection;->getState()I

    move-result v0

    if-ne v0, v1, :cond_32

    :cond_1f
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mOngoingConnection:Landroid/telecom/Connection;

    if-eqz v0, :cond_5d

    .line 2235
    invoke-virtual {v0}, Landroid/telecom/Connection;->getState()I

    move-result v0

    if-eq v0, v2, :cond_5d

    iget-object p0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mOngoingConnection:Landroid/telecom/Connection;

    .line 2236
    invoke-virtual {p0}, Landroid/telecom/Connection;->getState()I

    move-result p0

    if-ne p0, v1, :cond_32

    goto :goto_5d

    .line 2239
    :cond_32
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getPhoneType()I

    move-result p0

    const/4 v0, 0x5

    const-string v1, "EmergencyStateTracker"

    if-ne p0, v0, :cond_4a

    move-object p0, p1

    check-cast p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 2240
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->isIncomingCallAutoRejected()Z

    move-result p0

    if-eqz p0, :cond_4a

    .line 2241
    const-string p0, "handleNewRingingConnection auto rejected call"

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2244
    :cond_4a
    :try_start_4a
    const-string p0, "handleNewRingingConnection silently drop incoming call"

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2245
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->hangup()V
    :try_end_56
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_4a .. :try_end_56} :catch_57

    return-void

    :catch_57
    move-exception p0

    .line 2247
    const-string p1, "handleNewRingingConnection"

    invoke-static {v1, p1, p0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5d
    :goto_5d
    return-void
.end method

.method private blacklist isAirplaneModeOn(Landroid/content/Context;)Z
    .registers 3

    .line 1745
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "airplane_mode_on"

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-lez p0, :cond_f

    const/4 p0, 0x1

    return p0

    :cond_f
    return v0
.end method

.method private blacklist isAvailableForEmergencyCalls(Lcom/android/internal/telephony/Phone;)Z
    .registers 2

    .line 2000
    invoke-interface {p1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getState()I

    move-result p0

    if-eqz p0, :cond_17

    .line 2001
    invoke-interface {p1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result p0

    if-eqz p0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    return p0

    :cond_17
    :goto_17
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist isEmergencyModeInProgress()Z
    .registers 1

    .line 953
    iget-boolean p0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mIsEmergencyModeInProgress:Z

    return p0
.end method

.method private static blacklist isNetworkRegistered(Lcom/android/internal/telephony/Phone;)Z
    .registers 3

    .line 2005
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    if-eqz p0, :cond_26

    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 2007
    invoke-virtual {p0, v0, v1}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 2010
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo;->isNetworkRegistered()Z

    move-result v0

    if-eqz v0, :cond_19

    return v1

    .line 2014
    :cond_19
    invoke-virtual {p0, v1, v1}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object p0

    if-eqz p0, :cond_26

    .line 2017
    invoke-virtual {p0}, Landroid/telephony/NetworkRegistrationInfo;->isNetworkRegistered()Z

    move-result p0

    if-eqz p0, :cond_26

    return v1

    :cond_26
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isPowerOff()Z
    .registers 6

    .line 1717
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mPhoneFactoryProxy:Lcom/android/internal/telephony/emergency/EmergencyStateTracker$PhoneFactoryProxy;

    invoke-interface {p0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$PhoneFactoryProxy;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_9
    if-ge v2, v0, :cond_20

    aget-object v3, p0, v2

    .line 1718
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/ServiceStateTracker;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    .line 1719
    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1d

    return v1

    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_20
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist isRadioOn()Z
    .registers 5

    .line 1707
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mPhoneFactoryProxy:Lcom/android/internal/telephony/emergency/EmergencyStateTracker$PhoneFactoryProxy;

    invoke-interface {p0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$PhoneFactoryProxy;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_9
    if-ge v1, v0, :cond_15

    aget-object v3, p0, v1

    .line 1708
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->isRadioOn()Z

    move-result v3

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_15
    return v2
.end method

.method private static blacklist isSamePhone(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;)Z
    .registers 2

    if-eqz p0, :cond_10

    if-eqz p1, :cond_10

    .line 2029
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1

    if-ne p0, p1, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isSimReady(II)Z
    .registers 3

    .line 2104
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result p2

    if-eqz p2, :cond_11

    iget-object p0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mTelephonyManagerProxy:Lcom/android/internal/telephony/emergency/EmergencyStateTracker$TelephonyManagerProxy;

    .line 2105
    invoke-interface {p0, p1}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$TelephonyManagerProxy;->getSimState(I)I

    move-result p0

    const/4 p1, 0x5

    if-ne p0, p1, :cond_11

    const/4 p0, 0x1

    return p0

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isThereOtherPhone(IZ)Z
    .registers 14

    .line 2335
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mPhoneFactoryProxy:Lcom/android/internal/telephony/emergency/EmergencyStateTracker$PhoneFactoryProxy;

    invoke-interface {v0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$PhoneFactoryProxy;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_9
    if-ge v3, v1, :cond_8f

    aget-object v4, v0, v3

    .line 2336
    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v5

    if-ne v5, p1, :cond_14

    goto :goto_69

    .line 2341
    :cond_14
    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v4

    .line 2342
    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v6

    const-string v7, "isThereOtherPhone phoneId="

    const-string v8, "EmergencyStateTracker"

    if-nez v6, :cond_3d

    .line 2343
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", subId="

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_69

    .line 2346
    :cond_3d
    iget-object v4, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mTelephonyManagerProxy:Lcom/android/internal/telephony/emergency/EmergencyStateTracker$TelephonyManagerProxy;

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$TelephonyManagerProxy;->getSimState(I)I

    move-result v4

    const/4 v6, 0x5

    .line 2347
    const-string v9, ", simState="

    const/4 v10, 0x1

    if-eq v4, v6, :cond_6c

    if-eqz p2, :cond_51

    if-eq v4, v10, :cond_51

    const/4 v6, 0x6

    if-eq v4, v6, :cond_51

    goto :goto_6c

    .line 2354
    :cond_51
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_69
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 2350
    :cond_6c
    :goto_6c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "isThereOtherPhone found, ignoreLockState="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", phoneId="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v10

    :cond_8f
    return v2
.end method

.method private static blacklist isVoWiFi(I)Z
    .registers 2

    .line 0
    and-int/lit8 v0, p0, 0x8

    if-gtz v0, :cond_b

    and-int/lit16 p0, p0, 0x2000

    if-lez p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    return p0

    :cond_b
    :goto_b
    const/4 p0, 0x1

    return p0
.end method

.method private synthetic blacklist lambda$new$0()V
    .registers 2

    const/4 v0, 0x5

    .line 161
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->exitEmergencyCallbackMode(I)V

    return-void
.end method

.method private synthetic blacklist lambda$new$1(IIII)V
    .registers 5

    .line 198
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->onCarrierConfigurationChanged(II)V

    return-void
.end method

.method private synthetic blacklist lambda$onEmergencyTransportChanged$4(II)V
    .registers 3

    .line 1109
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->onEmergencyTransportChanged(II)V

    return-void
.end method

.method private synthetic blacklist lambda$startEmergencyCall$2(Landroid/telecom/Connection;Ljava/lang/Boolean;)V
    .registers 5

    .line 725
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "maybeRejectIncomingCall : result = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "EmergencyStateTracker"

    invoke-static {v0, p2}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    iget-object p2, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mOngoingConnection:Landroid/telecom/Connection;

    invoke-static {p2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3c

    .line 727
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "maybeRejectIncomingCall "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 728
    invoke-virtual {p1}, Landroid/telecom/Connection;->getTelecomCallId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " canceled."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 727
    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 731
    :cond_3c
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 p2, 0x1

    iget-boolean v0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mIsTestEmergencyNumber:Z

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->turnOnRadioAndSwitchDds(Lcom/android/internal/telephony/Phone;IZ)V

    return-void
.end method

.method private synthetic blacklist lambda$switchDdsAndSetEmergencyMode$3(Lcom/android/internal/telephony/Phone;ILjava/lang/Boolean;)V
    .registers 16

    .line 807
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switchDdsDelayed: result = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EmergencyStateTracker"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-nez p3, :cond_21

    .line 810
    const-string p3, "DDS Switch failed."

    invoke-static {v1, p3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    :cond_21
    iget p3, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mEmergencyMode:I

    const/4 v0, 0x1

    if-eq p3, v0, :cond_2a

    .line 818
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->setEmergencyMode(Lcom/android/internal/telephony/Phone;III)V

    return-void

    .line 822
    :cond_2a
    new-instance v1, Landroid/telephony/EmergencyRegistrationResult;

    const-string v10, ""

    const-string v11, ""

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, ""

    invoke-direct/range {v1 .. v11}, Landroid/telephony/EmergencyRegistrationResult;-><init>(IIIZZIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mLastEmergencyRegistrationResult:Landroid/telephony/EmergencyRegistrationResult;

    if-ne p2, v0, :cond_43

    .line 827
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->setIsInEmergencyCall(Z)V

    .line 829
    :cond_43
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->completeEmergencyMode(I)V

    return-void
.end method

.method public static blacklist make(Landroid/content/Context;ZIZZLcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    .registers 15

    .line 507
    sget-object v0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->INSTANCE:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    if-nez v0, :cond_15

    .line 508
    new-instance v1, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    move-object v2, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move-object v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;-><init>(Landroid/content/Context;Landroid/os/Looper;ZIZZLcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    sput-object v1, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->INSTANCE:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    :cond_15
    return-void
.end method

.method private blacklist maybeNotifyTransportChangeCompleted(IZ)V
    .registers 5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    goto :goto_2a

    .line 1054
    :cond_4
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mEmergencyTransportChangedFuture:Ljava/util/concurrent/CompletableFuture;

    if-eqz p1, :cond_2a

    .line 1056
    monitor-enter p1

    .line 1057
    :try_start_9
    invoke-virtual {p1}, Ljava/util/concurrent/CompletableFuture;->isDone()Z

    move-result v1

    if-nez v1, :cond_26

    .line 1058
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->isEmergencyModeInProgress()Z

    move-result v1

    if-nez v1, :cond_1c

    iget p0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mEmergencyMode:I

    if-eq p0, v0, :cond_1e

    goto :goto_1c

    :catchall_1a
    move-exception p0

    goto :goto_28

    :cond_1c
    :goto_1c
    if-eqz p2, :cond_26

    .line 1060
    :cond_1e
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 1061
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 1063
    :cond_26
    monitor-exit p1

    return-void

    :goto_28
    monitor-exit p1
    :try_end_29
    .catchall {:try_start_9 .. :try_end_29} :catchall_1a

    throw p0

    :cond_2a
    :goto_2a
    return-void
.end method

.method private blacklist maybeRejectIncomingCall(Ljava/util/function/Consumer;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 2164
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mPhoneFactoryProxy:Lcom/android/internal/telephony/emergency/EmergencyStateTracker$PhoneFactoryProxy;

    invoke-interface {v0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$PhoneFactoryProxy;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-nez v0, :cond_10

    if-eqz p1, :cond_91

    .line 2167
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    .line 2173
    :cond_10
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_13
    const-string v4, "EmergencyStateTracker"

    if-ge v3, v1, :cond_28

    aget-object v2, v0, v3

    .line 2174
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->getRingingCall(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Call;

    move-result-object v2

    if-eqz v2, :cond_25

    .line 2176
    const-string v0, "maybeRejectIncomingCall found a ringing call"

    invoke-static {v4, v0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    :cond_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_28
    :goto_28
    if-nez v2, :cond_32

    if-eqz p1, :cond_91

    .line 2183
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    .line 2189
    :cond_32
    :try_start_32
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->hangup()V

    if-nez p1, :cond_38

    goto :goto_91

    .line 2192
    :cond_38
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 2193
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 2194
    new-instance v2, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$OnDisconnectListener;

    invoke-direct {v2, v0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$OnDisconnectListener;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/Connection;->addListener(Lcom/android/internal/telephony/Connection$Listener;)V

    .line 2196
    new-instance v1, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v1}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 2197
    iget-object v2, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$$ExternalSyntheticLambda6;

    invoke-direct {v3, v1}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$$ExternalSyntheticLambda6;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    const-wide/16 v5, 0xbb8

    invoke-virtual {v2, v3, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2200
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mHandler:Landroid/os/Handler;

    .line 2201
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/internal/telephony/NetworkTypeController$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/NetworkTypeController$$ExternalSyntheticLambda0;-><init>(Landroid/os/Handler;)V

    .line 2200
    invoke-virtual {v0, v1, p1, v2}, Ljava/util/concurrent/CompletableFuture;->acceptEitherAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$$ExternalSyntheticLambda7;-><init>()V

    .line 2201
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->exceptionally(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_70} :catch_71

    return-void

    :catch_71
    move-exception p0

    .line 2206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "maybeRejectIncomingCall - exception= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_91

    .line 2208
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_91
    :goto_91
    return-void
.end method

.method private blacklist onCarrierConfigurationChanged(II)V
    .registers 15

    .line 2041
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCarrierConfigChanged slotIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", subId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "EmergencyStateTracker"

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-gez p1, :cond_22

    goto/16 :goto_df

    .line 2048
    :cond_22
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mNoSimEcbmSupported:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 2049
    const-string v3, ", ecbmSupported="

    const-string v4, "no_sim_ecbm_support"

    if-nez v0, :cond_79

    .line 2050
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2051
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 2052
    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 2051
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 2053
    iget-object v6, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mNoSimEcbmSupported:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2054
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCarrierConfigChanged load from preference slotIndex="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v11, v5

    move-object v5, v0

    move-object v0, v11

    goto :goto_7a

    :cond_79
    const/4 v5, 0x0

    .line 2058
    :goto_7a
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->isSimReady(II)Z

    move-result v6

    if-nez v6, :cond_86

    .line 2059
    const-string p0, "onCarrierConfigChanged SIM not ready"

    invoke-static {v2, p0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2063
    :cond_86
    const-string v6, "imsemergency.emergency_callback_mode_supported_bool"

    const-string v7, "broadcast_emergency_call_state_changes_bool"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, p2, v8}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->getConfigBundle(I[Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object p2

    .line 2066
    invoke-virtual {p2}, Landroid/os/PersistableBundle;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_9e

    .line 2067
    const-string p0, "onCarrierConfigChanged empty result"

    invoke-static {v2, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2071
    :cond_9e
    invoke-static {p2}, Landroid/telephony/CarrierConfigManager;->isConfigForIdentifiedCarrier(Landroid/os/PersistableBundle;)Z

    move-result v8

    if-nez v8, :cond_aa

    .line 2072
    const-string p0, "onCarrierConfigChanged not carrier specific configuration"

    invoke-static {v2, p0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2077
    :cond_aa
    invoke-virtual {p2, v7}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 2078
    iget-object v8, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mBroadcastEmergencyCallStateChanges:Landroid/util/ArrayMap;

    .line 2079
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    .line 2078
    invoke-virtual {v8, v9, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2081
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", broadcastEmergencyCallStateChanges="

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2085
    invoke-virtual {p2, v6}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    .line 2086
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne p2, v0, :cond_e0

    :goto_df
    return-void

    .line 2090
    :cond_e0
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mNoSimEcbmSupported:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v5, :cond_f5

    .line 2093
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 2095
    :cond_f5
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 2096
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2097
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2099
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCarrierConfigChanged preference updated slotIndex="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist possiblyOverrideDefaultDataForEmergencyCall(Lcom/android/internal/telephony/Phone;)Ljava/util/concurrent/CompletableFuture;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/Phone;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1904
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mTelephonyManagerProxy:Lcom/android/internal/telephony/emergency/EmergencyStateTracker$TelephonyManagerProxy;

    invoke-interface {v0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$TelephonyManagerProxy;->getPhoneCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_10

    .line 1907
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0}, Ljava/util/concurrent/CompletableFuture;->completedFuture(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0

    .line 1911
    :cond_10
    iget-boolean v0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mIsSuplDdsSwitchRequiredForEmergencyCall:Z

    const-string v2, "EmergencyStateTracker"

    if-nez v0, :cond_22

    .line 1912
    const-string p0, "possiblyOverrideDefaultDataForEmergencyCall: not switching DDS, does not require DDS switch."

    invoke-static {v2, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1914
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0}, Ljava/util/concurrent/CompletableFuture;->completedFuture(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0

    .line 1918
    :cond_22
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->isAvailableForEmergencyCalls(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 1919
    const-string p0, "possiblyOverrideDefaultDataForEmergencyCall: not switching DDS"

    invoke-static {v2, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1920
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0}, Ljava/util/concurrent/CompletableFuture;->completedFuture(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0

    .line 1925
    :cond_34
    invoke-interface {p1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v0

    .line 1930
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v3

    const-string v4, "gps.es_supl_data_plane_only_roaming_plmn_string_array"

    invoke-direct {p0, v3, v4}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->getConfig(ILjava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_5c

    .line 1932
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 1933
    invoke-interface {p1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5c

    move v1, v4

    :cond_5c
    if-eqz v0, :cond_6c

    if-eqz v1, :cond_6c

    .line 1937
    const-string p0, "possiblyOverrideDefaultDataForEmergencyCall: roaming network is assumed to support CP fallback, not switching DDS."

    invoke-static {v2, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1939
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0}, Ljava/util/concurrent/CompletableFuture;->completedFuture(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0

    .line 1944
    :cond_6c
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    const-string v3, "gps.es_supl_control_plane_support_int"

    invoke-direct {p0, v0, v3, v4}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->getConfig(ILjava/lang/String;I)I

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_87

    if-eqz v1, :cond_87

    .line 1949
    const-string p0, "possiblyOverrideDefaultDataForEmergencyCall: not switching DDS, carrier supports CP fallback."

    invoke-static {v2, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1951
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0}, Ljava/util/concurrent/CompletableFuture;->completedFuture(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0

    .line 1958
    :cond_87
    :try_start_87
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    const-string v1, "gps.es_extension_sec"

    const-string v3, "0"

    invoke-direct {p0, v0, v1, v3}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->getConfig(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_97
    .catch Ljava/lang/NumberFormatException; {:try_start_87 .. :try_end_97} :catch_97

    .line 1963
    :catch_97
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 1965
    :try_start_9c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "possiblyOverrideDefaultDataForEmergencyCall: overriding DDS for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "seconds"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1967
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mPhoneSwitcherProxy:Lcom/android/internal/telephony/emergency/EmergencyStateTracker$PhoneSwitcherProxy;

    invoke-interface {p0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$PhoneSwitcherProxy;->getPhoneSwitcher()Lcom/android/internal/telephony/data/PhoneSwitcher;

    move-result-object p0

    .line 1968
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1

    .line 1967
    invoke-virtual {p0, p1, v4, v0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->overrideDefaultDataForEmergency(IILjava/util/concurrent/CompletableFuture;)V
    :try_end_c2
    .catch Ljava/lang/Exception; {:try_start_9c .. :try_end_c2} :catch_c3

    goto :goto_e2

    :catch_c3
    move-exception p0

    .line 1971
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "possiblyOverrideDefaultDataForEmergencyCall: exception = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1972
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1971
    invoke-static {v2, p0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1973
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0}, Ljava/util/concurrent/CompletableFuture;->completedFuture(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    :goto_e2
    return-object v0
.end method

.method private blacklist registerForNewRingingConnection()V
    .registers 8

    .line 2214
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mPhoneFactoryProxy:Lcom/android/internal/telephony/emergency/EmergencyStateTracker$PhoneFactoryProxy;

    invoke-interface {v0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$PhoneFactoryProxy;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_1a

    .line 2219
    :cond_9
    array-length v1, v0

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_1a

    aget-object v3, v0, v2

    .line 2220
    iget-object v4, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x5

    iget-object v6, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mRegistrantidentifier:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/internal/telephony/Phone;->registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_1a
    :goto_1a
    return-void
.end method

.method private blacklist registerForVoiceRegStateOrRatChanged()V
    .registers 8

    .line 1725
    iget-boolean v0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mIsWaitingForRadioOff:Z

    if-eqz v0, :cond_5

    return-void

    .line 1726
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mPhoneFactoryProxy:Lcom/android/internal/telephony/emergency/EmergencyStateTracker$PhoneFactoryProxy;

    invoke-interface {v0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$PhoneFactoryProxy;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_1f

    aget-object v3, v0, v2

    .line 1727
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForVoiceRegStateOrRatChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_1f
    const/4 v0, 0x1

    .line 1730
    iput-boolean v0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mIsWaitingForRadioOff:Z

    return-void
.end method

.method private blacklist releaseWakeLock()V
    .registers 3

    .line 1350
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1352
    :try_start_a
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception p0

    .line 1355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WakeLock already released: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "EmergencyStateTracker"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    return-void
.end method

.method private blacklist sendEmergencyCallStateChange(Lcom/android/internal/telephony/Phone;Z)V
    .registers 5

    if-eqz p2, :cond_c

    .line 1437
    iget-boolean v0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mSentEmergencyCallState:Z

    if-nez v0, :cond_c

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->getBroadcastEmergencyCallStateChanges(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    if-nez v0, :cond_12

    :cond_c
    if-nez p2, :cond_44

    iget-boolean v0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mSentEmergencyCallState:Z

    if-eqz v0, :cond_44

    .line 1439
    :cond_12
    iput-boolean p2, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mSentEmergencyCallState:Z

    .line 1440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendEmergencyCallStateChange: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EmergencyStateTracker"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EMERGENCY_CALL_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1442
    const-string v1, "android.telephony.extra.PHONE_IN_EMERGENCY_CALL"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1443
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1

    invoke-static {v0, p1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 1444
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mContext:Landroid/content/Context;

    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_44
    return-void
.end method

.method private blacklist sendEmergencyCallbackModeChange()V
    .registers 4

    .line 1381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendEmergencyCallbackModeChange: isInEcm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->isInEcm()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EmergencyStateTracker"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1383
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1384
    const-string v1, "android.telephony.extra.PHONE_IN_ECM_STATE"

    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->isInEcm()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1385
    iget-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 1386
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private blacklist setEmergencyCallbackMode(Lcom/android/internal/telephony/Phone;I)V
    .registers 4

    const/4 v0, 0x1

    if-ne p2, v0, :cond_4

    goto :goto_1b

    :cond_4
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1f

    .line 894
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mActiveEmergencyCalls:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mOngoingConnection:Landroid/telecom/Connection;

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mOngoingEmergencySmsIds:Ljava/util/Set;

    .line 895
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1f

    :goto_1b
    const/4 v0, 0x3

    .line 902
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->setEmergencyMode(Lcom/android/internal/telephony/Phone;III)V

    :cond_1f
    return-void
.end method

.method private blacklist setEmergencyMode(Lcom/android/internal/telephony/Phone;III)V
    .registers 9

    .line 844
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setEmergencyMode from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mEmergencyMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 845
    invoke-static {p2}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->emergencyTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 844
    const-string v1, "EmergencyStateTracker"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    iget v0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mEmergencyMode:I

    if-ne v0, p3, :cond_35

    const/4 p1, 0x0

    .line 849
    invoke-direct {p0, p2, p1}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->maybeNotifyTransportChangeCompleted(IZ)V

    return-void

    :cond_35
    const/4 v0, 0x1

    if-ne p2, v0, :cond_4e

    if-ne p3, v0, :cond_4e

    .line 855
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->isEmergencyModeInProgress()Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->isInEmergencyMode()Z

    move-result v2

    if-nez v2, :cond_4e

    .line 857
    iput p3, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mEmergencyMode:I

    .line 858
    const-string p0, "setEmergencyMode wait for the completion of exitEmergencyMode"

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 862
    :cond_4e
    iput p3, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mEmergencyMode:I

    .line 863
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->setEmergencyModeInProgress(Z)V

    .line 865
    iget-object v2, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mHandler:Landroid/os/Handler;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p4, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    .line 866
    iget-boolean v2, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mIsTestEmergencyNumberForSms:Z

    if-eqz v2, :cond_89

    const/4 v2, 0x2

    if-ne p2, v2, :cond_89

    .line 867
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "TestEmergencyNumber for "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->emergencyTypeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": Skipping setting emergency mode on modem."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 870
    invoke-static {p4, p0, p0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 873
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 877
    :cond_89
    iput-boolean v0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mWasEmergencyModeSetOnModem:Z

    .line 878
    invoke-virtual {p1, p3, p4}, Lcom/android/internal/telephony/Phone;->setEmergencyMode(ILandroid/os/Message;)V

    return-void
.end method

.method private blacklist setEmergencyModeInProgress(Z)V
    .registers 2

    .line 946
    iput-boolean p1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mIsEmergencyModeInProgress:Z

    return-void
.end method

.method private blacklist setIsInEcm(Z)V
    .registers 2

    .line 1406
    iput-boolean p1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mIsInEcm:Z

    return-void
.end method

.method private blacklist setIsInEmergencyCall(Z)V
    .registers 2

    .line 962
    iput-boolean p1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mIsInEmergencyCall:Z

    return-void
.end method

.method private blacklist setIsInScbm(Z)V
    .registers 2

    .line 1609
    iput-boolean p1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mIsInScbm:Z

    return-void
.end method

.method private blacklist switchDdsAndSetEmergencyMode(Lcom/android/internal/telephony/Phone;I)V
    .registers 4

    .line 806
    new-instance v0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$$ExternalSyntheticLambda9;-><init>(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;Lcom/android/internal/telephony/Phone;I)V

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->switchDdsDelayed(Lcom/android/internal/telephony/Phone;Ljava/util/function/Consumer;)V

    return-void
.end method

.method private blacklist turnOnRadioAndSwitchDds(Lcom/android/internal/telephony/Phone;IZ)V
    .registers 16

    .line 1766
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    .line 1767
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->isRadioOn()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_12

    if-eqz v0, :cond_10

    goto :goto_12

    :cond_10
    move v2, v3

    goto :goto_13

    :cond_12
    :goto_12
    const/4 v2, 0x1

    .line 1768
    :goto_13
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->shouldExitSatelliteMode()Z

    move-result v4

    .line 1770
    const-string v5, "EmergencyStateTracker"

    if-eqz v0, :cond_34

    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->isPowerOff()Z

    move-result v0

    if-nez v0, :cond_34

    .line 1771
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->getDesiredPowerState()Z

    move-result v0

    if-nez v0, :cond_34

    .line 1773
    const-string v0, "turnOnRadioAndSwitchDds: wait for the delayed power off"

    invoke-static {v5, v0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1774
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->registerForVoiceRegStateOrRatChanged()V

    return-void

    :cond_34
    if-nez v2, :cond_3d

    if-eqz v4, :cond_39

    goto :goto_3d

    .line 1853
    :cond_39
    invoke-direct/range {p0 .. p2}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->switchDdsAndSetEmergencyMode(Lcom/android/internal/telephony/Phone;I)V

    return-void

    .line 1779
    :cond_3d
    :goto_3d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "turnOnRadioAndSwitchDds: phoneId="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " for "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1780
    invoke-static {p2}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->emergencyTypeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1779
    invoke-static {v5, v0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1781
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mRadioOnHelper:Lcom/android/internal/telephony/emergency/RadioOnHelper;

    if-nez v0, :cond_6e

    .line 1782
    new-instance v0, Lcom/android/internal/telephony/emergency/RadioOnHelper;

    iget-object v4, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/emergency/RadioOnHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mRadioOnHelper:Lcom/android/internal/telephony/emergency/RadioOnHelper;

    :cond_6e
    move v0, v2

    .line 1786
    iget-object v2, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mOngoingConnection:Landroid/telecom/Connection;

    if-eqz v0, :cond_75

    .line 1787
    iget v3, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mWaitForInServiceTimeoutMs:I

    :cond_75
    move v6, v3

    .line 1788
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "turnOnRadioAndSwitchDds: timeout="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1789
    iget-object v7, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mRadioOnHelper:Lcom/android/internal/telephony/emergency/RadioOnHelper;

    new-instance v0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$2;

    move-object v5, p1

    move-object v1, p0

    move-object v4, p1

    move v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$2;-><init>(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;Landroid/telecom/Connection;ILcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;I)V

    xor-int/lit8 v8, p3, 0x1

    move-object v9, p1

    move v10, p3

    move v11, v6

    move-object v6, v7

    move-object v7, v0

    invoke-virtual/range {v6 .. v11}, Lcom/android/internal/telephony/emergency/RadioOnHelper;->triggerRadioOnAndListen(Lcom/android/internal/telephony/emergency/RadioOnStateListener$Callback;ZLcom/android/internal/telephony/Phone;ZI)V

    return-void
.end method

.method private blacklist unregisterForVoiceRegStateOrRatChanged()V
    .registers 7

    .line 1734
    iget-boolean v0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mIsWaitingForRadioOff:Z

    if-nez v0, :cond_5

    return-void

    .line 1735
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mPhoneFactoryProxy:Lcom/android/internal/telephony/emergency/EmergencyStateTracker$PhoneFactoryProxy;

    invoke-interface {v0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$PhoneFactoryProxy;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_e
    if-ge v3, v1, :cond_1e

    aget-object v4, v0, v3

    .line 1736
    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForVoiceRegStateOrRatChanged(Landroid/os/Handler;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 1738
    :cond_1e
    iput-boolean v2, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mIsWaitingForRadioOff:Z

    return-void
.end method

.method private blacklist waitForTransportChangeCompleted(Ljava/util/concurrent/CompletableFuture;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_4f

    .line 1027
    monitor-enter p1

    .line 1028
    :try_start_3
    iget v0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mEmergencyMode:I

    if-eqz v0, :cond_4b

    iget-object p0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mHandler:Landroid/os/Handler;

    .line 1029
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result p0

    if-eqz p0, :cond_14

    goto :goto_4b

    .line 1033
    :cond_14
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    add-long/2addr v2, v0

    .line 1036
    :goto_1b
    invoke-virtual {p1}, Ljava/util/concurrent/CompletableFuture;->isDone()Z

    move-result p0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_2b

    if-nez p0, :cond_49

    cmp-long p0, v0, v2

    if-gez p0, :cond_49

    sub-long v0, v2, v0

    .line 1038
    :try_start_27
    invoke-virtual {p1, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2a} :catch_2d
    .catchall {:try_start_27 .. :try_end_2a} :catchall_2b

    goto :goto_44

    :catchall_2b
    move-exception p0

    goto :goto_4d

    :catch_2d
    move-exception p0

    .line 1040
    :try_start_2e
    const-string v0, "EmergencyStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "waitForTransportChangeCompleted wait e="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    :goto_44
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    goto :goto_1b

    .line 1044
    :cond_49
    monitor-exit p1

    goto :goto_4f

    .line 1031
    :cond_4b
    :goto_4b
    monitor-exit p1

    return-void

    .line 1044
    :goto_4d
    monitor-exit p1
    :try_end_4e
    .catchall {:try_start_2e .. :try_end_4e} :catchall_2b

    throw p0

    :cond_4f
    :goto_4f
    return-void
.end method


# virtual methods
.method public blacklist endCall(Landroid/telecom/Connection;)V
    .registers 5

    .line 746
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mActiveEmergencyCalls:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 748
    iget-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mOngoingConnection:Landroid/telecom/Connection;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_1c

    .line 749
    iput-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mOngoingConnection:Landroid/telecom/Connection;

    .line 750
    iput v2, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mOngoingCallProperties:I

    .line 751
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {p0, p1, v2}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->sendEmergencyCallStateChange(Lcom/android/internal/telephony/Phone;Z)V

    .line 752
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->unregisterForVoiceRegStateOrRatChanged()V

    :cond_1c
    const/4 p1, 0x1

    if-eqz v0, :cond_3b

    .line 755
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mActiveEmergencyCalls:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 756
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->isEmergencyCallbackModeSupported(Lcom/android/internal/telephony/Phone;Z)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 757
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->enterEmergencyCallbackMode()V

    .line 759
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mOngoingConnection:Landroid/telecom/Connection;

    if-nez v0, :cond_7c

    .line 760
    iput-boolean v2, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mIsEmergencyCallStartedDuringEmergencySms:Z

    .line 761
    iput-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mCallEmergencyModeFuture:Ljava/util/concurrent/CompletableFuture;

    goto :goto_7c

    .line 763
    :cond_3b
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mOngoingConnection:Landroid/telecom/Connection;

    if-nez v0, :cond_7c

    .line 764
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->isInEcm()Z

    move-result v0

    if-eqz v0, :cond_64

    .line 765
    iput-boolean v2, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mIsEmergencyCallStartedDuringEmergencySms:Z

    .line 766
    iput-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mCallEmergencyModeFuture:Ljava/util/concurrent/CompletableFuture;

    .line 768
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mActiveEmergencyCalls:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 772
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->isEmergencyCallbackModeSupported(Lcom/android/internal/telephony/Phone;Z)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 773
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->enterEmergencyCallbackMode()V

    goto :goto_7c

    .line 775
    :cond_5d
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->exitEmergencyCallbackMode()V

    .line 776
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->clearEmergencyCallInfo()V

    goto :goto_7c

    .line 780
    :cond_64
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->isInScbm()Z

    move-result v0

    if-eqz v0, :cond_74

    .line 781
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->setIsInEmergencyCall(Z)V

    .line 782
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mSmsPhone:Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->setEmergencyCallbackMode(Lcom/android/internal/telephony/Phone;I)V

    goto :goto_79

    .line 784
    :cond_74
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->exitEmergencyMode(Lcom/android/internal/telephony/Phone;I)V

    .line 786
    :goto_79
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->clearEmergencyCallInfo()V

    .line 791
    :cond_7c
    :goto_7c
    invoke-direct {p0, p1, p1}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->maybeNotifyTransportChangeCompleted(IZ)V

    return-void
.end method

.method public blacklist endNormalRoutingEmergencyCall(Landroid/telecom/Connection;)V
    .registers 4

    .line 2279
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mNormalRoutingEmergencyConnection:Landroid/telecom/Connection;

    if-eq p1, v0, :cond_5

    return-void

    .line 2280
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "endNormalRoutingEmergencyCall: callId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telecom/Connection;->getTelecomCallId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "EmergencyStateTracker"

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 2281
    iput-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mNormalRoutingEmergencyConnection:Landroid/telecom/Connection;

    return-void
.end method

.method public blacklist endSms(Ljava/lang/String;ZIZ)V
    .registers 6

    if-eqz p2, :cond_c

    if-nez p4, :cond_c

    .line 1542
    const-string p1, "EmergencyStateTracker"

    const-string p4, "endSms: wait for additional SMS parts to be sent."

    invoke-static {p1, p4}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 1544
    :cond_c
    iget-object p4, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mOngoingEmergencySmsIds:Ljava/util/Set;

    invoke-interface {p4, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1548
    :goto_11
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mOngoingEmergencySmsIds:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_64

    const/4 p1, 0x0

    .line 1549
    iput-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mSmsEmergencyModeFuture:Ljava/util/concurrent/CompletableFuture;

    const/4 p1, 0x0

    .line 1550
    iput-boolean p1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mIsEmergencySmsStartedDuringScbm:Z

    .line 1552
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->isInEcm()Z

    move-result p4

    if-eqz p4, :cond_37

    .line 1555
    iget-object p4, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mActiveEmergencyCalls:Ljava/util/Set;

    invoke-interface {p4}, Ljava/util/Set;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_37

    iget-object p4, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mOngoingConnection:Landroid/telecom/Connection;

    if-nez p4, :cond_37

    .line 1556
    iget-object p4, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v0, 0x1

    invoke-direct {p0, p4, v0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->setEmergencyCallbackMode(Lcom/android/internal/telephony/Phone;I)V

    :cond_37
    const/4 p4, 0x2

    if-eqz p2, :cond_4e

    if-ne p3, p4, :cond_4e

    .line 1562
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->isInScbm()Z

    move-result p2

    if-nez p2, :cond_4a

    iget-object p2, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mSmsPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0, p2, p1}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->isEmergencyCallbackModeSupported(Lcom/android/internal/telephony/Phone;Z)Z

    move-result p1

    if-eqz p1, :cond_4e

    .line 1563
    :cond_4a
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->enterEmergencySmsCallbackMode()V

    return-void

    .line 1564
    :cond_4e
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->isInScbm()Z

    move-result p1

    if-eqz p1, :cond_5a

    .line 1566
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mSmsPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {p0, p1, p4}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->setEmergencyCallbackMode(Lcom/android/internal/telephony/Phone;I)V

    return-void

    .line 1568
    :cond_5a
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mSmsPhone:Lcom/android/internal/telephony/Phone;

    if-eqz p1, :cond_61

    .line 1569
    invoke-direct {p0, p1, p4}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->exitEmergencyMode(Lcom/android/internal/telephony/Phone;I)V

    .line 1571
    :cond_61
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->clearEmergencySmsInfo()V

    :cond_64
    return-void
.end method

.method public blacklist exitEmergencyCallbackMode()V
    .registers 2

    const/4 v0, 0x0

    .line 1296
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->exitEmergencyCallbackMode(I)V

    return-void
.end method

.method public blacklist exitEmergencyCallbackMode(I)V
    .registers 5

    .line 1311
    const-string v0, "EmergencyStateTracker"

    const-string v1, "exit ECBM"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1313
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mExitEcmRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1315
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->isInEcm()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_39

    .line 1316
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->setIsInEcm(Z)V

    .line 1317
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getUnitTestMode()Z

    move-result v0

    if-nez v0, :cond_25

    .line 1318
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Landroid/internal/telephony/sysprop/TelephonyProperties;->in_ecm_mode(Ljava/lang/Boolean;)V

    .line 1322
    :cond_25
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->releaseWakeLock()V

    .line 1324
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 1326
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->sendEmergencyCallbackModeChange()V

    .line 1327
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyEmergencyCallRegistrants(Z)V

    const/4 v2, 0x1

    .line 1330
    invoke-virtual {v0, v2, p1}, Lcom/android/internal/telephony/Phone;->stopEmergencyCallbackMode(II)V

    .line 1334
    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->exitEmergencyMode(Lcom/android/internal/telephony/Phone;I)V

    .line 1340
    :cond_39
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mOngoingConnection:Landroid/telecom/Connection;

    if-nez p1, :cond_46

    .line 1341
    iput v1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mEmergencyCallDomain:I

    .line 1342
    iput v1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mEmergencyCallPhoneType:I

    .line 1343
    iput-boolean v1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mIsTestEmergencyNumber:Z

    const/4 p1, 0x0

    .line 1344
    iput-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    :cond_46
    return-void
.end method

.method public blacklist exitEmergencyCallbackMode(Ljava/lang/Runnable;I)V
    .registers 3

    .line 1373
    iput-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mOnEcmExitCompleteRunnable:Ljava/lang/Runnable;

    .line 1374
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->exitEmergencyCallbackMode(I)V

    return-void
.end method

.method public blacklist getEmergencyRegistrationResult()Landroid/telephony/EmergencyRegistrationResult;
    .registers 1

    .line 1022
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mLastEmergencyRegistrationResult:Landroid/telephony/EmergencyRegistrationResult;

    return-object p0
.end method

.method public blacklist getHandler()Landroid/os/Handler;
    .registers 1

    .line 275
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public blacklist isEmergencyCallbackModeSupported(Lcom/android/internal/telephony/Phone;Z)Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1209
    const-string v2, "EmergencyStateTracker"

    if-eqz p2, :cond_12

    .line 1211
    iget p2, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mEmergencyCallPhoneType:I

    if-eq p2, v0, :cond_c

    if-nez p2, :cond_12

    .line 1213
    :cond_c
    const-string p0, "ecbmUnavailableRat"

    invoke-static {v2, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_12
    if-nez p1, :cond_15

    return v1

    .line 1222
    :cond_15
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p2

    .line 1223
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1

    .line 1224
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->isSimReady(II)Z

    move-result v3

    if-nez v3, :cond_77

    .line 1227
    iget-object p2, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mNoSimEcbmSupported:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    if-nez p2, :cond_5e

    .line 1233
    iget-object p2, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    .line 1234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no_sim_ecbm_support"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1235
    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    .line 1234
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    .line 1236
    const-string v0, "ECBM value not cached, load from preference"

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mNoSimEcbmSupported:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1239
    :cond_5e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "isEmergencyCallbackModeSupported savedConfig="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 1242
    :cond_77
    const-string p1, "imsemergency.emergency_callback_mode_supported_bool"

    invoke-direct {p0, p2, p1, v0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->getConfig(ILjava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public blacklist isInCdmaEcm()Z
    .registers 4

    .line 1421
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 1423
    :cond_6
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_19

    iget v0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mEmergencyCallDomain:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_19

    .line 1424
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->isInEcm()Z

    move-result p0

    if-eqz p0, :cond_19

    return v2

    :cond_19
    return v1
.end method

.method public blacklist isInEcm()Z
    .registers 1

    .line 1397
    iget-boolean p0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mIsInEcm:Z

    return p0
.end method

.method public blacklist isInEcm(Lcom/android/internal/telephony/Phone;)Z
    .registers 3

    .line 1433
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->isInEcm()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object p0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->isSamePhone(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isInEmergencyCall()Z
    .registers 1

    .line 971
    iget-boolean p0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mIsInEmergencyCall:Z

    return p0
.end method

.method public blacklist isInEmergencyMode()Z
    .registers 1

    .line 939
    iget p0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mEmergencyMode:I

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isInImsEcm()Z
    .registers 3

    .line 1413
    iget v0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mEmergencyCallDomain:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->isInEcm()Z

    move-result p0

    if-eqz p0, :cond_d

    const/4 p0, 0x1

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isInScbm()Z
    .registers 1

    .line 1599
    iget-boolean p0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mIsInScbm:Z

    return p0
.end method

.method public blacklist maybeResetEmergencyCallStateChangedIntent()V
    .registers 7

    .line 2120
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.EMERGENCY_CALL_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_49

    .line 2123
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 2124
    const-string v1, "android.telephony.extra.PHONE_IN_EMERGENCY_CALL"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 2126
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "maybeResetEmergencyCallStateChangedIntent isAlive="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "EmergencyStateTracker"

    invoke-static {v5, v4}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_49

    .line 2128
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2129
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2130
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_49
    return-void
.end method

.method public blacklist needToSwitchPhone(Lcom/android/internal/telephony/Phone;)Z
    .registers 6

    .line 2309
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    .line 2310
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1

    .line 2312
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->isSimReady(II)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_10

    return v2

    .line 2315
    :cond_10
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    const-string v1, "EmergencyStateTracker"

    const/4 v3, 0x1

    if-nez v0, :cond_28

    .line 2316
    const-string v0, "needToSwitchPhone SIM absent"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_26

    .line 2317
    invoke-direct {p0, p1, v3}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->isThereOtherPhone(IZ)Z

    move-result p0

    if-eqz p0, :cond_3e

    :cond_26
    :goto_26
    move v2, v3

    goto :goto_3e

    .line 2322
    :cond_28
    const-string v0, "needToSwitchPhone SIM not ready"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_35

    .line 2323
    invoke-direct {p0, p1, v2}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->isThereOtherPhone(IZ)Z

    move-result v0

    if-nez v0, :cond_26

    :cond_35
    if-eqz p1, :cond_3e

    .line 2324
    invoke-direct {p0, p1, v3}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->isThereOtherPhone(IZ)Z

    move-result p0

    if-eqz p0, :cond_3e

    goto :goto_26

    .line 2330
    :cond_3e
    :goto_3e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "needToSwitchPhone "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public blacklist onCellularRadioPowerOffRequested()V
    .registers 2

    const/4 v0, 0x0

    .line 1188
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->exitEmergencySmsCallbackModeAndEmergencyMode(I)V

    .line 1189
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->exitEmergencyCallbackMode()V

    return-void
.end method

.method public blacklist onEmergencyCallDomainUpdated(ILandroid/telecom/Connection;)V
    .registers 7

    .line 1120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "domain update for callId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/telecom/Connection;->getTelecomCallId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "EmergencyStateTracker"

    invoke-static {v0, p2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x1

    if-eq p1, p2, :cond_3d

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3d

    const/4 v2, 0x5

    if-eq p1, v2, :cond_3c

    const/4 v1, 0x6

    if-eq p1, v1, :cond_3d

    .line 1136
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "domain updated: Unexpected phoneType:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, -0x1

    goto :goto_3d

    :cond_3c
    move p2, v1

    .line 1140
    :cond_3d
    :goto_3d
    iget v1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mEmergencyCallPhoneType:I

    const-string v2, " to "

    if-eq v1, p1, :cond_61

    .line 1141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "phoneType updated: from "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mEmergencyCallPhoneType:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    iput p1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mEmergencyCallPhoneType:I

    .line 1145
    :cond_61
    iget p1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mEmergencyCallDomain:I

    if-eq p1, p2, :cond_83

    .line 1146
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "domain updated: from "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mEmergencyCallDomain:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    iput p2, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mEmergencyCallDomain:I

    :cond_83
    return-void
.end method

.method public blacklist onEmergencyCallPropertiesChanged(ILandroid/telecom/Connection;)V
    .registers 4

    .line 1179
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mOngoingConnection:Landroid/telecom/Connection;

    invoke-static {v0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 1180
    iput p1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mOngoingCallProperties:I

    :cond_a
    return-void
.end method

.method public blacklist onEmergencyCallStateChanged(Lcom/android/internal/telephony/Call$State;Landroid/telecom/Connection;)V
    .registers 4

    .line 1158
    sget-object v0, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne p1, v0, :cond_43

    .line 1159
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mActiveEmergencyCalls:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1160
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mOngoingConnection:Landroid/telecom/Connection;

    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_43

    .line 1161
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "call connected "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/telecom/Connection;->getTelecomCallId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "EmergencyStateTracker"

    invoke-static {p2, p1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz p1, :cond_43

    iget p1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mOngoingCallProperties:I

    .line 1163
    invoke-static {p1}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->isVoWiFi(I)Z

    move-result p1

    if-eqz p1, :cond_43

    iget p1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mEmergencyMode:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_43

    .line 1166
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/Phone;->cancelEmergencyNetworkScan(ZLandroid/os/Message;)V

    :cond_43
    return-void
.end method

.method public blacklist onEmergencySmsReceived()V
    .registers 3

    .line 1580
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->isInScbm()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1581
    const-string v0, "EmergencyStateTracker"

    const-string v1, "Emergency SMS received, re-initiate SCBM timer"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1583
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->enterEmergencySmsCallbackMode()V

    :cond_10
    return-void
.end method

.method public blacklist onEmergencyTransportChanged(II)V
    .registers 5

    .line 1096
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 v0, 0x1

    if-ne p1, v0, :cond_12

    .line 1099
    iget-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    goto :goto_19

    :cond_12
    const/4 v1, 0x2

    if-ne p1, v1, :cond_18

    .line 1101
    iget-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mSmsPhone:Lcom/android/internal/telephony/Phone;

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    if-eqz v1, :cond_1e

    .line 1105
    invoke-direct {p0, v1, p1, p2, v0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->setEmergencyMode(Lcom/android/internal/telephony/Phone;III)V

    :cond_1e
    return-void

    .line 1108
    :cond_1f
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public blacklist onEmergencyTransportChangedAndWait(II)V
    .registers 4

    const/4 v0, 0x1

    if-ne p1, v0, :cond_18

    if-ne p2, v0, :cond_18

    .line 1077
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 1078
    monitor-enter v0

    .line 1079
    :try_start_b
    iput-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mEmergencyTransportChangedFuture:Ljava/util/concurrent/CompletableFuture;

    .line 1080
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->onEmergencyTransportChanged(II)V

    .line 1081
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->waitForTransportChangeCompleted(Ljava/util/concurrent/CompletableFuture;)V

    .line 1082
    monitor-exit v0

    return-void

    :catchall_15
    move-exception p0

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_b .. :try_end_17} :catchall_15

    throw p0

    .line 1085
    :cond_18
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->onEmergencyTransportChanged(II)V

    return-void
.end method

.method public blacklist onNormalRoutingEmergencyCallStateChanged(Landroid/telecom/Connection;I)V
    .registers 4

    .line 2292
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mNormalRoutingEmergencyConnection:Landroid/telecom/Connection;

    if-eq p1, v0, :cond_5

    goto :goto_c

    :cond_5
    const/4 v0, 0x4

    if-eq p2, v0, :cond_d

    const/4 v0, 0x6

    if-ne p2, v0, :cond_c

    goto :goto_d

    :cond_c
    :goto_c
    return-void

    .line 2297
    :cond_d
    :goto_d
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->endNormalRoutingEmergencyCall(Landroid/telecom/Connection;)V

    return-void
.end method

.method public blacklist shouldExitSatelliteMode()Z
    .registers 6

    .line 2369
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteController;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object v0

    .line 2371
    invoke-virtual {v0}, Lcom/android/internal/telephony/satellite/SatelliteController;->isSatelliteEnabledOrBeingEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    return v2

    .line 2375
    :cond_c
    iget-boolean v1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mTurnOffNonEmergencyNbIotNtnSatelliteForEmergencyCall:Z

    if-nez v1, :cond_11

    return v2

    .line 2380
    :cond_11
    invoke-virtual {v0}, Lcom/android/internal/telephony/satellite/SatelliteController;->isDemoModeEnabled()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_19

    return v3

    .line 2384
    :cond_19
    invoke-virtual {v0}, Lcom/android/internal/telephony/satellite/SatelliteController;->getRequestIsEmergency()Z

    move-result v1

    if-nez v1, :cond_20

    return v3

    .line 2389
    :cond_20
    invoke-virtual {v0}, Lcom/android/internal/telephony/satellite/SatelliteController;->getSelectedSatelliteSubId()I

    move-result v1

    .line 2390
    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object v4

    .line 2391
    invoke-virtual {v4, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSubscriptionInfoInternal(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object v4

    if-nez v4, :cond_4a

    .line 2393
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "satellite is/being enabled, but satellite sub "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is null"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "EmergencyStateTracker"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 2398
    :cond_4a
    invoke-virtual {v4}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getOnlyNonTerrestrialNetwork()I

    move-result v1

    if-ne v1, v3, :cond_53

    .line 2400
    iget-boolean p0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mTurnOffOemEnabledSatelliteDuringEmergencyCall:Z

    return p0

    .line 2403
    :cond_53
    invoke-virtual {v0}, Lcom/android/internal/telephony/satellite/SatelliteController;->shouldTurnOffCarrierSatelliteForEmergencyCall()Z

    move-result p0

    return p0
.end method

.method public blacklist startEmergencyCall(Lcom/android/internal/telephony/Phone;Landroid/telecom/Connection;Z)Ljava/util/concurrent/CompletableFuture;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/Phone;",
            "Landroid/telecom/Connection;",
            "Z)",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    .line 640
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startEmergencyCall: phoneId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", callId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 641
    invoke-virtual {v2}, Landroid/telecom/Connection;->getTelecomCallId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 640
    const-string v5, "EmergencyStateTracker"

    invoke-static {v5, v4}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->needToSwitchPhone(Lcom/android/internal/telephony/Phone;)Z

    move-result v4

    if-eqz v4, :cond_44

    .line 644
    const-string v0, "startEmergencyCall failed. need to switch stacks."

    invoke-static {v5, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x40

    .line 645
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/concurrent/CompletableFuture;->completedFuture(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0

    .line 648
    :cond_44
    iget-object v4, v0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v4, :cond_c2

    .line 652
    invoke-static {v4, v1}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->isSamePhone(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;)Z

    move-result v1

    if-eqz v1, :cond_b2

    iget-object v1, v0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mActiveEmergencyCalls:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5f

    invoke-virtual {v0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->isInEcm()Z

    move-result v1

    if-eqz v1, :cond_b2

    .line 653
    :cond_5f
    invoke-direct {v0, v6}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->exitEmergencySmsCallbackMode(I)V

    .line 654
    iput-object v2, v0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mOngoingConnection:Landroid/telecom/Connection;

    .line 655
    iput-boolean v3, v0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mIsTestEmergencyNumber:Z

    .line 656
    invoke-virtual {v0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->isInEcm()Z

    move-result v1

    if-eqz v1, :cond_95

    .line 658
    iget-object v1, v0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mHandler:Landroid/os/Handler;

    iget-object v2, v0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mExitEcmRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 659
    invoke-direct {v0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->releaseWakeLock()V

    .line 660
    iget-object v1, v0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/GsmCdmaPhone;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyEcbmTimerReset(Ljava/lang/Boolean;)V

    .line 663
    iget-object v1, v0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1, v8, v6}, Lcom/android/internal/telephony/Phone;->stopEmergencyCallbackMode(II)V

    .line 667
    iput v7, v0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mOngoingCallProperties:I

    .line 668
    new-instance v1, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v1}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    iput-object v1, v0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mCallEmergencyModeFuture:Ljava/util/concurrent/CompletableFuture;

    .line 669
    iget-object v1, v0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v0, v1, v8, v8, v8}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->setEmergencyMode(Lcom/android/internal/telephony/Phone;III)V

    .line 671
    iget-object v0, v0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mCallEmergencyModeFuture:Ljava/util/concurrent/CompletableFuture;

    return-object v0

    .line 674
    :cond_95
    new-instance v8, Landroid/telephony/EmergencyRegistrationResult;

    const-string v17, ""

    const-string v18, ""

    const/4 v9, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-string v16, ""

    invoke-direct/range {v8 .. v18}, Landroid/telephony/EmergencyRegistrationResult;-><init>(IIIZZIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v8, v0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mLastEmergencyRegistrationResult:Landroid/telephony/EmergencyRegistrationResult;

    .line 678
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/concurrent/CompletableFuture;->completedFuture(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0

    .line 681
    :cond_b2
    const-string v0, "startEmergencyCall failed. Existing emergency call in progress."

    invoke-static {v5, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x24

    .line 682
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/concurrent/CompletableFuture;->completedFuture(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0

    .line 685
    :cond_c2
    iput v7, v0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mOngoingCallProperties:I

    .line 686
    new-instance v4, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v4}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    iput-object v4, v0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mCallEmergencyModeFuture:Ljava/util/concurrent/CompletableFuture;

    .line 688
    iget-object v4, v0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mSmsPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v4, :cond_105

    .line 689
    iput-boolean v8, v0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mIsEmergencyCallStartedDuringEmergencySms:Z

    .line 695
    invoke-virtual {v0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->isInEmergencyMode()Z

    move-result v4

    if-eqz v4, :cond_f1

    invoke-direct {v0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->isEmergencyModeInProgress()Z

    move-result v4

    if-nez v4, :cond_f1

    .line 696
    iget-object v4, v0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mSmsPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v4, v1}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->isSamePhone(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;)Z

    move-result v4

    if-nez v4, :cond_ec

    .line 697
    iget-object v4, v0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mSmsPhone:Lcom/android/internal/telephony/Phone;

    const/4 v5, 0x2

    invoke-direct {v0, v4, v5}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->exitEmergencyMode(Lcom/android/internal/telephony/Phone;I)V

    goto :goto_ee

    .line 703
    :cond_ec
    iput-boolean v7, v0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mIsEmergencyCallStartedDuringEmergencySms:Z

    .line 706
    :goto_ee
    invoke-direct {v0, v6}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->exitEmergencySmsCallbackMode(I)V

    .line 709
    :cond_f1
    iget-boolean v4, v0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mIsEmergencyCallStartedDuringEmergencySms:Z

    if-eqz v4, :cond_105

    .line 710
    iput-object v1, v0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 711
    iput-object v2, v0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mOngoingConnection:Landroid/telecom/Connection;

    .line 712
    iput-boolean v3, v0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mIsTestEmergencyNumber:Z

    .line 713
    invoke-direct {v0, v1, v8}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->sendEmergencyCallStateChange(Lcom/android/internal/telephony/Phone;Z)V

    const/4 v1, 0x0

    .line 714
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->maybeRejectIncomingCall(Ljava/util/function/Consumer;)V

    .line 715
    iget-object v0, v0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mCallEmergencyModeFuture:Ljava/util/concurrent/CompletableFuture;

    return-object v0

    .line 719
    :cond_105
    iput-object v1, v0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 720
    iput-object v2, v0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mOngoingConnection:Landroid/telecom/Connection;

    .line 721
    iput-boolean v3, v0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mIsTestEmergencyNumber:Z

    .line 722
    invoke-direct {v0, v1, v8}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->sendEmergencyCallStateChange(Lcom/android/internal/telephony/Phone;Z)V

    .line 723
    iget-object v1, v0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mOngoingConnection:Landroid/telecom/Connection;

    .line 724
    new-instance v2, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$$ExternalSyntheticLambda5;

    invoke-direct {v2, v0, v1}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$$ExternalSyntheticLambda5;-><init>(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;Landroid/telecom/Connection;)V

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->maybeRejectIncomingCall(Ljava/util/function/Consumer;)V

    .line 733
    iget-object v0, v0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mCallEmergencyModeFuture:Ljava/util/concurrent/CompletableFuture;

    return-object v0
.end method

.method public blacklist startEmergencySms(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Z)Ljava/util/concurrent/CompletableFuture;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/Phone;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startEmergencySms: phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", smsId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", scbm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1460
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->isInScbm()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1459
    const-string v1, "EmergencyStateTracker"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1464
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    const/16 v2, 0x24

    .line 1466
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v0, :cond_48

    .line 1464
    invoke-static {v0, p1}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->isSamePhone(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    if-nez v0, :cond_48

    .line 1465
    const-string p0, "Emergency call is in progress on the other slot."

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1466
    invoke-static {v2}, Ljava/util/concurrent/CompletableFuture;->completedFuture(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0

    .line 1470
    :cond_48
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->isInScbm()Z

    move-result v0

    .line 1474
    iget-object v3, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mSmsPhone:Lcom/android/internal/telephony/Phone;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_6c

    invoke-static {v3, p1}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->isSamePhone(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;)Z

    move-result v3

    if-nez v3, :cond_6c

    if-eqz v0, :cond_62

    .line 1479
    iput-boolean v5, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mIsEmergencySmsStartedDuringScbm:Z

    const/4 v3, 0x4

    .line 1480
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->exitEmergencySmsCallbackModeAndEmergencyMode(I)V

    move v3, v5

    goto :goto_6d

    .line 1482
    :cond_62
    const-string p0, "Emergency SMS is in progress on the other slot."

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1483
    invoke-static {v2}, Ljava/util/concurrent/CompletableFuture;->completedFuture(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0

    :cond_6c
    move v3, v4

    .line 1489
    :goto_6d
    iget-object v6, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mSmsPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v6, :cond_89

    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->isInEmergencyMode()Z

    move-result v6

    if-eqz v6, :cond_89

    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->isEmergencyModeInProgress()Z

    move-result v6

    if-eqz v6, :cond_89

    if-nez v0, :cond_89

    .line 1491
    const-string p0, "Existing emergency SMS is in progress and not in SCBM."

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    invoke-static {v2}, Ljava/util/concurrent/CompletableFuture;->completedFuture(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0

    .line 1495
    :cond_89
    iput-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mSmsPhone:Lcom/android/internal/telephony/Phone;

    .line 1496
    iput-boolean p3, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mIsTestEmergencyNumberForSms:Z

    .line 1497
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mOngoingEmergencySmsIds:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_a7

    if-nez v3, :cond_9f

    .line 1504
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Ljava/util/concurrent/CompletableFuture;->completedFuture(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0

    .line 1507
    :cond_9f
    new-instance p1, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {p1}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mSmsEmergencyModeFuture:Ljava/util/concurrent/CompletableFuture;

    goto :goto_cf

    .line 1511
    :cond_a7
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->isInEmergencyMode()Z

    move-result p1

    if-eqz p1, :cond_bc

    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->isEmergencyModeInProgress()Z

    move-result p1

    if-nez p1, :cond_bc

    .line 1513
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Ljava/util/concurrent/CompletableFuture;->completedFuture(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0

    .line 1516
    :cond_bc
    new-instance p1, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {p1}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mSmsEmergencyModeFuture:Ljava/util/concurrent/CompletableFuture;

    .line 1518
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->isInEmergencyMode()Z

    move-result p1

    if-nez p1, :cond_cf

    .line 1519
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mSmsPhone:Lcom/android/internal/telephony/Phone;

    const/4 p2, 0x2

    invoke-direct {p0, p1, p2, v5, v5}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->setEmergencyMode(Lcom/android/internal/telephony/Phone;III)V

    .line 1524
    :cond_cf
    :goto_cf
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mSmsEmergencyModeFuture:Ljava/util/concurrent/CompletableFuture;

    return-object p0
.end method

.method public blacklist startNormalRoutingEmergencyCall(Lcom/android/internal/telephony/Phone;Landroid/telecom/Connection;Ljava/util/function/Consumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/Phone;",
            "Landroid/telecom/Connection;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 2266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startNormalRoutingEmergencyCall: phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", callId="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2267
    invoke-virtual {p2}, Landroid/telecom/Connection;->getTelecomCallId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2266
    const-string v0, "EmergencyStateTracker"

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2269
    iput-object p2, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mNormalRoutingEmergencyConnection:Landroid/telecom/Connection;

    .line 2270
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->maybeRejectIncomingCall(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public blacklist switchDdsDelayed(Lcom/android/internal/telephony/Phone;Ljava/util/function/Consumer;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/Phone;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_7

    .line 1870
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p2, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1874
    :cond_7
    :try_start_7
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->possiblyOverrideDefaultDataForEmergencyCall(Lcom/android/internal/telephony/Phone;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    .line 1878
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 1879
    iget-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$$ExternalSyntheticLambda8;

    invoke-direct {v2, v0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$$ExternalSyntheticLambda8;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1881
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->mHandler:Landroid/os/Handler;

    .line 1882
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/internal/telephony/NetworkTypeController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/NetworkTypeController$$ExternalSyntheticLambda0;-><init>(Landroid/os/Handler;)V

    .line 1881
    invoke-virtual {p1, v0, p2, v1}, Ljava/util/concurrent/CompletableFuture;->acceptEitherAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_29} :catch_2a

    return-void

    :catch_2a
    move-exception p0

    .line 1884
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "switchDdsDelayed - exception= "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "EmergencyStateTracker"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
